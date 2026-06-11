; SeviiFerryMenu - Dynamic ferry destination menu
;
; Before calling, set wScriptVar to the current island number (1-7)
; to exclude it from the menu. Set to 0 to show all visited destinations.
;
; Checks wVisitedSpawns flags via predef SmallFarFlagAction.
; Only destinations whose visit flag is set appear in the menu,
; minus the current island, plus a CANCEL option.
;
; Returns in wScriptVar:
;   0 = cancelled
;   1 = ONE ISLAND, 2 = TWO ISLAND, ... 7 = SEVEN ISLAND
;
; wTempTilemap buffer layout:
;   +0..7:     MenuHeader (8 bytes)
;   +8..9:     MenuData flags + count
;   +10..159:  Menu item strings
;   +160..167: Mapping table (menu position -> island number)
;   +170:      Current island to exclude

DEF FERRY_OFS_HEADER  EQU 0
DEF FERRY_OFS_DATA    EQU 8
DEF FERRY_OFS_MAPPING EQU 160
DEF FERRY_OFS_EXCLUDE EQU 170
DEF NUM_FERRY_DESTINATIONS EQU 8

SeviiFerryMenu:
	; Save current island to exclude
	ld a, [wScriptVar]
	ld [wTempTilemap + FERRY_OFS_EXCLUDE], a

	; de = string write cursor (after flags + count bytes in MenuData)
	ld de, wTempTilemap + FERRY_OFS_DATA + 2

	; b = menu item count, c = island loop index (0-7)
	ld b, 0
	ld c, 0

.check_loop:
	; Skip if this is the current island
	ld a, c
	inc a ; 1-based island number
	ld hl, wTempTilemap + FERRY_OFS_EXCLUDE
	cp [hl]
	jr z, .skip_island

	; Skip if destination hasn't been visited
	push bc
	push de
	ld a, c
	cp 7
	jr nc, .vermilion
	add SPAWN_ONE_ISLAND ; Sevii Islands: spawn = 28 + c
	jr .check_flag
.vermilion:
	ld a, SPAWN_VERMILION ; Vermilion Port: spawn = 7
.check_flag:
	ld c, a
	ld hl, wVisitedSpawns
	ld b, CHECK_FLAG
	ld d, 0
	predef SmallFarFlagAction
	ld a, c ; a = nonzero if visited
	pop de
	pop bc
	and a
	jr z, .skip_island

	; --- Add island to menu ---

	; Write mapping: FERRY_MAPPING[b] = c + 1
	push de
	ld a, b
	ld e, a
	ld d, 0
	ld hl, wTempTilemap + FERRY_OFS_MAPPING
	add hl, de
	ld a, c
	inc a ; 1-based island number
	ld [hl], a
	pop de

	; Copy island name to menu buffer at [de]
	push bc
	ld a, c
	add a ; *2 for pointer table
	ld c, a
	ld b, 0
	ld hl, .IslandNames
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a ; hl = name string pointer
.copy_char:
	ld a, [hli]
	ld [de], a
	inc de
	cp $50
	jr nz, .copy_char

	pop bc
	inc b ; one more menu item

.skip_island:
	inc c
	ld a, c
	cp NUM_FERRY_DESTINATIONS ; 7 islands + vermilion
	jr c, .check_loop

	; Append "CANCEL@"
	ld hl, .CancelString
.copy_cancel:
	ld a, [hli]
	ld [de], a
	inc de
	cp $50
	jr nz, .copy_cancel

	inc b ; count CANCEL as an item

	; Write mapping for CANCEL: FERRY_MAPPING[b-1] = 0 (means cancelled)
	ld a, b
	dec a
	ld e, a
	ld d, 0
	ld hl, wTempTilemap + FERRY_OFS_MAPPING
	add hl, de
	xor a
	ld [hl], a

	; Write MenuData header
	ld a, STATICMENU_CURSOR
	ld [wTempTilemap + FERRY_OFS_DATA], a
	ld a, b
	ld [wTempTilemap + FERRY_OFS_DATA + 1], a

	; Build MenuHeader in WRAM (8 bytes)
	; Items are spaced 2 rows apart by PlaceVerticalMenuItems
	ld a, MENU_BACKUP_TILES
	ld [wTempTilemap + FERRY_OFS_HEADER], a
	xor a ; start_y = 0, start_x = 0
	ld [wTempTilemap + FERRY_OFS_HEADER + 1], a
	ld [wTempTilemap + FERRY_OFS_HEADER + 2], a
	; end_y = count*2 + 1 (2 rows per item + 1 for bottom border)
	ld a, b
	add a ; *2
	inc a ; +1 for border
	ld [wTempTilemap + FERRY_OFS_HEADER + 3], a
	ld a, 16 ; end_x
	ld [wTempTilemap + FERRY_OFS_HEADER + 4], a
	ld a, LOW(wTempTilemap + FERRY_OFS_DATA)
	ld [wTempTilemap + FERRY_OFS_HEADER + 5], a
	ld a, HIGH(wTempTilemap + FERRY_OFS_DATA)
	ld [wTempTilemap + FERRY_OFS_HEADER + 6], a
	ld a, 1 ; default option
	ld [wTempTilemap + FERRY_OFS_HEADER + 7], a

	; Display menu
	ld hl, wTempTilemap + FERRY_OFS_HEADER
	call LoadMenuHeader
	call VerticalMenu
	jr c, .cancelled

	; Translate selection: wMenuCursorY is 1-based
	ld a, [wMenuCursorY]
	dec a ; 0-based index into mapping table
	ld c, a
	ld b, 0
	ld hl, wTempTilemap + FERRY_OFS_MAPPING
	add hl, bc
	ld a, [hl]
	ld [wScriptVar], a
	jr .done

.cancelled:
	xor a
	ld [wScriptVar], a

.done:
	call ExitMenu
	ret

.IslandNames:
	dw .Name1, .Name2, .Name3, .Name4, .Name5, .Name6, .Name7, .NameVermilion

.Name1: db "ONE ISLAND@"
.Name2: db "TWO ISLAND@"
.Name3: db "THREE ISLAND@"
.Name4: db "FOUR ISLAND@"
.Name5: db "FIVE ISLAND@"
.Name6: db "SIX ISLAND@"
.Name7: db "SEVEN ISLAND@"
.NameVermilion: db "VERMILION PORT@"

.CancelString: db "CANCEL@"

SeviiFerryAskText::
	text "Ahoy, there! Where"
	line "do you wanna sail?"
	done

SeviiFerryMenuCancelText::
	text "Come back when"
	line "you're ready!"
	done

SeviiFerryWarp:
; Performs the ferry warp to the destination in wScriptVar (1-8).
; Plays the boat sound, fades out, and triggers the map warp.
	ld a, [wScriptVar]
	dec a
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl ; *4 (group, map, x, y)
	ld bc, FerryWarpTable
	add hl, bc

	push hl
	ld de, SFX_BOAT
	call PlaySFX
	call WaitSFX
	pop hl

	push hl
	farcall FadeOutToWhite
	pop hl

	ld a, [hli]
	ld [wMapGroup], a
	ld a, [hli]
	ld [wMapNumber], a
	ld a, [hli]
	ld [wXCoord], a
	ld a, [hl]
	ld [wYCoord], a

	ld a, SPAWN_N_A
	ld [wDefaultSpawnpoint], a
	ld a, MAPSETUP_WARP
	ldh [hMapEntryMethod], a
	ld a, MAPSTATUS_ENTER
	call LoadMapStatus
	ret

FerryWarpTable:
;   map_id
;   x, y
	map_id TREASURE_BEACH  ; 1 One Island
	db 15, 5
	map_id TWO_ISLAND      ; 2 Two Island
	db 11, 11
	map_id THREE_ISLE_PORT ; 3 Three Island
	db 15, 13
	map_id FOUR_ISLAND     ; 4 Four Island
	db 11, 31
	map_id FIVE_ISLAND     ; 5 Five Island
	db 13, 15
	map_id SIX_ISLAND      ; 6 Six Island
	db 11, 17
	map_id SEVEN_ISLAND    ; 7 Seven Island
	db 17, 15
	map_id VERMILION_PORT  ; 8 Vermilion Port
	db 7, 2

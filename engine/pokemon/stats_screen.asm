	const_def 1
	const PINK_PAGE  ; 1
	const GREEN_PAGE ; 2
	const BLUE_PAGE  ; 3
DEF NUM_STAT_PAGES EQU const_value - 1

StatsScreenInit:
	ldh a, [hMapAnims]
	push af
	xor a
	ldh [hMapAnims], a ; disable overworld tile animations
	ld [wStatsScreenStatExpToggle], a

	ld c, PINK_PAGE ; first_page
	call StatsScreenMain

	; restore old values
	pop af
	ldh [hMapAnims], a
	ret

StatsScreenMain:
	push bc
	ld a, [wMonType]
	cp TEMPMON
	jr nz, .not_tempmon
	ld a, [wBufferMonSpecies]
	ld [wCurSpecies], a
	call GetBaseData
	ld hl, wBufferMon
	ld de, wTempMon
	ld bc, PARTYMON_STRUCT_LENGTH
	call CopyBytes
	jr .got_stats

.not_tempmon
	call CopyMonToTempMon
	ld a, [wCurPartySpecies]
	cp EGG
	jp z, .got_stats
	ld a, [wMonType]
	cp BOXMON
	jr c, .got_stats
	call CalcTempmonStats

.got_stats
	call ClearBGPalettes
	call ClearTilemap
	call UpdateSprites
	callfar StatsScreen_LoadFont

	pop bc
	ld a, [wCurPartySpecies]
	cp EGG
	jp z, EggStatsInit
	call StatsScreen_InitLeftPanel
	ld b, 0
	jp StatsScreen_JumpToLoadPageFunction

StatsScreen_LoadPage:
	push bc
	ld de, .done_loading
	push de
	jp hl

.done_loading
	pop bc
	ld b, 1

.joypad_loop
	call GetJoypad
	ld a, [wMonType]
	cp TEMPMON
	jr nz, .not_tempmon
	push hl
	push de
	push bc
	farcall StatsScreenDPad
	pop bc
	pop de
	pop hl
	ld a, [wMenuJoypad]
	and PAD_DOWN | PAD_UP
	jr nz, StatsScreenMain
	ld a, [wMenuJoypad]
	jr .joypad_action

.not_tempmon
	ldh a, [hJoyPressed]

.joypad_action
	bit B_PAD_SELECT, a
	jr nz, .select_button
	and PAD_CTRL_PAD | PAD_A | PAD_B
	jr z, .joypad_loop
	bit B_BUTTON_F, a
	jp nz, StatsScreen_Exit
	bit B_PAD_LEFT, a
	jr nz, .d_left
	bit B_PAD_RIGHT, a
	jr nz, .d_right
	bit A_BUTTON_F, a
	jr nz, .a_button
	bit B_PAD_UP, a
	jr nz, .d_up

; down
	ld a, [wMonType]
	cp BOXMON
	jr nc, .joypad_loop
	and a
	ld a, [wPartyCount]
	jr z, .next_mon
	ld a, [wOTPartyCount]
.next_mon
	ld b, a
	ld a, [wCurPartyMon]
	inc a
	cp b
	jr z, .joypad_loop
	ld [wCurPartyMon], a
	ld b, a
	ld a, [wMonType]
	and a
	jr nz, .load_mon
	ld a, b
	inc a
	ld [wPartyMenuCursor], a
	jr .load_mon

.d_up
	ld a, [wCurPartyMon]
	and a
	jr z, .joypad_loop
	dec a
	ld [wCurPartyMon], a
	ld b, a
	ld a, [wMonType]
	and a
	jr nz, .load_mon
	ld a, b
	inc a
	ld [wPartyMenuCursor], a
.load_mon
	jp StatsScreenMain

.select_button
	ld a, c
	cp BLUE_PAGE
	jp nz, .joypad_loop
	ld a, [wStatsScreenStatExpToggle]
	xor 1
	ld [wStatsScreenStatExpToggle], a
	call StatsScreen_RefreshBluePageStats
	jp .joypad_loop

.a_button
	ld a, c
	cp BLUE_PAGE ; last page
	jr z, StatsScreen_Exit

.d_right
	inc c
	ld a, BLUE_PAGE ; last page
	cp c
	jr nc, StatsScreen_JumpToLoadPageFunction
	ld c, PINK_PAGE ; first page
	jr StatsScreen_JumpToLoadPageFunction

.d_left
	dec c
	jr nz, StatsScreen_JumpToLoadPageFunction
	ld c, BLUE_PAGE ; last page
; fallthrough

StatsScreen_JumpToLoadPageFunction:
	ld hl, StatsScreen_LoadPageJumptable
	push bc
	dec c
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop bc
	jp StatsScreen_LoadPage

EggStatsInit:
	push bc
	call EggStatsScreen
	pop bc
; fallthrough

EggStats_JoypadLoop:
	call GetJoypad
	ld a, [wMonType]
	cp TEMPMON
	jr nz, .not_tempmon
	push hl
	push de
	push bc
	farcall StatsScreenDPad
	pop bc
	pop de
	pop hl
	ld a, [wMenuJoypad]
	and PAD_DOWN | PAD_UP
	jp nz, StatsScreenMain
	ld a, [wMenuJoypad]
	jr .joypad_action

.not_tempmon
	ldh a, [hJoyPressed]
.joypad_action
	and PAD_DOWN | PAD_UP | PAD_A | PAD_B
	jr z, EggStats_JoypadLoop
	bit A_BUTTON_F, a
	jr nz, StatsScreen_Exit
	bit B_BUTTON_F, a
	jr nz, StatsScreen_Exit
	bit B_PAD_UP, a
	jr nz, EggStats_UpAction
	bit B_PAD_DOWN, a
	jp EggStats_DownAction

StatsScreen_Exit:
	call ClearBGPalettes
	call ClearTilemap
	ret

EggStats_DownAction:
	ld a, [wMonType]
	cp BOXMON
	jr nc, EggStats_JoypadLoop
	and a
	ld a, [wPartyCount]
	jr z, .next_mon
	ld a, [wOTPartyCount]
.next_mon
	ld b, a
	ld a, [wCurPartyMon]
	inc a
	cp b
	jr z, EggStats_JoypadLoop
	ld [wCurPartyMon], a
	ld b, a
	ld a, [wMonType]
	and a
	jr nz, EggStats_ScrollToLoadMon
	ld a, b
	inc a
	ld [wPartyMenuCursor], a
	jr EggStats_ScrollToLoadMon

EggStats_UpAction:
	ld a, [wCurPartyMon]
	and a
	jr z, EggStats_JoypadLoop
	dec a
	ld [wCurPartyMon], a
	ld b, a
	ld a, [wMonType]
	and a
	jr nz, EggStats_ScrollToLoadMon
	ld a, b
	inc a
	ld [wPartyMenuCursor], a
; fallthrough

EggStats_ScrollToLoadMon:
	jp StatsScreenMain

StatsScreen_LoadPageJumptable:
; entries correspond to *_PAGE constants
	table_width 2
	dw LoadPinkPage
	dw LoadGreenPage
	dw LoadBluePage
	assert_table_length NUM_STAT_PAGES

StatsScreen_InitLeftPanel:
	push bc
	xor a
	ldh [hBGMapMode], a
	ld a, [wBaseDexNo]
	ld [wTextDecimalByte], a
	ld [wCurSpecies], a

; Vertical divider at col 7 (full height)
	call StatsScreen_PlaceVerticalDivider

; Left panel — Dex number centered at (1, 0)
	hlcoord 1, 0
	ld [hl], '№'
	inc hl
	ld [hl], '.'
	inc hl
	ld de, wTextDecimalByte
	lb bc, PRINTNUM_LEADINGZEROS | 1, 3
	call PrintNum

; Left panel — Shiny icon at (6, 0)
	call StatsScreen_PlaceShinyIcon

; Left panel — Level at (1, 10)
	ld a, [wTempMonLevel]
	hlcoord 1, 10
	call PrintLevel_Force3Digits

; Left panel — Gender after level at (5, 10)
	call GetGender
	jr c, .no_gender
	ld a, '♂'
	jr nz, .got_gender
	ld a, '♀'
.got_gender
	hlcoord 5, 10
	ld [hl], a
.no_gender

; Left panel — Pokérus immunity dot at (6, 10)
	ld a, [wTempMonPokerusStatus]
	and $f
	jr nz, .no_pkrs_dot ; currently infected, no dot
	ld a, [wTempMonPokerusStatus]
	and $f0
	jr z, .no_pkrs_dot ; never had it, no dot
	hlcoord 6, 10
	ld [hl], '.'
.no_pkrs_dot

; Left panel — Happiness at (1, 11)
	hlcoord 1, 11
	ld [hl], '♥'
	hlcoord 2, 11
	ld de, wTempMonHappiness
	lb bc, 1, 3
	call PrintNum

; Right panel (shared) — Nickname at (8, 0)
	ld hl, .NicknamePointers
	call GetNicknamePointer
	ld a, [wMonType]
	cp BOXMON
	ld a, BANK(sBoxMonNicknames)
	call z, OpenSRAM
	ld d, h
	ld e, l
	hlcoord 8, 0
	call PlaceString
	ld a, [wMonType]
	cp BOXMON
	call z, CloseSRAM

; Right panel (shared) — /Species at (8, 1)
	hlcoord 8, 1
	ld a, '/'
	ld [hli], a
	ld a, [wBaseDexNo]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	call PlaceString

; Left panel — Trainer ID at (1, 12) and number at (1, 13)
	hlcoord 1, 12
	ld de, IDNoString
	call PlaceString
	hlcoord 1, 13
	ld de, wTempMonID
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	call PrintNum

; Compute HP bar palette
	ld hl, wTempMonHP
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wTempMonMaxHP
	ld a, [hli]
	ld d, a
	ld e, [hl]
	callfar ComputeHPBarPixels
	ld hl, wCurHPPal
	call SetHPPal
	ld b, SCGB_STATS_SCREEN_HP_PALS
	call GetSGBLayout
	pop bc
	ret

.NicknamePointers:
	dw wPartyMonNicknames
	dw wOTPartyMonNicknames
	dw sBoxMonNicknames
	dw wBufferMonNickname

LoadPinkPage:
	push bc
	push bc
	xor a
	ldh [hBGMapMode], a
	ld a, [wBaseDexNo]
	ld [wTextDecimalByte], a
	ld [wCurSpecies], a
	ld b, PINK_PAGE
	call StatsScreen_LoadPageIndicators

; Clear right panel page area (rows 2-17, cols 8-19)
	hlcoord 8, 2
	lb bc, 16, 12
	call ClearBox

; HP bar at row 3 (blank row 2 above, blank row 5 below)
	hlcoord 8, 3
	ld b, $0
	call DrawPlayerHP
	hlcoord 16, 3
	ld [hl], $41 ; right HP/exp bar end cap
; Restore vertical divider at row 3 (defensive)
	hlcoord 7, 3
	ld [hl], $31

; TYPE/ and types (row 6-7)
	hlcoord 8, 6
	ld de, .TypeStr
	call PlaceString
	hlcoord 9, 7
	call PrintMonTypes

; HIDDEN POWER (row 10, blank row 9 above)
	hlcoord 8, 10
	ld de, .HiddenPowStr
	call PlaceString
	call .GetHiddenPowerType
	ld b, a
	hlcoord 9, 11
	call PrintType

; EXP POINTS (row 13, blank row 12 above)
	hlcoord 8, 13
	ld de, .ExpPointStr
	call PlaceString
	ld de, wTempMonExp
	hlcoord 13, 14
	lb bc, 3, 7
	call PrintNum

; EXP bar (row 15)
	ld a, [wTempMonLevel]
	ld b, a
	ld de, wTempMonExp + 2
	hlcoord 9, 15
	predef FillInExpBar
	hlcoord 8, 15
	ld [hl], $40 ; left exp bar end cap
	hlcoord 17, 15
	ld [hl], $41 ; right exp bar end cap

; Exp to next level (row 16): XXXXX TO <LV>XXX
	call .CalcExpToNextLevel
	ld de, wExpToNextLevel
	hlcoord 8, 16
	lb bc, 3, 5
	call PrintNum
	hlcoord 13, 16
	ld de, .ToStr
	call PlaceString
	ld a, [wTempMonLevel]
	cp MAX_LEVEL
	jr z, .got_level
	inc a
.got_level
	hlcoord 16, 16
	call PrintLevel_Force3Digits

; Load palettes / place frontpic
	pop bc
	farcall LoadStatsScreenPals
	call WaitBGMap
	ld a, 1
	ldh [hBGMapMode], a
	pop bc
	ld a, b
	and a
	jp z, StatsScreen_PlaceFrontpic
	ret

.CalcExpToNextLevel:
	ld a, [wTempMonLevel]
	cp MAX_LEVEL
	jr z, .AlreadyAtMaxLevel
	inc a
	ld d, a
	call CalcExpAtLevel
	ld hl, wTempMonExp + 2
	ld hl, wTempMonExp + 2
	ldh a, [hQuotient + 3]
	sub [hl]
	dec hl
	ld [wExpToNextLevel + 2], a
	ldh a, [hQuotient + 2]
	sbc [hl]
	dec hl
	ld [wExpToNextLevel + 1], a
	ldh a, [hQuotient + 1]
	sbc [hl]
	ld [wExpToNextLevel], a
	ret

.AlreadyAtMaxLevel:
	ld hl, wExpToNextLevel
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ret

.TypeStr:
	db "TYPE/@"

.HiddenPowStr:
	db "HIDDEN POWER@"

.ExpPointStr:
	db "EXP POINTS@"

.ToStr:
	db " TO@"

; Hidden Power type from DVs (same formula as engine/battle/hidden_power.asm)
; Returns type index in a
.GetHiddenPowerType:
	ld a, [wTempMonDVs]
	and %0011           ; Def & 3
	ld b, a
	ld a, [wTempMonDVs]
	and %0011 << 4      ; (Atk & 3) in high nibble
	swap a
	sla a
	sla a
	or b
	inc a               ; skip Normal
	cp BIRD
	jr c, .hp_done
	inc a               ; skip Bird
	cp UNUSED_TYPES
	jr c, .hp_done
	add UNUSED_TYPES_END - UNUSED_TYPES
.hp_done
	ret

StatsScreen_PlaceVerticalDivider:
	hlcoord 7, 0
	ld bc, SCREEN_WIDTH
	ld d, SCREEN_HEIGHT
.loop
	ld a, $31 ; vertical divider
	ld [hl], a
	add hl, bc
	dec d
	jr nz, .loop
	ret

StatsScreen_PlaceShinyIcon:
	ld bc, wTempMonDVs
	callfar CheckShininess
	ret nc
	hlcoord 6, 0
	ld [hl], '⁂'
	ret

LoadGreenPage:
	push bc
	push bc
	xor a
	ldh [hBGMapMode], a
	ld b, GREEN_PAGE
	call StatsScreen_LoadPageIndicators

; Clear right panel page area (rows 2-17, cols 8-19)
	hlcoord 8, 2
	lb bc, 16, 12
	call ClearBox
; item info (row 3-4, blank row 2 above)
	hlcoord 8, 3
	ld de, .Item
	call PlaceString
	ld a, [wTempMonItem]
	and a
	ld de, .ThreeDashes
	jr z, .got_item_name
	ld b, a
	farcall TimeCapsule_ReplaceTeruSama
	ld a, b
	ld [wNamedObjectIndex], a
	call GetItemName
.got_item_name
	hlcoord 8, 4
	call PlaceString

; status condition (row 6-7, blank row 5 after item)
	hlcoord 8, 6
	ld de, .StatusStr
	call PlaceString
	ld a, [wTempMonPokerusStatus]
	and $f
	jr nz, .HasPokerus
	ld a, [wMonType]
	cp BOXMON
	jr z, .StatusOK
	hlcoord 14, 7
	push hl
	ld de, wTempMonStatus
	call PlaceStatusString
	pop hl
	jr .StatusOK
.HasPokerus:
	ld de, .PkrsStr
	hlcoord 9, 7
	call PlaceString
	jr .done_status
.StatusOK:
	ld de, .OK_str
	call z, PlaceString
.done_status

; move info (row 8+)
	ld hl, wTempMonMoves
	ld de, wListMoves_MoveIndicesBuffer
	ld bc, NUM_MOVES
	call CopyBytes
	hlcoord 8, 8
	ld de, .Move
	call PlaceString
	hlcoord 8, 9
	ld a, SCREEN_WIDTH * 2
	ld [wListMovesLineSpacing], a
	call ListMoves
	hlcoord 12, 10
	ld a, SCREEN_WIDTH * 2
	ld [wListMovesLineSpacing], a
	call ListMovePP

; Load palettes / place frontpic
	pop bc
	farcall LoadStatsScreenPals
	call WaitBGMap
	ld a, 1
	ldh [hBGMapMode], a
	pop bc
	ld a, b
	and a
	jp z, StatsScreen_PlaceFrontpic
	ret

.Item:
	db "ITEM@"

.ThreeDashes:
	db "---@"

.StatusStr:
	db "STATUS/@"

.OK_str:
	db "OK @"

.PkrsStr:
	db "#RUS@"

.Move:
	db "MOVES@"

LoadBluePage:
	push bc
	push bc
	xor a
	ldh [hBGMapMode], a
	ld b, BLUE_PAGE
	call StatsScreen_LoadPageIndicators

; Clear right panel page area (rows 2-17, cols 8-19)
	hlcoord 8, 2
	lb bc, 16, 12
	call ClearBox
; OT info or HP stat XP (rows 3-4) based on toggle
	ld a, [wStatsScreenStatExpToggle]
	and a
	jr nz, .blue_show_hp_exp
	call .PlaceOTInfo
	jr .blue_ot_done
.blue_show_hp_exp
	call .PlaceHPStatExp
.blue_ot_done
; Stats (row 6)
	hlcoord 8, 6
	ld a, [wStatsScreenStatExpToggle]
	and a
	jr nz, .blue_stat_exp
	ld bc, 6
	call PrintTempMonStats
	jr .blue_stats_done
.blue_stat_exp
	call PrintTempMonStatExp
.blue_stats_done
	call StatsScreen_PlaceStatModeIndicator
	call StatsScreen_PlaceMaxIcons

; Load palettes / place frontpic
	pop bc
	farcall LoadStatsScreenPals
	call WaitBGMap
	ld a, 1
	ldh [hBGMapMode], a
	pop bc
	ld a, b
	and a
	jp z, StatsScreen_PlaceFrontpic
	ret

.PlaceOTInfo:
	hlcoord 8, 3
	ld de, OTString
	call PlaceString
	ld hl, .OTNamePointers
	call GetNicknamePointer
; OT name
	ld a, [wMonType]
	cp BOXMON
	ld a, BANK(sBoxMonOTs)
	call z, OpenSRAM
	ld de, wStringBuffer1
	push de
	ld bc, NAME_LENGTH
	call CopyBytes
	pop de
	ld a, [wMonType]
	cp BOXMON
	call z, CloseSRAM
	callfar CorrectNickErrors
	hlcoord 9, 4
	call PlaceString
	ret

.OTNamePointers:
	dw wPartyMonOTs
	dw wOTPartyMonOTs
	dw sBoxMonOTs
	dw wBufferMonOT

.PlaceHPStatExp:
	hlcoord 8, 4
	ld de, .HPStr
	call PlaceString
	ld de, wTempMonHPExp
	hlcoord 12, 5
	lb bc, 2, 5
	jp PrintNum

.HPStr:
	db "HP@"

IDNoString:
	db "<ID>№.@"

OTString:
	db "OT/@"

StatsScreen_PlaceFrontpic:
	push bc
	call SetDefaultBGPAndOBP
	ld hl, wTempMonDVs
	call GetUnownLetter
	hlcoord 0, 2
	ld a, [wCurPartySpecies]
	cp UNOWN
	jr z, .unown

	call PrepMonFrontpic
	jr .play_cry

.unown
	xor a
	ld [wBoxAlignment], a
	call _PrepMonFrontpic

.play_cry
	ld a, [wCurPartySpecies]
	call PlayMonCry
	pop bc
	ld b, 1
	ret

EggStatsScreen:
	ld hl, wCurHPPal
	call SetHPPal
	ld b, SCGB_STATS_SCREEN_HP_PALS
	call GetSGBLayout
	call StatsScreen_PlaceVerticalDivider
; Right panel — EGG name at (8, 0)
	hlcoord 8, 0
	ld de, EggString
	call PlaceString
; Right panel — ID/OT at (8, 2) and (8, 4)
	hlcoord 8, 2
	ld de, IDNoString
	call PlaceString
	hlcoord 8, 4
	ld de, OTString
	call PlaceString
	hlcoord 11, 2
	ld de, FiveQMarkString
	call PlaceString
	hlcoord 11, 4
	ld de, FiveQMarkString
	call PlaceString
; Right panel — Egg status text at (8, 7)
	ld a, [wTempMonHappiness] ; egg status
	ld de, EggSoonString
	cp $6
	jr c, .picked
	ld de, EggCloseString
	cp $b
	jr c, .picked
	ld de, EggMoreTimeString
	cp $29
	jr c, .picked
	ld de, EggALotMoreTimeString
.picked
	hlcoord 8, 7
	call PlaceString
	call WaitBGMap
	ld a, 1
	ldh [hBGMapMode], a
	call SetDefaultBGPAndOBP
; Left panel — Frontpic at (0, 2)
	hlcoord 0, 2
	call PrepMonFrontpic
	ld a, [wTempMonHappiness]
	cp 6
	ret nc
	ld de, SFX_2_BOOPS
	call PlaySFX
	call WaitSFX
	ret

EggString:
	db "EGG@"

FiveQMarkString:
	db "?????@"

EggSoonString:
	db   "It's making"
	line "sounds"
	line "inside."
	line "It's going"
	line "to hatch"
	line "soon!@"

EggCloseString:
	db   "It moves"
	line "around"
	line "inside."
	line "It must be"
	line "close to"
	line "hatching.@"

EggMoreTimeString:
	db   "Wonder"
	line "what's"
	line "inside?"
	line "It needs"
	line "more time,  "
	line "though.@"

EggALotMoreTimeString:
	db   "This EGG"
	line "needs a lot"
	line "more time"
	line "to hatch.@"

StatsScreen_LoadPageIndicators:
; Draw 3 page indicators at rows 14-15
; Inactive: 1x2 at row 15 using $38(BL),$39(BR)
; Active: 2x2 at rows 14-15 using $3a,$3b,$3c,$3d
	push bc ; save page number (ClearBox clobbers b)
; Clear row 14 first (active indicator top row)
	hlcoord 0, 14
	lb bc, 1, 6
	call ClearBox
; Draw 3 inactive indicators at row 15
	hlcoord 0, 15
	call .load_small_pair
	hlcoord 2, 15
	call .load_small_pair
	hlcoord 4, 15
	call .load_small_pair
	pop bc ; restore page number
; Overwrite the active page indicator as 2x2
	ld a, b
	cp GREEN_PAGE
	ld a, $3a ; first of 4 large square tiles
	hlcoord 0, 14 ; PINK_PAGE (< GREEN_PAGE)
	jr c, .load_large_square
	hlcoord 2, 14 ; GREEN_PAGE (= GREEN_PAGE)
	jr z, .load_large_square
	hlcoord 4, 14 ; BLUE_PAGE (> GREEN_PAGE)

.load_large_square
	ld [hli], a
	inc a
	ld [hld], a
	push bc
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	inc a
	ld [hli], a
	inc a
	ld [hl], a
; Place label: $35 PAGE $37 at row 16
	hlcoord 0, 16
	ld a, $35 ; left page indicator
	ld [hli], a
	ld de, .PagesStr
	call PlaceString
	hlcoord 5, 16
	ld a, $37 ; right page indicator
	ld [hl], a
	ret

.load_small_pair
	ld a, $38 ; bottom-left
	ld [hli], a
	ld a, $39 ; bottom-right
	ld [hl], a
	ret

.PagesStr:
	db "PAGE@"

GetNicknamePointer:
	ld a, [wMonType]
	add a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wMonType]
	cp TEMPMON
	ret z
	ld a, [wCurPartyMon]
	jp SkipNames

StatsScreen_RefreshBluePageStats:
	push bc
	xor a
	ldh [hBGMapMode], a
	; Clear OT/HP + stat area (rows 3-17, cols 8-19)
	hlcoord 8, 3
	lb bc, 15, 12
	call ClearBox
	; OT info or HP stat XP (rows 3-4)
	ld a, [wStatsScreenStatExpToggle]
	and a
	jr nz, .refresh_exp_mode
	; Normal mode: show OT info + stats
	call LoadBluePage.PlaceOTInfo
	hlcoord 8, 6
	ld bc, 6
	call PrintTempMonStats
	jr .refresh_done
.refresh_exp_mode
	; Stat XP mode: show HP stat XP + other stat XPs
	call LoadBluePage.PlaceHPStatExp
	hlcoord 8, 6
	call PrintTempMonStatExp
.refresh_done
	call StatsScreen_PlaceStatModeIndicator
	call StatsScreen_PlaceMaxIcons
	call WaitBGMap
	ld a, 1
	ldh [hBGMapMode], a
	pop bc
	ret

StatsScreen_PlaceStatModeIndicator:
	hlcoord 8, 17
	lb bc, 1, 12
	call ClearBox
; SELECT tiles on the left
	hlcoord 8, 17
	ld a, $32 ; "SEL" tile 1
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
; Right arrow after SELECT
	ld a, '▶'
	ld [hl], a
; Label shows what you'll toggle TO
	ld a, [wStatsScreenStatExpToggle]
	and a
	jr nz, .show_dv
; Normal mode: show "STAT XP" (press SELECT to see stat XP)
	hlcoord 13, 17
	ld de, .StatXPStr
	jp PlaceString

.show_dv
; Stat XP mode: show "DV" (press SELECT to see DVs)
	hlcoord 13, 17
	ld de, .DVStr
	jp PlaceString

.StatXPStr:
	db "STAT XP@"

.DVStr:
	db "DV@"

StatsScreen_PlaceMaxIcons:
; Place shiny icon next to stats with maxed DVs or maxed Stat XP.
	ld a, [wStatsScreenStatExpToggle]
	and a
	jr nz, .stat_exp_mode
; Normal mode: check DVs (max = 15 per nibble)
; ATK DV (byte 1, high nibble)
	ld a, [wTempMonDVs]
	swap a
	and $0f
	cp 15
	jr nz, .atk_dv_no
	hlcoord 19, 6
	ld [hl], '⁂'
.atk_dv_no
; DEF DV (byte 1, low nibble)
	ld a, [wTempMonDVs]
	and $0f
	cp 15
	jr nz, .def_dv_no
	hlcoord 19, 8
	ld [hl], '⁂'
.def_dv_no
; SPC DV (byte 2, low nibble) — shared by SATK and SDEF
	ld a, [wTempMonDVs + 1]
	and $0f
	cp 15
	jr nz, .spc_dv_no
	hlcoord 19, 10
	ld [hl], '⁂'
	hlcoord 19, 12
	ld [hl], '⁂'
.spc_dv_no
; SPD DV (byte 2, high nibble)
	ld a, [wTempMonDVs + 1]
	swap a
	and $0f
	cp 15
	jr nz, .spd_dv_no
	hlcoord 19, 14
	ld [hl], '⁂'
.spd_dv_no
	ret

.stat_exp_mode
; Stat XP mode: check each stat XP (max = $FFFF)
; HP Exp
	ld hl, wTempMonHPExp
	ld a, [hli]
	and [hl]
	inc a
	jr nz, .hp_exp_no
	hlcoord 19, 4
	ld [hl], '⁂'
.hp_exp_no
; ATK Exp
	ld hl, wTempMonAtkExp
	ld a, [hli]
	and [hl]
	inc a
	jr nz, .atk_exp_no
	hlcoord 19, 6
	ld [hl], '⁂'
.atk_exp_no
; DEF Exp
	ld hl, wTempMonDefExp
	ld a, [hli]
	and [hl]
	inc a
	jr nz, .def_exp_no
	hlcoord 19, 8
	ld [hl], '⁂'
.def_exp_no
; SPC Exp — shared by SATK and SDEF
	ld hl, wTempMonSpcExp
	ld a, [hli]
	and [hl]
	inc a
	jr nz, .spc_exp_no
	hlcoord 19, 10
	ld [hl], '⁂'
	hlcoord 19, 12
	ld [hl], '⁂'
.spc_exp_no
; SPD Exp
	ld hl, wTempMonSpdExp
	ld a, [hli]
	and [hl]
	inc a
	jr nz, .spd_exp_no
	hlcoord 19, 14
	ld [hl], '⁂'
.spd_exp_no
	ret

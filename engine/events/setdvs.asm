DEF SPDSPCDV_HP_POWER EQU $FF

SetDVs:
	ld hl, ChangeDVText
	call PrintText

	call YesNoBox
	jp c, .cancel

	farcall SelectMonFromParty
	jp c, .cancel

	ld a, [wCurPartySpecies]
	cp EGG
	jr z, .egg

	; get DV address
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1DVs
	call GetPartyLocation
	push hl                 ; save DV address

	call .TypeMenu
	jp c, .cancel_pop

	call CalculateHPDVs

	pop hl                  ; restore DV address
	ld [hli], a             ; store Atk/Def DVs & increment hl
	ld a, SPDSPCDV_HP_POWER ; load defined values for Spd/Spc
	ld [hl], a              ; store Spd/Spc DVs

	; load Pokémon's level into wCurPartyLevel
	ld a, MON_LEVEL
	call GetPartyParamLocation
	ld a, [hl]
	ld [wCurPartyLevel], a

	; load base species data
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	call GetBaseData

	; get destination address (MON_MAXHP)
	ld a, MON_MAXHP
	call GetPartyParamLocation
	ld d, h
	ld e, l

	; get stat exp address (MON_STAT_EXP - 1)
	ld a, MON_STAT_EXP - 1
	call GetPartyParamLocation
	; hl now points to MON_STAT_EXP - 1

	; recalculate all stats
	ld b, TRUE ; consider stat EXP
	predef CalcMonStats

	; set current HP to max HP to prevent visual glitches
	ld a, MON_MAXHP
	call GetPartyParamLocation
	ld a, [hli]
	ld b, a
	ld a, [hl]
	ld c, a ; bc = new max HP

	ld a, MON_HP
	call GetPartyParamLocation
	ld [hl], b
	inc hl
	ld [hl], c ; current HP = max HP

	call WaitSFX
	ld de, SFX_MASTER_BALL
	call PlaySFX
	call WaitSFX

	ld hl, HiddenPowerDVsSetText
	call PrintText
	ret

.egg
	call WaitSFX
	ld de, SFX_WRONG
	call PlaySFX
	call WaitSFX

	ld hl, EggSelectedText
	call PrintText
	call WaitPressAorB_BlinkCursor
	scf
	ret

.cancel_pop
	pop hl ; clean up stack
.cancel
	ld hl, CancelText
	call PrintText
	scf
	ret

; type selection menu (4x4 grid)
; output: a = type index, carry set if cancelled
.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 1, 2, 18, 11
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_WRAP
	dn 4, 4              ; 4 rows, 4 columns
	db 4                 ; 4 tiles spacing between items
	dba .TypeStrings
	dbw BANK(@), NULL

.TypeStrings:
	db "FTG@"  ; 0  Fighting
	db "FLY@"  ; 1  Flying
	db "PSN@"  ; 2  Poison
	db "GRD@"  ; 3  Ground
	db "RCK@"  ; 4  Rock
	db "BUG@"  ; 5  Bug
	db "GHT@"  ; 6  Ghost
	db "STL@"  ; 7  Steel
	db "FIR@"  ; 8  Fire
	db "WTR@"  ; 9  Water
	db "GRS@"  ; 10 Grass
	db "ELC@"  ; 11 Electric
	db "PSY@"  ; 12 Psychic
	db "ICE@"  ; 13 Ice
	db "DRG@"  ; 14 Dragon
	db "DRK@"  ; 15 Dark

.TypeMenu:
	ld hl, SelectTypeText
	call PrintText

	ld hl, .MenuHeader
	call LoadMenuHeader
	xor a
	ld [wMenuCursorPosition], a
	call _2DMenu
	jr c, .type_cancel ; _2DMenu sets carry on B press

	ld a, [wMenuCursorPosition]
	push af ; save cursor before ExitMenu clobbers it
	call ExitMenu
	pop af
	dec a   ; convert 1-indexed to 0-indexed
	and a   ; clear carry
	ret

.type_cancel
	call ExitMenu
	scf
	ret

SelectTypeText:
	text "Which HIDDEN POWER"
	line "do you wish for?"
	prompt

; basically a reversal of the formula in `engine/battle/hidden_power.asm`:
; type = ((Atk & 3) << 2) + (Def & 3)
; input: a = type index (0 - 15) from `.TypeString`
; output: a = Atk/Def DV byte
; clobbers bc
CalculateHPDVs:
	ld b, a ; save type index in b
	srl a   ; type >> 1
	srl a   ; type >> 2 (0-3)
	add $c  ; Atk DV = 12 + (type >> 2)
	swap a  ; move Atk to high nibble
	ld c, a ; save Atk nibble
	ld a, b ; restore type index
	and $03 ; type & 3
	add $c  ; Def DV = 12 + (type & 3)
	or c    ; combine: (Atk << 4) | Def
	ret

ChangeDVText:
	text "Should I change"
	line "a HIDDEN POWER"
	cont "for you?"
	prompt

HiddenPowerDVsSetText:
	text "It's done…"
	prompt

EggSelectedText:
	text "You selected"
	line "an EGG…"
	prompt

CancelText:
	text "Maybe"
	line "another time…"
	prompt

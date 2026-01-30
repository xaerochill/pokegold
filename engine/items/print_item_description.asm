PrintItemDescription:
; Print the description for item [wCurSpecies] at de.
	push de
	ld hl, ItemDescriptions
	ld a, [wCurSpecies]
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, BANK(ItemDescriptions)
	call GetFarWord
	ld d, h
	ld e, l
	pop hl
	ld a, BANK(ItemDescriptions)
	jp PlaceFarString

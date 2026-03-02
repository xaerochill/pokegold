InitializeEvents::
; Initialize event flags
	ld hl, InitialEvents
.events_loop
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	inc a ; cp -1
	jr z, .events_done
	ld b, SET_FLAG
	push hl
	call EventFlagAction
	pop hl
	jr .events_loop
.events_done

; Initialize engine flags
	ld hl, InitialEngineFlags
.flags_loop
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	inc a ; cp -1
	jr z, .flags_done
	ld b, SET_FLAG
	push hl
	farcall EngineFlagAction
	pop hl
	jr .flags_loop
.flags_done

; Initialize variable sprites
	ld hl, InitialVariableSprites
.sprites_loop
	ld a, [hli]
	cp -1
	jr z, .sprites_done
	push hl
	ld e, a
	ld d, 0
	ld hl, wVariableSprites
	add hl, de
	pop de
	ld a, [de]
	ld [hl], a
	ld h, d
	ld l, e
	inc hl
	jr .sprites_loop
.sprites_done

; Initialize obedience level
	farcall RecalcObedienceLevel

	ret

INCLUDE "data/events/init_events.asm"

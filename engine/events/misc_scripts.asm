Script_AbortBugContest:
	checkflag ENGINE_BUG_CONTEST_TIMER
	iffalse .finish
	setflag ENGINE_DAILY_BUG_CONTEST
	special ContestReturnMons
.finish
	end

FindItemInBallScript::
	xor a
	ld [wScriptVar], a
	
	ld a, [wItemBallItemID]
	bit 7, a ; check high bit - is it a TM/HM?
	jr nz, .tmhm_ball
	
	; Regular item - original code
	ld [wNamedObjectIndex], a
	call GetItemName
	ld hl, wStringBuffer3
	call CopyName2
	ld a, [wItemBallItemID]
	ld [wCurItem], a
	ld a, [wItemBallQuantity]
	ld [wItemQuantityChange], a
	ld hl, wNumItems
	call ReceiveItem
	ret nc
	ld a, $1
	ld [wScriptVar], a
	ret

.tmhm_ball:
	and $7F                  ; Clear high bit to get TM/HM number
	ld [wCurTMHM], a
	ld c, a
	call ReceiveTMHM         ; Set the flag (always succeeds)
	
	; build TM/HM name in wStringBuffer1
	ld a, [wCurTMHM]
	cp NUM_TMS + 1
	jr nc, .hm_name
	
	; TM name: "TM##"
	ld hl, wStringBuffer1
	ld a, 'T'
	ld [hli], a
	ld a, 'M'
	ld [hli], a
	ld a, [wCurTMHM]
	jr .write_number
	
.hm_name:
	; HM name: "HM#"
	ld hl, wStringBuffer1
	ld a, 'H'
	ld [hli], a
	ld a, 'M'
	ld [hli], a
	ld a, [wCurTMHM]
	sub NUM_TMS ; convert to HM number (1-7)
	
.write_number:
	ld b, 0
.tens_loop:
	cp 10
	jr c, .write_digits
	sub 10
	inc b
	jr .tens_loop
.write_digits:
	ld c, a ; save ones digit
	ld a, b
	and a
	jr z, .skip_tens ; skip leading zero
	add '0'
	ld [hli], a
.skip_tens:
	ld a, c
	add '0'
	ld [hli], a
	ld a, '@' ; string terminator
	ld [hl], a
	
	; copy to wStringBuffer3 for the text
	ld hl, wStringBuffer1
	ld de, wStringBuffer3
	call CopyName2
	
	ld a, $1
	ld [wScriptVar], a
	ret

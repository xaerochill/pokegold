Drumkits:
	dw Drumkit0
	dw Drumkit1
	dw Drumkit2
	dw Drumkit3
	dw Drumkit4
	dw Drumkit5
	dw Drumkit6
	dw Drumkit7
	dw Drumkit8
	dw Drumkit9
	dw Drumkit0S
	dw Drumkit1S 
	dw Drumkit_Empty
	dw Drumkit3S
	dw Drumkit4S
	dw Drumkit5S

; Source: https://github.com/dannye/pokered-crysaudio (crysaudio/drumkits.asm)

Drumkit0:
	dw Drum00
	dw Snare1
	dw Snare2
	dw Snare3
	dw Snare4
	dw Drum05
	dw Triangle1
	dw Triangle2
	dw HiHat1
	dw Snare5
	dw Snare6
	dw Snare7
	dw HiHat2
	
Drumkit1:
	dw Drum00
	dw HiHat1
	dw Snare5
	dw Snare6
	dw Snare7
	dw HiHat2
	dw HiHat3
	dw Snare8
	dw Triangle3
	dw Triangle4
	dw Snare9
	dw Snare10
	dw Snare11
	
Drumkit2:
	dw Drum00
	dw Snare1
	dw Snare9
	dw Snare10
	dw Snare11
	dw Drum05
	dw Triangle1
	dw Triangle2
	dw HiHat1
	dw Snare5
	dw Snare6
	dw Snare7
	dw HiHat2
	
Drumkit3:
	dw Drum21
	dw Snare12
	dw Snare13
	dw Snare14
	dw Kick1
	dw Triangle5
	dw Drum20
	dw Drum27
	dw Drum28
	dw Drum29
	dw Drum21
	dw Kick2
	dw Crash2
	
Drumkit4:
	dw Drum21
	dw Drum20
	dw Snare13
	dw Snare14
	dw Kick1
	dw Drum33
	dw Triangle5
	dw Drum35
	dw Drum31
	dw Drum32
	dw Drum36
	dw Kick2
	dw Crash1
	
Drumkit5:
	dw Drum00
	dw Snare9
	dw Snare10
	dw Snare11
	dw Drum27
	dw Drum28
	dw Drum29
	dw Drum05
	dw Triangle1
	dw Crash1
	dw Snare14
	dw Snare13
	dw Kick2

; TCG/TCG2 Approximation Drumkit
; Copied from pokered-crysaudio, which did the original TCG conversion.
; TCG noise instruments use raw register format ($88 header, frequency,
; volume envelope, pattern data, $ff terminator) which is incompatible
; with pokegold's noise_note format. These are approximations only.

; Drumkit6: TCG1/TCG2 approximation (from pokered-crysaudio).
;   Known issues: indices 1/5/9 should be TCG2-specific instruments
;   (.noise2, .noise6, .noisea) but are mapped to incorrect pokegold equivalents.
;   TCG1 had .unused at these indices so the mismatch only affects TCG2 songs.
;   Used by TCG1/TCG2 songs (club, fort, duel themes, etc.)
;   Original TCG sources: https://github.com/pret/poketcg  (noise_instruments.asm)
;                         https://github.com/pret/poketcg2 (noise_instruments.asm)

Drumkit6:
	dw Drum00      ; index 0: silence (matches TCG .rest)
	dw Kick2       ; index 1: approximates TCG2 .noise2 (wrong - should be noise_note 8,8,1,49)
	dw Snare9      ; index 2: approximates TCG2 .noise3 (close - noise_note 32,9,1,34)
	dw Snare10     ; index 3: approximates TCG2 .noise4 (close - noise_note 32,7,1,34)
	dw Snare11     ; index 4: approximates TCG2 .noise5 (close - noise_note 32,6,1,34)
	dw Crash2      ; index 5: approximates TCG2 .noise6 (wrong - should be noise_note 8,10,1,35)
	dw Crash1      ; index 6: approximates TCG2 .noise7 (close - noise_note 51,8,8,21 + 32,6,5,18)
	dw Snare9      ; index 7: approximates TCG2 .noise8 (noise_note 32,9,1,34)
	dw Snare9      ; index 8: approximates TCG2 .noise9 (noise_note 32,9,1,34)
	dw Snare1      ; index 9: approximates TCG2 .noisea (NR42=$C1, freq=$33 - exact match)
	dw Snare9      ; index 10: approximates TCG2 .noiseb (noise_note 32,9,1,34)
	dw Snare9      ; index 11: approximates TCG2 .noisec (noise_note 32,9,1,34)
	dw Snare9      ; index 12: approximates TCG2 .noised (noise_note 32,9,1,34)

; Pinball Drumkits (from pokered-crysaudio)
; Copied from pokered-crysaudio, which did the original pinball conversion.

; Drumkit7: Pinball Drumkit0 (from pokered-crysaudio).
;   15/16 instruments match pokepinball Drumkit0 exactly.
;   Known issue: index 12 is Crash2 but should be Crash1 (pokepinball exact).
;   Used by pinball songs (fieldselect, gastlyinthegraveyard, etc.)
;   Original source: https://github.com/pret/pokepinball (drumkits.asm)

Drumkit7:
	dw Drum21      ; index 0: silence (matches pokepinball Drumkit0[0])
	dw Snare12     ; index 1: match pokepinball
	dw Snare13     ; index 2: match pokepinball
	dw Snare14     ; index 3: match pokepinball
	dw Drum38      ; index 4: match pokepinball (Drum08)
	dw Drum39      ; index 5: match pokepinball (Drum09)
	dw Drum20      ; index 6: match pokepinball (Drum10)
	dw Drum27      ; index 7: match pokepinball (Drum11)
	dw Drum28      ; index 8: match pokepinball (Drum12)
	dw Drum29      ; index 9: match pokepinball (Drum13)
	dw Drum40      ; index 10: match pokepinball (Drum14)
	dw Drum41      ; index 11: match pokepinball (Drum15)
	dw Crash2      ; index 12: WRONG - should be Crash1 (pokepinball Drumkit0[12] = Crash1)
	dw Drum21      ; index 13: match pokepinball (Drum17)
	dw Drum21      ; index 14: match pokepinball (Drum18)
	dw Drum21      ; index 15: match pokepinball (Drum19)

; Drumkit8: Pinball Drumkit1 (from pokered-crysaudio) - exact match.
;   All 16 instruments match pokepinball Drumkit1 exactly.
;   Used by pinball songs (title, pokedex, nameentry, etc.)
;   Original source: https://github.com/pret/pokepinball (drumkits.asm)

Drumkit8:
	dw Drum21      ; index 0: match pokepinball Drumkit1[0]
	dw Drum20      ; index 1: match pokepinball (Drum20)
	dw Snare13     ; index 2: match pokepinball (Drum21)
	dw Snare14     ; index 3: match pokepinball (Drum22)
	dw Drum38      ; index 4: match pokepinball (Drum23)
	dw Drum33      ; index 5: match pokepinball (Drum24)
	dw Triangle5   ; index 6: match pokepinball (Drum25)
	dw Drum35      ; index 7: match pokepinball (Drum26)
	dw Drum31      ; index 8: match pokepinball (Drum27)
	dw Drum32      ; index 9: match pokepinball (Drum28)
	dw Drum36      ; index 10: match pokepinball (Drum29)
	dw Drum41      ; index 11: match pokepinball (Drum30)
	dw Crash1      ; index 12: match pokepinball (Drum31)
	dw Drum21      ; index 13: match pokepinball (Drum32)
	dw Drum21      ; index 14: match pokepinball (Drum33)
	dw Drum21      ; index 15: match pokepinball (Drum34)

Drumkit9:
	dw Drum21
	dw Drum40
	dw Drum41
	dw Snare14
	dw Drum38
	dw Drum42
	dw Drum43
	dw Drum44
	dw Drum28
	dw Drum29
	dw Drum45
	dw Drum46
	dw Drum47
	dw Drum21
	dw Drum21
	dw Drum21

Drumkit0S:
	dw Drum00   
	dw Snare2
	dw Snare3   
	dw Snare4 
	dw Snare4_Soft 
	dw Drum05  
	dw Triangle1_Soft
	dw Triangle2_Soft
	dw HiHat1_Soft
	dw Snare5_Soft
	dw Snare6_Soft
	dw Snare7_Soft
	dw HiHat1
Drumkit1S:
	dw Drum00
	dw HiHat1_Soft
	dw Snare5_Soft
	dw Snare6_Soft
	dw Snare7_Soft
	dw HiHat2_Soft
	dw HiHat3_Soft
	dw Snare8_Soft
	dw Triangle3_Soft
	dw Triangle4_Soft
	dw Snare9_Soft
	dw Snare10_Soft
	dw Snare11_Soft
Drumkit_Empty:
Drumkit3S:
	dw Drum21
	dw Snare12_Soft
	dw Snare13_Soft
	dw Snare14_Soft
	dw Kick1_Soft
	dw Triangle5_Soft
	dw Drum20
	dw Drum27_Soft
	dw Drum28_Soft
	dw Drum29_Soft
	dw Drum21
	dw Kick2_Soft
	dw Crash2_Soft
Drumkit4S:
	dw Drum00
	dw Drum20
	dw Snare13_Soft
	dw Snare14_Soft
	dw Kick1_Soft
	dw Drum33_Soft
	dw Triangle5_Soft
	dw Drum35_Soft
	dw Drum31_Soft
	dw Drum32_Soft
	dw Drum36_Soft
	dw Kick2_Soft
	dw Crash1
Drumkit5S:
	dw Drum00
	dw Snare9_Soft
	dw Snare10_Soft
	dw Snare11_Soft
	dw Drum27_Soft
	dw Drum28_Soft 
	dw Drum29_Soft  
	dw Drum05      
	dw Triangle1_Soft 
	dw Crash1
	dw Snare14_Soft 
	dw Snare13_Soft
	dw Kick2_Soft 

Drum00:
	noise_note 32, 1, 1, 0
	sound_ret

Snare1:
	noise_note 32, 12, 1, 51
	sound_ret

Snare2:
	noise_note 32, 11, 1, 51
	sound_ret

Snare3:
	noise_note 32, 10, 1, 51
	sound_ret

Snare4:
	noise_note 32, 8, 1, 51
	sound_ret

Drum05:
	noise_note 39, 8, 4, 55
	noise_note 38, 8, 4, 54
	noise_note 37, 8, 3, 53
	noise_note 36, 8, 3, 52
	noise_note 35, 8, 2, 51
	noise_note 34, 8, 1, 50
	sound_ret

Triangle1:
	noise_note 32, 5, 1, 42
	sound_ret

Triangle2:
	noise_note 33, 4, 1, 43
	noise_note 32, 6, 1, 42
	sound_ret

HiHat1:
	noise_note 32, 8, 1, 16
	sound_ret

Snare5:
	noise_note 32, 8, 2, 35
	sound_ret

Snare6:
	noise_note 32, 8, 2, 37
	sound_ret

Snare7:
	noise_note 32, 8, 2, 38
	sound_ret

HiHat2:
	noise_note 32, 10, 1, 16
	sound_ret

HiHat3:
	noise_note 32, 10, 2, 17
	sound_ret

Snare8:
	noise_note 32, 10, 2, 80
	sound_ret

Triangle3:
	noise_note 32, 10, 1, 24
	noise_note 32, 3, 1, 51
	sound_ret

Triangle4:
	noise_note 34, 9, 1, 40
	noise_note 32, 7, 1, 24
	sound_ret

Snare9:
	noise_note 32, 9, 1, 34
	sound_ret

Snare10:
	noise_note 32, 7, 1, 34
	sound_ret

Snare11:
	noise_note 32, 6, 1, 34
	sound_ret

Drum20:
	noise_note 32, 1, 1, 17
	sound_ret

Drum21:
	sound_ret

Snare12:
	noise_note 32, 9, 1, 51
	sound_ret

Snare13:
	noise_note 32, 5, 1, 50
	sound_ret

Snare14:
	noise_note 32, 8, 1, 49
	sound_ret

Kick1:
	noise_note 32, 8, 8, 107
	noise_note 32, 7, 1, 0
	sound_ret

Triangle5:
	noise_note 48, 9, 1, 24
	sound_ret

Drum27:
	noise_note 39, 9, 2, 16
	sound_ret

Drum28:
	noise_note 51, 9, 1, 0
	noise_note 51, 1, 1, 0
	sound_ret

Drum29:
	noise_note 51, 9, 1, 17
	noise_note 51, 1, 1, 0
	sound_ret

Crash1:
	noise_note 51, 8, 8, 21
	noise_note 32, 6, 5, 18
	sound_ret

Drum31:
	noise_note 51, 5, 1, 33
	noise_note 51, 1, 1, 17
	sound_ret

Drum32:
	noise_note 51, 5, 1, 80
	noise_note 51, 1, 1, 17
	sound_ret

Drum33:
	noise_note 32, 10, 1, 49
	sound_ret

Crash2:
	noise_note 32, 8, 4, 18
	sound_ret

Drum35:
	noise_note 51, 8, 1, 0
	noise_note 51, 1, 1, 0
	sound_ret

Drum36:
	noise_note 51, 8, 1, 33
	noise_note 51, 1, 1, 17
	sound_ret

Kick2:
	noise_note 32, 10, 8, 107
	noise_note 32, 7, 1, 0
	sound_ret

Drum38:
	noise_note 33, 7, 1, 112
	noise_note 32, 1, 1, 17
	sound_ret

Drum39:
	noise_note 48, 8, 2, 76
	noise_note 34, 6, 1, 32
	sound_ret

Drum40:
	noise_note 1, 1, 8, 1
	sound_ret

Drum41:
	noise_note 1, 2, 8, 1
	sound_ret

Drum42:
	noise_note 1, 3, 8, 1
	sound_ret

Drum43:
	noise_note 1, 4, 8, 1
	sound_ret

Drum44:
	noise_note 1, 5, 8, 1
	sound_ret

Drum45:
	noise_note 1, 6, 8, 1
	sound_ret

Drum46:
	noise_note 1, 7, 8, 1
	sound_ret

Drum47:
	noise_note 1, 8, 8, 1
	sound_ret

; https://github.com/pret/pokecrystal/wiki/Add-more-music-that-changes-at-night#5-Adding-softer-drumkits

Snare12_Soft:
	noise_note 32, 8, 1, 51
	sound_ret

Snare13_Soft:
	noise_note 32, 4, 1, 50
	sound_ret

Snare14_Soft:
	noise_note 32, 7, 1, 49
	sound_ret

Kick1_Soft:
	noise_note 32, 7, 8, 107
	noise_note 32, 6, 1, 0
	sound_ret

Triangle5_Soft:
	noise_note 48, 8, 1, 24
	sound_ret

Drum27_Soft:
	noise_note 39, 8, 2, 16
	sound_ret

Drum28_Soft:
	noise_note 51, 8, 1, 0
	noise_note 51, 1, 1, 0
	sound_ret

Drum29_Soft:
	noise_note 51, 8, 1, 17
	noise_note 51, 1, 1, 0
	sound_ret

Drum31_Soft:
	noise_note 51, 4, 1, 33
	noise_note 51, 1, 1, 17
	sound_ret

Drum32_Soft:
	noise_note 51, 4, 1, 80
	noise_note 51, 1, 1, 17
	sound_ret

Drum33_Soft:
	noise_note 32, 9, 1, 49
	sound_ret

Drum35_Soft:
	noise_note 51, 7, 1, 0
	noise_note 51, 1, 1, 0
	sound_ret

Drum36_Soft:
	noise_note 51, 7, 1, 33
	noise_note 51, 1, 1, 17
	sound_ret

Snare4_Soft:
	noise_note 32, 7, 1, 51
	sound_ret

Snare5_Soft:
	noise_note 32, 7, 2, 35
	sound_ret

Snare6_Soft:
	noise_note 32, 7, 2, 37
	sound_ret

Snare7_Soft:
	noise_note 32, 7, 2, 38
	sound_ret

Snare8_Soft:
	noise_note 32, 9, 2, 80
	sound_ret

Snare9_Soft:
	noise_note 32, 8, 1, 34
	sound_ret

Snare10_Soft:
	noise_note 32, 6, 1, 34
	sound_ret

Snare11_Soft:
	noise_note 32, 5, 1, 34
	sound_ret

Kick2_Soft:
	noise_note 32, 9, 8, 107
	noise_note 32, 6, 1, 0
	sound_ret

Crash2_Soft:
	noise_note 32, 7, 4, 18
	sound_ret

Triangle1_Soft:
	noise_note 32, 6, 1, 42
	sound_ret

Triangle2_Soft:
	noise_note 33, 3, 1, 43
	noise_note 32, 5, 1, 42
	sound_ret

Triangle3_Soft:
	noise_note 32, 9, 1, 24
	noise_note 32, 2, 1, 51
	sound_ret

Triangle4_Soft:
	noise_note 34, 8, 1, 40
	noise_note 32, 6, 1, 24
	sound_ret

HiHat1_Soft:
	noise_note 32, 7, 1, 16
	sound_ret

HiHat2_Soft:
	noise_note 32, 9, 1, 16
	sound_ret

HiHat3_Soft:
	noise_note 32, 9, 2, 17
	sound_ret

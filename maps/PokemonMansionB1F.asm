	object_const_def
	const POKEMON_MANSION_B1F_POKE_BALL_1
	;const POKEMON_MANSION_B1F_POKE_BALL_2
	const POKEMON_MANSION_B1F_POKE_BALL_3
	const POKEMON_MANSION_B1F_POKE_BALL_4
	const POKEMON_MANSION_B1F_POKE_BALL_5
	const POKEMON_MANSION_B1F_PAPER
	const POKEMON_MANSION_B1F_BURGLAR
	const POKEMON_MANSION_B1F_SCIENTIST
	
PokemonMansionB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, PokemonMansionB1FSwitchCallback

PokemonMansionB1FSwitchCallback:
	checkevent EVENT_SWITCH_IN_POKEMON_MANSION
	iffalse .SwitchNotTriggered
	changeblock  8,  6, $0D ; wall
	changeblock 12, 22, $60 ; floor
	changeblock 16, 16, $0D ; wall
	changeblock 26, 16, $4F ; floor
.SwitchNotTriggered:
	endcallback

PokemonMansionB1FBurglarJacScript:
	trainer BURGLAR, JAC, EVENT_BEAT_BURGLAR_JAC, PokemonMansionB1FBurglarJacSeenText, PokemonMansionB1FBurglarJacBeatenText, PokemonMansionB1FBurglarJacWonText, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext PokemonMansionB1FBurglarJacAfterBattleText
	waitbutton
	closetext
	end

PokemonMansionB1FScientistGideonScript:
	trainer SCIENTIST, GIDEON, EVENT_BEAT_SCIENTIST_GIDEON, PokemonMansionB1FScientistGideonSeenText, PokemonMansionB1FScientistGideonBeatenText, PokemonMansionB1FScientistGideonWonText, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext PokemonMansionB1FScientistGideonAfterBattleText
	waitbutton
	closetext
	end

PokemonMansionB1FHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_POKEMON_MANSION_B1F_HIDDEN_RARE_CANDY

PokemonMansionB1FFullRestore:
	itemball FULL_RESTORE

;PokemonMansionB1FSecretKey:
;	itemball SECRET_KEY

PokemonMansionB1FTMSolarbeam:
	tmhmball TM_SOLARBEAM

PokemonMansionB1FRareCandy:
	itemball RARE_CANDY

PokemonMansionB1FTMBlizzard:
	tmhmball TM_BLIZZARD

PokemonMansionB1FDiary:
	opentext
	writetext PokemonMansionB1FDiaryText
	waitbutton
	closetext
	end

PokemonMansionB1FPC1:
	opentext
	writetext PokemonMansionB1FPC1Text
	waitbutton
	closetext
	end

PokemonMansionB1FPC2:
	opentext
	writetext PokemonMansionB1FPC2Text
	waitbutton
	closetext
	end

PokemonMansionB1FPanicButton:
	opentext
	writetext PokemonMansionB1FPanicButtonText
	waitbutton
	closetext
	end
	
PokemonMansionB1FClones:
	opentext
	writetext PokemonMansionB1FClonesText
	waitbutton
	closetext
	end

PokemonMansionB1FSwitch:
	opentext
	writetext PokemonMansionB1FSwitchText
	yesorno
	iftrue .switch
	writetext PokemonMansionB1FSwitchNotPressedText
	waitbutton
	closetext
	end

.switch
	reanchormap $86
	writetext PokemonMansionB1FSwitchPressedText
	waitbutton
	checkevent EVENT_SWITCH_IN_POKEMON_MANSION
	iftrue .toggle
	playsound SFX_ENTER_DOOR
	changeblock  8,  6, $0D ; wall
	changeblock 12, 22, $60 ; floor
	changeblock 16, 16, $0D ; wall
	changeblock 26, 16, $5F ; floor
	setevent EVENT_SWITCH_IN_POKEMON_MANSION
	closetext
	end

.toggle
	playsound SFX_ENTER_DOOR
	changeblock  8,  6, $60 ; wall
	changeblock 12, 22, $0D ; floor
	changeblock 16, 16, $5F ; wall
	changeblock 26, 16, $0D ; floor
	clearevent EVENT_SWITCH_IN_POKEMON_MANSION
	closetext
	end

PokemonMansionB1FBurglarJacSeenText:
	text "Uh-oh. Where am"
	line "I now?"
	done

PokemonMansionB1FBurglarJacBeatenText:
	text "Aw no!"
	done

PokemonMansionB1FBurglarJacWonText:
	text "Awooh!"
	done

PokemonMansionB1FBurglarJacAfterBattleText:
	text "You can find stuff"
	line "lying around."
	done

PokemonMansionB1FScientistGideonSeenText:
	text "This place is"
	line "ideal for a lab."
	done

PokemonMansionB1FScientistGideonBeatenText:
	text "What"
	line "was that for?"
	done

PokemonMansionB1FScientistGideonWonText:
	text "What"
	line "were you thinking?"
	done

PokemonMansionB1FScientistGideonAfterBattleText:
	text "I like it here!"
	line "It's conducive to"
	cont "my studies!"
	done

PokemonMansionB1FDiaryText:
	text "Diary; Sept. 1"
	line "MEWTWO is far too"
	cont "powerful."

	para "We have failed to"
	line "curb its vicious"
	cont "tendencies…"
	done

PokemonMansionB1FPC1Text:
	text "A computer log is"
	line "on display…."
	
	para "Automated security"
	line "system activated."

	para "Attacking MEWTWO."

	para "Life responses"
	line "diminished."

	para "MEWTWO is"
	line "regenerating."

	para "Automated security"
	line "system activated."

	para "Attacking MEWTWO."

	para "Danger, critical"
	line "system malfunction"
	cont "detected."
	done

PokemonMansionB1FPC2Text:
	text "It looks like a"
	line "DNA sample list of"
	cont "#MON…"
	
	para "and humans…?"
	done

PokemonMansionB1FPanicButtonText:
	text "There is a switch"
	line "with a label:"
	cont "PANIC BUTTON"
	
	para "It does not work…"
	done

PokemonMansionB1FSwitchText:
	text "A secret switch!"

	para "Press it?"
	done

PokemonMansionB1FSwitchPressedText:
	text "Who wouldn't?"
	done

PokemonMansionB1FSwitchNotPressedText:
	text "Not quite yet!"
	done

PokemonMansionB1FClonesText:
	text "A clone #MON."
	line "It is not moving."
	done

PokemonMansionB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 22, POKEMON_MANSION_1F, 6
	warp_event 20,  9, POKEMON_MANSION_1F, 8 ; from 1F
	
	def_coord_events

	def_bg_events
	bg_event  1,  9, BGEVENT_ITEM, PokemonMansionB1FHiddenRareCandy
	bg_event 18, 25, BGEVENT_READ, PokemonMansionB1FSwitch
	bg_event 20,  3, BGEVENT_READ, PokemonMansionB1FSwitch
	bg_event  7,  1, BGEVENT_READ, PokemonMansionB1FPC1
	bg_event  7, 19, BGEVENT_READ, PokemonMansionB1FPC2
	bg_event  3, 18, BGEVENT_READ, PokemonMansionB1FPanicButton
	bg_event  4,  1, BGEVENT_READ, PokemonMansionB1FClones
	bg_event  2, 11, BGEVENT_READ, PokemonMansionB1FClones
	bg_event  6, 11, BGEVENT_READ, PokemonMansionB1FClones
	bg_event  2, 15, BGEVENT_READ, PokemonMansionB1FClones
	bg_event  6, 15, BGEVENT_READ, PokemonMansionB1FClones
	
	def_object_events
	object_event  1, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansionB1FFullRestore, EVENT_POKEMON_MANSION_B1F_FULL_RESTORE
	;object_event  2, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansionB1FSecretKey, EVENT_POKEMON_MANSION_B1F_SECRET_KEY
	object_event  5,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansionB1FTMSolarbeam, EVENT_POKEMON_MANSION_B1F_TM_SOLARBEAM
	object_event 10,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansionB1FRareCandy, EVENT_POKEMON_MANSION_B1F_RARE_CANDY
	object_event 19, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansionB1FTMBlizzard, EVENT_POKEMON_MANSION_B1F_TM_BLIZZARD
	object_event 16, 20, SPRITE_PAPER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonMansionB1FDiary, -1
	object_event 16, 22, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, PokemonMansionB1FBurglarJacScript, -1
	object_event 26, 12, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 5, PokemonMansionB1FScientistGideonScript, -1

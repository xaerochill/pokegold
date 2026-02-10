	object_const_def
	const POKEMON_MANSION_3F_DIARY
	const POKEMON_MANSION_3F_POKE_BALL_1
	const POKEMON_MANSION_3F_POKE_BALL_2
	const POKEMON_MANSION_3F_SCIENTIST
	const POKEMON_MANSION_3F_BURGLAR
	
PokemonMansion3F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, PokemonMansion3FSwitchCallback

PokemonMansion3FSwitchCallback:
	checkevent EVENT_SWITCH_IN_POKEMON_MANSION
	iffalse .SwitchNotTriggered
	changeblock 14,  4, $60 ; floor
	changeblock 14, 10, $0D ; wall
.SwitchNotTriggered:
	endcallback

PokemonMansion3FHiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_POKEMON_MANSION_3F_HIDDEN_MAX_REVIVE

PokemonMansion3FMaxPotion:
	itemball MAX_POTION

PokemonMansion3FIron:
	itemball IRON

PokemonMansion3FScientistCraigScript:
	trainer SCIENTIST, CRAIG, EVENT_BEAT_SCIENTIST_CRAIG, PokemonMansion3FScientistCraigSeenText, PokemonMansion3FScientistCraigBeatenText, PokemonMansion3FScientistCraigWonText, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext PokemonMansion3FScientistCraigAfterBattleText
	waitbutton
	closetext
	end

PokemonMansion3FBurglarLouisScript:
	trainer BURGLAR, LOUIS, EVENT_BEAT_BURGLAR_LOUIS, PokemonMansion3FBurglarLouisSeenText, PokemonMansion3FBurglarLouisBeatenText, PokemonMansion3FBurglarLouisWonText, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext PokemonMansion3FBurglarLouisAfterBattleText
	waitbutton
	closetext
	end

PokemonMansion3FDiary:
	opentext
	writetext PokemonMansion3FDiaryText
	waitbutton
	setval MEWTWO
	special ShowPokedexEntry
	closetext
	end

PokemonMansion3FSwitch:
	opentext
	writetext PokemonMansion3FSwitchText
	yesorno
	iftrue .switch
	writetext PokemonMansion3FSwitchNotPressedText
	waitbutton
	closetext
	end

.switch
	reanchormap $86
	writetext PokemonMansion3FSwitchPressedText
	waitbutton
	checkevent EVENT_SWITCH_IN_POKEMON_MANSION
	iftrue .toggle
	playsound SFX_ENTER_DOOR
	changeblock 14,  4, $60 ; floor
	changeblock 16, 10, $0D ; wall
	setevent EVENT_SWITCH_IN_POKEMON_MANSION
	closetext
	end

.toggle
	playsound SFX_ENTER_DOOR
	changeblock 14,  4, $0D ; floor
	changeblock 16, 10, $60 ; wall
	clearevent EVENT_SWITCH_IN_POKEMON_MANSION
	closetext
	end

PokemonMansion3FBurglarLouisSeenText:
	text "This place is"
	line "like, huge!"
	done

PokemonMansion3FBurglarLouisBeatenText:
	text "Ayah!"
	done

PokemonMansion3FBurglarLouisWonText:
	text "Ya ah!"
	done

PokemonMansion3FBurglarLouisAfterBattleText:
	text "I wonder where"
	line "my partner went."
	done

PokemonMansion3FScientistCraigSeenText:
	text "My mentor once"
	line "lived here."
	done

PokemonMansion3FScientistCraigBeatenText:
	text "Whew!"
	line "Overwhelming!"
	done

PokemonMansion3FScientistCraigWonText:
	text "Whew!"
	line "Underwhelming!"
	done

PokemonMansion3FScientistCraigAfterBattleText:
	text "So, you're stuck?"
	line "Try jumping off"
	cont "over there!"
	done

PokemonMansion3FDiaryText:
	text "Diary: Feb. 6"
	line "MEW gave birth."

	para "We named the"
	line "newborn MEWTWO."
	done

PokemonMansion3FSwitchText:
	text "A secret switch!"

	para "Press it?"
	done

PokemonMansion3FSwitchPressedText:
	text "Who wouldn't?"
	done

PokemonMansion3FSwitchNotPressedText:
	text "Not quite yet!"
	done

PokemonMansion3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 10, POKEMON_MANSION_2F, 2
	warp_event 25, 14, POKEMON_MANSION_2F, 3
	warp_event  5,  2, POKEMON_MANSION_2F, 4
	warp_event 16, 13, POKEMON_MANSION_1F, 7
	warp_event 17, 13, POKEMON_MANSION_1F, 7
	warp_event 19, 13, POKEMON_MANSION_2F, 5
	
	def_coord_events

	def_bg_events
	bg_event  1,  9, BGEVENT_ITEM, PokemonMansion3FHiddenMaxRevive
	bg_event 10,  5, BGEVENT_READ, PokemonMansion3FSwitch

	def_object_events
	object_event  6, 12, SPRITE_PAPER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonMansion3FDiary, -1
	object_event  1, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion3FMaxPotion, EVENT_POKEMON_MANSION_3F_MAX_POTION
	object_event 25,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion3FIron, EVENT_POKEMON_MANSION_3F_IRON
	object_event 21, 11, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, PokemonMansion3FScientistCraigScript, -1
	object_event  5, 14, SPRITE_PHARMACIST, SPRITEMOVEDATA_SPINRANDOM_FAST, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, PokemonMansion3FBurglarLouisScript, -1

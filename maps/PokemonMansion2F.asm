	object_const_def
	const POKEMON_MANSION_2F_DIARY_1
	const POKEMON_MANSION_2F_DIARY_2
	const POKEMON_MANSION_2F_POKE_BALL
	const POKEMON_MANSION_2F_BURGLAR
	
PokemonMansion2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, PokemonMansion2FSwitchCallback

PokemonMansion2FSwitchCallback:
	checkevent EVENT_SWITCH_IN_POKEMON_MANSION
	iffalse .SwitchNotTriggered
	changeblock 24, 12, $5F ; floor
	changeblock 20, 12, $0D ; wall
	changeblock  8,  4, $60 ; floor
	changeblock  6, 22, $0D ; wall
.SwitchNotTriggered:
	endcallback

PokemonMansion2FCalcium:
	itemball CALCIUM

PokemonMansion2FPC:
	opentext
	writetext PokemonMansion2FPCText
	waitbutton
	cry MEW
	closetext
	end

PokemonMansion2FBurglarScript:
	trainer BURGLAR, JENSEN, EVENT_BEAT_BURGLAR_JENSEN, PokemonMansion2FBurglarSeenText, PokemonMansion2FBurglarBeatenText, PokemonMansion2FBurglarWonText, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext PokemonMansion2FBurglarAfterBattleText
	waitbutton
	closetext
	end

PokemonMansion2FDiary1:
	opentext
	writetext PokemonMansion2FDiary1Text
	waitbutton
	closetext
	end

PokemonMansion2FDiary2:
	opentext
	writetext PokemonMansion2FDiary2Text
	waitbutton
	setval MEW
	special ShowPokedexEntry
	closetext
	end

PokemonMansion2FSwitch:
	opentext
	writetext PokemonMansion2FSwitchText
	yesorno
	iftrue .switch
	writetext PokemonMansion2FSwitchNotPressedText
	waitbutton
	closetext
	end

.switch
	reanchormap $86
	writetext PokemonMansion2FSwitchPressedText
	waitbutton
	checkevent EVENT_SWITCH_IN_POKEMON_MANSION
	iftrue .toggle
	playsound SFX_ENTER_DOOR
	changeblock 24, 12, $5F ; floor
	changeblock 20, 12, $0D ; wall
	changeblock  8,  4, $60 ; floor
	changeblock  6, 22, $0D ; wall
	setevent EVENT_SWITCH_IN_POKEMON_MANSION
	closetext
	end

.toggle
	playsound SFX_ENTER_DOOR
	changeblock 24, 12, $0D ; floor
	changeblock 20, 12, $5F ; wall
	changeblock  8,  4, $0D ; floor
	changeblock  6, 22, $60 ; wall
	clearevent EVENT_SWITCH_IN_POKEMON_MANSION
	closetext
	end

PokemonMansion2FPCText:
	text "A digitised memo"
	line "to MADAME BOSS"
	cont "sent 20 years ago."

	para "An audio file is"
	line "attached to it."
	done

PokemonMansion2FBurglarSeenText:
	text "I can't get out!"
	line "This old place is"
	cont "one big puzzle!"
	done

PokemonMansion2FBurglarBeatenText:
	text "Oh no!"
	line "My bag of loot!"
	done

PokemonMansion2FBurglarWonText:
	text "Haha yes!"
	line "Even more loot!"
	done

PokemonMansion2FBurglarAfterBattleText:
	text "Switches open and"
	line "close alternating"
	cont "sets of doors!"
	done

PokemonMansion2FDiary1Text:
	text "Diary: July 5"
	line "Guyana,"
	cont "South America"

	para "A new #MON was"
	line "discovered deep"
	cont "in the jungle."
	done

PokemonMansion2FDiary2Text:
	text "Diary: July 10"

	para "We christened the"
	line "newly discovered"
	cont "#MON, MEW."
	done

PokemonMansion2FSwitchText:
	text "A secret switch!"

	para "Press it?"
	done

PokemonMansion2FSwitchPressedText:
	text "Who wouldn't?"
	done

PokemonMansion2FSwitchNotPressedText:
	text "Not quite yet!"
	done

PokemonMansion2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 10, POKEMON_MANSION_1F, 5
	warp_event  7, 10, POKEMON_MANSION_3F, 1
	warp_event 25, 14, POKEMON_MANSION_3F, 2
	warp_event  5,  2, POKEMON_MANSION_3F, 3
	warp_event 18, 14, POKEMON_MANSION_3F, 6 ; from east pit
	
	def_coord_events

	def_bg_events
	bg_event  2, 11, BGEVENT_READ, PokemonMansion2FSwitch
	bg_event  5, 19, BGEVENT_READ, PokemonMansion2FPC

	def_object_events
	object_event 18,  2, SPRITE_PAPER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonMansion2FDiary1, -1
	object_event  3, 24, SPRITE_PAPER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonMansion2FDiary2, -1
	object_event 28,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion2FCalcium, EVENT_POKEMON_MANSION_2F_CALCIUM
	object_event  3, 17, SPRITE_PHARMACIST, SPRITEMOVEDATA_WANDER, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, PokemonMansion2FBurglarScript, -1

	object_const_def
	const POKEMON_MANSION_1F_PAPER_1
	const POKEMON_MANSION_1F_PAPER_2
	const POKEMON_MANSION_1F_POKE_BALL_1
	const POKEMON_MANSION_1F_POKE_BALL_2
	const POKEMON_MANSION_1F_SCIENTIST

PokemonMansion1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, PokemonMansion1FSwitchCallback

PokemonMansion1FSwitchCallback:
	checkevent EVENT_SWITCH_IN_POKEMON_MANSION
	iffalse .SwitchNotTriggered
	changeblock 16,  6, $0D ; wall
	changeblock 20, 16, $0D ; wall
	changeblock 24, 16, $5F ; floor
.SwitchNotTriggered:
	endcallback

PokemonMansion1FHiddenMoonStone:
	hiddenitem MOON_STONE, EVENT_POKEMON_MANSION_1F_HIDDEN_MOON_STONE

PokemonMansion1FEscapeRope:
	itemball ESCAPE_ROPE

PokemonMansion1FCarbos:
	itemball CARBOS

PokemonMansion1FPaper1:
	opentext
	writetext PokemonMansion1FPaper1Text
	waitbutton
	setval KABUTOPS
	special ShowPokedexEntry
	closetext
	end

PokemonMansion1FPaper2:
	opentext
	writetext PokemonMansion1FPaper2Text
	waitbutton
	setval GYARADOS
	special ShowPokedexEntry
	closetext
	end

PokemonMansion1FScientistBraydonScript:
	trainer SCIENTIST, BRAYDON, EVENT_BEAT_SCIENTIST_BRAYDON, PokemonMansion1FScientistBraydonSeenText, PokemonMansion1FScientistBraydonBeatenText, PokemonMansion1FScientistBraydonWonText, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext PokemonMansion1FScientistBraydonAfterBattleText
	waitbutton
	closetext
	end

PokemonMansion1FSwitch:
	opentext
	writetext PokemonMansion1FSwitchText
	yesorno
	iftrue .switch
	writetext PokemonMansion1FSwitchNotPressedText
	waitbutton
	closetext
	end

.switch
	reanchormap $86
	writetext PokemonMansion1FSwitchPressedText
	waitbutton
	checkevent EVENT_SWITCH_IN_POKEMON_MANSION
	iftrue .toggle
	playsound SFX_ENTER_DOOR
	changeblock 16,  6, $0D ; wall
	changeblock 20, 16, $0D ; wall
	changeblock 24, 16, $0D ; wall
	changeblock 24, 12, $5F ; floor
	setevent EVENT_SWITCH_IN_POKEMON_MANSION
	closetext
	end

.toggle
	playsound SFX_ENTER_DOOR
	changeblock 16,  6, $5F ; wall
	changeblock 20, 16, $5F ; wall
	changeblock 24, 16, $5F ; wall
	changeblock 24, 12, $0D ; floor
	clearevent EVENT_SWITCH_IN_POKEMON_MANSION
	closetext
	end

PokemonMansion1FPaper1Text:
	text "Diary: April 12"

	para "We discovered the"
	line "the oldest #MON"
	cont "in the world!"

	para "We were able to"
	line "extract DNA from a"
	cont "fossil found in a"
	
	para "mountain cave now"
	line "1,000 meters above"
	cont "sea level."
	
	para "It retained its"
	line "form from two"
	cont "million years ago!"

	para "We will announce"
	line "its name next week"
	cont "as KABUTOPS."
	done

PokemonMansion1FPaper2Text:
	text "This seems to be a"
	line "classified report"
	cont "dated August 13…"

	para "Lost contact with"
	line "our Discovery Ship"
	line "1011 today."

	para "They were attacked"
	line "by a swarm of wild"
	cont "GYARADOS at sea."
	done

PokemonMansion1FScientistBraydonSeenText:
	text "Who are you? There"
	line "shouldn't be"
	cont "anyone here."
	done

PokemonMansion1FScientistBraydonBeatenText:
	text "Ouch!"
	done

PokemonMansion1FScientistBraydonWonText:
	text "Heh!"
	done

PokemonMansion1FScientistBraydonAfterBattleText:
	text "A key? I don't"
	line "know what you're"
	cont "talking about."
	done

PokemonMansion1FSwitchText:
	text "A secret switch!"

	para "Press it?"
	done

PokemonMansion1FSwitchPressedText:
	text "Who wouldn't?"
	done

PokemonMansion1FSwitchNotPressedText:
	text "Not quite yet!"
	done

PokemonMansion1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 27, CINNABAR_ISLAND, 4
	warp_event  6, 27, CINNABAR_ISLAND, 4
	warp_event 26, 27, CINNABAR_ISLAND, 5
	warp_event 27, 27, CINNABAR_ISLAND, 5
	warp_event  5, 10, POKEMON_MANSION_2F, 1
	warp_event 23, 22, POKEMON_MANSION_B1F, 1
	warp_event 17, 14, POKEMON_MANSION_3F, 4 ; from west pit
	warp_event 20,  8, POKEMON_MANSION_B1F, 2
	
	def_coord_events

	def_bg_events
	bg_event  2,  5, BGEVENT_READ, PokemonMansion1FSwitch
	bg_event  8, 16, BGEVENT_ITEM, PokemonMansion1FHiddenMoonStone

	def_object_events
	object_event  7,  4, SPRITE_PAPER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonMansion1FPaper1, -1
	object_event 25,  8, SPRITE_PAPER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonMansion1FPaper2, -1
	object_event 14,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion1FEscapeRope, EVENT_POKEMON_MANSION_1F_ESCAPE_ROPE
	object_event 18, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonMansion1FCarbos, EVENT_POKEMON_MANSION_1F_CARBOS
	object_event 17, 17, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 5, PokemonMansion1FScientistBraydonScript, -1

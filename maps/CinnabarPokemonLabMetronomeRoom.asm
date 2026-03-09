	object_const_def
	const CINNABARLABMETRONOMEROOM_SCIENTIST1
	const CINNABARLABMETRONOMEROOM_SCIENTIST2

CinnabarPokemonLabMetronomeRoom_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarPokemonLabMetronomeRoomScientist1Script:
	faceplayer
	opentext
	checktmhm TM_METRONOME
	iftrue .HasTM
	writetext CinnabarPokemonLabMetronomeRoomScientist1BeforeMetronomeText
	verbosegivetmhm TM_METRONOME
.HasTM:
	writetext CinnabarPokemonLabMetronomeRoomScientist1AfterMetronomeText
	waitbutton
	closetext
	end

CinnabarPokemonLabMetronomeRoomScientist2Script:
	faceplayer
	opentext
	writetext CinnabarPokemonLabMetronomeRoomScientist2Text
	waitbutton
	closetext
	end

CinnabarLabMetronomeRoomPC:
	jumptextfaceplayer CinnabarLabMetronomeRoomPCText

CinnabarLabMetronomeRoomAmberPipe:
	jumptextfaceplayer CinnabarLabMetronomeRoomAmberPipeText

CinnabarPokemonLabMetronomeRoomScientist1BeforeMetronomeText:
	text "Tch-tch-tch!"
	line "I made a cool TM!"

	para "It can cause all"
	line "kinds of fun!"
	prompt

CinnabarPokemonLabMetronomeRoomScientist1AfterMetronomeText:
	text "Tch-tch-tch!"
	line "That's the sound"
	cont "of a METRONOME!"

	para "It tweaks your"
	line "#MON's brain"
	cont "into using moves"
	cont "it doesn't know!"
	done

CinnabarPokemonLabMetronomeRoomScientist2Text:
	text "EEVEE can evolve"
	line "into 1 of 5 kinds"
	cont "of #MON."
	done

CinnabarLabMetronomeRoomPCText:
	text "There's an e-mail"
	line "message!"

	para "..."

	para "The 3 legendary"
	line "bird #MON are"
	cont "ARTICUNO, ZAPDOS"
	cont "and MOLTRES."

	para "They have returned"
	line "to where they"
	cont "roosted before."

	para "We plan to explore"
	line "the CERULEAN CAVE"
	cont "again as well."

	para "From: #MON"
	line "RESEARCH TEAM"

	para "..."
	done

CinnabarLabMetronomeRoomAmberPipeText:
	text "An amber pipe!"
	done

CinnabarPokemonLabMetronomeRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CINNABAR_POKEMON_LAB_HALLWAY, 4
	warp_event  3,  7, CINNABAR_POKEMON_LAB_HALLWAY, 4

	def_coord_events

	def_bg_events
	bg_event  1,  4, BGEVENT_READ, CinnabarLabMetronomeRoomPC
	bg_event  0,  1, BGEVENT_READ, CinnabarLabMetronomeRoomAmberPipe
	bg_event  1,  1, BGEVENT_READ, CinnabarLabMetronomeRoomAmberPipe
	bg_event  2,  1, BGEVENT_READ, CinnabarLabMetronomeRoomAmberPipe
	bg_event  3,  1, BGEVENT_READ, CinnabarLabMetronomeRoomAmberPipe

	def_object_events
	object_event  7,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarPokemonLabMetronomeRoomScientist1Script, -1
	object_event  2,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarPokemonLabMetronomeRoomScientist2Script, -1

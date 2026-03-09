	object_const_def
	const CINNABARLAB_FISHING_GURU

CinnabarPokemonLabHallway_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarPokemonLabHallwaySuperNerdScript:
	jumptextfaceplayer CinnabarPokemonLabHallwaySuperNerdText

CinnabarPokemonLabHallwayLabPhoto:
	jumptext CinnabarPokemonLabHallwayLabPhotoText

CinnabarPokemonLabHallwayMeetingRoomSign:
	jumptext CinnabarPokemonLabHallwayMeetingRoomSignText

CinnabarPokemonLabHallwayRAndDRoomSign:
	jumptext CinnabarPokemonLabHallwayRAndDRoomSignText

CinnabarPokemonLabHallwayTestingRoomSign:
	jumptext CinnabarPokemonLabHallwayTestingRoomSignText

CinnabarPokemonLabHallwaySuperNerdText:
	text "We study #MON"
	line "extensively here."

	para "People often bring"
	line "us rare #MON"
	cont "for examination."
	done

CinnabarPokemonLabHallwayLabPhotoText:
	text "A photo of the"
	line "LAB's founder,"
	cont "DR.FUJI!"
	done

CinnabarPokemonLabHallwayMeetingRoomSignText:
	text "#MON LAB"
	line "Meeting Room"
	done

CinnabarPokemonLabHallwayRAndDRoomSignText:
	text "#MON LAB"
	line "R-and-D Room"
	done

CinnabarPokemonLabHallwayTestingRoomSignText:
	text "#MON LAB"
	line "Testing Room"
	done

CinnabarPokemonLabHallway_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CINNABAR_ISLAND, 3
	warp_event  3,  7, CINNABAR_ISLAND, 3
	warp_event  8,  4, CINNABAR_POKEMON_LAB_TRADE_ROOM, 1
	warp_event 12,  4, CINNABAR_POKEMON_LAB_METRONOME_ROOM, 1
	warp_event 16,  4, CINNABAR_POKEMON_LAB_FOSSIL_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  3,  2, BGEVENT_READ, CinnabarPokemonLabHallwayLabPhoto
	bg_event  9,  4, BGEVENT_READ, CinnabarPokemonLabHallwayMeetingRoomSign
	bg_event 13,  4, BGEVENT_READ, CinnabarPokemonLabHallwayRAndDRoomSign
	bg_event 17,  4, BGEVENT_READ, CinnabarPokemonLabHallwayTestingRoomSign

	def_object_events
	object_event  0,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarPokemonLabHallwaySuperNerdScript, -1

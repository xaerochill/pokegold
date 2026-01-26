	object_const_def

CinnabarPokemonLabHallway_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarPokemonLabHallway_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CINNABAR_ISLAND, 3
	warp_event  3,  7, CINNABAR_ISLAND, 3
	warp_event  8,  4, CINNABAR_POKEMON_LAB_ROOM_1, 1
	warp_event 12,  4, CINNABAR_POKEMON_LAB_ROOM_2, 1
	warp_event 16,  4, CINNABAR_POKEMON_LAB_ROOM_3, 1

	def_coord_events

	def_bg_events

	def_object_events

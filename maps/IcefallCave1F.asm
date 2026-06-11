	object_const_def

IcefallCave1F_MapScripts:
	def_scene_scripts

	def_callbacks

IcefallCave1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 17, ICEFALL_CAVE_ENTRANCE, 2
	warp_event  3,  5, ICEFALL_CAVE_BACK, 1
	warp_event  3,  9, ICEFALL_CAVE_ENTRANCE, 3
	warp_event  7,  3, ICEFALL_CAVE_B1F, 1
	warp_event  7, 13, ICEFALL_CAVE_B1F, 2
	warp_event 15, 17, ICEFALL_CAVE_B1F, 3
	warp_event 17,  7, ICEFALL_CAVE_B1F, 4
	warp_event 14,  5, ICEFALL_CAVE_B1F, 5
	warp_event 13, 10, ICEFALL_CAVE_B1F, 6

	def_coord_events

	def_bg_events

	def_object_events

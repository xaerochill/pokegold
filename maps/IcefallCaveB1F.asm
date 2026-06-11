	object_const_def

IcefallCaveB1F_MapScripts:
	def_scene_scripts

	def_callbacks

IcefallCaveB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  3, ICEFALL_CAVE_1F, 4
	warp_event  7, 13, ICEFALL_CAVE_1F, 5
	warp_event 15, 17, ICEFALL_CAVE_1F, 6
	warp_event 17,  7, ICEFALL_CAVE_1F, 7
	warp_event 14,  5, ICEFALL_CAVE_1F, 8 ; from ICEFALL_CAVE_1F
	warp_event 13, 10, ICEFALL_CAVE_1F, 9 ; from ICEFALL_CAVE_1F

	def_coord_events

	def_bg_events

	def_object_events

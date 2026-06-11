	object_const_def

AlteringCave_MapScripts:
	def_scene_scripts

	def_callbacks

AlteringCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 19, 21, OUTCAST_ISLAND, 1
	warp_event  9, 11, ALTERING_CAVE, 3
	warp_event 29,  3, ALTERING_CAVE, 2

	def_coord_events

	def_bg_events

	def_object_events

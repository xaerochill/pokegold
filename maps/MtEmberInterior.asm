	object_const_def

MtEmberInterior_MapScripts:
	def_scene_scripts

	def_callbacks

MtEmberInterior_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 37, MT_EMBER, 1
	warp_event 33,  7, MT_EMBER, 2
	warp_event 25, 37, MT_EMBER, 3
	warp_event 31, 37, MT_EMBER, 4

	def_coord_events

	def_bg_events

	def_object_events

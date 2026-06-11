	object_const_def

WaterPathNorth_MapScripts:
	def_scene_scripts

	def_callbacks

WaterPathNorthSign:
	jumptext WaterPathNorthSignText

WaterPathNorthSignText:
	text "Wanted!"
	line "The Ultimate Horn!"
	done

WaterPathNorth_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  7,  9, BGEVENT_READ, WaterPathNorthSign

	def_object_events

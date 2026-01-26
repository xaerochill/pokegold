Route23_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route23FlypointCallback

Route23FlypointCallback:
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	endcallback

IndigoPlateauSign:
	jumptext IndigoPlateauSignText

IndigoPlateauSignText:
	text "INDIGO PLATEAU"

	para "The Ultimate Goal"
	line "for Trainers!"

	para "#MON LEAGUE HQ"
	done

Route23_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  5, INDIGO_PLATEAU_POKECENTER_1F, 1
	warp_event  4, 31, VICTORY_ROAD, 1
	warp_event 14, 31, VICTORY_ROAD, 10
	warp_event 6, 139, VICTORY_ROAD_GATE, 5
	warp_event 7, 139, VICTORY_ROAD_GATE, 5
	warp_event 8, 139, VICTORY_ROAD_GATE, 6
	warp_event 9, 139, VICTORY_ROAD_GATE, 6

	def_coord_events

	def_bg_events
	bg_event  3, 33, BGEVENT_READ, IndigoPlateauSign
	;bg_event  9, 44, BGEVENT_ITEM, Route23FullRestore
	;bg_event 19, 46, BGEVENT_ITEM, Route23UltraBall
	;bg_event  8, 90, BGEVENT_ITEM, Route23MaxEther

	def_object_events

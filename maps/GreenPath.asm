	object_const_def

GreenPath_MapScripts:
	def_scene_scripts

	def_callbacks

LeftRouteSign:
	jumptext LeftRouteSignText

RightRouteSign:
	jumptext RightRouteSignText

JaclynIntroText: ; unreferenced
	text "…Huh?"

	para "I envisioned my"
	line "house, I got here"
	cont "using TELEPORT?"
	done

JaclynDefeatText: ; unreferenced
	text "Big boo-boo!"
	done

JaclynPostBattleText: ; unreferenced
	text "I am so"
	line "scatterbrained!"

	para "I need to focus so"
	line "I can TELEPORT"
	cont "to my house!"
	done

LeftRouteSignText:
	text "GREEN PATH"

	para "Think Green,"
	line "Keep Nature Clean!"
	done

RightRouteSignText:
	text "GREEN PATH"
	line "PATTERN BUSH ahead"
	done

GreenPath_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 44,  4, PATTERN_BUSH, 1
	warp_event 45,  4, PATTERN_BUSH, 2
	warp_event 64,  6, PATTERN_BUSH, 3
	warp_event 65,  6, PATTERN_BUSH, 4

	def_coord_events

	def_bg_events
	bg_event 39, 6, BGEVENT_READ, LeftRouteSign
	bg_event 69, 9, BGEVENT_READ, RightRouteSign

	def_object_events

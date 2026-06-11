	object_const_def

TrainerTower_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerTowerSign:
	jumptext TrainerTowerSignText

DarioIntroText: ; unreferenced
	text "I sensed"
	line "your approach."
	done

DarioDefeatText: ; unreferenced
	text "Give up…"
	done

DarioPostBattleText: ; unreferenced
	text "In your future,"
	line "I sense that you"
	cont "meet many others."

	para "I think you will"
	line "be linked to each"
	cont "other by a"
	cont "strange power."
	done

RodetteIntroText: ; unreferenced
	text "Somewhere on this"
	line "island, peculiar"
	cont "#MON nap."
	done

RodetteDefeatText: ; unreferenced
	text "What an amazing"
	line "TRAINER you are!"
	done

RodettePostBattleText: ; unreferenced
	text "Could it be that"
	line "they're waiting"
	cont "for you?"
	done

TrainerTowerSignText:
	text "TRAINER TOWER"
	line "ENTRANCE"

	para "TRAINERS, rise to"
	line "the Challenge!"
	done

TrainerTower_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 11, 11, BGEVENT_READ, TrainerTowerSign

	def_object_events

	object_const_def

LostCave_MapScripts:
	def_scene_scripts

	def_callbacks

LauraIntroText: ; unreferenced
	text "I think there is a"
	line "mysterious power"
	cont "at work in here."
	done

LauraDefeatText: ; unreferenced
	text "If you don't go"
	line "into the right"
	cont "tunnel, you"
	cont "won't get ahead."
	done

LauraPostBattleText: ; unreferenced
	text "Earlier, a lady"
	line "went into the"
	cont "caves ahead alone."
	done

LawsonIntroText: ; unreferenced
	text "Aiyeeeeeh!"

	para "I thought this was"
	line "an ancient ruin."

	para "But it's teeming"
	line "with ghosts!"
	done

LawsonDefeatText: ; unreferenced
	text "Aiyeeeeeh!"
	line "Mercy!"
	done

LawsonPostBattleText: ; unreferenced
	text "I'm trying to get"
	line "out of here, but…"

	para "I always end up"
	line "at the same spot."

	para "Maybe the number"
	line "of boulders is"
	cont "a hint…"
	done

LostCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	; room 1
	warp_event  5,  7, RESORT_GORGEOUS, 1
	warp_event  5,  5, LOST_CAVE, 12 ; to room 4
	; room 2
	warp_event 17,  1, LOST_CAVE, 10
	warp_event 19,  5, LOST_CAVE, 11
	warp_event 17,  7, LOST_CAVE, 17 ; to room 6
	warp_event 14,  5, LOST_CAVE,  9
	; room 3 (east, north, south, north)
	warp_event 29,  7, LOST_CAVE,  8
	; room 4 (ladder room)
	warp_event  5, 13, LOST_CAVE, 10
	warp_event  7, 17, LOST_CAVE, 16 ; to room 5
	warp_event  5, 19, LOST_CAVE,  8
	warp_event  2, 17, LOST_CAVE,  9
	warp_event  7, 15, LOST_CAVE,  2 ; to room 1
	; room 5
	warp_event 17, 13, LOST_CAVE,  5 ; to room 2
	warp_event 19, 17, LOST_CAVE, 11
	warp_event 17, 19, LOST_CAVE, 21 ; to room 7
	warp_event 14, 17, LOST_CAVE,  9
	; room 6
	warp_event 29, 13, LOST_CAVE,  7 ; to room 3
	warp_event 31, 17, LOST_CAVE, 11
	warp_event 29, 19, LOST_CAVE, 22 ; to room 8
	warp_event 26, 17, LOST_CAVE,  9
	; room 7 (east, south)
	warp_event  5, 25, LOST_CAVE, 10
	; room 8
	warp_event 17, 25, LOST_CAVE, 10
	warp_event 19, 29, LOST_CAVE, 26 ; to room 9
	warp_event 17, 31, LOST_CAVE,  8
	warp_event 14, 29, LOST_CAVE,  9
	; room 9
	warp_event 29, 25, LOST_CAVE, 10
	warp_event 31, 29, LOST_CAVE, 30 ; to room 10
	warp_event 29, 31, LOST_CAVE,  8
	warp_event 26, 29, LOST_CAVE, 31 ; to room 11
	; room 10 (east, north, south, south, east, east)
	warp_event  2, 41, LOST_CAVE,  9
	; room 11
	warp_event 17, 37, LOST_CAVE, 10
	warp_event 19, 41, LOST_CAVE, 11
	warp_event 17, 43, LOST_CAVE, 37 ; to room 14
	warp_event 14, 41, LOST_CAVE,  9
	; room 12 (east, north, south, south, east, west, south, east, north)
	warp_event 29, 43, LOST_CAVE,  8
	; room 13 (east, north, south, south, east, west, south, west)
	warp_event  7, 53, LOST_CAVE, 11
	; room 14
	warp_event 17, 49, LOST_CAVE, 10
	warp_event 19, 53, LOST_CAVE, 44 ; to room 15
	warp_event 17, 55, LOST_CAVE,  8
	warp_event 14, 53, LOST_CAVE, 36 ; to room 13
	; room 15
	warp_event 29, 49, LOST_CAVE, 35 ; to room 12
	warp_event 31, 53, LOST_CAVE, 11
	warp_event 29, 55, LOST_CAVE,  8
	warp_event 26, 53, LOST_CAVE,  9

	def_coord_events

	def_bg_events

	def_object_events

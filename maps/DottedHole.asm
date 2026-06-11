	object_const_def

DottedHole_MapScripts:
	def_scene_scripts

	def_callbacks

IWasRightInTailingYouText: ; unreferenced
	text "Fufu… Fufufufu…"

	para "I guessed right."
	line "I was right in"
	cont "tailing you!"
	done

SellToTeamRocketTellPasswordText: ; unreferenced
	text "I knew that there"
	line "was a SAPPHIRE,"
	cont "give it to me!"

	para "I'll sell it to"
	line "TEAM ROCKET for"
	cont "serious money."

	para "…D-don't glare"
	line "at me like that!"

	para "If you want it"
	line "back, why don't"
	cont "you go get it"
	cont "after I sell it?"

	para "I'll tell you a"
	line "password to"
	cont "their WAREHOUSE."

	para "The password"
	line "I know is…"

	para "“Can KABUTO FLY?”"

	para "I'm done."

	para "Don't think"
	line "badly of me!"
	done

DottedHole_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	; 1F
	warp_event  7, 31, RUIN_VALLEY, 1
	warp_event 15, 27, DOTTED_HOLE, 4
	warp_event  9, 28, DOTTED_HOLE, 10
	; sapphire room
	warp_event 15, 39, DOTTED_HOLE, 2
	warp_event 13, 43, DOTTED_HOLE, 21 ; from B4F
	; B1F
	warp_event  4,  2, DOTTED_HOLE, 15 ; to B2F
	warp_event  2,  5, DOTTED_HOLE, 10
	warp_event  7,  4, DOTTED_HOLE, 10
	warp_event  5,  7, DOTTED_HOLE, 10
	warp_event  4,  4, DOTTED_HOLE, 3  ; from 1F
	; B2F
	warp_event 14,  5, DOTTED_HOLE, 20 ; to B3F
	warp_event 16,  2, DOTTED_HOLE, 10
	warp_event 19,  4, DOTTED_HOLE, 10
	warp_event 17,  7, DOTTED_HOLE, 10
	warp_event 16,  5, DOTTED_HOLE, 6  ; from B1F
	; B3F
	warp_event  7, 16, DOTTED_HOLE, 25 ; to B4F
	warp_event  4, 14, DOTTED_HOLE, 10
	warp_event  2, 17, DOTTED_HOLE, 10
	warp_event  5, 19, DOTTED_HOLE, 10
	warp_event  5, 16, DOTTED_HOLE, 11 ; from B2F
	; B4F
	warp_event 17, 19, DOTTED_HOLE, 5  ; to sapphire room
	warp_event 14, 17, DOTTED_HOLE, 10
	warp_event 16, 14, DOTTED_HOLE, 10
	warp_event 19, 16, DOTTED_HOLE, 10
	warp_event 17, 17, DOTTED_HOLE, 16 ; from B3F

	def_coord_events

	def_bg_events

	def_object_events

	object_const_def

TanobyRuins_MapScripts:
	def_scene_scripts

	def_callbacks

BrandonIntroText: ; unreferenced
	text "Do you know"
	line "anything about"
	cont "those chambers?"
	done

BrandonDefeatText: ; unreferenced
	text "That was uncalled"
	line "for. You didn't"
	cont "have to be rough."
	done

BrandonPostBattleText: ; unreferenced
	text "The TANOBY RUINS"
	line "date back at"
	cont "least 1,500 years."

	para "But it's a total"
	line "mystery as to why"
	cont "it was built in"
	cont "the first place."
	done

BenjaminIntroText: ; unreferenced
	text "A mystic #MON"
	line "is said to sleep"
	cont "inside here."
	done

BenjaminDefeatText: ; unreferenced
	text "I'm not much"
	line "good in battle."
	done

BenjaminPostBattleText: ; unreferenced
	text "I hear there are"
	line "other ruins like"
	cont "the one here."
	
	para "Might they too be"
	line "the resting places"
	cont "of mystic #MON?"
	done

EdnaIntroText: ; unreferenced
	text "CLIFFORD teaches"
	line "me how to paint."
	done

EdnaDefeatText: ; unreferenced
	text "We might get in"
	line "trouble for being"
	cont "noisy here."
	done

EdnaPostBattleText: ; unreferenced
	text "I said that I"
	line "wanted to paint an"
	cont "old building."

	para "So CLIFFORD"
	line "brought me here."
	done

CliffordIntroText: ; unreferenced
	text "Today, in addition"
	line "to our lesson,"
	cont "we came to see"
	cont "the chamber."
	done

CliffordDefeatText: ; unreferenced
	text "My, how"
	line "extraordinary."
	done

CliffordPostBattleText: ; unreferenced
	text "You study #MON"
	line "on your own…"

	para "Yes, you certainly"
	line "are quite the"
	cont "extraordinary"
	cont "person, indeed."
	done

TanobyRuins_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event   9,  5, TANOBY_CHAMBERS, 1
	warp_event  11, 13, TANOBY_CHAMBERS, 3
	warp_event  31,  7, TANOBY_CHAMBERS, 5
	warp_event  43,  9, TANOBY_CHAMBERS, 7
	warp_event  89,  7, TANOBY_CHAMBERS, 9
	warp_event 103,  9, TANOBY_CHAMBERS, 11
	warp_event 121,  9, TANOBY_CHAMBERS, 13

	def_coord_events

	def_bg_events

	def_object_events

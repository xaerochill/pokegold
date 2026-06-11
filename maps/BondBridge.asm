	object_const_def

BondBridge_MapScripts:
	def_scene_scripts

	def_callbacks

BerryForestAheadSign:
	jumptext BerryForestAheadSignText

BondBridgeSign:
	jumptext BondBridgeSignText

NikkiIntroText: ; unreferenced
	text "The salty tang"
	line "of the sea…"

	para "It warms my heart."
	done

NikkiDefeatText: ; unreferenced
	text "…Sniff, sniff…"

	para "Something smells"
	line "really unpleasant…"
	done

NikkiPostBattleText: ; unreferenced
	text "Perhaps that reek"
	line "is your sweaty"
	cont "body odor…"
	done

VioletIntroText: ; unreferenced
	text "Where are you off"
	line "to so fast?"
	done

VioletDefeatText: ; unreferenced
	text "You're raising"
	line "wonderful #MON."
	done

VioletPostBattleText: ; unreferenced
	text "If you keep going"
	line "this way, you'll"
	cont "eventually reach"
	cont "BERRY FOREST."
	done

AmiraIntroText: ; unreferenced
	text "My mommy said that"
	line "I can't swim"
	cont "without her."
	done

AmiraDefeatText: ; unreferenced
	text "Waaah!"
	line "Waaah!"
	done

AmiraPostBattleText: ; unreferenced
	text "This year, I'm"
	line "going to finally"
	cont "learn to swim!"
	done

AlexisIntroText: ; unreferenced
	text "Yay, yay!"
	line "#MON!"
	done

AlexisDefeatText: ; unreferenced
	text "What happens now?"
	done

AlexisPostBattleText: ; unreferenced
	text "Did I just win?"
	line "Or did I lose?"
	done

TishaIntroText: ; unreferenced
	text "Oh, no, don't"
	line "come here! Please,"
	cont "stay away from me!"
	done

TishaDefeatText: ; unreferenced
	text "Okay, you've won!"
	line "Now will you"
	cont "please go away?"
	done

TishaPostBattleText: ; unreferenced
	text "A #MON tore"
	line "my swimsuit, so I"
	cont "can't get out"
	cont "of the water!"
	done

JoyIntroText: ; unreferenced
	text "We'll teach you"
	line "what our favorite"
	cont "#MON is!"
	done

JoyDefeatText: ; unreferenced
	text "Ohh… MEG!"
	done

JoyPostBattleText: ; unreferenced
	text "Wasn't that fun?"
	line "I hope we can"
	cont "battle again!"
	done

MegIntroText: ; unreferenced
	text "We'll show you our"
	line "favorite #MON."
	done

MegDefeatText: ; unreferenced
	text "Ohh… JOY!"
	done

MegPostBattleText:
	text "JOY, wasn't"
	line "that fun?"
	done

BerryForestAheadSignText:
	text "BERRY FOREST ahead"
	done

BondBridgeSignText:
	text "BOND BRIDGE"

	para "Please be quiet"
	line "when crossing."
	done

BondBridge_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12, 4, BERRY_FOREST, 1
	warp_event 13, 4, BERRY_FOREST, 2

	def_coord_events

	def_bg_events
	bg_event 11,  7, BGEVENT_READ, BerryForestAheadSign
	bg_event 93, 11, BGEVENT_READ, BondBridgeSign

	def_object_events

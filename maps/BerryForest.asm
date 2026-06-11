	object_const_def

BerryForest_MapScripts:
	def_scene_scripts

	def_callbacks

WelcomeToBerryForestSign:
	jumptext WelcomeToBerryForestSignText

BewareWildBerryLovingMonsSign:
	jumptext BewareWildBerryLovingMonsSignText

HelpScaryPokemonText: ; unreferenced
	text "Whimper… Sniff…"

	para "Oh! Please, help!"

	para "A scary #MON"
	line "appeared there a"
	cont "little while ago."

	para "It kept scaring."

	para "It made"
	line "LOSTELLE scared."

	para "I'm too scared"
	line "to move!"

	para "But I want"
	line "to go home…"
	done

HereItComesAgainText: ; unreferenced
	text "Oh! Here it"
	line "comes again!"
	
	para "No! Go away!"

	para "It's scaring me!"

	para "Waaaaaaah!"
	
	para "I want my daddy!"
	done

ThankYouHaveThisText: ; unreferenced
	text "Ohh! That was"
	line "so scary!"

	para "Thank you!"
	
	para "LOSTELLE came to"
	line "pick some BERRIES."

	para "You can have this!"
	done

LetsGoHomeText: ; unreferenced
	text "What's your name?"

	para "LOSTELLE's scared,"
	line "so can I go with"
	cont "you to my daddy's"
	cont "house?"

	para "Okay!"
	
	para "Let's go home!"
	done

WelcomeToBerryForestSignText:
	text "Welcome to"
	line "the BERRY FOREST"

	para "Be friendly and"
	line "share BERRIES with"
	cont "each other."
	done

BewareWildBerryLovingMonsSignText:
	text "Beware of wild,"
	line "BERRY-loving"
	cont "#MON!"
	done

BerryForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 44, 47, BOND_BRIDGE, 1
	warp_event 45, 47, BOND_BRIDGE, 2

	def_coord_events

	def_bg_events
	bg_event 39, 39, BGEVENT_READ, WelcomeToBerryForestSign
	bg_event  7, 29, BGEVENT_READ, BewareWildBerryLovingMonsSign

	def_object_events

	object_const_def

ThreeIslePath_MapScripts:
	def_scene_scripts

	def_callbacks

ProspectingForGoldText: ; unreferenced
	text "Hey, there!"

	para "How's it going?"
	
	para "What am I doing"
	line "here, you ask?"

	para "I'm prospecting"
	line "for gold, you see!"

	para "When I strike it"
	line "rich, I'm buying"
	cont "a house in KANTO."
	done

StruckGoldThisIsForYouText: ; unreferenced
	text "Hey, there!"

	para "How's it going?"

	para "Did you hear?"
	line "I've struck gold!"

	para "You remembered"
	line "that I was"
	cont "prospecting?"

	para "You can't begin"
	line "to imagine just"
	cont "how happy I am."

	para "So, I'll show you!"
	line "This is for you!"
	done

ThatsANuggetText: ; unreferenced
	text "That's a NUGGET!"
	
	para "I can't give you"
	line "any nuggets of"
	cont "wisdom, so that'll"
	cont "have to do!"
	done

WhoopsBagCrammedFullText: ; unreferenced
	text "Whoops, your BAG"
	line "is crammed full!"
	done

ThreeIslePath_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  5, THREE_ISLE_PORT, 1
	warp_event 25,  5, THREE_ISLE_PORT, 2

	def_coord_events

	def_bg_events

	def_object_events

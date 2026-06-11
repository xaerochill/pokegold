	object_const_def

FiveIsleMeadow_MapScripts:
	def_scene_scripts

	def_callbacks

EnteredPasswordAnotherNeededText: ; unreferenced
	text "<PLAYER> put"
	line "in a password:"
	cont "“GOLDEEN need log”"

	para "<……> <……> <……>"

	para "Another password"
	line "is needed to"
	cont "open the door…"
	done

EnteredPasswordDoorOpenedText: ; unreferenced
	text "<PLAYER> put"
	line "in two passwords:"

	para "“GOLDEEN need log”"
	line "“Can KABUTO FLY?”"

	para "<……> <……> <……>"

	para "The WAREHOUSE's"
	line "door opened!"
	done

Rocket1IntroText: ; unreferenced
	text "This area is"
	line "strictly off"
	cont "limits for brats!"

	para "Out, out!"
	done

Rocket1DefeatText: ; unreferenced
	text "Is this for real?"
	done

Rocket1PostBattleText: ; unreferenced
	text "You don't have any"
	line "business here!"

	para "Go home!"
	done

Rocket2IntroText: ; unreferenced
	text "There's nothing"
	line "past here except"
	cont "our WAREHOUSE."

	para "So what"
	line "brings you here?"
	done

Rocket2DefeatText: ; unreferenced
	text "That wasn't"
	line "supposed to be…"
	done

Rocket2PostBattleText: ; unreferenced
	text "You wanna know"
	line "what's inside"
	cont "this WAREHOUSE?"
	
	para "It's better you"
	line "didn't know."

	para "For your own"
	line "sake, I mean."
	done

Rocket3IntroText: ; unreferenced
	text "You'd be wasting"
	line "time even if you"
	cont "were to get by me."
	done

Rocket3DefeatText: ; unreferenced
	text "Oh, that makes"
	line "me furious!"
	done

Rocket3PostBattleText: ; unreferenced
	text "You won't be able"
	line "to get in without"
	cont "the codes anyway."
	done

FiveIsleMeadow_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 23, ROCKET_WAREHOUSE, 1

	def_coord_events

	def_bg_events

	def_object_events

	object_const_def
	const THREEISLEPORT_SAILOR

ThreeIslePort_MapScripts:
	def_scene_scripts
	scene_script ThreeIslePortNoopScene, SCENE_THREEISLEPORT_FERRY

	def_callbacks
	callback MAPCALLBACK_NEWMAP, ThreeIslePortFlypointCallback

ThreeIslePortFlypointCallback:
	setflag ENGINE_FLYPOINT_THREE_ISLAND
	endcallback

ThreeIslePortNoopScene:
	end

ThreeIslePortSailorScript:
	faceplayer
	sjump ThreeIslePortFerryScript

ThreeIslePortCoordScript:
	turnobject THREEISLEPORT_SAILOR, RIGHT
	sjump ThreeIslePortFerryScript

ThreeIslePortFerryScript:
	opentext
	farwritetext SeviiFerryAskText
	waitbutton
	setval 3
	special SeviiFerryMenu
	ifequal 0, .Cancel
	special SeviiFerryWarp
	end

.Cancel:
	farwritetext SeviiFerryMenuCancelText
	waitbutton
	closetext
	applymovement PLAYER, ThreeIslePortPlayerDeclinesFerryMovement
	end

ThreeIslePortPlayerDeclinesFerryMovement:
	step UP
	step_end

WereKantoRiderFederationText: ; unreferenced
	text "We're the KANTO"
	line "RIDER FEDERATION!"

	para "Vroom!"
	line "Vavavavooom!"
	cont "Vroom!"

	para "My bike's wimpy,"
	line "so I have to make"
	cont "exhaust noises!"
	done

ForkOverMoneyText: ; unreferenced
	text "Hey, hey, lady!"

	para "Fork over some"
	line "spending money!"
	done

IllCallThePoliceText: ; unreferenced
	text "Aiyeeh!"
	line "Wh-who are you?!"

	para "I… I'll call"
	line "the police!"
	done

ThankGoodnessBikersGoneText: ; unreferenced
	text "Those BIKERS…"
	line "Are they gone?"

	para "Thank goodness!"

	para "They certainly had"
	line "me terrified!"
	done

EverythingTurnedOutForBestText: ; unreferenced
	text "Those BIKERS ran"
	line "off, and LOSTELLE"
	cont "was found safe."

	para "Everything turned"
	line "out for the best!"
	done

ThreeIslePort_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 19,  5, THREE_ISLE_PATH, 1
	warp_event 39,  7, THREE_ISLE_PATH, 2

	def_coord_events
	coord_event 15, 13, SCENE_THREEISLEPORT_FERRY, ThreeIslePortCoordScript

	def_bg_events

	def_object_events
	object_event 14, 13, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ThreeIslePortSailorScript, -1

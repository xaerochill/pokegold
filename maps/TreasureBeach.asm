	object_const_def
	const TREASURE_BEACH_SAILOR

TreasureBeach_MapScripts:
	def_scene_scripts
	scene_script TreasureBeachNoopScene, SCENE_ONEISLAND_FERRY

	def_callbacks
	callback MAPCALLBACK_NEWMAP, TreasureBeachFlypointCallback

TreasureBeachNoopScene:
	end

TreasureBeachFlypointCallback:
	setflag ENGINE_FLYPOINT_ONE_ISLAND
	endcallback

TreasureBeachSailorScript:
	faceplayer
	sjump TreasureBeachFerryScript

TreasureBeachCoordScript:
	turnobject TREASURE_BEACH_SAILOR, RIGHT
	sjump TreasureBeachFerryScript

TreasureBeachFerryScript:
	opentext
	farwritetext SeviiFerryAskText
	waitbutton
	setval 1
	special SeviiFerryMenu
	ifequal 0, .Cancel
	closetext
	opentext
	farwritetext SeviiFerryDepartText
	waitbutton
	closetext
	special SeviiFerryWarp
	end

.Cancel:
	farwritetext SeviiFerryMenuCancelText
	waitbutton
	closetext
	applymovement PLAYER, TreasureBeachPlayerDeclinesFerryMovement
	end

TreasureBeachPlayerDeclinesFerryMovement:
	step UP
	step_end

AmaraIntroText: ; unreferenced
	text "Lying back, rocked"
	line "by the waves…"
	
	para "It's exquisite."
	done

AmaraDefeatText: ; unreferenced
	text "I lost…"
	line "It feels awful."
	done

AmaraPostBattleText: ; unreferenced
	text "The sea is"
	line "pleasantly warm in"
	cont "these parts."
	done

GoodThingsWashUpOnBeachText: ; unreferenced
	text "Good things get"
	line "washed up by the"
	cont "ocean current"
	cont "onto this beach."
	
	para "That's why I often"
	line "come here for"
	cont "some beachcombing."
	done

TreasureBeach_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event 15,  5, SCENE_ONEISLAND_FERRY, TreasureBeachCoordScript

	def_bg_events

	def_object_events
	object_event 14,  5, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TreasureBeachSailorScript, -1

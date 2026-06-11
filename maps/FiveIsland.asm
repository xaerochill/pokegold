	object_const_def
	const FIVEISLAND_SAILOR

FiveIsland_MapScripts:
	def_scene_scripts
	scene_script FiveIslandNoopScene, SCENE_FIVEISLAND_FERRY

	def_callbacks
	callback MAPCALLBACK_NEWMAP, FiveIslandFlypointCallback

FiveIslandFlypointCallback:
	setflag ENGINE_FLYPOINT_FIVE_ISLAND
	endcallback

FiveIslandNoopScene:
	end

FiveIslandSailorScript:
	faceplayer
	sjump FiveIslandFerryScript

FiveIslandCoordScript:
	turnobject FIVEISLAND_SAILOR, RIGHT
	sjump FiveIslandFerryScript

FiveIslandFerryScript:
	opentext
	farwritetext SeviiFerryAskText
	waitbutton
	setval 5
	special SeviiFerryMenu
	ifequal 0, .Cancel
	special SeviiFerryWarp
	end

.Cancel:
	farwritetext SeviiFerryMenuCancelText
	waitbutton
	closetext
	applymovement PLAYER, FiveIslandPlayerDeclinesFerryMovement
	end

FiveIslandPlayerDeclinesFerryMovement:
	step UP
	step_end

FiveIslandSign:
	jumptext FiveIslandSignText

FiveIslandPokecenterSign:
	jumpstd PokecenterSignScript

FiveIslandSignText:
	text "FIVE ISLAND"

	para "Chrono Island:"
	line "Where Time Goes"
	done

WeirdBuildingInMeadowText: ; unreferenced
	text "Oh, this stinks."
	line "I wanted to play"
	cont "in the MEADOW."

	para "But they put up a"
	line "weird building on"
	cont "it, so I couldn't."
	done

BeenGettingBusierAroundHereText: ; unreferenced
	text "It's been getting"
	line "busier around"
	cont "here lately."

	para "I haven't been"
	line "catching many good"
	cont "fish either."
	done

FiveIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	;warp_event 13,  5, FIVE_ISLAND_HOUSE_1
	;warp_event 17,  5, FIVE_ISLAND_POKECENTER
	;warp_event 19,  9, FIVE_ISLAND_HOUSE_2

	def_coord_events
	coord_event 13, 15, SCENE_FIVEISLAND_FERRY, FiveIslandCoordScript

	def_bg_events
	bg_event 21,  5, BGEVENT_READ, FiveIslandSign
	bg_event 18,  5, BGEVENT_READ, FiveIslandPokecenterSign

	def_object_events
	object_event 12, 15, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FiveIslandSailorScript, -1

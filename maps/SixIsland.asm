	object_const_def
	const SIXISLAND_SAILOR

SixIsland_MapScripts:
	def_scene_scripts
	scene_script SixIslandNoopScene, SCENE_SIXISLAND_FERRY

	def_callbacks
	callback MAPCALLBACK_NEWMAP, SixIslandFlypointCallback

SixIslandFlypointCallback:
	setflag ENGINE_FLYPOINT_SIX_ISLAND
	endcallback

SixIslandNoopScene:
	end

SixIslandSailorScript:
	faceplayer
	sjump SixIslandFerryScript

SixIslandCoordScript:
	turnobject SIXISLAND_SAILOR, RIGHT
	sjump SixIslandFerryScript

SixIslandFerryScript:
	opentext
	farwritetext SeviiFerryAskText
	waitbutton
	setval 6
	special SeviiFerryMenu
	ifequal 0, .Cancel
	special SeviiFerryWarp
	end

.Cancel:
	farwritetext SeviiFerryMenuCancelText
	waitbutton
	closetext
	applymovement PLAYER, SixIslandPlayerDeclinesFerryMovement
	end

SixIslandPlayerDeclinesFerryMovement:
	step UP
	step_end

SixIslandSign:
	jumptext SixIslandSignText

SixIslandRouteSign:
	jumptext SixIslandRouteSignText

SixIslandPokecenterSign:
	jumpstd PokecenterSignScript

SixIslandMartSign:
	jumpstd MartSignScript

SixIslandSignText:
	text "SIX ISLAND"

	para "Fortune Island"
	line "of Aged Wisdom"
	done

SixIslandRouteSignText:
	text "WATER PATH"

	para "Leads to"
	line "RUIN VALLEY"
	done

ThatWayToWaterPathRuinValleyText:
	text "Keep going this"
	line "way and you'll get"
	cont "to the WATER PATH."

	para "Stay on that and"
	line "you'll get to"
	cont "the RUIN VALLEY."
	done

SkyAtNightIsFantasticText:
	text "When you're this"
	line "far away from the"
	cont "city, the sky at"
	cont "night is stunning."
	done

SixIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event 11, 17, SCENE_SIXISLAND_FERRY, SixIslandCoordScript

	def_bg_events
	bg_event 12,  7, BGEVENT_READ, SixIslandPokecenterSign
	bg_event 20,  7, BGEVENT_READ, SixIslandMartSign
	bg_event  7, 11, BGEVENT_READ, SixIslandSign
	bg_event 39, 11, BGEVENT_READ, SixIslandRouteSign

	def_object_events
	object_event 10, 17, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SixIslandSailorScript, -1

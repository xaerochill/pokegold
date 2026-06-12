	object_const_def
	const SEVENISLAND_SAILOR

SevenIsland_MapScripts:
	def_scene_scripts
	scene_script SevenIslandNoopScene, SCENE_SEVENISLAND_FERRY

	def_callbacks
	callback MAPCALLBACK_NEWMAP, SevenIslandFlypointCallback

SevenIslandFlypointCallback:
	setflag ENGINE_FLYPOINT_SEVEN_ISLAND
	endcallback

SevenIslandNoopScene:
	end

SevenIslandSailorScript:
	faceplayer
	sjump SevenIslandFerryScript

SevenIslandCoordScript:
	turnobject SEVENISLAND_SAILOR, RIGHT
	sjump SevenIslandFerryScript

SevenIslandFerryScript:
	opentext
	farwritetext SeviiFerryAskText
	waitbutton
	setval 7
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
	applymovement PLAYER, SevenIslandPlayerDeclinesFerryMovement
	end

SevenIslandPlayerDeclinesFerryMovement:
	step UP
	step_end

SevenIslandPokecenterSign:
	jumpstd PokecenterSignScript

SevenIslandMartSign:
	jumpstd MartSignScript

SevenIslandSign:
	jumptext SevenIslandSignText

SwordsDanceTeachText: ; unreferenced
	text "Not many people"
	line "come out here."

	para "If I train here,"
	line "I'm convinced that"
	cont "I'll get stronger"
	cont "and stronger."

	para "Yep, stronger"
	line "and stronger…"

	para "How would you like"
	line "to learn a move"
	cont "like that?"

	para "It's SWORDS DANCE!"
	done

SwordsDanceTaughtText: ; unreferenced
	text "If only we could"
	line "keep getting"
	cont "stronger and"
	cont "stronger, eh?"
	done

IslandsMadeInSevenDaysText: ; unreferenced
	text "These islands are"
	line "called the SEVII"
	cont "ISLANDS because"
	cont "there are seven."

	para "…Or at least"
	line "that's what young"
	cont "people believe."
	
	para "The truth is,"
	line "these islands are"
	cont "so named because"
	cont "they are said to"
	cont "have been made"
	cont "in seven days."
	done

IslandVirtuallyUntouchedText: ; unreferenced
	text "This island was"
	line "left virtually"
	cont "untouched in its"
	cont "natural state."

	para "It could be a"
	line "little difficult"
	cont "to hike around!"
	done

SevenIslandSignText:
	text "SEVEN ISLAND"
    line "Quest Island"
	cont "of Infinity"
	done

SevenIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event 17, 15, SCENE_SEVENISLAND_FERRY, SevenIslandCoordScript

	def_bg_events
	bg_event 12,  3, BGEVENT_READ, SevenIslandPokecenterSign
	bg_event 30, 19, BGEVENT_READ, SevenIslandMartSign
	bg_event 15,  9, BGEVENT_READ, SevenIslandSign

	def_object_events
	object_event 16, 15, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SevenIslandSailorScript, -1

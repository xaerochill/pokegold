	object_const_def
	const FOURISLAND_SAILOR

FourIsland_MapScripts:
	def_scene_scripts
	scene_script FourIslandNoopScene, SCENE_FOURISLAND_FERRY

	def_callbacks
	callback MAPCALLBACK_NEWMAP, FourIslandFlypointCallback

FourIslandFlypointCallback:
	setflag ENGINE_FLYPOINT_FOUR_ISLAND
	endcallback

FourIslandNoopScene:
	end

FourIslandSailorScript:
	faceplayer
	sjump FourIslandFerryScript

FourIslandCoordScript:
	turnobject FOURISLAND_SAILOR, RIGHT
	sjump FourIslandFerryScript

FourIslandFerryScript:
	opentext
	farwritetext SeviiFerryAskText
	waitbutton
	setval 4
	special SeviiFerryMenu
	ifequal 0, .Cancel
	special SeviiFerryWarp
	end

.Cancel:
	farwritetext SeviiFerryMenuCancelText
	waitbutton
	closetext
	applymovement PLAYER, FourIslandPlayerDeclinesFerryMovement
	end

FourIslandPlayerDeclinesFerryMovement:
	step UP
	step_end

FourIslandSign:
	jumptext FourIslandSignText

LoreleisHouseSign:
	jumptext LoreleisHouseSignText

FourIslandPokecenterSign:
	jumpstd PokecenterSignScript

FourIslandMartSign:
	jumpstd MartSignScript

LoreleiHasReturnedText: ; unreferenced
	text "LORELEI came home."
	line "Did she find city"
	cont "life too taxing?"
	done

LoreleiMetLaprasAsChildText: ; unreferenced
	text "LORELEI is back."
	
	para "Her LAPRAS, I like"
	line "to think she"
	cont "met as a child."

	para "I believe it was"
	line "in ICEFALL CAVE"
	cont "that she got it."

	para "Perhaps it has"
	line "been with her "
	cont "ever since."
	done

RivalAlreadyGotEggBeSmellingYaText: ; unreferenced
	text "<RIVAL>: Hey!"
	line "<PLAYER>!"

	para "What are you doing"
	line "here in the"
	cont "SEVII ISLANDS?"

	para "You should quit"
	line "copying me!"

	para "Anyways, I already"
	line "got my EGG TICKET,"
	cont "so I'm done here."

	para "Heh, I bet you"
	line "don't even know"
	cont "about EGGS."

	para "You'll never fill"
	line "#DEX that way."
	
	para "By the way, I saw"
	line "someone we both"
	cont "know around here!"

	para "Why don't you go"
	line "look around if it"
	cont "makes you curious?"

	para "Me, I don't have"
	line "the time to waste."
	cont "Be smelling ya!"
	done

LoreleiHasLotsOfStuffedDollsText: ; unreferenced
	text "Oh, you found me!"

	para "Please don't tell"
	line "LORELEI… Did you"
	cont "know she has lots"
	cont "of stuffed dolls?"

	para "Every time she"
	line "comes back, her"
	line "collection grows!"
	done

MadeSlushieUsingIcefallCaveIceText: ; unreferenced
	text "Ooh, chilly!"
	
	para "I made a slushie"
	line "using ice I shaved"
	cont "in ICEFALL CAVE."

	para "It's chilly"
	line "and tasty!"
	done

FourIslandSignText:
	text "FOUR ISLAND"
	line "The Warm, Blue,"
	cont "Floe Island"
	done

LoreleisHouseSignText:
	text "LORELEI'S HOUSE"
	done

FourIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 43, 13, ICEFALL_CAVE_ENTRANCE, 1
	;warp_event 14, 13, FOUR_ISLAND_DAYCARE
	;warp_event 17, 19, FOUR_ISLAND_POKECENTER
	;warp_event 23, 27, FOUR_ISLAND_MART
	;warp_event 28, 15, FOUR_ISLAND_HOUSE_1
	;warp_event 30, 27, FOUR_ISLAND_HOUSE_2
	;warp_event 38, 23, FOUR_ISLAND_LORELEIS_HOUSE

	def_coord_events
	coord_event 11, 31, SCENE_FOURISLAND_FERRY, FourIslandCoordScript

	def_bg_events
	bg_event 13, 19, BGEVENT_READ, FourIslandSign
	bg_event 35, 23, BGEVENT_READ, LoreleisHouseSign
	bg_event 18, 19, BGEVENT_READ, FourIslandPokecenterSign
	bg_event 24, 27, BGEVENT_READ, FourIslandMartSign

	def_object_events
	object_event 10, 31, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FourIslandSailorScript, -1

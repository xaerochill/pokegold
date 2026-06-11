	object_const_def
	const TWOISLAND_SAILOR

TwoIsland_MapScripts:
	def_scene_scripts
	scene_script TwoIslandNoopScene, SCENE_TWOISLAND_FERRY

	def_callbacks
	callback MAPCALLBACK_NEWMAP, TwoIslandFlypointCallback

TwoIslandFlypointCallback:
	setflag ENGINE_FLYPOINT_TWO_ISLAND
	endcallback

TwoIslandNoopScene:
	end

TwoIslandSailorScript:
	faceplayer
	sjump TwoIslandFerryScript

TwoIslandCoordScript:
	turnobject TWOISLAND_SAILOR, RIGHT
	sjump TwoIslandFerryScript

TwoIslandFerryScript:
	opentext
	farwritetext SeviiFerryAskText
	waitbutton
	setval 2
	special SeviiFerryMenu
	ifequal 0, .Cancel
	special SeviiFerryWarp
	end

.Cancel:
	farwritetext SeviiFerryMenuCancelText
	waitbutton
	closetext
	applymovement PLAYER, TwoIslandPlayerDeclinesFerryMovement
	end

TwoIslandPlayerDeclinesFerryMovement:
	step UP
	step_end

TwoIslandSign:
	jumptext TwoIslandSignText

JoyfulGameCornerSign:
	jumptext JoyfulGameCornerSignText

DangerFastCurrentSign:
	jumptext DangerFastCurrentSignText

TwoIslandPokecenterSign:
	jumpstd PokecenterSignScript

TwoIslandSignText:
	text "TWO ISLAND"

	para "Boon Island"
	line "for Two"
	done

JoyfulGameCornerSignText:
	text "Skip & Chomp!"
	line "Joyful GAME CORNER"
	done

DangerFastCurrentSignText:
	text "DANGER!"
	line "FAST CURRENT!"

	para "Fishing and"
	line "surfing forbidden!"
	done

WelcomeToShopMerchandiseLimitedText: ; unreferenced	
	text "Oh!"

	para "Hello, welcome"
	line "to my shop!"

	para "We've only opened"
	line "up recently."

	para "Our merchandise"
	line "is limited, but I"
	cont "hope we can"
	cont "serve your needs."
	done

AddedMerchandiseForLostelleText: ; unreferenced	
	text "I can't tell you"
	line "how grateful I am"
	cont "for your rescue"
	cont "of LOSTELLE."

	para "Thanks to your"
	line "feat, the people"
	cont "of THREE ISLAND"
	cont "have changed their"
	cont "attitudes about"
	cont "KANTO people."

	para "And, I'm from"
	line "KANTO, you see."

	para "The people of"
	line "THREE ISLAND"
	cont "helped me add"
	cont "to my merchandise."
	done

HopeYouGiveItYourBestText: ; unreferenced	
	text "Hi! I'm giving it"
	line "my best here."

	para "I hope you do too,"
	line "<PLAYER>!"

BringingItemsFromDistantLandsText: ; unreferenced	
	text "Oh, <PLAYER>!"
	line "Welcome!"

	para "I've started"
	line "bringing in items"
	cont "from far away."

	para "I've got some rare"
	line "items in, too."

	para "Have a look!"
	done

FellowMovedFromCeladonCityText: ; unreferenced	
	text "That fellow there,"
	line "he moved here"
	cont "from CELADON CITY."

	para "He started up a"
	line "shop with his"
	cont "younger brother."

	para "You have to wonder"
	line "if he knew what he"
	cont "was getting into."
	done

ShopkeepersBrotherWorksGameCornerText: ; unreferenced	
	text "The shopkeeper's"
	line "brother took a job"
	cont "at the local"
	cont "GAME CORNER."
	
	para "He's trying to"
	line "make more money so"
	cont "they can buy"
	cont "more merchandise."
	done

BrunoCameToIslandWhileBackText: ; unreferenced	
	text "Listen, listen."
	line "Did you know?"

	para "A famous TRAINER"
	line "came to the ISLAND"
	cont "a while ago."

	para "He's one of the"
	line "ELITE FOUR, his"
	cont "name is BRUNO."

	para "He went away"
	line "disappointed when"
	cont "he found out that"
	cont "they had no more"
	cont "RAGECANDYBAR left."
	done

BuyRareItemsHereText: ; unreferenced	
	text "The discerning"
	line "TRAINER knows to"
	cont "buy items here!"
	done

OldWomanLivesOutOnCapeText: ; unreferenced	
	text "There's an old"
	line "woman who lives in"
	cont "a cottage out"
	cont "on the cape."

	para "She gives the"
	line "eye to #MON."

	para "It's a bit"
	line "unnerving."
	done

HaveYouTriedJumpingGameText: ; unreferenced	
	text "Boing! Boing!"
	line "Have you tried"
	cont "the jumping game?"

	para "The #MON you"
	line "can enter…Boing!"

	para "Some go boing!"

	para "And some go"
	line "boooooooing!"

	para "Did you know that?"

	para "Boing!"
	done

TwoIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event 11, 11, SCENE_TWOISLAND_FERRY, TwoIslandCoordScript

	def_bg_events
	bg_event 29, 13, BGEVENT_READ, TwoIslandSign
	bg_event 41, 11, BGEVENT_READ, JoyfulGameCornerSign
	bg_event  9,  5, BGEVENT_READ, DangerFastCurrentSign
	bg_event 26,  5, BGEVENT_READ, TwoIslandPokecenterSign

	def_object_events
	object_event 10, 11, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TwoIslandSailorScript, -1

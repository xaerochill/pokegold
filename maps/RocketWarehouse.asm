	object_const_def

RocketWarehouse_MapScripts:
	def_scene_scripts

	def_callbacks

ManyMonsLockedInPenText: ; unreferenced
	text "There are many"
	line "#MON locked"
	cont "away in boxes…"
	done

WarehouseGrunt2IntroText: ; unreferenced
	text "Did you willingly"
	line "come to a TEAM"
	cont "ROCKET WAREHOUSE?"
	done

WarehouseGrunt2DefeatText: ; unreferenced
	text "What do you think"
	line "you're doing?!"
	done

WarehouseGrunt2PostBattleText: ; unreferenced
	text "TEAM ROCKET"
	line "broke up?"

	para "What planet"
	line "are you from?"
	done

WarehouseGrunt1IntroText: ; unreferenced
	text "Oh, wow! You have"
	line "strong #MON!"

	text "You're willing"
	line "to sell them?"
	
	para "Oh? You"
	line "wanted to battle?"
	done

WarehouseGrunt1DefeatText: ; unreferenced
	text "Oh, but…"
	line "Too much!"

WarehouseGrunt1PostBattleText: ; unreferenced
	text "We can give you a"
	line "great price if you"
	cont "sell your #MON!"
	done

WarehouseGrunt3IntroText: ; unreferenced
	text "I got word about"
	line "you from others."

	para "But there's no way"
	line "a kid like you'd"
	cont "know our BOSS!"
	done

WarehouseGrunt3DefeatText: ; unreferenced
	text "Don't…you…"
	line "dare…laugh…"
	done

WarehouseGrunt3PostBattleText: ; unreferenced
	text "Don't mess in the"
	line "doings of adults,"

	para "you jumped-up"
	line "pip-squeak!"
	done

Admin1IntroText: ; unreferenced
	text "I don't know or"
	line "care if what I do"
	cont "is right or wrong…"

	para "I put my faith"
	line "in GIOVANNI and"
	cont "do as I'm told."
	done

Admin1DefeatText: ; unreferenced
	text "I…"
	line "I'm shattered…"
	done

Admin1PostBattleText: ; unreferenced
	text "You do things"
	line "according to your"
	cont "beliefs, morals."

	para "I understand now…"
	done

MadeItSoYouCanComeBackThroughText: ; unreferenced
	text "I've made it so"
	line "you can come back"
	cont "in through there."

	para "Why don't you go"
	line "get rested and"
	cont "refreshed for"
	cont "what lies ahead?"

	para "The ADMIN after me"
	line "outranks me"
	cont "thoroughly as"
	cont "a TRAINER."

	para "You'd better steel"
	line "yourself for one"
	cont "harsh challenge."
	done

Admin2IntroText: ; unreferenced
	text "Kid, that's quite"
	line "enough of you"
	cont "playing the hero."

	para "Spreading lies"
	line "about how TEAM"
	cont "ROCKET disbanded…"

	para "It's such an"
	line "obvious attempt to"
	cont "cause confusion"
	cont "in our ranks."

	para "Fortunately, we're"
	line "not so ignorant"
	cont "to fall for the"
	cont "lies of a child!"

	para "I'll show you how"
	line "scary a ROCKET"
	cont "ADMIN can be!"
	done

Admin2DefeatText: ; unreferenced
	text "Urgh…"
	line "You were"
	cont "too strong…"

	para "<……> <……> <……>"
	
	para "Th-that's"
	line "GIOVANNI's BADGE!"

	para "So it's true?"
	line "TEAM ROCKET really"
	cont "has disbanded?"
	done

Admin2PostBattleText: ; unreferenced
	text "We will abandon"
	line "this WAREHOUSE…"

	para "But don't think"
	line "this is over."

	para "I won't let this"
	line "be the end."

	para "I will find our"
	line "BOSS GIOVANNI."
	
	para "I will resurrect"
	line "TEAM ROCKET!"
	
	para "I will…"
	
	para "Until then,"
	line "farewell!"
	done

ReportWithGraphsAndTextText: ; unreferenced
	text "A report with"
	line "graphs and text is"
	cont "on the PC monitor."

	para "“The Influence of"
	line "Magnetic Waves on"
	cont "#MON Evolution”"

	para "<……> <……> <……>"
	
	para "It's too difficult"
	line "to understand…"
	done

GideonIntroText: ; unreferenced
	text "I almost managed"
	line "to sell the"
	cont "SAPPHIRE for"
	cont "huge money…"

	para "Then, you just had"
	line "to come along"
	cont "and blow the"
	cont "whole deal apart!"

	para "Fufu… Fufufufu…"
	line "For you, there's"
	cont "no forgiveness!"
	done

GideonDefeatText: ; unreferenced
	text "Gah! Darn!"
	line "Darn! Darn!"
	done

GideonPostBattleText: ; unreferenced
	text "It's worthless if"
	line "I can't sell it!"

	para "Go ahead, take it!"
	done

GetLostLeaveMeBeText: ; unreferenced
	text "What do you"
	line "want now?"

	para "Go on, get lost,"
	line "leave me be."
	done

GiovannisKidHasRedHairText: ; unreferenced
	text "What, you again?"

	para "You… You're not"
	line "GIOVANNI's kid,"
	para "are you?"

	para "No, that can'"
	line "be right!"

	para "GIOVANNI's kid"
	line "has red hair."

	para "You don't have"
	line "any reasons for"
	cont "bugging me."

	para "Leave me alone!"
	done

RocketWarehouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 24, 26, FIVE_ISLE_MEADOW, 1
	warp_event 25, 26, FIVE_ISLE_MEADOW, 1

	def_coord_events

	def_bg_events

	def_object_events

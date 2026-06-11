	object_const_def

ResortGorgeous_MapScripts:
	def_scene_scripts

	def_callbacks

SelphysHouseSign:
	jumptext SelphysHouseSignText

DaisyIntroText: ; unreferenced
	text "With these hands,"
	line "I will create"
	cont "my victory!"
	done

DaisyDefeatText: ; unreferenced
	text "The shame of this…"
	line "I'm red-faced…"
	done

DaisyPostBattleText: ; unreferenced
	text "Uh-oh, my paint"
	line "tubes have"
	cont "scattered"
	cont "everywhere!"
	done

CelinaIntroText: ; unreferenced
	text "Excuse me!"

	para "I'm trying"
	line "to paint."

	para "Please keep out"
	line "of my sight!"
	done

CelinaDefeatText: ; unreferenced
	text "This loss…"
	line "I feel like I'm"
	cont "whiting out…"
	done

CelinaPostBattleText: ; unreferenced
	text "GILLIAN?"

	para "Please tilt your"
	line "head slightly…"

	para "There! That's the"
	line "look I want!"
	done

RaynaIntroText: ; unreferenced
	text "Hmm…"
	line "The angle, it is"
	cont "not quite there…"
	done

RaynaDefeatText: ; unreferenced
	text "Oh…"
	line "My feelings,"
	cont "they are blue…"
	done

RaynaPostBattleText: ; unreferenced
	text "The sky and sea…"
	line "They are fickle."

	para "Their changing"
	line "expressions make"
	cont "them difficult"
	cont "to capture."
	done

JackiIntroText: ; unreferenced
	text "I am visiting my"
	line "friend's retreat,"
	cont "if you must know."
	done

JackiDefeatText: ; unreferenced
	text "Oh, my, so strong."
	done

JackiPostBattleText: ; unreferenced
	text "I find it"
	line "pleasurable to"
	cont "leisurely battle"
	cont "in the gentle"
	cont "sea breeze."
	done

GillianIntroText: ; unreferenced
	text "I'm thinking of"
	line "having a pool"
	cont "made specially"
	cont "for #MON."
	done

GillianDefeatText: ; unreferenced
	text "Oh, my goodness"
	line "gracious!"
	done

GillianPostBattleText: ; unreferenced
	text "A pool would be"
	line "nice, but I must"
	cont "say, a sun-room"
	cont "may be sublime."
	done

DestinIntroText: ; unreferenced
	text "I'm a good runner."
	line "I'm really fast!"
	done

DestinDefeatText: ; unreferenced
	text "Oops!"
	line "I rushed things!"
	done

DestinPostBattleText: ; unreferenced
	text "When I run with"
	line "the wind, it feels"
	cont "like I could fly!"
	done

TobyIntroText: ; unreferenced
	text "This marine life"
	line "at this resort"
	cont "agrees with me."
	done

TobyDefeatText: ; unreferenced
	text "That's a shocker!"
	line "You're joking."
	done

TobyPostBattleText: ; unreferenced
	text "Getting so serious"
	line "over this…"
	cont "How nonsensical."
	done

SelphyThanksYouMayGoNowText: ; unreferenced
	text "Thank you."
	line "You may go now."
	done

SelphysHouseSignText:
	text "SELPHY'S HOUSE"
	done

ResortGorgeous_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 53,  9, LOST_CAVE, 1
	;warp_event 34,  9, SELPHYS_HOUSE

	def_coord_events

	def_bg_events
	bg_event 37,  7, BGEVENT_READ, SelphysHouseSign

	def_object_events

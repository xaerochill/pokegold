	object_const_def
	const ECRUTEAKGYM_MORTY
	const ECRUTEAKGYM_SAGE1
	const ECRUTEAKGYM_SAGE2
	const ECRUTEAKGYM_GRANNY1
	const ECRUTEAKGYM_GRANNY2
	const ECRUTEAKGYM_GYM_GUIDE

EcruteakGym_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakGymMortyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MORTY
	iftrue .FightDone
	writetext MortyIntroText
	waitbutton
	closetext
	winlosstext MortyWinText, MortyLossText
	loadtrainer MORTY, MORTY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MORTY
	opentext
	writetext ReceivedFogBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_FOGBADGE
	special RecalcObedienceLevel
	readvar VAR_BADGES
	scall EcruteakGymActivateRockets
	setmapscene ECRUTEAK_TIN_TOWER_ENTRANCE, SCENE_ECRUTEAKTINTOWERENTRANCE_NOOP
.FightDone:
	checktmhm TM_SHADOW_BALL
	iftrue .Rematch
	setevent EVENT_BEAT_SAGE_JEFFREY
	setevent EVENT_BEAT_SAGE_PING
	setevent EVENT_BEAT_MEDIUM_MARTHA
	setevent EVENT_BEAT_MEDIUM_GRACE
	writetext MortyFogBadgeText
	promptbutton
	verbosegivetmhm TM_SHADOW_BALL
	writetext MortyTMShadowBallText
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	end

.Rematch:
	writetext MortyFightDoneText
	yesorno
	iffalse .End
	writetext MortyRematchText
	waitbutton
	closetext
	winlosstext MortyWinText, MortyLossText
	loadtrainer MORTY, MORTY1
	startbattle
	reloadmapafterbattle
	turnobject PLAYER, DOWN
	end

.End:
	closetext
	turnobject PLAYER, DOWN
	end

EcruteakGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerSageJeffrey:
	trainer SAGE, JEFFREY, EVENT_BEAT_SAGE_JEFFREY, SageJeffreySeenText, SageJeffreyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageJeffreyAfterBattleText
	waitbutton
	closetext
	end

TrainerSagePing:
	trainer SAGE, PING, EVENT_BEAT_SAGE_PING, SagePingSeenText, SagePingBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SagePingAfterBattleText
	waitbutton
	closetext
	end

TrainerMediumMartha:
	trainer MEDIUM, MARTHA, EVENT_BEAT_MEDIUM_MARTHA, MediumMarthaSeenText, MediumMarthaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumMarthaAfterBattleText
	waitbutton
	closetext
	end

TrainerMediumGrace:
	trainer MEDIUM, GRACE, EVENT_BEAT_MEDIUM_GRACE, MediumGraceSeenText, MediumGraceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumGraceAfterBattleText
	waitbutton
	closetext
	end

EcruteakGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MORTY
	iftrue .EcruteakGymGuideWinScript
	writetext EcruteakGymGuideText
	waitbutton
	closetext
	end

.EcruteakGymGuideWinScript:
	writetext EcruteakGymGuideWinText
	waitbutton
	closetext
	end

EcruteakGymStatue:
	jumpstd GymStatue1Script

MortyIntroText:
	text "Good of you to"
	line "have come."

	para "Here in ECRUTEAK,"
	line "#MON have been"
	cont "revered."

	para "It's said that a"
	line "rainbow-colored"

	para "#MON will come"
	line "down to appear"

	para "before a truly"
	line "powerful trainer."

	para "I believed that"
	line "tale, so I have"

	para "secretly trained"
	line "here all my life."

	para "As a result, I can"
	line "now see what"
	cont "others cannot."

	para "Just a bit more…"

	para "With a little"
	line "more, I could see"

	para "a future in which"
	line "I meet the #MON"
	cont "of rainbow colors."

	para "You're going to"
	line "help me reach that"
	cont "level!"
	done

MortyWinText:
	text "I'm not good"
	line "enough yet…"
	done

MortyLossText:
	text "I moved… one step"
	line "ahead again."
	done

ReceivedFogBadgeText:
	text  "I see…"

	para "Your journey has"
	line "taken you to far-"
	cont "away places."

	para "And you have wit-"
	line "nessed much more"
	cont "than I."
	
	para "All right. This"
	line "BADGE is yours."
	
	para "<PLAYER> received"
	line "FOGBADGE."
	done

MortyFogBadgeText:
	text "By having FOG-"
	line "BADGE, #MON"
	line "knowing SURF will"

	para "be able to use"
	line "that move anytime."

	para "I want you to have"
	line "this too."
	done

MortyTMShadowBallText:
	text "It's SHADOW BALL."
	line "It causes damage"

	para "and may reduce"
	line "SPCL.DEF."

	para "Use it if it"
	line "appeals to you."
	done

MortyFightDoneText:
	text "If I fight with"
	line "you next time, I"
	cont "will be able to"
	cont "see something new"
	cont "again… I look"
	cont "forward to it."

	para "Let's try that"
	line "one more time."
	done

MortyRematchText:
	text "The time has come"
	line "to test the fruits"
	cont "of my training…"
	done

SageJeffreySeenText:
	text "I spent the spring"
	line "with my #MON."

	para "Then summer, fall"
	line "and winter…"

	para "Then spring came"
	line "again. We have"

	para "lived together"
	line "for a long time."
	done

SageJeffreyBeatenText:
	text "Wins and losses, I"
	line "experienced both."
	done

SageJeffreyWonText:
	text "All we have to"
	line "decide is what to"
	cont "do with the time"
	cont "given to us."
	done

SageJeffreyAfterBattleText:
	text "Where did #MON"
	line "come from? Where"
	cont "do they go after"
	cont "they die?"

	para "I think I know"
	line "which #MON died"
	cont "when the BRASS"
	cont "TOWER burnt down"
	cont "150 years ago:"

	para "FLAREON, JOLTEON"
	line "and VAPOREON."

	para "I can sense their"
	line "spirits but they"
	cont "are different…"
	done

SagePingSeenText:
	text "Can you inflict"
	line "any damage on our"
	cont "#MON?"
	done

SagePingBeatenText:
	text "Ah! Well done!"
	done

SagePingWonText:
	text "Ah! Nice try!"
	done

SagePingAfterBattleText:
	text "We use only ghost-"
	line "type #MON."

	para "No normal-type"
	line "attack can harm"
	cont "them!"

	para "They are deeply"
	line "connected with"
	cont "ECRUTEAK CITY's"
	cont "history…"

	para "Even before the"
	line "BRASS TOWER was"
	cont "built over 650"
	cont "years ago!"
	done

MediumMarthaSeenText:
	text "I shall win!"
	done

MediumMarthaBeatenText:
	text "I, I, I lost!"
	done

MediumMarthaWonText:
	text "I have no words."
	done

MediumMarthaAfterBattleText:
	text "The one who wants"
	line "to win most--will!"

	para "Just like we did"
	line "during the war…"

	para "Without us or"
	line "OKERA, all of"
	cont "JOHTO would have"
	cont "been doomed!"
	done

MediumGraceSeenText:
	text "Stumped by our in-"
	line "visible floor?"

	para "Defeat me if you"
	line "want a hint!"
	done

MediumGraceBeatenText:
	text "Wha-what?"
	done

MediumGraceWonText:
	text "If only your"
	line "eyes could see."
	done

MediumGraceAfterBattleText:
	text "Fine. I shall tell"
	line "you the secret of"

	para "the invisible"
	line "floor."

	para "The path is right"
	line "before our eyes!"

	para "We mustn't stray"
	line "stray from it!"

	para "They destroyed so"
	line "much in GOLDENROD"
	cont "CITY when they"
	cont "tore down our old"
	cont "alluring buildings"
	cont "to build their"
	cont "monstrosities…"
	done

EcruteakGymGuideText:
	text "The trainers here"
	line "have secret mo-"
	cont "tives."

	para "If you win, they"
	line "may tell you some"

	para "deep secrets about"
	line "ECRUTEAK."
	done

EcruteakGymGuideWinText:
	text "Whew, <PLAYER>."
	line "You did great!"

	para "I was cowering in"
	line "the corner out of"
	cont "pure terror!"
	done

EcruteakGymClosedText:
	text "MORTY, the GYM"
	line "LEADER, is absent."

	para "Sorry, but you'll"
	line "have to leave."

	para "Hohohoho."
	done

EcruteakGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, ECRUTEAK_CITY, 10
	warp_event  5, 17, ECRUTEAK_CITY, 10
	warp_event  4, 14, ECRUTEAK_GYM, 4
	warp_event  2,  4, ECRUTEAK_GYM, 3
	warp_event  3,  4, ECRUTEAK_GYM, 3
	warp_event  4,  4, ECRUTEAK_GYM, 3
	warp_event  4,  5, ECRUTEAK_GYM, 3
	warp_event  6,  7, ECRUTEAK_GYM, 3
	warp_event  7,  4, ECRUTEAK_GYM, 3
	warp_event  2,  6, ECRUTEAK_GYM, 3
	warp_event  3,  6, ECRUTEAK_GYM, 3
	warp_event  4,  6, ECRUTEAK_GYM, 3
	warp_event  5,  6, ECRUTEAK_GYM, 3
	warp_event  7,  6, ECRUTEAK_GYM, 3
	warp_event  7,  7, ECRUTEAK_GYM, 3
	warp_event  4,  8, ECRUTEAK_GYM, 3
	warp_event  5,  8, ECRUTEAK_GYM, 3
	warp_event  6,  8, ECRUTEAK_GYM, 3
	warp_event  7,  8, ECRUTEAK_GYM, 3
	warp_event  2,  8, ECRUTEAK_GYM, 3
	warp_event  2,  9, ECRUTEAK_GYM, 3
	warp_event  2, 10, ECRUTEAK_GYM, 3
	warp_event  2, 11, ECRUTEAK_GYM, 3
	warp_event  4, 10, ECRUTEAK_GYM, 3
	warp_event  5, 10, ECRUTEAK_GYM, 3
	warp_event  2, 12, ECRUTEAK_GYM, 3
	warp_event  3, 12, ECRUTEAK_GYM, 3
	warp_event  4, 12, ECRUTEAK_GYM, 3
	warp_event  5, 12, ECRUTEAK_GYM, 3
	warp_event  7, 10, ECRUTEAK_GYM, 3
	warp_event  7, 11, ECRUTEAK_GYM, 3
	warp_event  7, 12, ECRUTEAK_GYM, 3
	warp_event  7, 13, ECRUTEAK_GYM, 3

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, EcruteakGymStatue
	bg_event  6, 15, BGEVENT_READ, EcruteakGymStatue

	def_object_events
	object_event  5,  1, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, EcruteakGymMortyScript, -1
	object_event  2,  7, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSageJeffrey, -1
	object_event  3, 13, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSagePing, -1
	object_event  7,  5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerMediumMartha, -1
	object_event  7,  9, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerMediumGrace, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakGymGuideScript, -1

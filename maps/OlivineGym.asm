	object_const_def
	const OLIVINEGYM_JASMINE
	const OLIVINEGYM_GYM_GUIDE

OlivineGym_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineGymJasmineScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_JASMINE
	iftrue .FightDone
	writetext JasmineIntroText
	waitbutton
	closetext
	winlosstext JasmineWinText, JasmineLossText
	loadtrainer JASMINE, JASMINE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_JASMINE
	opentext
	writetext ReceivedMineralBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_MINERALBADGE
	readvar VAR_BADGES
	scall OlivineGymActivateRockets
.FightDone:
	checktmhm TM_IRON_TAIL
	iftrue .Rematch
	writetext JasmineMineralBadgeText
	promptbutton
	verbosegivetmhm TM_IRON_TAIL
	writetext JasmineTMIronTailText
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	end

.Rematch:
	writetext JasmineFightDoneText
	yesorno
	iffalse .End
	writetext JasmineRematchText
	waitbutton
	closetext
	winlosstext JasmineWinText, JasmineLossText
	loadtrainer JASMINE, JASMINE1
	startbattle
	reloadmapafterbattle
	turnobject PLAYER, DOWN
	end

.End:
	closetext
	turnobject PLAYER, DOWN
	end

OlivineGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

OlivineGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_JASMINE
	iftrue .OlivineGymGuideWinScript
	checkevent EVENT_JASMINE_RETURNED_TO_GYM
	iffalse .OlivineGymGuidePreScript
	opentext
	writetext OlivineGymGuideText
	waitbutton
	closetext
	end

.OlivineGymGuideWinScript:
	opentext
	writetext OlivineGymGuideWinText
	waitbutton
	closetext
	end

.OlivineGymGuidePreScript:
	opentext
	writetext OlivineGymGuidePreText
	waitbutton
	closetext
	end

OlivineGymStatue:
	checkflag ENGINE_MINERALBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, JASMINE, JASMINE1
	jumpstd GymStatue2Script

JasmineIntroText:
	text "…Thank you for"
	line "your help at the"
	cont "LIGHTHOUSE…"

	para "But this is dif-"
	line "ferent. Please"

	para "allow me to intro-"
	line "duce myself."

	para "I am JASMINE, a"
	line "GYM LEADER. I use"
	cont "the steel-type."

	para "…Do you know about"
	line "the steel-type?"

	para "It's a type that"
	line "was only recently"
	cont "discovered."

	para "…Um… May I begin?"
	done

JasmineWinText:
	text "…You are a better"
	line "trainer than me,"

	para "in both skill and"
	line "kindness."
	done

JasmineLossText:
	text "I'm glad… I won…"
	done

ReceivedMineralBadgeText:
	text "In accordance with"
	line "LEAGUE rules, I"

	para "confer upon you"
	line "this BADGE."
	
	para "<PLAYER> received"
	line "MINERALBADGE."

JasmineMineralBadgeText:
	para "…Um… Please take"
	line "this too…"
	done

JasmineTMIronTailText:
	text "…You could use"
	line "that TM to teach"
	cont "IRON TAIL."

	text "Your #MON will"
	line "hit the target"
	cont "with its hard tail"
	cont "and occasionally"
	cont "lower Defenses…"
	done

JasmineFightDoneText:
	text "Properly tempered"
	line "steel won't be"
	cont "made rusty by"
	cont "things like this!"
	
	para "If you keep"
	line "training without"
	cont "giving up,"
	
	para "I'm sure we'll see"
	line "each other again."

	text "…Um… Since we're"
	line "here already…"

	para "May we please"
	line "get started?"
	done

JasmineRematchText:
	text "Um… I don't know"
	line "how to say this,"
	cont "but good luck…"
	done

OlivineGymGuideText:
	text "JASMINE uses the"
	line "newly discovered"
	cont "steel-type."

	para "I don't know very"
	line "much about it."
	done

OlivineGymGuideWinText:
	text "That was awesome."

	para "The steel-type,"
	line "huh?"

	para "That was a close"
	line "encounter of an"
	cont "unknown kind!"
	done

OlivineGymGuidePreText:
	text "JASMINE, the GYM"
	line "LEADER, is at the"
	cont "LIGHTHOUSE."

	para "She's been tending"
	line "to a sick #MON."

	para "A strong trainer"
	line "has to be compas-"
	cont "sionate."
	done

OlivineGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, OLIVINE_CITY, 2
	warp_event  5, 15, OLIVINE_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, OlivineGymStatue
	bg_event  6, 13, BGEVENT_READ, OlivineGymStatue

	def_object_events
	object_event  5,  3, SPRITE_JASMINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineGymJasmineScript, EVENT_OLIVINE_GYM_JASMINE
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineGymGuideScript, -1
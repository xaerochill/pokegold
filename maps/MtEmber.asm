	object_const_def

MtEmber_MapScripts:
	def_scene_scripts

	def_callbacks

ExplosionTeachText: ; unreferenced
	text "Can you imagine?"
	
	para "If this volcano"
	line "were to erupt?"

	para "The explosion"
	line "would be the"
	cont "end of us."

	para "Don't you think"
	line "that's terrifying?"
	done

ExplosionDeclinedText: ; unreferenced
	text "Yeah, right. It's"
	line "too terrifying."
	done

ExplosionWhichMonText: ; unreferenced
	text "You're terribly"
	line "brave! Here,"
	cont "take this!"
	done

ExplosionTaughtText: ; unreferenced
	text "Using EXPLOSION"
	line "on this volcano…"

	para "What a"
	line "terrifying thrill!"
	done

WellTryDiggingHereText: ; unreferenced
	text "Over here."

	para "We'll try"
	line "digging here."

	para "That treasure the"
	line "ADMINS have been"
	cont "talking about"
	cont "should be here."
	done

YoureInTheWayGetLostText: ; unreferenced
	text "What the…?"
	line "You're in the way."
	cont "Get lost."
	done

PunchedThroughAtLastText: ; unreferenced
	text "Whew, punched"
	line "through at last."

	para "Let's go"
	line "treasure hunting!"
	done

WhatsPasswordAgainText: ; unreferenced
	text "Any treasure we"
	line "find, we haul back"
	cont "to the WAREHOUSE,"
	cont "understood?"

	para "…Oh, and what're"
	line "the passwords?"

	para "At the ROCKET"
	line "WAREHOUSE, I mean."
	done

FirstPasswordGoldeenText: ; unreferenced
	text "What, you forgot"
	line "the password?"

	para "There are"
	line "actually two."

	para "The first one's"
	line "“GOLDEEN need log”"
	cont "and the other one…"
	done

SnoopsBeenListeningInText: ; unreferenced
	text "Hey!"

	para "This snoop's been"
	line "listening in!"
	done

MtEmberGrunt1IntroText: ; unreferenced
	text "You've been"
	line "eavesdropping on"
	cont "us, haven't you?"
	done

MtEmberGrunt1DefeatText: ; unreferenced
	text "Huh, what?"
	done

MtEmberGrunt1PostBattleText: ; unreferenced
	text "Why'd you"
	line "have to win?"
	done

MtEmberGrunt2IntroText: ; unreferenced
	text "Trying to horn in"
	line "on our treasure?"

	para "Don't bet on it!"
	done

MtEmberGrunt2DefeatText: ; unreferenced
	text "Wait!"
	line "But how?"
	done

MtEmberGrunt2PostBattleText: ; unreferenced
	text "Develop amnesia"
	line "conveniently and"
	cont "forget everything"
	cont "you heard!"
	done

WellRegroupDontStepInsideThereText: ; unreferenced
	text "What a setback…"

	para "We'll have"
	line "to regroup."

	para "You! Don't even"
	line "think about taking"
	cont "a step inside!"

	para "If you know what's"
	line "good for you, just"
	cont "stay away!"
	done

LoganIntroText: ; unreferenced
	text "An active volcano"
	line "is one that's"
	cont "about to erupt."
	done

LoganDefeatText: ; unreferenced
	text "Whew…"
	line "That was hot!"

	para "Sweat's erupting"
	line "from me!"
	done

LoganPostBattleText: ; unreferenced
	text "They say there are"
	line "over 1,500 active"
	cont "volcanoes."

	para "Just thinking"
	line "about them makes"
	cont "me feel all hot!"
	done

BethIntroText: ; unreferenced
	text "Do you know how"
	line "caves form inside"
	cont "volcanoes?"
	done

BethDefeatText: ; unreferenced
	text "Atchah! You're"
	line "shockingly good!"
	done

BethPostBattleText: ; unreferenced
	text "When lava at the"
	line "surface of magma"
	cont "hardens, and the"
	cont "magma inside flows"
	cont "out, caverns"
	cont "are left behind."
	done

JocelynIntroText: ; unreferenced
	text "I've been in"
	line "training to mend"
	cont "my broken heart…"

	para "It toughened me up"
	line "physically!"

	para "Hi-yah!"
	done

JocelynDefeatText: ; unreferenced
	text "I think I tried"
	line "to overdo it…"
	done

JocelynPostBattleText: ; unreferenced
	text "The way you battle"
	line "reminds me of the"
	cont "guy who dumped me…"
	done

MtEmber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 19, MT_EMBER_INTERIOR, 1
	warp_event 41, 31, MT_EMBER_INTERIOR, 2
	warp_event  9,  5, MT_EMBER_INTERIOR, 3
	warp_event 41,  5, MT_EMBER_INTERIOR, 4

	def_coord_events

	def_bg_events

	def_object_events

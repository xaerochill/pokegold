	object_const_def

WaterLabyrinth_MapScripts:
	def_scene_scripts

	def_callbacks

LetMeTakeLookAtMonsText: ; unreferenced
	text "You travel all"
	line "over the place,"
	cont "don't you?"

	para "You're not driving"
	line "your POKéMON too"
	cont "harshly, are you?"

	para "Let me"
	line "take a look."
	
	para "<……> <……> <……>"
	done

HmmISeeIseeText: ; unreferenced
	text "Ah, hmm…"
	line "I see, I see…"
	done

TreatMonRightHaveThisText: ; unreferenced
	text "Oh, impressive."

	para "You treat your"
	line "#MON right."

	para "I think you can be"
	line "entrusted with"
	cont "this curiosity."
	done

ReceivedEggFromManText: ; unreferenced
	text "<PLAYER>"
	line "received an EGG"
	cont "from the man!"
	done

DontHaveSpaceInYourPartyText: ; unreferenced
	text "…Unfortunately,"
	line "you don't have"
	cont "space for this."

	para "You'd better"
	line "come back for"
	cont "it another time."
	done

GladIMetSomeoneLikeYouText: ; unreferenced
	text "I received that"
	line "EGG while I was"
	cont "traveling. I'm"
	cont "glad I met"
	cont "someone like you."
	done

CuteMonRemindsMeOfDaisyText: ; unreferenced
	text "Oh, hello."

	para "That's a cute"
	line "#MON."

	para "Seeing it reminds"
	line "me of a sweet"
	cont "little girl I met"
	cont "while traveling."

	para "She was gently"
	line "grooming #MON…"

	para "She was a little"
	line "angel. That little"
	cont "girl's name…"

	para "Was it DAISY?"
	done

AlizeIntroText: ; unreferenced
	text "This is a superb"
	line "environment for"
	cont "raising #MON."
	done

AlizeDefeatText: ; unreferenced
	text "Your #MON are"
	line "growing up"
	cont "admirably well!"
	done

AlizePostBattleText: ; unreferenced
	text "I think you have"
	line "the talent to be"
	cont "a good BREEDER."
	done

WaterLabyrinth_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events

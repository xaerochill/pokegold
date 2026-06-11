	object_const_def

IcefallCaveBack_MapScripts:
	def_scene_scripts

	def_callbacks

KeepHandsOffMonsText: ; unreferenced
	text "Keep your filthy"
	line "hands off the"
	cont "#MON in here!"

	para "Do as I say, or"
	line "you'll have me to"
	cont "answer to!"
	done

ShutItLadyLeaveUsBeText: ; unreferenced
	text "Aww, shut it,"
	line "lady, and"
	cont "leave us be."

	para "Don't let your"
	line "glasses get all"
	cont "steamed up!"
	done

PlayerHelpMeKickPoachersOutText: ; unreferenced
	text "<PLAYER>?!"

	para "What are you"
	line "doing here?"
	
	para "We can catch up"
	line "later. Right now,"
	cont "I need your help."

	para "Help me kick them"
	line "out before they"
	cont "do anything else."

	para "They've been"
	line "poaching #MON"
	cont "to sell them off!"

	para "Are you ready?"

	para "You take"
	line "that one, please!"
	done

GruntIntroText: ; unreferenced
	text "W-what?!"

	para "Who says we can't"
	line "do what we want"
	cont "with the #MON"
	cont "we catch?"
	done

GruntDefeatText: ; unreferenced
	text "We didn't"
	line "plan on this!"
	done

WhereHaveYouTakenMonsText: ; unreferenced
	text "Humph."

	para "So despicably weak."

	para "You!"
	line "Tell me!"

	para "Where have you"
	line "taken the captured"
	cont "#MON?"

	para "I'm smashing your"
	line "ring once and"
	cont "for all!"
	done

NotTellingYouThatText: ; unreferenced
	text "N-no way!"

	para "I'm not telling"
	line "you that!"
	done

WellDeepFreezeYouText: ; unreferenced
	text "If you won't"
	line "confess, we'll"
	cont "deep-freeze you."

	para "My LAPRAS is"
	line "furious for what"
	cont "you've done"
	cont "to its friends."

	para "Go, LAPRAS!"
	line "ICE BEAM…"
	done

OkayRocketWareHouseFiveIslandText: ; unreferenced
	text "Wawaah! Okay!"
	line "I'll talk!"

	para "The #MON are in"
	line "a ROCKET WAREHOUSE"
	cont "on FIVE ISLAND."

	para "There! I said it!"	
	line "We'll go now!"

	para "…But I doubt you"
	line "will ever make it"
	cont "into there!"
	
	para "Heheheheh!"
	done

ThankYouThisIsAwfulText: ; unreferenced
	text "<PLAYER>,"
	line "thank you."

	para "But this is awful…"

	para "I was born and"
	line "raised here on"
	cont "these islands."

	para "I had no idea that"
	line "those poachers"
	cont "were loose here…"
	done

IcefallCaveBack_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 15, ICEFALL_CAVE_1F, 2

	def_coord_events

	def_bg_events

	def_object_events

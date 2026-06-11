	object_const_def

EmberSpa_MapScripts:
	def_scene_scripts

	def_callbacks

WaterWarmsMeToCoreText: ; unreferenced
	text "Hm!"

	para "Haaaaaaaaaaah!"

	para "Aaaah!"
	line "This is heavenly!"
	
	para "The water warms"
	line "me to my core!"

	para "You should"
	line "jump in, too."

	para "Go to the middle,"
	line "relax, and get"
	cont "good and warm!"
	done

EnjoyBowlOfChowderText: ; unreferenced
	text "My favorite part"
	line "of bathing comes"
	cont "right after this."

	para "I enjoy a bowl of"
	line "chowder to warm me"
	cont "from the inside!"
	done

WaterExquisiteFullyRefreshedText: ; unreferenced
	text "The water is"
	line "perfectly warm."

	para "It's exquisite…"

	para "<PLAYER> and"
	line "the #MON were"
	cont "fully refreshed!"
	done

HotSpringIsTherapeuticText: ; unreferenced
	text "Soaking in a hot"
	line "spring pool is"
	cont "therapeutic…"
	done

SeeHowSmoothMySkinIsText: ; unreferenced
	text "Have a look"
	line "at my face."

	para "See how smooth"
	line "my skin is?"

	para "The hot spring's"
	line "water keeps my"

	para "skin younger"
	line "than my age."
	done

BrunoVisitsSpaOnOccasionText: ; unreferenced
	text "After an honest"
	line "day of training,"
	cont "nothing beats a"
	cont "relaxing soak in"
	cont "the hot pool."

	para "BRUNO visits the"
	line "SPA on occasion."

	para "He comes to rehab"
	line "injuries, both"
	cont "his own and"
	cont "his #MON's."
	done

UsedThisToMakeEmberSpaText: ; unreferenced
	text "Hot springs go"
	line "hand-in-hand with"
	cont "volcanoes."

	para "This EMBER SPA,"
	line "well, I made it"
	cont "years ago."

	para "I hewed the pool"
	line "right out of a"
	cont "gigantic boulder"
	cont "by hand."
	
	para "I was using this"
	line "at the time."

	para "I suppose I can"
	line "part with it."
	done

ExplainHM06Text: ; unreferenced
	text "That shatters"
	line "boulders like they"
	cont "were made"
	cont "of crackers."
	done

EmberSpa_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 37, KINDLE_ROAD, 1

	def_coord_events

	def_bg_events

	def_object_events

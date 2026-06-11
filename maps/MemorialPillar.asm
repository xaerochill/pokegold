	object_const_def

MemorialPillar_MapScripts:
	def_scene_scripts

	def_callbacks

MiloIntroText: ; unreferenced
	text "I'm the eldest of"
	line "the BIRD BROTHERS."

	para "The best thing"
	line "about birds… It's"
	cont "gotta be the beak."
	done

MiloDefeatText: ; unreferenced
	text "Oh, so sharp!"
	done

MiloPostBattleText: ; unreferenced
	text "We fly to FOUR"
	cont "ISLAND from here."
	done

ChazIntroText: ; unreferenced
	text "I'm the middle"
	line "sibling of"
	cont "the BIRD BROTHERS."

	para "The best thing"
	line "about birds… It's"
	cont "gotta be the wing."
	done

ChazDefeatText: ; unreferenced
	text "Flap, flap!"
	done

ChazPostBattleText: ; unreferenced
	text "There was a really"
	line "somber guy there."
	done

HaroldIntroText: ; unreferenced
	text "I'm the youngest"
	line "brother of the"
	cont "the BIRD BROTHERS."

	para "The best thing"
	line "about birds… It's"
	cont "gotta be the down."
	done

HaroldDefeatText: ; unreferenced
	text "Down is so comfy…"
	line "Makes me drowsy…"
	done

HaroldPostBattleText: ; unreferenced
	text "It fills me with"
	line "happiness when"
	cont "bird #MON"
	cont "beg playfully…"
	done

ScrubScrubText: ; unreferenced
	text "Scrub, scrub…"
	done

YourMonsLookHealthyText: ; unreferenced
	text "Hello…"

	para "Your #MON"
	line "look healthy…"
	done

ThisIsWhereIBuriedMyOnixText: ; unreferenced
	text "This is where I"
	line "buried my ONIX…"

	para "It was named"
	line "TECTONIX…"
	done

HereLiesTectonixText: ; unreferenced
	text "Boulders and rocks"
	line "are neatly piled"
	cont "up as a cairn."

	para "“Here lies"
	line "TECTONIX” is"
	cont "engraved there."
	done

HereLiesTectonixLemonadeOfferingText: ; unreferenced
	text "A LEMONADE is"
	line "placed as an"
	cont "offering in front"
	cont "of the grave."

LeaveAnotherLemonadeOfferingText: ; unreferenced
	text "Would you like to"
	line "leave another one"
	cont "to pay respects?"
	done

PlacedCanOfLemonadeText: ; unreferenced
	text "<PLAYER> placed"
	line "a can of LEMONADE"
	cont "as an offering"
	cont "at the grave."
	done

ThankYouPleaseTakeThisText: ; unreferenced
	text "Th-thank you…"

	para "That was my"
	line "TECTONIX' favorite"
	cont "drink of all…"

	para "I don't even know"
	line "you, but your act"
	cont "of kindness…"

	para "It's uplifted"
	line "me a little."

	para "Please take this"
	line "as my thanks!"
	done

BeGoodToYourMonsTooText: ; unreferenced
	text "Please be good to"
	line "your #MON, too."
	done

ScrubScrubTectonixText: ; unreferenced
	text "Scrub, scrub…"

	para "<……> <……> <……>"

	para "TECTONIX…"
	done

MemorialPillar_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events

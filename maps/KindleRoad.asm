	object_const_def

KindleRoad_MapScripts:
	def_scene_scripts

	def_callbacks

KindleRoadSign:
	jumptext KindleRoadSignText

EmberSpaSign:
	jumptext EmberSpaSignText

MariaIntroText: ; unreferenced
	text "The weather's"
	line "gorgeous! Perfect"
	cont "for a battle!"
	done

MariaDefeatText: ; unreferenced
	text "Aiyeeeeh!"
	done

MariaPostBattleText: ; unreferenced
	text "Please don't"
	line "splash my face!"

	para "You'll ruin"
	line "the makeup."
	done

AbigailIntroText: ; unreferenced
	text "I'm beginning"
	line "to get a sunburn…"
	done

AbigailDefeatText: ; unreferenced
	text "Oh, you're awful."
	done

AbigailPostBattleText: ; unreferenced
	text "I like that cap"
	line "you have."
	
	para "Maybe I should"
	line "wear one, too…"
	done

FinnIntroText: ; unreferenced
	text "Seen from here,"
	line "MT. EMBER towers"
	cont "into the sky."
	done

FinnDefeatText: ; unreferenced
	text "Well, aren't"
	line "you tough?"
	done

FinnPostBattleText: ; unreferenced
	text "The sky is immense"
	line "around here."
	done

GarrettIntroText: ; unreferenced
	text "I took a break"
	line "from swimming,"
	cont "only to have"
	cont "you challenge me?"
	done

GarrettDefeatText: ; unreferenced
	text "Hey, what the…"
	line "You're good, you!"
	done

GarrettPostBattleText: ; unreferenced
	text "Instead of using"
	line "SURF all the time,"
	cont "you should swim!"
	done

TommyIntroText: ; unreferenced
	text "Wait!"

	para "Wait a second!"

	para "I think I've"
	line "hooked a big one!"
	done

TommyDefeatText: ; unreferenced
	text "I've lost it"
	line "all again…"
	done

TommyPostBattleText: ; unreferenced
	text "Not only did I"
	line "lose, the big one"
	cont "got away, too!"
	done

SharonIntroText: ; unreferenced
	text "Could you help me"
	line "with my training?"
	done

SharonDefeatText: ; unreferenced
	text "You were a"
	line "cut above me."
	done

SharonPostBattleText: ; unreferenced
	text "It's clear that"
	line "you're skilled."

	para "I like you!"
	done

TanyaIntroText: ; unreferenced
	text "There isn't a day"
	line "in which we"
	cont "don't train!"
	done

TanyaDefeatText: ; unreferenced
	text "I'm such a fool!"
	done

TanyaPostBattleText: ; unreferenced
	text "I'll train even"
	line "harder now!"
	done

SheaIntroText: ; unreferenced
	text "Every morning,"
	line "before breakfast,"
	cont "I swim around"
	cont "this island."
	done

SheaDefeatText: ; unreferenced
	text "Gasp…"
	line "Gasp…"
	done

SheaPostBattleText: ; unreferenced
	text "I lost because I'm"
	line "pooped from all"
	cont "the running I did…"
	done

HughIntroText: ; unreferenced
	text "Dress properly"
	line "for battle!"

	para "Lose that"
	line "frivolous outfit!"
	done

HughDefeatText: ; unreferenced
	text "Why me?!"
	done

HughPostBattleText: ; unreferenced
	text "Even martial"
	line "artists become"
	cont "fashion conscious…"
	done

BryceIntroText: ; unreferenced
	text "You know,"
	line "everything tastes"
	cont "great when you're"
	cont "out in the wild."
	done

BryceDefeatText: ; unreferenced
	text "Awww, blown!"
	done

BrycePostBattleText: ; unreferenced
	text "The water in"
	line "volcanic regions"
	cont "is delicious."
	done

ClaireIntroText: ; unreferenced
	text "My lunch filled us"
	line "up, so will you"
	cont "battle us for"
	cont "some exercise?"
	done

ClaireDefeatText: ; unreferenced
	text "That made me"
	line "all sweaty."
	done

ClairePostBattleText: ; unreferenced
	text "What should I do?"
	line "I feel famished."
	done

KiaIntroText: ; unreferenced
	text "My big brother and"
	line "I make an awesome"
	cont "combination!"
	done

KiaDefeatText: ; unreferenced
	text "Huh?! I can't"
	line "believe it!"
	done

KiaPostBattleText: ; unreferenced
	text "How could there be"
	line "anyone better than"
	cont "my big brother?"
	done

MikIntroText: ; unreferenced
	text "Together with KIA,"
	line "I fear nothing!"
	done

MikDefeatText: ; unreferenced
	text "Whoa!"
	line "That's too much!"
	done

MikPostBattleText: ; unreferenced
	text "How could my"
	line "combination with"
	cont "KIA fail?"
	done

KindleRoadSignText:
	text "This is"
	line "KINDLE ROAD."

	para "Go straight"
	line "for MT. EMBER."
	done

EmberSpaSignText:
	text "Light the Fire"
	line "in Your Heart!"

	para "EMBER SPA"
	done

KindleRoad_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 59, EMBER_SPA, 1

	def_coord_events

	def_bg_events
	bg_event  9, 115, BGEVENT_READ, KindleRoadSign
	bg_event  9,  60, BGEVENT_READ, EmberSpaSign

	def_object_events

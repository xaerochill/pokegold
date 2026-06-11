	object_const_def

SevaultCanyon_MapScripts:
	def_scene_scripts

	def_callbacks

SevaultCanyonSign:
	jumptext SevaultCanyonSignText

CyndyIntroText: ; unreferenced
	text "My conditioning's"
	line "in top form!"
	done

CyndyDefeatText: ; unreferenced
	text "Huh? Something's"
	line "not right…"
	done

CyndyPostBattleText: ; unreferenced
	text "The way I am now,"
	line "I may have to"
	cont "hold off on"
	cont "TRAINER TOWER…"
	done

EvanIntroText: ; unreferenced
	text "It doesn't matter"
	line "if you happen to"
	cont "have the strongest"
	cont "#MON…"

	para "It doesn't mean a"
	line "thing if you don't"
	cont "know how to use"
	cont "them properly!"
	done

EvanDefeatText: ; unreferenced
	text "You're a master"
	line "at this."
	done

EvanPostBattleText: ; unreferenced
	text "You see them every"
	line "so often, TRAINERS"
	cont "with super #MON"
	cont "who have no idea"
	cont "what to do."

	para "Before training"
	line "#MON, TRAINERS"
	cont "themselves need"
	cont "to grow up."
	done

JacksonIntroText: ; unreferenced
	text "I work to protect"
	line "the environment."

	para "In turn, nature"
	line "protects me!"
	done

JacksonDefeatText: ; unreferenced
	text "Wow! You're tough!"
	line "How about"
	cont "protecting me?"
	done

JacksonPostBattleText: ; unreferenced
	text "From far out among"
	line "the stars, our"
	cont "planet is just"
	cont "a drop of water."

	para "But we want to"
	line "protect that drop"
	cont "of water for all."
	done

KatelynIntroText: ; unreferenced
	text "Your shoes are"
	line "pretty snazzy."
	done

KatelynDefeatText: ; unreferenced
	text "You're hot stuff"
	line "in spite of your"
	cont "cute looks."
	done

KatelynPostBattleText: ; unreferenced
	text "Your mom bought"
	line "those snazzy"
	cont "RUNNING SHOES?"

	para "She must"
	line "adore you."
	done

LeroyIntroText: ; unreferenced
	text "You look strong."
	line "Let me battle"
	cont "you, please!"
	done

LeroyDefeatText: ; unreferenced
	text "I knew it!"
	line "You're as tough"
	cont "as I thought!"
	done

LeroyPostBattleText: ; unreferenced
	text "The way you battle"
	line "has given me a lot"
	cont "of useful data."

	para "Thanks so much!"
	done

MichelleIntroText: ; unreferenced
	text "I was given the"
	line "best possible"
	cont "education to"
	cont "get this strong."
	
	para "I don't want to"
	line "lose to anyone!"
	done

MichelleDefeatText: ; unreferenced
	text "Thank you. I feel"
	line "like I've been"
	cont "set free by"
	cont "losing to you."
	done

MichellePostBattleText: ; unreferenced
	text "For some reason,"
	line "I get furious"
	cont "over the slightest"
	cont "thing. I'll calm"
	cont "myself by"
	cont "breathing deeply."
	done

LexIntroText: ; unreferenced
	text "My darling NYA,"
	line "together we win!"
	done

LexDefeatText: ; unreferenced
	text "I seem to have"
	line "been too careless…"
	done

LexPostBattleText: ; unreferenced
	text "I think it was a"
	line "good experience"
	cont "for NYA. You have"
	cont "my gratitude."
	done

NyaIntroText: ; unreferenced
	text "I'll do my best so"
	line "I won't drag down"
	cont "my mentor, LEX!"
	done

NyaDefeatText: ; unreferenced
	text "Oh, no…"
	line "I'm so sorry, I…"
	done

NyaPostBattleText: ; unreferenced
	text "I think I'm going"
	line "to need much more"
	cont "training with LEX…"
	
	para "…So, LEX, please,"
	line "may I stay with"
	cont "you like this?"
	done

BrunoTrainedWithBrawlyText: ; unreferenced
	text "Training by"
	line "oneself is not"
	cont "a bad thing."

	para "But it's also not"
	line "bad to aim for"
	cont "the top with"
	cont "a partner."

	para "Even BRUNO…"
	
	para "He trained with"
	line "a fellow by the"
	cont "name of BRAWLY."
	done

SevaultCanyonSignText:
	text "SEVAULT CANYON"
	line "TANOBY RUINS ahead"
	done

SevaultCanyon_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 17, TANOBY_KEY, 1

	def_coord_events

	def_bg_events
	bg_event 17, 77, BGEVENT_READ, SevaultCanyonSign

	def_object_events

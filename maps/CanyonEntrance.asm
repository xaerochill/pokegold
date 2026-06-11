	object_const_def

CanyonEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

CanyonEntranceSign:
	jumptext CanyonEntranceSignText

MiahIntroText: ; unreferenced
	text "Kyahaha!"
	line "I'll flick you"
	cont "away effortlessly!"
	done

MiahDefeatText: ; unreferenced
	text "Tch!"
	line "Too strong for me!"
	done

MiahPostBattleText: ; unreferenced
	text "What's that?"

	para "I don't act"
	line "the way I look?"

	para "Heh, that's a part"
	line "of my strategy!"
	done

MasonIntroText: ; unreferenced
	text "Howdy!"
	line "Are you a member"
	cont "of my fan club?"
	done

MasonDefeatText: ; unreferenced
	text "Oh, so you're"
	line "not a fan…"

	para "I can change that."
	line "Let me sing"
	cont "for you!"
	done

MasonPostBattleText: ; unreferenced
	text "Lalalah…"

	para "My #MON, I"
	line "send them out,"
	cont "all the girls"
	cont "scream and shout!"
	done

NicolasIntroText: ; unreferenced
	text "This island is"
	line "too spread out…"

	para "It's not easy"
	line "patrolling here."
	done

NicolasDefeatText: ; unreferenced
	text "Uh-huh…"
	done

NicolasPostBattleText: ; unreferenced
	text "TRAINERS like you"
	line "from cities, they"
	cont "sure are tough."

	para "You'll be headed"
	line "for the TOWER,"
	cont "won't you?"
	done

MadelineIntroText: ; unreferenced
	text "I punish people"
	line "who abuse #MON!"
	done

MadelineDefeatText: ; unreferenced
	text "Good, you are not"
	line "a problem TRAINER."
	done

MadelinePostBattleText: ; unreferenced
	text "If you treat your"
	line "#MON kindly,"
	cont "they understand."
	done

EveIntroText: ; unreferenced
	text "I'll team up with"
	line "JON and battle!"
	done

EveDefeatText: ; unreferenced
	text "Me and JON,"
	line "we lost. Ehehe."
	done

EvePostBattleText: ; unreferenced
	text "I'm going to work"
	line "harder with JON."
	done

JonIntroText: ; unreferenced
	text "When I'm with EVE,"
	line "it feels like we"
	cont "could never lose."
	done 

JonDefeatText: ; unreferenced
	text "When I'm with EVE,"
	line "it doesn't feel"
	cont "like I've lost!"
	done

JonPostBattleText: ; unreferenced
	text "When I'm with EVE,"
	line "I feel giddy"
	cont "whether I win or"
	cont "not. It's magical!"
	done

CanyonEntranceSignText:
	text "SEVAULT CANYON"
	line "ENTRANCE"

	para "TRAINERS are asked"
	line "to refrain from"
	cont "damaging plants"
	cont "in the CANYON."
	done

CanyonEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 17, 27, BGEVENT_READ, CanyonEntranceSign

	def_object_events

	object_const_def

OutcastIsland_MapScripts:
	def_scene_scripts

	def_callbacks

RocketIntroText: ; unreferenced
	text "No rare #MON"
	line "around here!"

	para "Not a single one!"

	para "That burns me up!"

	para "I'll take it"
	line "out on you!"
	done

RocketDefeatText: ; unreferenced
	text "…Huh?"
	done

RocketPostBattleText: ; unreferenced
	text "So listen, you"
	line "haven't seen rare"
	cont "#MON either?"
	done

TylorIntroText: ; unreferenced
	text "I'm having no"
	line "luck at all."

	para "A battle'd be"
	line "a change of pace!"
	done

TylorDefeatText: ; unreferenced
	text "Nope…"
	line "no luck at all…"
	done

TylorPostBattleText: ; unreferenced
	text "I can't very well"
	line "go home without"
	cont "catching anything…"
	done

MymoIntroText: ; unreferenced
	text "Gasp… Gasp…"

	para "I swam here from"
	line "SIX ISLE PORT"
	cont "in one go."
	done

MymoDefeatText: ; unreferenced
	text "Gasp…"
	line "Gasp…"
	done

MymoPostBattleText: ; unreferenced
	text "I'm only at the"
	line "halfway point…"

	para "I'm beat…"
	done

NicoleIntroText: ; unreferenced
	text "It's not easy to"
	line "send out #MON"
	cont "while swimming!"
	done

NicoleDefeatText: ; unreferenced
	text "I didn't lose to"
	line "you at swimming."

	para "This doesn't"
	line "bother me at all."
	done

NicolePostBattleText: ; unreferenced
	text "Are you headed for"
	line "the island up past"
	cont "here? I didn't see"
	cont "anything there."
	done

AvaIntroText: ; unreferenced
	text "Let's have a"
	line "two-on-two"
	cont "marine battle!"
	done

AvaDefeatText: ; unreferenced
	text "You're amazing!"

	para "Even better, you"
	line "are on your own!"
	done

AvaPostBattleText: ; unreferenced
	text "You know,"
	line "I do prefer the"
	cont "sea over any pool."
	done

GebIntroText: ; unreferenced
	text "Big Sister, help!"
	line "Battle with me!"
	done

GebDefeatText: ; unreferenced
	text "Wow, Big Sister,"
	line "this person's"
	cont "really good!"
	done

GebPostBattleText: ; unreferenced
	text "I'm hanging onto"
	line "my sister because"
	cont "I can't touch"
	cont "the bottom."
	done

OutcastIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 13, ALTERING_CAVE, 1

	def_coord_events

	def_bg_events

	def_object_events

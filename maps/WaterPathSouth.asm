	object_const_def

WaterPathSouth_MapScripts:
	def_scene_scripts

	def_callbacks

RoseIntroText: ; unreferenced
	text "I let a pleasant"
	line "breeze lead me"
	cont "all the way here."
	done

RoseDefeatText: ; unreferenced
	text "Giggle… You're so"
	line "cute when you're"
	cont "determined."
	done

RosePostBattleText: ; unreferenced
	text "I want to go to"
	line "the woods over"
	cont "there, but…"

	para "There are lots"
	line "of BUG #MON."

	para "They scare me"
	line "a little."
	para

EdwardIntroText: ; unreferenced
	text "I'm practicing in"
	line "secret so no one"
	cont "can see me."
	done

EdwardDefeatText: ; unreferenced
	text "Nobody saw me"
	line "losing, right?"
	done

EdwardPostBattleText: ; unreferenced
	text "As a performer, I"
	line "don't want people"
	cont "to know about the"
	cont "effort I put in."
	done

SamirIntroText: ; unreferenced
	text "Hey, you're saying"
	line "that you're sick"
	cont "of seeing SWIMMERS"
	cont "like me?"

	para "Don't be hatin'!"
	done

SamirDefeatText: ; unreferenced
	text "Oh, no, no, no."
	done

SamirPostBattleText: ; unreferenced
	text "I couldn't lift"
	line "the stigma of"
	cont "being a SWIMMER…"
	done

DeniseIntroText: ; unreferenced
	text "My boyfriend's"
	line "always busy, so I"
	cont "come swimming"
	cont "by myself."
	done

DeniseDefeatText: ; unreferenced
	text "Awww, I knew this"
	line "would happen!"
	done

DenisePostBattleText: ; unreferenced
	text "When I can't be"
	line "with my boyfriend,"
	cont "I spend time with"
	cont "my #MON."
	done

EarlIntroText: ; unreferenced
	text "Tell me, where are"
	line "the mountains"
	cont "around here?"
	done

EarlDefeatText: ; unreferenced
	text "I lost my way"
	line "while I was busy"
	cont "battling you!"
	done

EarlPostBattleText: ; unreferenced
	text "Aren't there any"
	line "mountains around"
	cont "these parts?"
	done

MiuAndMiaIntroText: ; unreferenced
	text "Hello, #MON!"
	cont "It's time to play!"
	done

MiuDefeatText: ; unreferenced
	text "Oh, no!"
	line "Mommy!"
	done

MiuPostBattleText: ; unreferenced
	text "It makes me all"
	line "sad inside"
	cont "when we lose…"
	done

MiaDefeatText: ; unreferenced
	text "You're mean!"
	line "You're bad"
	cont "for winning!"
	done

MiaPostBattleText: ; unreferenced
	text "Ohh…"
	line "I'm sorry,"
	cont "my #MON…"
	done

WaterPathSouth_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events

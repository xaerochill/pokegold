	object_const_def

PatternBush_MapScripts:
	def_scene_scripts

	def_callbacks

BethanyIntroText: ; unreferenced
	text "I'm curious, how"
	line "do you raise"
	cont "your #MON?"
	done

BethanyDefeatText: ; unreferenced
	text "You raise your"
	line "#MON with a"
	cont "whole lot of love!"
	done

BethanyPostBattleText: ; unreferenced
	text "In the same way"
	line "your mother raised"
	cont "you full of love,"
	cont "you should raise"
	cont "your #MON."
	done

AllisonIntroText: ; unreferenced
	text "I work to preserve"
	line "the habitat of"
	cont "#MON here."
	done

AllisonDefeatText: ; unreferenced
	text "Oh, for someone"
	line "so young, you are"
	cont "tremendous!"
	done

AllisonPostBattleText: ; unreferenced
	text "I'm not saying"
	line "that you shouldn't"
	cont "catch #MON."

	para "I just want people"
	line "to raise their"
	cont "#MON with care."
	done

GarretIntroText: ; unreferenced
	text "I caught a BUG"
	line "#MON that lives"
	cont "only around here!"
	done

GarretDefeatText: ; unreferenced
	text "Heheh… Isn't my"
	line "#MON awesome?"
	done

GarretPostBattleText: ; unreferenced
	text "There's a girl"
	line "near the BUSH who"
	cont "measures HERACROSS"
	cont "for TRAINERS."
	done

JonahIntroText: ; unreferenced
	text "You know, it just"
	line "doesn't feel right"
	cont "if I don't use"
	cont "BUG #MON."
	done

JonahDefeatText: ; unreferenced
	text "It's okay, losing"
	line "is a fun part of"
	cont "#MON's appeal."
	done

JonahPostBattleText: ; unreferenced
	text "Isn't “appeal” a"
	line "weird word, if you"
	cont "think about it?"

	para "Like, is it like"
	line "an orange peel?"
	cont "Or a ringing bell?"
	done

VanceIntroText: ; unreferenced
	text "Yeah, yeah, yeah!"
	line "Look at all"
	cont "the BUG #MON!"
	done

VanceDefeatText: ; unreferenced
	text "I got beat while I"
	line "was still"
	cont "busy celebrating!"
	done

VancePostBattleText: ; unreferenced
	text "I'm going to bring"
	line "my little brother"
	cont "here next time."
	done

NashIntroText: ; unreferenced
	text "Look, look! There"
	line "are funny patterns"
	cont "on the ground."
	done

NashDefeatText: ; unreferenced
	text "Super awesome!"
	done

NashPostBattleText: ; unreferenced
	text "The funny patterns"
	line "on the ground…"

	para "They look like the"
	line "patterns on my"
	cont "grandpa's clothes."
	done

CordellIntroText: ; unreferenced
	text "I bet you think"
	line "I'm just some guy,"
	cont "don't you, eh?"
	done

CordellDefeatText: ; unreferenced
	text "I bet you think"
	line "I'm weak,"
	cont "don't you, eh?"
	done

CordellPostBattleText: ; unreferenced
	text "Ayup, you townies"
	line "come around all so"
	cont "dandy with a hat…"

	para "Will you give me"
	line "that flashy hat?"
	done

DaliaIntroText: ; unreferenced
	text "Take a deep"
	line "breath. Isn't the"
	cont "air delicious?"
	done

DaliaDefeatText: ; unreferenced
	text "If you'd like, I"
	line "can teach you how"
	cont "to breathe aptly."
	done

DaliaPostBattleText: ; unreferenced
	text "First, exhale."

	para "Blow it all out."
	
	para "When you can't"
	line "exhale anymore,"
	cont "inhale clean air!"

	para "Isn't it"
	line "refreshing?"
	done

JoanaIntroText: ; unreferenced
	text "I love BUG"
	line "#MON. That's"
	cont "why I'm here"
	cont "all the time."

	para "Am I the only"
	line "girl like that?"
	done

JoanaDefeatText: ; unreferenced
	text "I lost, but I'm"
	line "still laughing."

	para "Am I the only"
	line "girl like that?"
	done

JoanaPostBattleText: ; unreferenced
	text "I'm going to keep"
	line "on collecting"
	cont "BUG #MON."

	para "Am I the only"
	line "girl like that?"
	done

RileyIntroText: ; unreferenced
	text "This is a good"
	line "spot. I'll pitch"
	cont "my tent here."
	done

RileyDefeatText: ; unreferenced
	text "Wimped out…"
	done

RileyPostBattleText: ; unreferenced
	text "I'm going to look"
	line "at the night sky"
	cont "from here tonight."
	done

MarcyIntroText: ; unreferenced
	text "Oh, yuck! I think"
	line "a bug stung me!"
	cont

MarcyDefeatText: ; unreferenced
	text "It wasn't a bug."
	line "I cut my shin"
	cont "on some grass."
	done

MarcyPostBattleText: ; unreferenced
	text "A little cut like"
	line "that… Just gonna"
	cont "hawk tuah it!"
	done

LaytonIntroText: ; unreferenced
	text "Have you noticed"
	line "something odd"
	cont "about these parts?"
	done

LaytonDefeatText: ; unreferenced
	text "Have you taken a"
	line "good look around"
	cont "your feet?"
	done

LaytonPostBattleText: ; unreferenced
	text "There were places"
	line "here in PATTERN"
	cont "BUSH where grass"
	cont "wouldn't grow."

	para "What could be the"
	line "cause of such"
	cont "a phenomenon?"
	done

PatternBush_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 31, GREEN_PATH, 1
	warp_event  5, 31, GREEN_PATH, 2
	warp_event 54, 31, GREEN_PATH, 3
	warp_event 55, 31, GREEN_PATH, 4

	def_coord_events

	def_bg_events

	def_object_events

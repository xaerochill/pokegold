	object_const_def

RuinValley_MapScripts:
	def_scene_scripts

	def_callbacks

CantFigureOutHowToGetInsideText: ; unreferenced
	text "I can't figure out"
	line "how I'm supposed"
	cont "to get inside."
	done

IFoundThisPlaceText: ; unreferenced
	text "Let me tell you, I"
	line "found this place."

	para "Don't look so"
	line "envious, will you?"
	done

CheckDoorMoreThoroughlyText: ; unreferenced
	text "The door doesn't"
	line "budge at all."

	para "Check it more"
	line "thoroughly?"
	done

LeftDoorAloneText: ; unreferenced
	text "<PLAYER> left"
	line "the door alone."
	done

SeveralDotsOnTheDoorText: ; unreferenced
	text "It seems that"
	line "there are several"
	cont "dots on the door…"
	done

DoorIsOpenText: ; unreferenced
	text "The door is open."
	done

StanlyIntroText: ; unreferenced
	text "There appear to"
	line "be many secrets"
	cont "still unsolved"
	cont "in this world."
	done

StanlyDefeatText: ; unreferenced
	text "Hmm…"
	done

StanlyPostBattleText: ; unreferenced
	text "I suggest to you"
	line "that you, too,"
	cont "give a thought to"
	cont "the secrets and"
	cont "mysteries of our"
	cont "world once a day."
	done

FosterIntroText: ; unreferenced
	text "I'm curious, what"
	line "compelled you"
	cont "to come here?"
	done

FosterDefeatText: ; unreferenced
	text "It's been so long"
	line "since I battled,"
	cont "I am a bit rusty."
	done

FosterPostBattleText: ; unreferenced
	text "There are several"
	line "ruins on the"
	cont "SEVII ISLANDS."

	para "The majority of"
	line "them date back"
	cont "a long way."
	done

LarryIntroText: ; unreferenced
	text "It's been said"
	line "that there are"
	cont "mysterious stones"
	cont "on this island."

	para "I suspect it has"
	line "something to do"
	cont "with these ruins."
	done

LarryDefeatText: ; unreferenced
	text "Oh, interesting."
	done

LarryPostBattleText: ; unreferenced
	text "Those ruins there…"
	line "I don't know"
	cont "how to get inside."
	done

DarylIntroText: ; unreferenced
	text "A battle with you,"
	line "so high up!"
	done

DarylDefeatText: ; unreferenced
	text "Oh, the heartbreak"
	line "of losing so"
	cont "easily to you!"
	done

DarylPostBattleText: ; unreferenced
	text "Experience the"
	line "joy of climbing!"
	done

HectorIntroText: ; unreferenced
	text "I'm pretty"
	line "familiar with the"
	cont "land around here."
	done

HectorDefeatText: ; unreferenced
	text "You don't need"
	line "to be so pushy."

	para "I'll be happy"
	line "to tell you."
	done

HectorPostBattleText: ; unreferenced
	text "The door to"
	line "the ruins…"

	para "It has these"
	line "strange patterns"
	cont "engraved on"
	cont "the outside."

	para "I don't know what"
	line "they mean, though."
	done

RuinValley_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 24, 25, DOTTED_HOLE, 1
	warp_event 25, 25, DOTTED_HOLE, 1

	def_coord_events

	def_bg_events

	def_object_events

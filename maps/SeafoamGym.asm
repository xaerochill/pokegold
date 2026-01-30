	object_const_def
	const SEAFOAMGYM_BLAINE
	const SEAFOAMGYM_GYM_GUIDE

SeafoamGym_MapScripts:
	def_scene_scripts
	scene_script SeafoamGymNoopScene ; unusable

	def_callbacks

SeafoamGymNoopScene:
	end

SeafoamGymBlaineScript:
	faceplayer
	opentext
	checkflag ENGINE_VOLCANOBADGE
	iftrue .FightDone
	writetext BlaineBeforeBattleText
	waitbutton
	closetext
	winlosstext BlaineWinText, BlaineLossText
	loadtrainer BLAINE, BLAINE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BLAINE
	opentext
	writetext ReceivedVolcanoBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_VOLCANOBADGE
.FightDone:
	checktmhm TM_FIRE_BLAST
	iftrue .Rematch
	writetext BlaineVolcanoBadgeText
	promptbutton
	verbosegivetmhm TM_FIRE_BLAST
	writetext BlaineTMFireBlastText
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	end

.Rematch
	writetext BlaineAfterBattleText
	yesorno
	iffalse .End
	writetext BlaineRematchText
	waitbutton
	closetext
	winlosstext BlaineWinText, BlaineLossText
	loadtrainer BLAINE, BLAINE1
	startbattle
	reloadmapafterbattle
	turnobject PLAYER, DOWN
	end

.End
	closetext
	turnobject PLAYER, DOWN
	end

SeafoamGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_SEAFOAM_GYM_GUIDE_ONCE
	iftrue .TalkedToSeafoamGymGuideScript
	writetext SeafoamGymGuideWinText
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_SEAFOAM_GYM_GUIDE_ONCE
	end

.TalkedToSeafoamGymGuideScript:
	writetext SeafoamGymGuideWinText2
	waitbutton
	closetext
	end

BlaineBeforeBattleText:
	text "BLAINE: Hah!"

	para "I am BLAINE! I"
	line "am the LEADER of"
	cont "CINNABAR GYM!"

	para "My fiery #MON"
	line "will incinerate"
	cont "all challengers!"

	para "Hah! You better"
	line "have BURN HEAL!"
	done

BlaineWinText:
	text "BLAINE: I have"
	line "burnt out!"
	done

BlaineLossText:
	text "BLAINE: Whoa hey!"
	line "I'm a"
	cont "raging inferno!"
	done

ReceivedVolcanoBadgeText:
	text "You have earned"
	line "the VOLCANOBADGE!"

	para "<PLAYER> received"
	line "VOLCANOBADGE."
	done

BlaineVolcanoBadgeText:
	text "BLAINE: Hah!"

	para "The VOLCANOBADGE"
	line "once heightened"
	cont "SPECIAL abilities"
	cont "of your #MON!"

	para "But badge boosts"
	line "are now a thing of"
	cont "the past…"

	para "Here, you can"
	line "have this instead!"
	done

BlaineTMFireBlastText:
	text "TM38 contains"
	line "FIRE BLAST!"

	para "Teach it to fire-"
	line "type #MON!"

	para "CHARMELEON or"
	line "PONYTA would be"
	cont "good bets!"

	text "FIRE BLAST is the"
	line "ultimate fire"
	cont "technique!"

	para "Don't waste it on"
	line "water #MON!"
	done

BlaineAfterBattleText:
	text "I did lose this"
	line "time, but I'm"
	cont "going to win"
	cont "next time."

	para "Let's have"
	line "a rematch!"
	done

BlaineRematchText:
	text "Whoa hey! I'm a"
	line "raging inferno!"
	done

SeafoamGymGuideWinText:
	text "Yo!"

	para "… Huh? It's over"
	line "already?"

	para "Sorry, dude!"

	para "CINNABAR GYM was"
	line "gone, so I didn't"

	para "know where to find"
	line "you."

	para "But, hey, you're"
	line "plenty strong even"

	para "without my advice."
	line "I knew you'd win!"
	done

SeafoamGymGuideWinText2:
	text "A #MON GYM can"
	line "be anywhere as"

	para "long as the GYM"
	line "LEADER is there."

	para "There's no need"
	line "for a building."
	done

SeafoamGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, CINNABAR_ISLAND, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_BLAINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SeafoamGymBlaineScript, -1
	object_event  6,  5, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SeafoamGymGuideScript, EVENT_SEAFOAM_GYM_GYM_GUIDE

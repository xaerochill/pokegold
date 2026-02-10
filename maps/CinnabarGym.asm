	object_const_def
	const CINNABAR_GYM_BLAINE
	const CINNABAR_GYM_GYM_GUIDE
	const CINNABAR_GYM_SCIENTIST
	const CINNABAR_GYM_SUPER_NERD_1
	const CINNABAR_GYM_SUPER_NERD_2
	const CINNABAR_GYM_BURGLAR_1
	const CINNABAR_GYM_SUPER_NERD_3
	const CINNABAR_GYM_BURGLAR_2
	const CINNABAR_GYM_SUPER_NERD_4
	

CinnabarGym_MapScripts:
	def_scene_scripts
	scene_script CinnabarGymNoopScene ; unusable

	def_callbacks
	callback MAPCALLBACK_TILES, CinnabarGymSwitchCallback

CinnabarGymSwitchCallback:
	checkevent EVENT_BEAT_SCIENTIST_LINDEN
	iffalse .Skip1
	changeblock 18,  6, $0D ; first lock
.Skip1
	checkevent EVENT_BEAT_SUPER_NERD_GREGG
	iffalse .Skip2
	changeblock 14,  2, $0D ; second lock
.Skip2
	checkevent EVENT_BEAT_SUPER_NERD_JAY
	iffalse .Skip3
	changeblock 12,  6, $0D ; third lock
.Skip3
	checkevent EVENT_BEAT_BURGLAR_ORSON
	iffalse .Skip4
	changeblock 12, 12, $0D ; fourth lock
.Skip4
	checkevent EVENT_BEAT_SUPER_NERD_DAVE
	iffalse .Skip5
	changeblock  6, 16, $0D ; fifth lock
.Skip5
	checkevent EVENT_BEAT_BURGLAR_DUSTY
	iffalse .Skip6
	changeblock  4, 12, $0D ; sixth lock
.Skip6
	checkevent EVENT_BEAT_SUPER_NERD_ZAC
	iffalse .Skip7
	changeblock  4,  6, $0D ; seventh lock
.Skip7:
	endcallback

CinnabarGymNoopScene:
	end

CinnabarGymBlaineScript:
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

CinnabarGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BLAINE
	iftrue .TalkedToCinnabarGymGuideScript
	writetext CinnabarGymGymGuideChampInMakingText
	waitbutton
	closetext
	end

.TalkedToCinnabarGymGuideScript:
	writetext CinnabarGymGymGuideBeatBlaineText
	waitbutton
	closetext
	end

CinnabarGymScientistLindenScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SCIENTIST_LINDEN
	iftrue .Done
	writetext CinnabarGymQuizSkipText
	yesorno
	iftrue .Skip
	writetext CinnabarGymQuizIntroText
	waitbutton
.Skip
	writetext CinnabarGymQuizQuestionsText1
	yesorno
	iftrue .Correct
	writetext CinnabarGymQuizIncorrectText
	showemote EMOTE_SAD, PLAYER, 15
	pause 15
	sjump .Fight
.Correct
	writetext CinnabarGymQuizCorrectText
	showemote EMOTE_HAPPY, PLAYER, 15
	pause 15
	yesorno
	iftrue .Unlock
.Fight
	writetext CinnabarGymScientistLindenSeenText
	closetext
	winlosstext CinnabarGymScientistLindenBeatenText, CinnabarGymScientistLindenWonText
	loadtrainer SCIENTIST, LINDEN
	startbattle
	iftrue .ReturnAfterBattle
.ReturnAfterBattle:
	reloadmapafterbattle
	opentext
	writetext CinnabarGymScientistLindenAfterBattleText
	waitbutton
.Unlock
	setevent EVENT_BEAT_SCIENTIST_LINDEN
	writetext CinnabarGymQuizGoOnText
	playsound SFX_ENTER_DOOR
	changeblock 18,  6, $0D ; first lock
	refreshmap
	waitbutton
	closetext
	end

.Done
	writetext CinnabarGymScientistLindenAfterBattleText
	waitbutton
	closetext
	end

CinnabarGymSuperNerdGreggScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SUPER_NERD_GREGG
	iftrue .Done
	writetext CinnabarGymQuizQuestionsText2
	yesorno
	iffalse .Correct
	writetext CinnabarGymQuizIncorrectText
	showemote EMOTE_SAD, PLAYER, 15
	pause 15
	sjump .Fight
.Correct
	writetext CinnabarGymQuizCorrectText
	showemote EMOTE_HAPPY, PLAYER, 15
	pause 15
	yesorno
	iftrue .Unlock
.Fight
	writetext CinnabarGymSuperNerdGreggSeenText
	closetext
	winlosstext CinnabarGymSuperNerdGreggBeatenText, CinnabarGymSuperNerdGreggWonText
	loadtrainer SCIENTIST, GREGG
	startbattle
	iftrue .ReturnAfterBattle
.ReturnAfterBattle:
	reloadmapafterbattle
	opentext
	writetext CinnabarGymSuperNerdGreggAfterBattleText
	waitbutton
.Unlock
	setevent EVENT_BEAT_SUPER_NERD_GREGG
	writetext CinnabarGymQuizGoOnText
	playsound SFX_ENTER_DOOR
	changeblock 14,  2, $0D ; second lock
	refreshmap
	waitbutton
	closetext
	end

.Done
	writetext CinnabarGymSuperNerdGreggAfterBattleText
	waitbutton
	closetext
	end

CinnabarGymSuperNerdJayScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SUPER_NERD_JAY
	iftrue .Done
	writetext CinnabarGymQuizQuestionsText3
	yesorno
	iffalse .Correct
	writetext CinnabarGymQuizIncorrectText
	showemote EMOTE_SAD, PLAYER, 15
	pause 15
	sjump .Fight
.Correct
	writetext CinnabarGymQuizCorrectText
	showemote EMOTE_HAPPY, PLAYER, 15
	pause 15
	yesorno
	iftrue .Unlock
.Fight
	writetext CinnabarGymSuperNerdJaySeenText
	closetext
	winlosstext CinnabarGymSuperNerdJayBeatenText, CinnabarGymSuperNerdJayWonText
	loadtrainer SUPER_NERD, JAY
	startbattle
	iftrue .ReturnAfterBattle
.ReturnAfterBattle:
	reloadmapafterbattle
	opentext
	writetext CinnabarGymSuperNerdJayAfterBattleText
	waitbutton
.Unlock
	setevent EVENT_BEAT_SUPER_NERD_JAY
	writetext CinnabarGymQuizGoOnText
	playsound SFX_ENTER_DOOR
	changeblock 12,  6, $0D ; third lock
	refreshmap
	waitbutton
	closetext
	end

.Done
	writetext CinnabarGymSuperNerdJayAfterBattleText
	waitbutton
	closetext
	end

CinnabarGymBurglarOrsonScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BURGLAR_ORSON
	iftrue .Done
	writetext CinnabarGymQuizQuestionsText4
	yesorno
	iffalse .Correct
	writetext CinnabarGymQuizIncorrectText
	showemote EMOTE_SAD, PLAYER, 15
	pause 15
	sjump .Fight
.Correct
	writetext CinnabarGymQuizCorrectText
	showemote EMOTE_HAPPY, PLAYER, 15
	pause 15
	yesorno
	iftrue .Unlock
.Fight
	writetext CinnabarGymBurglarOrsonSeenText
	closetext
	winlosstext CinnabarGymBurglarOrsonBeatenText, CinnabarGymBurglarOrsonWonText
	loadtrainer BURGLAR, ORSON
	startbattle
	iftrue .ReturnAfterBattle
.ReturnAfterBattle:
	reloadmapafterbattle
	opentext
	writetext CinnabarGymBurglarOrsonAfterBattleText
	waitbutton
.Unlock
	setevent EVENT_BEAT_BURGLAR_ORSON
	writetext CinnabarGymQuizGoOnText
	playsound SFX_ENTER_DOOR
	changeblock 12, 12, $0D ; fourth lock
	refreshmap
	waitbutton
	closetext
	end

.Done
	writetext CinnabarGymBurglarOrsonAfterBattleText
	waitbutton
	closetext
	end

CinnabarGymSuperNerdDaveScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SUPER_NERD_DAVE
	iftrue .Done
	writetext CinnabarGymQuizQuestionsText5
	yesorno
	iftrue .Correct
	writetext CinnabarGymQuizIncorrectText
	showemote EMOTE_SAD, PLAYER, 15
	pause 15
	sjump .Fight
.Correct
	writetext CinnabarGymQuizCorrectText
	showemote EMOTE_HAPPY, PLAYER, 15
	pause 15
	yesorno
	iftrue .Unlock
.Fight
	writetext CinnabarGymSuperNerdDaveSeenText
	closetext
	winlosstext CinnabarGymSuperNerdDaveBeatenText, CinnabarGymSuperNerdDaveWonText
	loadtrainer SUPER_NERD, DAVE
	startbattle
	iftrue .ReturnAfterBattle
.ReturnAfterBattle:
	reloadmapafterbattle
	opentext
	writetext CinnabarGymSuperNerdDaveAfterBattleText
	waitbutton
.Unlock
	setevent EVENT_BEAT_SUPER_NERD_DAVE
	writetext CinnabarGymQuizGoOnText
	playsound SFX_ENTER_DOOR
	changeblock  6, 16, $0D ; fifth lock
	refreshmap
	waitbutton
	closetext
	end

.Done
	writetext CinnabarGymSuperNerdDaveAfterBattleText
	waitbutton
	closetext
	end

CinnabarGymBurglarDustyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BURGLAR_DUSTY
	iftrue .Done
	writetext CinnabarGymQuizQuestionsText6
	yesorno
	iffalse .Correct
	writetext CinnabarGymQuizIncorrectText
	showemote EMOTE_SAD, PLAYER, 15
	pause 15
	sjump .Fight
.Correct
	writetext CinnabarGymQuizCorrectText
	showemote EMOTE_HAPPY, PLAYER, 15
	pause 15
	yesorno
	iftrue .Unlock
.Fight
	writetext CinnabarGymBurglarDustySeenText
	closetext
	winlosstext CinnabarGymBurglarDustyBeatenText, CinnabarGymBurglarDustyWonText
	loadtrainer BURGLAR, DUSTY
	startbattle
	iftrue .ReturnAfterBattle
.ReturnAfterBattle:
	reloadmapafterbattle
	opentext
	writetext CinnabarGymBurglarDustyAfterBattleText
	waitbutton
.Unlock
	setevent EVENT_BEAT_BURGLAR_DUSTY
	writetext CinnabarGymQuizGoOnText
	playsound SFX_ENTER_DOOR
	changeblock  4, 12, $0D ; sixth lock
	refreshmap
	waitbutton
	closetext
	end

.Done
	writetext CinnabarGymBurglarDustyAfterBattleText
	waitbutton
	closetext
	end

CinnabarGymSuperNerdZacScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SUPER_NERD_ZAC
	iftrue .Done
	writetext CinnabarGymQuizQuestionsText7
	yesorno
	iftrue .Correct
	writetext CinnabarGymQuizIncorrectText
	showemote EMOTE_SAD, PLAYER, 15
	pause 15
	sjump .Fight
.Correct
	writetext CinnabarGymQuizCorrectText
	showemote EMOTE_HAPPY, PLAYER, 15
	pause 15
	yesorno
	iftrue .Unlock
.Fight
	writetext CinnabarGymSuperNerdZacSeenText
	closetext
	winlosstext CinnabarGymSuperNerdZacBeatenText, CinnabarGymSuperNerdZacWonText
	loadtrainer SCIENTIST, LINDEN
	startbattle
	iftrue .ReturnAfterBattle
.ReturnAfterBattle:
	reloadmapafterbattle
	opentext
	writetext CinnabarGymSuperNerdZacAfterBattleText
	waitbutton
.Unlock
	setevent EVENT_BEAT_SUPER_NERD_ZAC
	writetext CinnabarGymQuizGoOnText
	playsound SFX_ENTER_DOOR
	changeblock  4,  6, $0D ; seventh lock
	refreshmap
	waitbutton
	closetext
	end

.Done
	writetext CinnabarGymSuperNerdZacAfterBattleText
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

CinnabarGymGymGuideChampInMakingText:
	text "Yo! Champ in"
	line "making!"

	para "The hot-headed"
	line "BLAINE is a fire"
	cont "#MON pro!"

	para "Every TRAINER"
	line "here uses #MON"
	cont "raised by him."

	para "But beware! They"
	line "choose random ones"
	cont "before every fight"

	para "to make them less"
	line "predictable. Well!"

	para "Douse their spirit"
	line "with water!"

	para "You better take"
	line "some BURN HEALs!"
	done

CinnabarGymGymGuideBeatBlaineText:
	text "<PLAYER>! You beat"
	line "that fire brand!"
	done

CinnabarGymScientistLindenSeenText:
	text "Do you know how"
	line "hot #MON fire"
	cont "breath can get?"
	done

CinnabarGymScientistLindenBeatenText:
	text "Yow!"
	line "Hot, hot, hot!"
	done

CinnabarGymScientistLindenWonText:
	text "Huh!"
	line "Fire extinguished!"
	done

CinnabarGymScientistLindenAfterBattleText:
	text "Fire, or to be"
	line "more precise,"
	cont "combustion…"

	para "Blah, blah, blah,"
	line "blah…"
	done

CinnabarGymSuperNerdGreggSeenText:
	text "You can't win!"
	line "I have studied"
	cont "#MON totally!"
	done

CinnabarGymSuperNerdGreggBeatenText:
	text "Waah!"
	line "My studies!"
	done

CinnabarGymSuperNerdGreggWonText:
	text "Hehe! Looks like"
	line "my studies rock!"
	done

CinnabarGymSuperNerdGreggAfterBattleText:
	text "My theories are"
	line "too complicated"
	cont "for you!"
	done
	
CinnabarGymSuperNerdJaySeenText:
	text "I've been to many"
	line "GYMs, but this is"
	cont "my favorite!"
	done

CinnabarGymSuperNerdJayBeatenText:
	text "Yowza!"
	line "Too hot!"
	done

CinnabarGymSuperNerdJayWonText:
	text "Yowza! I guess you"
	line "were not ready for"
	cont "this heat!"
	done

CinnabarGymSuperNerdJayAfterBattleText:
	text "Us fire #MON"
	line "fans like PONYTA"
	cont "and NINETALES!"
	done

CinnabarGymBurglarOrsonSeenText:
	text "I was a thief, but"
	line "I became straight"
	cont "as a trainer!"
	done

CinnabarGymBurglarOrsonBeatenText:
	text "I"
	line "surrender!"
	done

CinnabarGymBurglarOrsonWonText:
	text "Hehe, I won!"
	done

CinnabarGymBurglarOrsonAfterBattleText:
	text "I can't help"
	line "stealing other"
	cont "people's #MON!"
	done

CinnabarGymSuperNerdDaveSeenText:
	text "I know why BLAINE"
	line "became a trainer!"
	done

CinnabarGymSuperNerdDaveBeatenText:
	text "Ow!"
	done

CinnabarGymSuperNerdDaveWonText:
	text "Hah!"
	done

CinnabarGymSuperNerdDaveAfterBattleText:
	text "BLAINE was lost"
	line "in the mountains"
	cont "when a fiery bird"
	cont "#MON appeared."

	para "Its light enabled"
	line "BLAINE to find"
	cont "his way down!"
	done

CinnabarGymBurglarDustySeenText:
	text "I just like using"
	line "fire #MON!"
	done

CinnabarGymBurglarDustyBeatenText:
	text "Too hot"
	line "to handle!"
	done

CinnabarGymBurglarDustyWonText:
	text "I am too hot"
	line "to handle!"
	done

CinnabarGymBurglarDustyAfterBattleText:
	text "I wish there was"
	line "a thief #MON!"
	cont "I'd use that!"
	done

CinnabarGymSuperNerdZacSeenText:
	text "Fire is weak"
	line "against H2O!"
	done

CinnabarGymSuperNerdZacBeatenText:
	text "Oh!"
	line "Snuffed out!"
	done

CinnabarGymSuperNerdZacWonText:
	text "Oh! Now there are"
	line "extremely complex"
	cont "mixtures left that"
	
	para "consist of organic"
	line "molecules with"

	para "unalike structures" 
	line "and molar masses!"
	done

CinnabarGymSuperNerdZacAfterBattleText:
	text "Water beats fire!"
	line "But, fire melts"
	cont "ice #MON!"
	done

CinnabarGymQuizQuestionsText1:
	text "Yeah, perfect!"
	line "Let's go!"

	para "CATERPIE evolves"
	line "into METAPOD?"
	done

CinnabarGymQuizQuestionsText2:
	text "There are 9"
	line "certified #MON"
	cont "LEAGUE BADGEs?"
	done

CinnabarGymQuizQuestionsText3:
	text "POLIWAG evolves 3"
	line "times?"
	done

CinnabarGymQuizQuestionsText4:
	text "Are electric moves"
	line "effective against"
	cont "ground element-"
	cont "type #MON?"
	done

CinnabarGymQuizQuestionsText5:
	text "#MON of the"
	line "same kind and"
	cont "level are not"
	cont "identical?"
	done

CinnabarGymQuizQuestionsText6:
	text "TM28 contains"
	line "TOMBSTONER?"
	done

CinnabarGymQuizQuestionsText7:
	text "<PLAYER>, tell me…"
	line "Are you about to"
	cont "battle BLAINE?!"
	done

CinnabarGymQuizSkipText:
	text "<PLAYER>!"

	para "Do you know the"
	line "#MON Quiz yet?"
	done

CinnabarGymQuizIntroText:
	text "No? Then I will"
	line "explain it yo you!"

	para "#MON Quiz!"

	para "Get it right and"
	line "the door opens to"
	cont "the next room!"

	para "Get it wrong and"
	line "face a trainer!"

	para "If you want to"
	line "conserve your"
	cont "#MON for the"
	cont "GYM LEADER…"

	para "Then get it right!"
	line "Here we go!"
	done

CinnabarGymQuizCorrectText:
	text "You're absolutely"
	line "correct!"

	para "Do you want to"
	line "skip this battle?"
	done

CinnabarGymQuizGoOnText:
	text "Go on through!"
	done

CinnabarGymQuizIncorrectText:
	text "Sorry! Bad call!"
	done

CinnabarGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16, 17, CINNABAR_ISLAND, 2
	warp_event 17, 17, CINNABAR_ISLAND, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_BLAINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CinnabarGymBlaineScript, -1
	object_event 17, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CinnabarGymGuideScript, -1
	object_event 17,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 5, CinnabarGymScientistLindenScript, -1
	object_event 17,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 5, CinnabarGymSuperNerdGreggScript, -1
	object_event 11,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarGymSuperNerdJayScript, -1
	object_event 11,  9, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 5, CinnabarGymBurglarOrsonScript, -1
	object_event 11, 15, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarGymSuperNerdDaveScript, -1
	object_event  3, 15, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 5, CinnabarGymBurglarDustyScript, -1
	object_event  3,  9, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 5, CinnabarGymSuperNerdZacScript, -1

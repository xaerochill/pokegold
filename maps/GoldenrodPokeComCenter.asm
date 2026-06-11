	object_const_def
	const GOLDENRODPOKECOMCENTER1F_NURSE
	const GOLDENRODPOKECOMCENTER1F_LINK_RECEPTIONIST
	const GOLDENRODPOKECOMCENTER1F_LASS1
	const GOLDENRODPOKECOMCENTER1F_ROCKER
	const GOLDENRODPOKECOMCENTER1F_TEACHERF
	const GOLDENRODPOKECOMCENTER1F_GAMEBOY_KID
	const GOLDENRODPOKECOMCENTER1F_YOUNGSTER
	const GOLDENRODPOKECOMCENTER1F_GRAMPS
	const GOLDENRODPOKECOMCENTER1F_LASS2
	const GOLDENRODPOKECOMCENTER1F_POKEFAN_F

GoldenrodPokeComCenter_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodPokeComCenterNurseScript:
	jumpstd PokecenterNurseScript

GoldenrodPokeComCenterTradeLadyScript:
	faceplayer
	opentext
	writetext GoldenrodPokeComCenterOddEggBriefingText
	waitbutton
	closetext
	end

GoldenrodPokeComCenterLass1Script:
	jumptextfaceplayer GoldenrodPokeComCenterLass1Text

GoldenrodPokeComCenterRockerScript:
	jumptextfaceplayer GoldenrodPokeComCenterRockerText

GoldenrodPokeComCenterTeacherScript:
	jumptextfaceplayer GoldenrodPokeComCenterTeacherText

GoldenrodPokeComCenterGameboyKidScript:
	jumptextfaceplayer GoldenrodPokeComCenterGameboyKidText

GoldenrodPokeComCenterYoungsterScript:
	jumptextfaceplayer GoldenrodPokeComCenterYoungsterText

GoldenrodPokeComCenterGrampsScript:
	jumptextfaceplayer GoldenrodPokeComCenterGrampsText

GoldenrodPokeComCenterLass2Script:
	jumptextfaceplayer GoldenrodPokeComCenterLass2Text

GoldenrodPokeComCenterSign:
	jumptext GoldenrodPokeComCenterSignText

GoldenrodPokeComCenterNewsMachineNotYet:
	jumptext GoldenrodPokeComCenterNewsMachineNotYetText

GoldenrodPokeComCenterPokefanF:
	faceplayer
	opentext
	writetext GoldenrodPokeComCenterPokefanFDoYouHaveEonMailText
	waitbutton
	writetext GoldenrodPokeComCenterAskGiveAwayAnEonMailText
	yesorno
	iffalse .NoEonMail
	takeitem EON_MAIL
	iffalse .NoEonMail
	writetext GoldenrodPokeComCenterPlayerGaveAwayTheEonMailText
	waitbutton
	writetext GoldenrodPokeComCenterPokefanFThisIsForYouText
	waitbutton
	verbosegiveitem REVIVE
	iffalse .NoRoom
	writetext GoldenrodPokeComCenterPokefanFDaughterWillBeDelightedText
	waitbutton
	closetext
	end

.NoEonMail:
	writetext GoldenrodPokeComCenterPokefanFTooBadText
	waitbutton
	closetext
	end

.NoRoom:
	giveitem EON_MAIL
	writetext GoldenrodPokeComCenterPokefanFAnotherTimeThenText
	waitbutton
	closetext
	end

GoldenrodPokeComCenterLinkReceptionistApproachPlayerAtLeftDoorwayTileMovement:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head DOWN
	step_end

GoldenrodPokeComCenterLinkReceptionistWalkToStairsFromLeftDoorwayTileMovement:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step_end

GoldenrodPokeComCenterLinkReceptionistApproachPlayerAtRightDoorwayTileMovement:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head DOWN
	step_end

GoldenrodPokeComCenterLinkReceptionistWalkToStairsFromRightDoorwayTileMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step_end

GoldenrodPokeComCenterEggTicketText: ; unreferenced
	text "Oh!"

	para "I see you have an"
	line "EGG TICKET!"

	para "It's a coupon that"
	line "special people can"

	para "redeem for a"
	line "special #MON!"
	done

GoldenrodPokeComCenterOddEggBriefingText:
	text "Let me give you a"
	line "quick briefing."

	para "Trades held at the"
	line "TRADE CORNER are"

	para "between two"
	line "trainers who don't"

	para "know each other's"
	line "identity."

	para "As a result, it"
	line "may take time."

	para "However, an ODD"
	line "EGG is available"
	cont "just for you."

	para "It will be sent to"
	line "you right away."

	para "Please choose one"
	line "of the rooms in"

	para "the CENTER."
	line "An ODD EGG will be"

	para "sent from the"
	line "chosen room."
	done

GoldenrodPokeComCenterPleaseWaitAMomentText: ; unreferenced
	text "Please wait a"
	line "moment."
	done

GoldenrodPokeComCenterHereIsYourOddEggText: ; unreferenced
	text "Thank you for"
	line "waiting."

	para "We received your"
	line "ODD EGG."

	para "Here it is!"

	para "Please raise it"
	line "with loving care."
	done

GoldenrodPokeComCenterNoEggTicketServiceText: ; unreferenced
	text "I'm awfully sorry."

	para "The EGG TICKET"
	line "exchange service"
	cont "isn't running now."
	done

GoldenrodPokeComCenterNoSpaceForEggText: ; unreferenced
	text "I'm awfully sorry."

	para "You have no more"
	line "space in your"
	cont "party. Come back"

	para "when you can carry"
	line "more #MON."
	done

GoldenrodPokeComCenterLass1Text:
	text "Whoa, this #MON"
	line "CENTER is huge."

	para "They just built"
	line "this place. They"

	para "installed lots of"
	line "new machines too."
	done

GoldenrodPokeComCenterPerson2Text: ; unreferenced
	text "I thought up a fun"
	line "new thing for the"
	cont "TRADE CORNER!"

	para "I make a PIDGEY"
	line "hold MAIL, then"

	para "put it up for"
	line "trade for another"
	cont "one!"

	para "If everyone did"
	line "that, MAIL could"

	para "be traded with all"
	line "sorts of people!"

	para "I call it PIDGEY"
	line "MAIL!"

	para "If it becomes"
	line "popular, I might"

	para "make lots of new"
	line "friends!"
	done

GoldenrodPokeComCenterPerson3Text: ; unreferenced
	text "They said you can"
	line "trade #MON with"

	para "total strangers up"
	line "here."

	para "But they're still"
	line "adjusting things."
	done

GoldenrodPokeComCenterPerson4Text: ; unreferenced
	text "Some girl I don't"
	line "know sent me her"

	para "HOPPIP."
	line "You should trade"

	para "for a #MON that"
	line "you want."
	done

GoldenrodPokeComCenterPerson5Text: ; unreferenced
	text "I received a"
	line "female HOPPIP, but"
	cont "its named STANLEY!"

	para "That's my dad's"
	line "name!"
	done

GoldenrodPokeComCenterPerson6Text: ; unreferenced
	text "What is the NEWS"
	line "MACHINE?"

	para "Does it get news"
	line "from a wider area"
	cont "than the radio?"
	done

GoldenrodPokeComCenterRockerText:
	text "The #COM CENTER"
	line "will link with all"

	para "#MON CENTERS in"
	line "a wireless net."

	para "That must mean"
	line "I'll be able to"

	para "link with all"
	line "sorts of people."
	done

GoldenrodPokeComCenterTeacherText:
	text "The machines here"
	line "can't be used yet."

	para "Still, it's nice"
	line "coming to a trendy"

	para "place before other"
	line "people."
	done

GoldenrodPokeComCenterPerson9Text: ; unreferenced
	text "My friend was in"
	line "the NEWS a while"

	para "back. I was really"
	line "surprised!"
	done

GoldenrodPokeComCenterPerson10Text: ; unreferenced
	text "I get anxious if I"
	line "don't check out"
	cont "the latest NEWS!"
	done

GoldenrodPokeComCenterPerson11Text: ; unreferenced
	text "If I get in the"
	line "NEWS and become"

	para "famous, I bet I'll"
	line "be adored."

	para "I wonder how I"
	line "could get in the"
	cont "NEWS?"
	done

GoldenrodPokeComCenterGameboyKidText:
	text "The COLOSSEUM"
	line "upstairs is for"
	cont "link battles."

	para "Battle records are"
	line "posted on the"

	para "wall, so I can't"
	line "afford to lose."
	done

GoldenrodPokeComCenterYoungsterText:
	text "I came over here"
	line "when I got word"

	para "that GOLDENROD's"
	line "#MON CENTER has"

	para "new machines that"
	line "no one's ever seen"
	cont "before."

	para "But it looks like"
	line "they're still busy"

	para "with all their"
	line "preparations…"
	done

GoldenrodPokeComCenterGrampsText:
	text "Just seeing all"
	line "these new things"

	para "here makes me feel"
	line "younger!"
	done

GoldenrodPokeComCenterLass2Text:
	text "A higher level"
	line "#MON doesn't"
	cont "always win."

	para "After all, it may"
	line "have a type dis-"
	cont "advantage."

	para "I don't think"
	line "there is a single"

	para "#MON that is"
	line "the toughest."
	done

GoldenrodPokeComCenterLinkReceptionistPleaseAcceptGSBallText: ; unreferenced
	text "<PLAYER>, isn't it?"

	para "Congratulations!"

	para "As a special deal,"
	line "a GS BALL has been"
	cont "sent just for you!"

	para "Please accept it!"
	done

GoldenrodPokeComCenterLinkReceptionistPleaseDoComeAgainText: ; unreferenced
	text "Please do come"
	line "again!"
	done

GoldenrodPokeComCenterSignText:
	text "#COM CENTER"
	line "1F INFORMATION"

	para "Left:"
	line "ADMINISTRATION"

	para "Center:"
	line "TRADE CORNER"

	para "Right:"
	line "#MON NEWS"
	done

GoldenrodPokeComCenterNewsMachineNotYetText:
	text "It's a #MON"
	line "NEWS MACHINE!"

	para "It's not in"
	line "operation yet…"
	done

GoldenrodPokeComCenterPokefanFDoYouHaveEonMailText:
	text "Oh my, your pack"
	line "looks so heavy!"

	para "Oh! Do you happen"
	line "to have something"
	cont "named EON MAIL?"

	para "My daughter is"
	line "after one."

	para "You can part with"
	line "one, can't you?"
	done

GoldenrodPokeComCenterAskGiveAwayAnEonMailText:
	text "Give away an EON"
	line "MAIL?"
	done

GoldenrodPokeComCenterPokefanFThisIsForYouText:
	text "Oh, that's great!"
	line "Thank you, honey!"

	para "Here, this is for"
	line "you in return!"
	done

GoldenrodPokeComCenterPokefanFDaughterWillBeDelightedText:
	text "My daughter will"
	line "be delighted!"
	done

GoldenrodPokeComCenterPokefanFTooBadText:
	text "Oh? You don't have"
	line "one? Too bad."
	done

GoldenrodPokeComCenterPokefanFAnotherTimeThenText:
	text "Oh… Well, another"
	line "time, then."
	done

GoldenrodPokeComCenterPlayerGaveAwayTheEonMailText:
	text "<PLAYER> gave away"
	line "the EON MAIL."
	done

GoldenrodPokeComCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 15, GOLDENROD_CITY, 15
	warp_event  4, 15, GOLDENROD_CITY, 15
	;warp_event  0,  6, POKECOM_CENTER_ADMIN_OFFICE_MOBILE, 1
	warp_event  0, 15, POKECENTER_2F, 1

	def_coord_events
	;coord_event  3, 15, SCENE_GOLDENRODPOKECOMCENTER1F_GS_BALL, GoldenrodPokeComCenter_GSBallSceneLeft
	;coord_event  4, 15, SCENE_GOLDENRODPOKECOMCENTER1F_GS_BALL, GoldenrodPokeComCenter_GSBallSceneRight

	def_bg_events
	bg_event  2,  9, BGEVENT_READ, GoldenrodPokeComCenterSign
	bg_event 23,  3, BGEVENT_READ, GoldenrodPokeComCenterNewsMachineNotYet

	def_object_events
	object_event  7,  7, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokeComCenterNurseScript, -1
	object_event 16,  8, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodPokeComCenterTradeLadyScript, -1
	object_event  3, 11, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokeComCenterLass1Script, -1
	object_event 21,  6, SPRITE_ROCKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokeComCenterRockerScript, -1
	object_event 27, 13, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodPokeComCenterTeacherScript, -1
	object_event 11, 12, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokeComCenterGameboyKidScript, -1
	object_event 23,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodPokeComCenterYoungsterScript, -1
	object_event  8, 10, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokeComCenterGrampsScript, -1
	object_event 14, 14, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodPokeComCenterLass2Script, -1
	object_event 19, 14, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokeComCenterPokefanF, -1

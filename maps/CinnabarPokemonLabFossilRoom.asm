	object_const_def
	const CINNABARLABFOSSILROOM_SCIENTIST1
	const CINNABARLABFOSSILROOM_SCIENTIST2

CinnabarPokemonLabFossilRoom_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarPokemonLabFossilRoomScientist1Script:
	faceplayer
	opentext
	checkevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	iftrue .GiveAerodactyl
	checkevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	iftrue .GiveKabuto
	checkevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	iftrue .GiveOmanyte
	writetext CinnabarPokemonLabFossilRoomScientist1IntroText
	waitbutton
	loadmenu .FossilMenuHeader
	verticalmenu
	closewindow
	ifequal REVIVE_OLD_AMBER, .OldAmber
	ifequal REVIVE_DOME_FOSSIL, .DomeFossil
	ifequal REVIVE_LORD_HELIX, .HelixFossil
	sjump .No
 
.OldAmber:
	checkitem OLD_AMBER
	iffalse .No
	setevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	takeitem OLD_AMBER
	getmonname STRING_BUFFER_3, AERODACTYL
	sjump .GaveScientistFossil
 
.DomeFossil:
	checkitem DOME_FOSSIL
	iffalse .No
	setevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	takeitem DOME_FOSSIL
	getmonname STRING_BUFFER_3, KABUTO
	sjump .GaveScientistFossil
 
.HelixFossil:
	checkitem HELIX_FOSSIL
	iffalse .No
	getmonname STRING_BUFFER_3, OMANYTE
	setevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	takeitem HELIX_FOSSIL
	; fallthrough
 
.GaveScientistFossil:
	writetext CinnabarPokemonLabFossilRoomScientist1MonText
	promptbutton
	writetext CinnabarPokemonLabFossilRoomScientist1GiveText
	playsound SFX_TRANSACTION
	waitsfx
	waitbutton
	writetext CinnabarPokemonLabFossilRoomScientist1TimeText
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	playsound SFX_WARP_TO
	waitsfx
	special FadeInFromBlack
	pause 35
	sjump CinnabarPokemonLabFossilRoomScientist1Script
 
.GiveAerodactyl:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	getmonname STRING_BUFFER_3, AERODACTYL
	setval REVIVE_OLD_AMBER
	sjump .GiveFossilMon

.GiveKabuto:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	getmonname STRING_BUFFER_3, KABUTO
	setval REVIVE_DOME_FOSSIL
	sjump .GiveFossilMon

.GiveOmanyte:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	getmonname STRING_BUFFER_3, OMANYTE
	setval REVIVE_LORD_HELIX
	; fallthrough

.GiveFossilMon:
	writetext CinnabarPokemonLabFossilRoomScientist1DoneText
	promptbutton
	writetext CinnabarPokemonLabFossilRoomScientist1ReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	ifequal REVIVE_OLD_AMBER, .PutAerodactyl
	ifequal REVIVE_DOME_FOSSIL, .PutKabuto
	ifequal REVIVE_LORD_HELIX, .PutOmanyte
	closetext
	end

.PutAerodactyl:
	givepoke AERODACTYL, 5
	closetext
	end

.PutKabuto:
	givepoke KABUTO, 5
	closetext
	end

.PutOmanyte:
	givepoke OMANYTE, 5
	closetext
	end

.No:
	writetext CinnabarPokemonLabFossilRoomScientist1NoText
	waitbutton
	closetext
	end

.NoRoom:
	writetext CinnabarPokemonLabFossilRoomScientist1PartyFullText
	waitbutton
	closetext
	end

.FossilMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "OLD AMBER@"
	db "DOME FOSSIL@"
	db "HELIX FOSSIL@"
	db "CANCEL@"

CinnabarPokemonLabFossilRoomScientist2Script:
	jumptextfaceplayer CinnabarPokemonLabFossilRoomScientist2Text

CinnabarPokemonLabFossilRoomScientist1IntroText:
	text "Hiya!"

	para "I am important"
	line "doctor!"

	para "I study here rare"
	line "#MON fossils!"

	para "You! Have you a"
	line "fossil for me?"
	done

CinnabarPokemonLabFossilRoomScientist1NoText:
	text "No! Is too bad!"

	para "You come again!"
	done

CinnabarPokemonLabFossilRoomScientist1PartyFullText:
	text "Your party is"
	line "already full!"
	done

CinnabarPokemonLabFossilRoomScientist1TimeText:
	text "I take a little"
	line "time!"

	para "You go for walk a"
	line "little while!"
	done

CinnabarPokemonLabFossilRoomScientist1DoneText:
	text "Where were you?"

	para "Your fossil is"
	line "back to life!"
	done

CinnabarPokemonLabFossilRoomScientist1MonText:
	text "Oh! That is"
	line "a fossil!"
	
	para "It is fossil of"
	line "@"
	text_ram wStringBuffer3
	text ", a"
	para "#MON that is"
	line "already extinct!"
	
	para "My Resurrection"
	line "Machine will make"
	
	para "that #MON live"
	line "again!"
	done

CinnabarPokemonLabFossilRoomScientist1GiveText:
	text "So! You hurry and"
	line "give me that!"

	para "<PLAYER> handed"
	line "over the fossil."
	done

CinnabarPokemonLabFossilRoomScientist1ReceiveText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

CinnabarPokemonLabFossilRoomScientist2Text:
	text "Fossils are simply"
	line "fascinating, see?"
	
	para "So let me tell you"
	line "a story from"
	cont "decades ago…"

	para "I was leading the"
	line "largest excavation"
	cont "site exploration"
	
	para "in the mountainous"
	line "area of SOUTH"
	cont "AMERICA and then…"

	para "We found a fossil"
	line "of the PHANTOM"
	cont "#MON, MEW!"

	para "As they say, the"
	line "rest is history…"
	done

CinnabarPokemonLabFossilRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CINNABAR_POKEMON_LAB_HALLWAY, 5
	warp_event  3,  7, CINNABAR_POKEMON_LAB_HALLWAY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarPokemonLabFossilRoomScientist1Script, -1
	object_event  7,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarPokemonLabFossilRoomScientist2Script, -1

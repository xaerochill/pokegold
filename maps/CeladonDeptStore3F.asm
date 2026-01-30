	object_const_def
	const CELADONDEPTSTORE3F_CLERK
	const CELADONDEPTSTORE3F_YOUNGSTER
	const CELADONDEPTSTORE3F_GAMEBOY_KID1
	const CELADONDEPTSTORE3F_GAMEBOY_KID2
	const CELADONDEPTSTORE3F_SUPER_NERD

CeladonDeptStore3F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDeptStore3FClerkScript:
	faceplayer
	opentext
CeladonDeptStore3FClerk_LoopScript:
	checkmoney YOUR_MONEY, 9000
	ifequal HAVE_LESS, CeladonDeptStore3FClerkNotEnoughMoney
	writetext CeladonDeptStore3FClerk_AskWhichCarpetText
	special PlaceMoneyTopRight
	loadmenu CeladonDeptStore3FClerkMenu
	verticalmenu
	closewindow
	ifequal 1, .RedCarpet
	ifequal 2, .BlueCarpet
	ifequal 3, .GreenCarpet
	ifequal 4, .YellowCarpet
	jump CeladonDeptStore3FClerk_Cancel
	
.RedCarpet
	writetext CeladonDeptStore3FClerk_AreYouSureText
	yesorno
	iffalse CeladonDeptStore3FClerk_Cancel
	checkevent EVENT_DECO_CARPET_1
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_CARPET_1
	takemoney YOUR_MONEY, 9000
	jump CeladonDeptStore3FClerk_FinishScript
	end
	
.BlueCarpet
	writetext CeladonDeptStore3FClerk_AreYouSureText
	yesorno
	iffalse CeladonDeptStore3FClerk_Cancel
	checkevent EVENT_DECO_CARPET_2
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_CARPET_2
	takemoney YOUR_MONEY, 9000
	jump CeladonDeptStore3FClerk_FinishScript
	end
	
.GreenCarpet
	writetext CeladonDeptStore3FClerk_AreYouSureText
	yesorno
	iffalse CeladonDeptStore3FClerk_Cancel
	checkevent EVENT_DECO_CARPET_4
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_CARPET_4
	takemoney YOUR_MONEY, 9000
	jump CeladonDeptStore3FClerk_FinishScript
	end

.YellowCarpet
	writetext CeladonDeptStore3FClerk_AreYouSureText
	yesorno
	iffalse CeladonDeptStore3FClerk_Cancel
	checkevent EVENT_DECO_CARPET_3
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_CARPET_3
	takemoney YOUR_MONEY, 9000
	jump CeladonDeptStore3FClerk_FinishScript
	end
	
.AlreadyHaveDecorItem
	writetext CeladonDeptStore3FClerk_AlreadyHaveDecoText
	waitbutton
	jump CeladonDeptStore3FClerk_LoopScript

	
CeladonDeptStore3FClerkMenu:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "RED     ¥9000@"
	db "BLUE    ¥9000@"
	db "GREEN   ¥9000@"
	db "YELLOW  ¥9000@"
	
CeladonDeptStore3FClerk_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonDeptStore3FClerk_HereYouGoText
	waitbutton
	jump CeladonDeptStore3FClerk_LoopScript

CeladonDeptStore3FClerk_Cancel:
	writetext CeladonDeptStore3FClerkTakeCare
	waitbutton
	closetext
	end
	
CeladonDeptStore3FClerkNotEnoughMoney:
	writetext CeladonDeptStore3FClerkNotEnoughMoneyText
	waitbutton
	closetext
	end

CeladonDeptStore3FYoungsterScript:
	jumptextfaceplayer CeladonDeptStore3FYoungsterText

CeladonDeptStore3FGameboyKid1Script:
	faceplayer
	opentext
	writetext CeladonDeptStore3FGameboyKid1Text
	waitbutton
	closetext
	turnobject CELADONDEPTSTORE3F_GAMEBOY_KID1, DOWN
	end

CeladonDeptStore3FGameboyKid2Script:
	faceplayer
	opentext
	writetext CeladonDeptStore3FGameboyKid2Text
	waitbutton
	closetext
	turnobject CELADONDEPTSTORE3F_GAMEBOY_KID2, DOWN
	end

CeladonDeptStore3FSuperNerdScript:
	jumptextfaceplayer CeladonDeptStore3FSuperNerdText

CeladonDeptStore3FElevatorButton:
	jumpstd ElevatorButtonScript

CeladonDeptStore3FDirectory:
	jumptext CeladonDeptStore3FDirectoryText

CeladonDeptStore3FClerk_AskWhichCarpetText:
	text "Which CARPET"
	line "do you like?"
	done
	
CeladonDeptStore3FClerk_AreYouSureText:
	text "Are you sure?"
	done

CeladonDeptStore3FClerk_AlreadyHaveDecoText:
	text "You already have"
	line "this CARPET!"
	done

CeladonDeptStore3FClerk_HereYouGoText:
	text "Here you go! We"
	line "will deliver this"
	cont "item to your home"
	cont "without delay!"
	done

CeladonDeptStore3FClerkNotEnoughMoneyText:
	text "A PALDEAN CARPET"
	line "is expensive! You"
	cont "need more money…"
	done
	
CeladonDeptStore3FClerkTakeCare:
	text "Pleasure doing"
	line "business with you!"
	done

CeladonDeptStore3FYoungsterText:
	text "There was a TM"
	line "SHOP here that"
	cont "made a fortune…"

	para "But now there are"
	line "infinite-use TM's,"
	cont "they closed shop!"
	done

CeladonDeptStore3FGameboyKid1Text:
	text "Uh-oh! I traded my"
	line "#MON without"

	para "removing the UP-"
	line "GRADE from it."
	done

CeladonDeptStore3FGameboyKid2Text:
	text "Yeah! I'm finally"
	line "getting a PORYGON!"

	para "I'm no good at the"
	line "slots, so I could"

	para "never get enough"
	line "coins…"

	para "…Huh?"

	para "The traded PORYGON"
	line "turned into a dif-"
	cont "ferent #MON!"
	done

CeladonDeptStore3FSuperNerdText:
	text "Those carpets are"
	line "so fine… But also"
	cont "so expensive…"
	done

CeladonDeptStore3FDirectoryText:
	text "3F: DECO SHOP"

	para "Make Your room"
	line "look nicer!"
	done

CeladonDeptStore3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  0, CELADON_DEPT_STORE_2F, 1
	warp_event 15,  0, CELADON_DEPT_STORE_4F, 2
	warp_event  2,  0, CELADON_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_READ, CeladonDeptStore3FDirectory
	bg_event  3,  0, BGEVENT_READ, CeladonDeptStore3FElevatorButton

	def_object_events
	object_event  7,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FClerkScript, -1
	object_event  6,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FYoungsterScript, -1
	object_event  9,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FGameboyKid1Script, -1
	object_event 10,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FGameboyKid2Script, -1
	object_event 13,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FSuperNerdScript, -1

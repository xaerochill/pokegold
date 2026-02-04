	object_const_def
	const CELADONDEPTSTORE3F_CLERK
	const CELADONDEPTSTORE3F_YOUNGSTER
	const CELADONDEPTSTORE3F_GAMEBOY_KID1
	const CELADONDEPTSTORE3F_GAMEBOY_KID2
	const CELADONDEPTSTORE3F_SUPER_NERD

CeladonDeptStore3F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDeptStore3FConsoleClerkScript:
	faceplayer
	opentext
CeladonDeptStore3FConsoleClerk_LoopScript:
	checkmoney YOUR_MONEY, 9000
	ifequal HAVE_LESS, CeladonDeptStore3FConsoleClerkNotEnoughMoney
	writetext CeladonDeptStore3FConsoleClerk_AskWhichConsoleText
	special PlaceMoneyTopRight
	loadmenu CeladonDeptStore3FConsoleClerkMenu
	verticalmenu
	closewindow
	ifequal 1, .Famicom
	ifequal 2, .SNES
	ifequal 3, .N64
	ifequal 4, .V32
	jump CeladonDeptStore3FConsoleClerk_Cancel
	
.Famicom
	writetext CeladonDeptStore3FConsoleClerk_AreYouSureText
	yesorno
	iffalse CeladonDeptStore3FConsoleClerk_Cancel
	checkevent EVENT_DECO_FAMICOM
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_FAMICOM
	takemoney YOUR_MONEY, 9000
	jump CeladonDeptStore3FConsoleClerk_FinishScript
	end
	
.SNES
	writetext CeladonDeptStore3FConsoleClerk_AreYouSureText
	yesorno
	iffalse CeladonDeptStore3FConsoleClerk_Cancel
	checkevent EVENT_DECO_SNES
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_SNES
	takemoney YOUR_MONEY, 9000
	jump CeladonDeptStore3FConsoleClerk_FinishScript
	end
	
.N64
	writetext CeladonDeptStore3FConsoleClerk_AreYouSureText
	yesorno
	iffalse CeladonDeptStore3FConsoleClerk_Cancel
	checkevent EVENT_DECO_N64
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_N64
	takemoney YOUR_MONEY, 9000
	jump CeladonDeptStore3FConsoleClerk_FinishScript
	end

.V32
	writetext CeladonDeptStore3FConsoleClerk_AreYouSureText
	yesorno
	iffalse CeladonDeptStore3FConsoleClerk_Cancel
	checkevent EVENT_DECO_VIRTUAL_BOY
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_VIRTUAL_BOY
	takemoney YOUR_MONEY, 9000
	jump CeladonDeptStore3FConsoleClerk_FinishScript
	end
	
.AlreadyHaveDecorItem
	writetext CeladonDeptStore3FConsoleClerk_AlreadyHaveDecoText
	waitbutton
	jump CeladonDeptStore3FConsoleClerk_LoopScript

CeladonDeptStore3FConsoleClerkMenu:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "FAMICOM ¥9000@"
	db "SNES    ¥9000@"
	db "N64     ¥9000@"
	db "V32     ¥9000@"
	
CeladonDeptStore3FConsoleClerk_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonDeptStore3FConsoleClerk_HereYouGoText
	waitbutton
	jump CeladonDeptStore3FConsoleClerk_LoopScript

CeladonDeptStore3FConsoleClerk_Cancel:
	writetext CeladonDeptStore3FConsoleClerkTakeCare
	waitbutton
	closetext
	end
	
CeladonDeptStore3FConsoleClerkNotEnoughMoney:
	writetext CeladonDeptStore3FConsoleClerkNotEnoughMoneyText
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

CeladonDeptStore3FConsoleClerk_AskWhichConsoleText:
	text "Which CONSOLE"
	line "do you like?"
	done
	
CeladonDeptStore3FConsoleClerk_AreYouSureText:
	text "Are you sure?"
	done

CeladonDeptStore3FConsoleClerk_AlreadyHaveDecoText:
	text "You already have"
	line "this CONSOLE!"
	done

CeladonDeptStore3FConsoleClerk_HereYouGoText:
	text "Here you go! We"
	line "will deliver this"
	cont "item to your home"
	cont "without delay!"
	done

CeladonDeptStore3FConsoleClerkNotEnoughMoneyText:
	text "A NINTENDO product"
	line "is expensive! You"
	cont "need more money…"
	done
	
CeladonDeptStore3FConsoleClerkTakeCare:
	text "Pleasure doing"
	line "business with you!"
	done

CeladonDeptStore3FYoungsterText:
	text "You can identify"
	line "#MON you got"
	cont "in trades by"
	cont "their ID Numbers!"

	para "They gain more"
	line "experience than"
	cont "the ones you"
	cont "caught yourself."

	para "You need to be"
	line "extra careful so"
	cont "they obey you!"

	para "But also your"
	line "own #MON may"
	cont "disobey you…"
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
	text "#MON will start"
	line "to disobey if you"
	cont "do not have"
	cont "enough badges."
	done

CeladonDeptStore3FDirectoryText:
	text "3F: TV GAME"
	line "    SHOP"
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
	object_event  7,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FConsoleClerkScript, -1
	object_event  6,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FYoungsterScript, -1
	object_event  9,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FGameboyKid1Script, -1
	object_event 10,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FGameboyKid2Script, -1
	object_event 13,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FSuperNerdScript, -1

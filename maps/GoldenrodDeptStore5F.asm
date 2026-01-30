	object_const_def
	const GOLDENRODDEPTSTORE5F_CLERK
	const GOLDENRODDEPTSTORE5F_LASS
	const GOLDENRODDEPTSTORE5F_MIKE
	const GOLDENRODDEPTSTORE5F_POKEFAN_M
	const GOLDENRODDEPTSTORE5F_CARRIE
	const GOLDENRODDEPTSTORE5F_RECEPTIONIST

GoldenrodDeptStore5F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, GoldenrodDeptStore5FCheckIfSundayCallback

GoldenrodDeptStore5FCheckIfSundayCallback:
	readvar VAR_WEEKDAY
	ifequal SUNDAY, .yes
	disappear GOLDENRODDEPTSTORE5F_RECEPTIONIST
	endcallback

.yes
	appear GOLDENRODDEPTSTORE5F_RECEPTIONIST
	endcallback

GoldenrodDeptStore5FClerkScript:
	faceplayer
	opentext
GoldenrodDeptStore5FClerk_LoopScript:
	checkmoney YOUR_MONEY, 9000
	ifequal HAVE_LESS, GoldenrodDeptStore5FClerkNotEnoughMoney
	writetext GoldenrodDeptStore5FClerk_AskWhichConsoleText
	special PlaceMoneyTopRight
	loadmenu GoldenrodDeptStore5FClerkMenu
	verticalmenu
	closewindow
	ifequal 1, .Famicom
	ifequal 2, .SNES
	ifequal 3, .N64
	ifequal 4, .V32
	jump GoldenrodDeptStore5FClerk_Cancel
	
.Famicom
	writetext GoldenrodDeptStore5FClerk_AreYouSureText
	yesorno
	iffalse GoldenrodDeptStore5FClerk_Cancel
	checkevent EVENT_DECO_FAMICOM
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_FAMICOM
	takemoney YOUR_MONEY, 9000
	jump GoldenrodDeptStore5FClerk_FinishScript
	end
	
.SNES
	writetext GoldenrodDeptStore5FClerk_AreYouSureText
	yesorno
	iffalse GoldenrodDeptStore5FClerk_Cancel
	checkevent EVENT_DECO_SNES
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_SNES
	takemoney YOUR_MONEY, 9000
	jump GoldenrodDeptStore5FClerk_FinishScript
	end
	
.N64
	writetext GoldenrodDeptStore5FClerk_AreYouSureText
	yesorno
	iffalse GoldenrodDeptStore5FClerk_Cancel
	checkevent EVENT_DECO_N64
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_N64
	takemoney YOUR_MONEY, 9000
	jump GoldenrodDeptStore5FClerk_FinishScript
	end

.V32
	writetext GoldenrodDeptStore5FClerk_AreYouSureText
	yesorno
	iffalse GoldenrodDeptStore5FClerk_Cancel
	checkevent EVENT_DECO_VIRTUAL_BOY
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_VIRTUAL_BOY
	takemoney YOUR_MONEY, 9000
	jump GoldenrodDeptStore5FClerk_FinishScript
	end
	
.AlreadyHaveDecorItem
	writetext GoldenrodDeptStore5FClerk_AlreadyHaveDecoText
	waitbutton
	jump GoldenrodDeptStore5FClerk_LoopScript

	
GoldenrodDeptStore5FClerkMenu:
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
	
GoldenrodDeptStore5FClerk_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext GoldenrodDeptStore5FClerk_HereYouGoText
	waitbutton
	jump GoldenrodDeptStore5FClerk_LoopScript

GoldenrodDeptStore5FClerk_Cancel:
	writetext GoldenrodDeptStore5FClerkTakeCare
	waitbutton
	closetext
	end
	
GoldenrodDeptStore5FClerkNotEnoughMoney:
	writetext GoldenrodDeptStore5FClerkNotEnoughMoneyText
	waitbutton
	closetext
	end

GoldenrodDeptStore5FReceptionistScript:
	faceplayer
	opentext
	readvar VAR_WEEKDAY
	ifnotequal SUNDAY, .EventIsOver
	checkflag ENGINE_GOLDENROD_DEPT_STORE_TM27_RETURN
	iftrue .EventIsOver
	special GetFirstPokemonHappiness
	writetext GoldenrodDeptStore5FReceptionistOhYourMonDotDotDotText
	promptbutton
	ifgreater 150 - 1, .VeryHappy
	ifgreater 50 - 1, .SomewhatHappy
	sjump .NotVeryHappy

.VeryHappy:
	writetext GoldenrodDeptStore5FReceptionistThisMoveShouldBePerfectText
	promptbutton
	verbosegivetmhm TM_RETURN
	iffalse .Done
	setflag ENGINE_GOLDENROD_DEPT_STORE_TM27_RETURN
	closetext
	end

.SomewhatHappy:
	writetext GoldenrodDeptStore5FReceptionistItsAdorableText
	waitbutton
	closetext
	end

.NotVeryHappy:
	writetext GoldenrodDeptStore5FReceptionistItLooksEvilHowAboutThisTMText
	promptbutton
	verbosegivetmhm TM_FRUSTRATION
	iffalse .Done
	setflag ENGINE_GOLDENROD_DEPT_STORE_TM27_RETURN
	closetext
	end

.EventIsOver:
	writetext GoldenrodDeptStore5FReceptionistThereAreTMsPerfectForMonText
	waitbutton
.Done:
	closetext
	end

Carrie:
	faceplayer
	opentext
	special GameboyCheck
	ifnotequal GBCHECK_CGB, .NotGBC
	writetext GoldenrodDeptStore5FCarrieMysteryGiftExplanationText
	waitbutton
	closetext
	special UnlockMysteryGift
	end

.NotGBC:
	writetext GoldenrodDeptStore5FCarrieMysteryGiftRequiresGBCText
	waitbutton
	closetext
	end

GoldenrodDeptStore5FLassScript:
	jumptextfaceplayer GoldenrodDeptStore5FLassText

Mike:
	faceplayer
	opentext
	trade NPC_TRADE_MIKE
	waitbutton
	closetext
	end

GoldenrodDeptStore5FPokefanMScript:
	jumptextfaceplayer GoldenrodDeptStore5FPokefanMText

GoldenrodDeptStore5FDirectory:
	jumptext GoldenrodDeptStore5FDirectoryText

GoldenrodDeptStore5FElevatorButton:
	jumpstd ElevatorButtonScript

GoldenrodDeptStore5FClerk_AskWhichConsoleText:
	text "Which CONSOLE"
	line "do you like?"
	done
	
GoldenrodDeptStore5FClerk_AreYouSureText:
	text "Are you sure?"
	done

GoldenrodDeptStore5FClerk_AlreadyHaveDecoText:
	text "You already have"
	line "this CONSOLE!"
	done

GoldenrodDeptStore5FClerk_HereYouGoText:
	text "Here you go! We"
	line "will deliver this"
	cont "item to your home"
	cont "without delay!"
	done

GoldenrodDeptStore5FClerkNotEnoughMoneyText:
	text "A NINTENDO product"
	line "is expensive! You"
	cont "need more money…"
	done
	
GoldenrodDeptStore5FClerkTakeCare:
	text "Pleasure doing"
	line "business with you!"
	done

GoldenrodDeptStore5FReceptionistOhYourMonDotDotDotText:
	text "Hello. Oh, your"
	line "#MON…"
	done

GoldenrodDeptStore5FReceptionistThisMoveShouldBePerfectText:
	text "It's very attached"
	line "to you."

	para "This move should"
	line "be perfect for a"
	cont "pair like you."
	done

GoldenrodDeptStore5FReceptionistItsAdorableText:
	text "It's adorable!"

	para "You should teach"
	line "it good TM moves."
	done

GoldenrodDeptStore5FReceptionistItLooksEvilHowAboutThisTMText:
	text "It looks evil. How"
	line "about this TM for"
	cont "it?"
	done

GoldenrodDeptStore5FReceptionistThereAreTMsPerfectForMonText:
	text "There are sure to"
	line "be TMs that are"

	para "just perfect for"
	line "your #MON."
	done

GoldenrodDeptStore5FCarrieMysteryGiftExplanationText:
	text "MYSTERY GIFT."

	para "With just a"
	line "little beep, you"
	cont "get a gift."
	done

GoldenrodDeptStore5FCarrieMysteryGiftRequiresGBCText:
	text "The MYSTERY GIFT"
	line "option requires a"
	cont "Game Boy Color."
	done

GoldenrodDeptStore5FLassText:
	text "On Sundays, a lady"
	line "comes to check out"
	cont "#MON."

	para "She even gives"
	line "away TMs!"
	done

GoldenrodDeptStore5FPokefanMText:
	text "You can't rename a"
	line "#MON you get in"
	cont "a trade."

	para "The name is a re-"
	line "flection of the"

	para "original trainer's"
	line "feelings for it."
	done

GoldenrodDeptStore5FDirectoryText:
	text "Step up your"
	line "GAME"

	para "5F CONSOLE SHOP"
	done

GoldenrodDeptStore5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  0, GOLDENROD_DEPT_STORE_4F, 1
	warp_event 15,  0, GOLDENROD_DEPT_STORE_6F, 1
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_READ, GoldenrodDeptStore5FDirectory
	bg_event  3,  0, BGEVENT_READ, GoldenrodDeptStore5FElevatorButton

	def_object_events
	object_event  8,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore5FClerkScript, -1
	object_event  3,  6, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore5FLassScript, -1
	object_event  6,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Mike, -1
	object_event 13,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore5FPokefanMScript, -1
	object_event  9,  1, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Carrie, -1
	object_event  7,  5, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore5FReceptionistScript, EVENT_GOLDENROD_DEPT_STORE_5F_HAPPINESS_EVENT_LADY

DEF CELADONGAMECORNERPRIZEROOM_TM23_COINS    EQU 3300
DEF CELADONGAMECORNERPRIZEROOM_TM50_COINS    EQU 7700
DEF CELADONGAMECORNERPRIZEROOM_TM15_COINS    EQU 5500
DEF CELADONGAMECORNERPRIZEROOM_MR_MIME_COINS EQU 3333
DEF CELADONGAMECORNERPRIZEROOM_EEVEE_COINS   EQU 6666
DEF CELADONGAMECORNERPRIZEROOM_PORYGON_COINS EQU 9999

	object_const_def
	const CELADONGAMECORNERPRIZEROOM_GENTLEMAN
	const CELADONGAMECORNERPRIZEROOM_PHARMACIST

CeladonGameCornerPrizeRoom_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonGameCornerPrizeRoomGentlemanScript:
	jumptextfaceplayer CeladonGameCornerPrizeRoomGentlemanText

CeladonGameCornerPrizeRoomPharmacistScript:
	jumptextfaceplayer CeladonGameCornerPrizeRoomPharmacistText

CeladonGameCornerPrizeRoomTMVendor:
	faceplayer
	opentext
	writetext CeladonPrizeRoomPrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse CeladonPrizeRoomNoCoinCase
	writetext CeladonPrizeRoomAskWhichPrizeText
CeladonPrizeRoomTMCounterLoop:
	special DisplayCoinCaseBalance
	loadmenu CeladonPrizeRoom_TMMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .DragonRage
	ifequal 2, .Substitute
	ifequal 3, .HyperBeam
	sjump CeladonPrizeRoomCancelPurchaseScript

.DragonRage:
	checkcoins CELADONGAMECORNERPRIZEROOM_TM23_COINS
	ifequal HAVE_LESS, CeladonPrizeRoomNotEnoughCoins
	checktmhm TM_DRAGON_RAGE
	iftrue CeladonPrizeRoomAlreadyHaveTMScript
	getitemname STRING_BUFFER_3, TM_DRAGON_RAGE
	scall CeladonPrizeRoomAskBuy
	iffalse CeladonPrizeRoomCancelPurchaseScript
	verbosegivetmhm TM_DRAGON_RAGE
	takecoins CELADONGAMECORNERPRIZEROOM_TM23_COINS
	sjump CeladonPrizeRoomPurchased

.Substitute:
	checkcoins CELADONGAMECORNERPRIZEROOM_TM50_COINS
	ifequal HAVE_LESS, CeladonPrizeRoomNotEnoughCoins
	checktmhm TM_SUBSTITUTE
	iftrue CeladonPrizeRoomAlreadyHaveTMScript
	getitemname STRING_BUFFER_3, TM_SUBSTITUTE
	scall CeladonPrizeRoomAskBuy
	iffalse CeladonPrizeRoomCancelPurchaseScript
	verbosegivetmhm TM_SUBSTITUTE
	takecoins CELADONGAMECORNERPRIZEROOM_TM50_COINS
	sjump CeladonPrizeRoomPurchased

.HyperBeam:
	checkcoins CELADONGAMECORNERPRIZEROOM_TM15_COINS
	ifequal HAVE_LESS, CeladonPrizeRoomNotEnoughCoins
	checktmhm TM_HYPER_BEAM
	iftrue CeladonPrizeRoomAlreadyHaveTMScript
	getitemname STRING_BUFFER_3, TM_HYPER_BEAM
	scall CeladonPrizeRoomAskBuy
	iffalse CeladonPrizeRoomCancelPurchaseScript
	verbosegivetmhm TM_HYPER_BEAM
	takecoins CELADONGAMECORNERPRIZEROOM_TM15_COINS
	sjump CeladonPrizeRoomPurchased

CeladonPrizeRoomAskBuy:
	writetext CeladonPrizeRoomConfirmPurchaseText
	yesorno
	end

CeladonPrizeRoomPurchased:
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoomHereYouGoText
	waitbutton
	sjump CeladonPrizeRoomTMCounterLoop

CeladonPrizeRoomNotEnoughCoins:
	writetext CeladonPrizeRoomNotEnoughCoinsText
	waitbutton
	closetext
	end

CeladonPrizeRoomAlreadyHaveTMScript:
	writetext CeladonPrizeRoomAlreadyHaveTMText
	waitbutton
	closetext
	end

CeladonPrizeRoomCancelPurchaseScript:
	writetext CeladonPrizeRoomComeAgainText
	waitbutton
	closetext
	end

CeladonPrizeRoomNoCoinCase:
	writetext CeladonPrizeRoomNoCoinCaseText
	waitbutton
	closetext
	end

CeladonPrizeRoom_TMMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "TM23    {d:CELADONGAMECORNERPRIZEROOM_TM23_COINS}@"
	db "TM50    {d:CELADONGAMECORNERPRIZEROOM_TM50_COINS}@"
	db "TM15    {d:CELADONGAMECORNERPRIZEROOM_TM15_COINS}@"
	db "CANCEL@"

CeladonGameCornerPrizeRoomPokemonVendor:
	faceplayer
	opentext
	writetext CeladonPrizeRoomPrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse CeladonPrizeRoomNoCoinCase
.loop
	writetext CeladonPrizeRoomAskWhichPrizeText
	special DisplayCoinCaseBalance
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .MrMime
	ifequal 2, .Eevee
	ifequal 3, .Porygon
	sjump CeladonPrizeRoomCancelPurchaseScript

.MrMime:
	checkcoins CELADONGAMECORNERPRIZEROOM_MR_MIME_COINS
	ifequal HAVE_LESS, CeladonPrizeRoomNotEnoughCoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoomAlreadyHaveTMScript
	getmonname STRING_BUFFER_3, MR__MIME
	scall CeladonPrizeRoomAskBuy
	iffalse CeladonPrizeRoomCancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoomHereYouGoText
	waitbutton
	setval MR__MIME
	special GameCornerPrizeMonCheckDex
	givepoke MR__MIME, 15
	takecoins CELADONGAMECORNERPRIZEROOM_MR_MIME_COINS
	sjump .loop

.Eevee:
	checkcoins CELADONGAMECORNERPRIZEROOM_EEVEE_COINS
	ifequal HAVE_LESS, CeladonPrizeRoomNotEnoughCoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoomAlreadyHaveTMScript
	getmonname STRING_BUFFER_3, EEVEE
	scall CeladonPrizeRoomAskBuy
	iffalse CeladonPrizeRoomCancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoomHereYouGoText
	waitbutton
	setval EEVEE
	special GameCornerPrizeMonCheckDex
	givepoke EEVEE, 15
	takecoins CELADONGAMECORNERPRIZEROOM_EEVEE_COINS
	sjump .loop

.Porygon:
	checkcoins CELADONGAMECORNERPRIZEROOM_PORYGON_COINS
	ifequal HAVE_LESS, CeladonPrizeRoomNotEnoughCoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoomAlreadyHaveTMScript
	getmonname STRING_BUFFER_3, PORYGON
	scall CeladonPrizeRoomAskBuy
	iffalse CeladonPrizeRoomCancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoomHereYouGoText
	waitbutton
	setval PORYGON
	special GameCornerPrizeMonCheckDex
	givepoke PORYGON, 20
	takecoins CELADONGAMECORNERPRIZEROOM_PORYGON_COINS
	sjump .loop

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 17, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "MR.MIME    {d:CELADONGAMECORNERPRIZEROOM_MR_MIME_COINS}@"
	db "EEVEE      {d:CELADONGAMECORNERPRIZEROOM_EEVEE_COINS}@"
	db "PORYGON    {d:CELADONGAMECORNERPRIZEROOM_PORYGON_COINS}@"
	db "CANCEL@"

CeladonGameCornerPrizeRoomGentlemanText:
	text "I wanted MR.MIME,"
	line "but I was short by"
	cont "100 coins…"
	done

CeladonGameCornerPrizeRoomPharmacistText:
	text "Whew…"

	para "I've got to stay"
	line "calm and cool…"

	para "I can't lose my"
	line "cool, or I'll lose"
	cont "all my money…"
	done

CeladonPrizeRoomPrizeVendorIntroText:
	text "Welcome!"

	para "We exchange your"
	line "coins for fabulous"
	cont "prizes!"
	done

CeladonPrizeRoomAskWhichPrizeText:
	text "Which prize would"
	line "you like?"
	done

CeladonPrizeRoomConfirmPurchaseText:
	text "OK, so you wanted"
	line "a @"
	text_ram wStringBuffer3
	text "?"
	done

CeladonPrizeRoomHereYouGoText:
	text "Here you go!"
	done

CeladonPrizeRoomNotEnoughCoinsText:
	text "You don't have"
	line "enough coins."
	done

CeladonPrizeRoomAlreadyHaveTMText:
	text "You already have"
	line "that TM!"
	done

CeladonPrizeRoomComeAgainText:
	text "Oh. Please come"
	line "back with coins!"
	done

CeladonPrizeRoomNoCoinCaseText:
	text "Oh? You don't have"
	line "a COIN CASE."
	done

CeladonGameCornerPrizeRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  5, CELADON_CITY, 7
	warp_event  3,  5, CELADON_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, CeladonGameCornerPrizeRoomTMVendor
	bg_event  4,  1, BGEVENT_READ, CeladonGameCornerPrizeRoomPokemonVendor

	def_object_events
	object_event  0,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerPrizeRoomGentlemanScript, -1
	object_event  4,  4, SPRITE_PHARMACIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerPrizeRoomPharmacistScript, -1

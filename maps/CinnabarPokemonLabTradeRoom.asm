	object_const_def
	const CINNABARLABTRADEROOM_SUPER_NERD
	const CINNABARLABTRADEROOM_GRAMPS
	const CINNABARLABTRADEROOM_BEAUTY

CinnabarPokemonLabTradeRoom_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarPokemonLabTradeRoomSuperNerdScript:
	jumptextfaceplayer CinnabarPokemonLabTradeRoomSuperNerdText

CinnabarPokemonLabTradeRoomGrampsScript:
	faceplayer
	opentext
	special TradebackNPC
	waitbutton
	closetext
	end

CinnabarPokemonLabTradeRoomBeautyScript:
	jumptextfaceplayer CinnabarPokemonLabTradeRoomBeautyText

CinnabarPokemonLabTradeRoomSuperNerdText:
	text "I found this very"
	line "strange fossil in"
	cont "MT.MOON!"

	para "I think it's a"
	line "rare, prehistoric"
	cont "#MON!"
	done

CinnabarPokemonLabTradeRoomBeautyText:
	text "When I was young,"
	line "I visited lots of"
	cont "different places."

	para "Trading #MON"
	line "made me a much"
	cont "better TRAINER!"
	done

CinnabarPokemonLabTradeRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CINNABAR_POKEMON_LAB_HALLWAY, 3
	warp_event  3,  7, CINNABAR_POKEMON_LAB_HALLWAY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarPokemonLabTradeRoomSuperNerdScript, -1
	object_event  1,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarPokemonLabTradeRoomGrampsScript, -1
	object_event  5,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarPokemonLabTradeRoomBeautyScript, -1

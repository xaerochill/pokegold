	object_const_def
	const ONE_ISLAND_POKECOM_CENTER_NURSE
	const ONE_ISLAND_POKECOM_CENTER_GAMEBOY_KID
	const ONE_ISLAND_POKECOM_CENTER_FISHER
	const ONE_ISLAND_POKECOM_CENTER_TWIN

OneIslandPokeComCenter_MapScripts:
	def_scene_scripts

	def_callbacks

OneIslandPokeComCenterNurseScript:
	jumpstd PokecenterNurseScript

OneIslandPokeComCenterGameboyKidScript:
	faceplayer
	opentext
	writetext OneIslandPokeComCenterGameboyKidText
	waitbutton
	closetext
	turnobject ONE_ISLAND_POKECOM_CENTER_GAMEBOY_KID, DOWN
	end

OneIslandPokeComCenterPersonScript:
	jumptextfaceplayer OneIslandPokeComCenterPersonText

OneIslandPokeComCenterLassScript:
	jumptextfaceplayer OneIslandPokeComCenterLassText

OneIslandPokeComCenterGameboyKidText:
	text "The COLOSSEUM--"
	line "upstairs at any"

	para "#MON CENTER--is"
	line "for link battles."

	para "Battle records are"
	line "posted on the"

	para "wall, so I can't"
	line "afford to lose."
	done

OneIslandPokeComCenterPersonText:
	text "I wonder how many"
	line "kinds of #MON"

	para "there are in the"
	line "world."

	para "Three years ago,"
	line "PROF.OAK said that"

	para "there were 150"
	line "different kinds."
	done

OneIslandPokeComCenterLassText:
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

OneIslandPokeComCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 15, ONE_ISLAND, 1
	warp_event  6, 15, ONE_ISLAND, 1
	warp_event  0, 15, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  7, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OneIslandPokeComCenterNurseScript, -1
	object_event 11, 12, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OneIslandPokeComCenterGameboyKidScript, -1
	object_event  0,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OneIslandPokeComCenterPersonScript, -1
	object_event 16,  8, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OneIslandPokeComCenterLassScript, -1

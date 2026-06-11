	object_const_def

OneIsland_MapScripts:
	def_scene_scripts

	def_callbacks

OneIslandSign:
	jumptext OneIslandSignText

PokemonNetCenterSign1:
	jumptext PokemonNetCenterSignText

PokemonNetCenterSign2:
	jumptext PokemonNetCenterSignText

BillLetsGoSeeCelioText: ; unreferenced
	text "BILL: Here we are!"
	
	para "This is"
	line "ONE ISLAND."

	para "There are several"
	line "islands around"
	cont "here, and this"
	cont "is one of them."

	para "My friend CELIO"
	line "sent the boat to"
	cont "fetch me here."

	para "He's in charge of"
	line "the island's PC"
	cont "network."

	para "…Why am I telling"
	line "you this now?"

	para "Let's just go"
	line "see CELIO!"
	done

LuckyToHaveCelioHereText: ; unreferenced
	text "Here we are on an"
	line "island in the"
	cont "middle of nowhere."

	para "We're lucky to"
	line "have an upstanding"
	cont "young man like"
	cont "CELIO here."

	para "My granddaughter"
	line "was in a tizzy"
	cont "over his friend."

	para "Something about a"
	line "famous #MANIAC?"

	para "I'm not sure what"
	line "that means, but"
	cont "CELIO is quite"
	cont "the man!"
	
	para "He would make a"
	line "fine husband for"
	cont "my granddaughter!"
	done

IsntWarmClimateHereGreatText: ; unreferenced
	text "Hi, sight-seeing,"
	line "are you?"

	para "Isn't the warm"
	line "climate great?"
	done

OneIslandSignText:
	text "ONE ISLAND"
	
	para "Friends Gather"
	line "at Knot Island"
	done

PokemonNetCenterSignText:
	text "Expanding the"
	line "#MON World!"

	para "#MON NET CENTER"
	done

OneIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 15, 13, BGEVENT_READ, OneIslandSign
	bg_event 16,  5, BGEVENT_READ, PokemonNetCenterSign1
	bg_event 17,  5, BGEVENT_READ, PokemonNetCenterSign2

	def_object_events

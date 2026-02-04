	object_const_def
	const CERULEANPOLICESTATION_FISHING_GURU
	const CERULEANPOLICESTATION_POKEFAN_F
	const CERULEANPOLICESTATION_DIGLETT

CeruleanPoliceStation_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanPoliceStationFishingGuruScript:
	jumptextfaceplayer CeruleanPoliceStationFishingGuruText

CeruleanPoliceStationPokefanFScript:
	faceplayer
	opentext
	checkitem TM_DIG
	iftrue .HasTM
	writetext CeruleanPoliceStationPokefanFBeforeDigText
	verbosegivetmhm TM_DIG
.HasTM:
	writetext CeruleanPoliceStationPokefanFAfterDigText
	waitbutton
	closetext
	end

CeruleanDiglett:
	opentext
	writetext CeruleanDiglettText
	cry DIGLETT
	waitbutton
	closetext
	end

CeruleanPoliceStationFishingGuruText:
	text "I heard that some"
	line "shady character is"
	cont "skulking about."

	para "I won't stand for"
	line "it if he turns out"
	cont "to be a thief."
	done

CeruleanPoliceStationPokefanFBeforeDigText:
	text "We were held up by"
	line "robbers before."

	para "Afterwards, we"
	line "found this in"
	cont "our backyard."

	para "Here, keep it!"

	para "We have no use"
	line "for it anymore."
	done

CeruleanPoliceStationPokefanFAfterDigText:
	text "MT. MOON is a"
	line "popular place for"
	cont "using DIG!"

	para "I think people"
	line "go there to find"
	cont "rare fossils."
	done

CeruleanDiglettText:
	text "DIGLETT: Dug dug."
	done

CeruleanPoliceStation_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 2
	warp_event  3,  7, CERULEAN_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanPoliceStationFishingGuruScript, -1
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanPoliceStationPokefanFScript, -1
	object_event  3,  5, SPRITE_DIGLETT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeruleanDiglett, -1

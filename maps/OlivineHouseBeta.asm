	object_const_def
	const OLIVINEHOUSEBETA_TEACHER
	const OLIVINEHOUSEBETA_RHYDON

OlivineHouseBeta_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineHouseBetaTeacherScript:
	faceplayer
	opentext
	checktmhm HM_WATERFALL
	iftrue .GotWaterfall
	writetext OlivineHouseBetaTeacherText
	promptbutton
	verbosegivetmhm HM_WATERFALL
.GotWaterfall:
	writetext OlivineHouseBetaTeacherGotWaterfallText
	waitbutton
	closetext
	end

OlivineHouseBetaRhydonScript:
	opentext
	writetext OlivineHouseBetaRhydonText
	cry RHYDON
	waitbutton
	closetext
	end

OlivineHouseBetaBookshelf1:
	jumpstd PictureBookshelfScript

OlivineHouseBetaBookshelf2:
	jumpstd MagazineBookshelfScript

OlivineHouseBetaTeacherText:
	text "When my #MON"
	line "and I got lost"
	cont "in deep water,"

	para "the Guardian of"
	line "the Sea came to"
	cont "our rescue."

	para "Now, it is time"
	line "for me to help"
	cont "you as well!"
	done

OlivineHouseBetaTeacherGotWaterfallText:
	text "This HM teaches"
	line "WATERFALL."

	para "You can teach it"
	line "to your"
	cont "#MON!"
	done

OlivineHouseBetaRhydonText:
	text "RHYDON: Gugooh!"
	done

OlivineHouseBeta_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 4
	warp_event  3,  7, OLIVINE_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, OlivineHouseBetaBookshelf1
	bg_event  1,  1, BGEVENT_READ, OlivineHouseBetaBookshelf2

	def_object_events
	object_event  2,  3, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineHouseBetaTeacherScript, -1
	object_event  6,  4, SPRITE_RHYDON, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineHouseBetaRhydonScript, -1

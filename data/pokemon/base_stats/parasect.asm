	db PARASECT ; 047

	db  60,  95,  80,  30,  60,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, GRASS ; type
	db 75 ; catch rate
	db 128 ; base exp
	db TINYMUSHROOM, BIG_MUSHROOM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/parasect/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/parasect/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, COUNTER, CURSE, CUT, DIG, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FALSE_SWIPE, FLASH, FRUSTRATION, FURY_CUTTER, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, LEECH_LIFE, LIGHT_SCREEN, MEGA_DRAIN, MIMIC, PROTECT, REFLECT, REST, RETURN, ROCK_SMASH, SKULL_BASH, SLEEP_TALK, SLUDGE_BOMB, SNORE, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWEET_SCENT, SWORDS_DANCE, SYNTHESIS, TAKE_DOWN, THIEF, TOXIC
	; end

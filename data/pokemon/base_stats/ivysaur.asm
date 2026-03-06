	db IVYSAUR ; 002

	db  60,  62,  63,  60,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 141 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/ivysaur/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/ivysaur/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, CUT, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FALSE_SWIPE, FLASH, FRUSTRATION, FURY_CUTTER, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, LIGHT_SCREEN, MEGA_DRAIN, MIMIC, MUD_SLAP, PROTECT, REFLECT, REST, RETURN, ROAR, ROCK_SMASH, SAFEGUARD, SLEEP_TALK, SLUDGE_BOMB, SNORE, SOLARBEAM, STRENGTH, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWEET_SCENT, SWORDS_DANCE, SYNTHESIS, TAKE_DOWN, TOXIC
	; end

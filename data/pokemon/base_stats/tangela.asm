	db TANGELA ; 114

	db  65,  55, 115,  60, 100,  40
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 166 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/tangela/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/tangela/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ANCIENTPOWER, ATTRACT, BODY_SLAM, CURSE, CUT, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FLASH, FRUSTRATION, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, MEGA_DRAIN, MIMIC, PAIN_SPLIT, PROTECT, PSYCH_UP, REFLECT, REST, RETURN, ROCK_SMASH, SKULL_BASH, SLEEP_TALK, SLUDGE_BOMB, SNORE, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWEET_SCENT, SWORDS_DANCE, SYNTHESIS, TAKE_DOWN, THIEF, TOXIC
	; end

	db NIDORINO ; 033

	db  61,  72,  57,  65,  55,  55
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 120 ; catch rate
	db 118 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/nidorino/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/nidorino/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BLIZZARD, BODY_SLAM, BUBBLEBEAM, COUNTER, CURSE, DETECT, DIG, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HORN_DRILL, ICE_BEAM, IRON_TAIL, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, REFLECT, REST, RETURN, ROCK_SMASH, SKULL_BASH, SLEEP_TALK, SLUDGE_BOMB, SNORE, STRENGTH, SUBSTITUTE, SUNNY_DAY, SUPER_FANG, SWAGGER, TAKE_DOWN, THIEF, THUNDER, THUNDERBOLT, TOXIC
	; end

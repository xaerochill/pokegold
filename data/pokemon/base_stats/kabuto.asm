	db KABUTO ; 140

	db  30,  80,  90,  55,  55,  45
	;   hp  atk  def  spd  sat  sdf

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 119 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 30 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/kabuto/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/kabuto/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm ANCIENTPOWER, ATTRACT, BLIZZARD, BODY_SLAM, BUBBLEBEAM, CURSE, DIG, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FRUSTRATION, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, ICE_BEAM, ICY_WIND, LEECH_LIFE, MEGA_DRAIN, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, REFLECT, REST, RETURN, ROCK_SLIDE, ROCK_SMASH, ROLLOUT, SANDSTORM, SLEEP_TALK, SNORE, SUBSTITUTE, SWAGGER, TAKE_DOWN, THIEF, TOXIC
	; end

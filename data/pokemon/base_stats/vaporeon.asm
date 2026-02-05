	db VAPOREON ; 134

	db 130,  65,  60,  65, 110,  95
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 196 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 35 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/vaporeon/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/vaporeon/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BLIZZARD, BODY_SLAM, BUBBLEBEAM, CURSE, DETECT, DIG, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FRUSTRATION, HEADBUTT, HEAL_BELL, HIDDEN_POWER, HYPER_BEAM, ICE_BEAM, ICY_WIND, IRON_TAIL, MIMIC, MUD_SLAP, PAY_DAY, PROTECT, RAIN_DANCE, REFLECT, REST, RETURN, ROAR, ROCK_SMASH, SHADOW_BALL, SKULL_BASH, SLEEP_TALK, SNORE, SUBSTITUTE, SUNNY_DAY, SURF, SWAGGER, SWIFT, TAKE_DOWN, TOXIC, WATERFALL, WHIRLPOOL
	; end

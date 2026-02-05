	db POLIWAG ; 060

	db  40,  50,  40,  90,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 255 ; catch rate
	db 77 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/poliwag/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/poliwag/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BLIZZARD, BODY_SLAM, BUBBLEBEAM, CURSE, DIG, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FRUSTRATION, HEADBUTT, HIDDEN_POWER, ICE_BEAM, ICY_WIND, LOW_KICK, MIMIC, MUD_SLAP, PROTECT, PSYCHIC_M, PSYWAVE, RAIN_DANCE, REST, RETURN, SKULL_BASH, SLEEP_TALK, SNORE, SUBSTITUTE, SURF, SWAGGER, SWIFT, TAKE_DOWN, THIEF, TOXIC, WATERFALL, WHIRLPOOL
	; end

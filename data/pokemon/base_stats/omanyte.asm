	db OMANYTE ; 138

	db  35,  40, 100,  35,  90,  55
	;   hp  atk  def  spd  sat  sdf

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 120 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 30 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/omanyte/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/omanyte/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm ANCIENTPOWER, ATTRACT, BLIZZARD, BODY_SLAM, BUBBLEBEAM, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FRUSTRATION, HEADBUTT, HIDDEN_POWER, ICE_BEAM, ICY_WIND, MIMIC, PROTECT, RAIN_DANCE, REFLECT, REST, RETURN, ROCK_SLIDE, ROCK_SMASH, ROLLOUT, SANDSTORM, SLEEP_TALK, SNORE, SPIKES, SUBSTITUTE, SURF, SWAGGER, TAKE_DOWN, THIEF, TOXIC, WHIRLPOOL
	; end

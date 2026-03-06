	db OMASTAR ; 139

	db  70,  60, 125,  55, 115,  70
	;   hp  atk  def  spd  sat  sdf

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 199 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 30 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/omastar/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/omastar/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm ANCIENTPOWER, ATTRACT, BLIZZARD, BODY_SLAM, BUBBLEBEAM, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HORN_DRILL, HYPER_BEAM, ICE_BEAM, ICY_WIND, MIMIC, PROTECT, RAIN_DANCE, REFLECT, REST, RETURN, ROCK_SLIDE, ROCK_SMASH, ROLLOUT, SANDSTORM, SEISMIC_TOSS, SKULL_BASH, SLEEP_TALK, SNORE, SPIKES, SUBMISSION, SUBSTITUTE, SURF, SWAGGER, TAKE_DOWN, THIEF, TOXIC, WATERFALL, WHIRLPOOL
	; end

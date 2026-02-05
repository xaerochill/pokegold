	db MANTINE ; 226

	db  65,  40,  70,  70,  80, 140
	;   hp  atk  def  spd  sat  sdf

	db WATER, FLYING ; type
	db 25 ; catch rate
	db 168 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/mantine/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/mantine/front_silver.dimensions"
ENDC
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BLIZZARD, BODY_SLAM, BUBBLEBEAM, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, EARTHQUAKE, ENDURE, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, ICE_BEAM, ICY_WIND, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, REST, RETURN, ROCK_SLIDE, SLEEP_TALK, SNORE, SUBSTITUTE, SURF, SWAGGER, SWIFT, TAKE_DOWN, TOXIC, TWISTER, WATERFALL, WHIRLPOOL
	; end

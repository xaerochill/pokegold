	db KINGDRA ; 230

	db  75,  95,  95,  85,  95,  95
	;   hp  atk  def  spd  sat  sdf

	db WATER, DRAGON ; type
	db 45 ; catch rate
	db 207 ; base exp
	db NO_ITEM, DRAGON_SCALE ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/kingdra/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/kingdra/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BLIZZARD, BODY_SLAM, BUBBLEBEAM, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, DRAGONBREATH, ENDURE, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, ICE_BEAM, ICY_WIND, MIMIC, PROTECT, RAIN_DANCE, REST, RETURN, SLEEP_TALK, SNORE, SUBSTITUTE, SURF, SWAGGER, SWIFT, TAKE_DOWN, TOXIC, TWISTER, WATERFALL, WHIRLPOOL
	; end

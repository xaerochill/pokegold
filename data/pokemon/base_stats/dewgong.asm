	db DEWGONG ; 087

	db  90,  70,  80,  70,  70,  95
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 75 ; catch rate
	db 176 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/dewgong/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/dewgong/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BLIZZARD, BODY_SLAM, BUBBLEBEAM, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HORN_DRILL, HYPER_BEAM, ICE_BEAM, ICY_WIND, IRON_TAIL, MEGAHORN, MIMIC, PAY_DAY, PROTECT, RAIN_DANCE, REST, RETURN, SAFEGUARD, SKULL_BASH, SLEEP_TALK, SNORE, SUBSTITUTE, SURF, SWAGGER, TAKE_DOWN, THIEF, TOXIC, WATERFALL, WHIRLPOOL
	; end

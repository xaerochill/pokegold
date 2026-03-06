	db CHINCHOU ; 170

	db  75,  38,  38,  67,  56,  56
	;   hp  atk  def  spd  sat  sdf

	db WATER, ELECTRIC ; type
	db 190 ; catch rate
	db 90 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/chinchou/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/chinchou/front_silver.dimensions"
ENDC
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BLIZZARD, BUBBLEBEAM, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FLASH, FRUSTRATION, HEAL_BELL, HIDDEN_POWER, ICE_BEAM, ICY_WIND, LIGHT_SCREEN, MIMIC, PROTECT, RAIN_DANCE, REST, RETURN, SLEEP_TALK, SNORE, SUBSTITUTE, SURF, SWAGGER, TAKE_DOWN, THUNDER, THUNDERBOLT, THUNDER_WAVE, TOXIC, WATERFALL, WHIRLPOOL, ZAP_CANNON
	; end

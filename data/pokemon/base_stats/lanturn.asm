	db LANTURN ; 171

	db 125,  58,  58,  67,  76,  76
	;   hp  atk  def  spd  sat  sdf

	db WATER, ELECTRIC ; type
	db 75 ; catch rate
	db 156 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/lanturn/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/lanturn/front_silver.dimensions"
ENDC
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BLIZZARD, BUBBLEBEAM, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FLASH, FRUSTRATION, HEAL_BELL, HIDDEN_POWER, HYPER_BEAM, ICE_BEAM, ICY_WIND, LIGHT_SCREEN, MIMIC, PROTECT, RAIN_DANCE, REST, RETURN, SLEEP_TALK, SNORE, SUBSTITUTE, SURF, SWAGGER, TAKE_DOWN, THUNDER, THUNDERBOLT, THUNDER_WAVE, TOXIC, WATERFALL, WHIRLPOOL, ZAP_CANNON
	; end

	db PORYGON2 ; 233

	db  85,  80,  90,  60, 105,  95
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 180 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/porygon2/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/porygon2/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, DREAM_EATER, ENDURE, FLASH, FRUSTRATION, HIDDEN_POWER, HYPER_BEAM, ICE_BEAM, ICY_WIND, IRON_TAIL, MIMIC, NIGHTMARE, PAIN_SPLIT, PROTECT, PSYCHIC_M, PSYCH_UP, RAIN_DANCE, REST, RETURN, SHADOW_BALL, SLEEP_TALK, SNORE, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, THIEF, THUNDER, THUNDERBOLT, THUNDER_WAVE, TOXIC, TRI_ATTACK, ZAP_CANNON
	; end

	db MISDREAVUS ; 200

	db  60,  60,  60,  85,  85,  85
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 45 ; catch rate
	db 147 ; base exp
	db NO_ITEM, SPELL_TAG ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/misdreavus/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/misdreavus/front_silver.dimensions"
ENDC
	db GROWTH_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, DREAM_EATER, ENDURE, FLASH, FRUSTRATION, HEADBUTT, HEAL_BELL, HIDDEN_POWER, HYPER_BEAM, ICY_WIND, MIMIC, NIGHTMARE, PAIN_SPLIT, PROTECT, PSYCHIC_M, PSYCH_UP, PSYWAVE, RAIN_DANCE, REST, RETURN, SHADOW_BALL, SLEEP_TALK, SNORE, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, THIEF, THUNDER, THUNDERBOLT, THUNDER_WAVE, TOXIC, ZAP_CANNON
	; end

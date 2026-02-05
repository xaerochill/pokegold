	db ESPEON ; 196

	db  65,  65,  60, 110, 130,  95
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 197 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 35 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/espeon/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/espeon/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, CUT, DETECT, DIG, DOUBLE_EDGE, DOUBLE_TEAM, DREAM_EATER, ENDURE, FLASH, FRUSTRATION, HEADBUTT, HEAL_BELL, HIDDEN_POWER, HYPER_BEAM, IRON_TAIL, LIGHT_SCREEN, MIMIC, MUD_SLAP, NIGHTMARE, PAY_DAY, PROTECT, PSYCHIC_M, PSYCH_UP, RAIN_DANCE, REFLECT, REST, RETURN, ROAR, SHADOW_BALL, SLEEP_TALK, SNORE, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, THUNDER_WAVE, TOXIC, ZAP_CANNON
	; end

	db UMBREON ; 197

	db  95,  65, 110,  65,  60, 130
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 45 ; catch rate
	db 197 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 35 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/umbreon/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/umbreon/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, CUT, DETECT, DIG, DOUBLE_EDGE, DOUBLE_TEAM, DREAM_EATER, ENDURE, FLASH, FRUSTRATION, HEADBUTT, HEAL_BELL, HIDDEN_POWER, HYPER_BEAM, IRON_TAIL, LIGHT_SCREEN, MIMIC, MUD_SLAP, NIGHTMARE, PAY_DAY, PROTECT, PSYCHIC_M, PSYCH_UP, RAIN_DANCE, REFLECT, REST, RETURN, ROAR, SHADOW_BALL, SLEEP_TALK, SNORE, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, THIEF, THUNDER_WAVE, TOXIC, ZAP_CANNON
	; end

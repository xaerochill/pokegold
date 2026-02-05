	db JOLTEON ; 135

	db  65,  65,  60, 130, 110,  95
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 197 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 35 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/jolteon/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/jolteon/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, DETECT, DIG, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FALSE_SWIPE, FLASH, FRUSTRATION, HEADBUTT, HEAL_BELL, HIDDEN_POWER, HYPER_BEAM, IRON_TAIL, LIGHT_SCREEN, MIMIC, MUD_SLAP, PAY_DAY, PROTECT, RAIN_DANCE, REFLECT, REST, RETURN, ROAR, ROCK_SMASH, SHADOW_BALL, SKULL_BASH, SLEEP_TALK, SNORE, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, THUNDER, THUNDERBOLT, THUNDER_WAVE, TOXIC, ZAP_CANNON
	; end

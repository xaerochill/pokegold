	db MEOWTH ; 052

	db  40,  45,  35,  90,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 69 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/meowth/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/meowth/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, BUBBLEBEAM, CURSE, CUT, DETECT, DIG, DOUBLE_EDGE, DOUBLE_TEAM, DREAM_EATER, ENDURE, FALSE_SWIPE, FLASH, FRUSTRATION, HEADBUTT, HIDDEN_POWER, ICY_WIND, IRON_TAIL, MIMIC, MUD_SLAP, NIGHTMARE, PAIN_SPLIT, PAY_DAY, PROTECT, PSYCH_UP, RAIN_DANCE, REST, RETURN, SHADOW_BALL, SKULL_BASH, SLEEP_TALK, SNORE, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, THIEF, THUNDER, THUNDERBOLT, THUNDER_WAVE, TOXIC, ZAP_CANNON
	; end

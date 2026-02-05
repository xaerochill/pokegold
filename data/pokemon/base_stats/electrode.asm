	db ELECTRODE ; 101

	db  60,  50,  70, 140,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 60 ; catch rate
	db 150 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/electrode/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/electrode/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm CURSE, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, EXPLOSION, FLASH, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, LIGHT_SCREEN, MIMIC, PROTECT, RAIN_DANCE, REFLECT, REST, RETURN, ROLLOUT, SELFDESTRUCT, SKULL_BASH, SLEEP_TALK, SNORE, SUBSTITUTE, SWAGGER, SWIFT, TAKE_DOWN, TELEPORT, THIEF, THUNDER, THUNDERBOLT, THUNDER_WAVE, TOXIC, ZAP_CANNON
	; end

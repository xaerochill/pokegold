	db MAGNEMITE ; 081

	db  25,  35,  70,  45,  95,  55
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, STEEL ; type
	db 190 ; catch rate
	db 89 ; base exp
	db NO_ITEM, METAL_COAT ; items
	db GENDER_UNKNOWN ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/magnemite/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/magnemite/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm CURSE, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, EXPLOSION, FLASH, FRUSTRATION, HEADBUTT, HIDDEN_POWER, LIGHT_SCREEN, MIMIC, PROTECT, PSYCH_UP, RAIN_DANCE, REFLECT, REST, RETURN, ROLLOUT, SANDSTORM, SLEEP_TALK, SNORE, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, TELEPORT, THUNDER, THUNDERBOLT, THUNDER_WAVE, TOXIC, ZAP_CANNON
	; end

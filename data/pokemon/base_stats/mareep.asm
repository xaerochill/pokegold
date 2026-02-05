	db MAREEP ; 179

	db  55,  40,  40,  35,  65,  45
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 235 ; catch rate
	db 59 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/mareep/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/mareep/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, DIG, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FLASH, FRUSTRATION, HEADBUTT, HEAL_BELL, HIDDEN_POWER, IRON_TAIL, LIGHT_SCREEN, MIMIC, PROTECT, RAIN_DANCE, REFLECT, REST, RETURN, SAFEGUARD, SLEEP_TALK, SNORE, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, THUNDER, THUNDERBOLT, THUNDER_WAVE, TOXIC, ZAP_CANNON
	; end

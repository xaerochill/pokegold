	db WEEZING ; 110

	db  65,  90, 120,  60,  85,  70
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 60 ; catch rate
	db 173 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/weezing/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/weezing/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, DOUBLE_TEAM, ENDURE, EXPLOSION, FIRE_BLAST, FLAMETHROWER, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, MIMIC, PAIN_SPLIT, PROTECT, RAIN_DANCE, REST, RETURN, ROLLOUT, SELFDESTRUCT, SHADOW_BALL, SLEEP_TALK, SLUDGE_BOMB, SNORE, SUBSTITUTE, SUNNY_DAY, SWAGGER, TAKE_DOWN, THIEF, THUNDER, THUNDERBOLT, TOXIC, ZAP_CANNON
	; end

	db NINETALES ; 038

	db  73,  76,  75, 100,  81, 100
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 75 ; catch rate
	db 178 ; base exp
	db BURNT_BERRY, BURNT_BERRY ; items
	db GENDER_F75 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/ninetales/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/ninetales/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, DIG, DOUBLE_EDGE, DOUBLE_TEAM, DREAM_EATER, ENDURE, FIRE_BLAST, FLAMETHROWER, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, IRON_TAIL, MIMIC, PAIN_SPLIT, PROTECT, PSYCH_UP, REFLECT, REST, RETURN, ROAR, SAFEGUARD, SHADOW_BALL, SKULL_BASH, SLEEP_TALK, SNORE, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, TOXIC
	; end

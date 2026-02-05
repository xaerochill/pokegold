	db VULPIX ; 037

	db  38,  41,  40,  65,  50,  65
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 63 ; base exp
	db BURNT_BERRY, BURNT_BERRY ; items
	db GENDER_F75 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/vulpix/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/vulpix/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, DIG, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FIRE_BLAST, FLAMETHROWER, FRUSTRATION, HEADBUTT, HIDDEN_POWER, IRON_TAIL, MIMIC, PAIN_SPLIT, PROTECT, PSYCH_UP, REFLECT, REST, RETURN, ROAR, SAFEGUARD, SKULL_BASH, SLEEP_TALK, SNORE, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, TOXIC
	; end

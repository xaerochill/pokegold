	db MAGBY ; 240

	db  45,  75,  37,  83,  70,  55
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 117 ; base exp
	db BURNT_BERRY, BURNT_BERRY ; items
	db GENDER_F25 ; gender ratio
	db 25 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/magby/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/magby/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, COUNTER, CURSE, DETECT, DOUBLE_EDGE, DOUBLE_TEAM, DYNAMICPUNCH, ENDURE, FIRE_BLAST, FIRE_PUNCH, FLAMETHROWER, FRUSTRATION, HEADBUTT, HIDDEN_POWER, IRON_TAIL, LOW_KICK, MEGA_KICK, MEGA_PUNCH, MIMIC, MUD_SLAP, PROTECT, PSYCHIC_M, REST, RETURN, ROCK_SMASH, SEISMIC_TOSS, SLEEP_TALK, SNORE, SUBSTITUTE, SUNNY_DAY, SWAGGER, TAKE_DOWN, THIEF, THUNDERPUNCH, TOXIC
	; end

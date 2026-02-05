	db ARCANINE ; 059

	db  90, 110,  80,  95, 100,  80
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 75 ; catch rate
	db 213 ; base exp
	db BURNT_BERRY, BURNT_BERRY ; items
	db GENDER_F25 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/arcanine/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/arcanine/front_silver.dimensions"
ENDC
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, DIG, DOUBLE_EDGE, DOUBLE_TEAM, DRAGONBREATH, DRAGON_RAGE, ENDURE, FIRE_BLAST, FLAMETHROWER, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, IRON_TAIL, MIMIC, MUD_SLAP, PROTECT, REFLECT, REST, RETURN, ROAR, ROCK_SMASH, SAFEGUARD, SKULL_BASH, SLEEP_TALK, SNORE, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, TELEPORT, THIEF, TOXIC
	; end

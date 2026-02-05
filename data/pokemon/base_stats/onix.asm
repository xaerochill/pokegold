	db ONIX ; 095

	db  35,  45, 160,  70,  30,  45
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 108 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/onix/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/onix/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm ANCIENTPOWER, ATTRACT, BODY_SLAM, CURSE, DIG, DOUBLE_EDGE, DOUBLE_TEAM, DRAGONBREATH, EARTHQUAKE, ENDURE, EXPLOSION, FISSURE, FRUSTRATION, HEADBUTT, HIDDEN_POWER, IRON_TAIL, MIMIC, MUD_SLAP, PROTECT, PSYCH_UP, REST, RETURN, ROAR, ROCK_SLIDE, ROCK_SMASH, ROLLOUT, SANDSTORM, SELFDESTRUCT, SKULL_BASH, SLEEP_TALK, SNORE, STRENGTH, SUBSTITUTE, SUNNY_DAY, SWAGGER, TAKE_DOWN, TOXIC, TWISTER
	; end

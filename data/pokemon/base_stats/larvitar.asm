	db LARVITAR ; 246

	db  50,  64,  50,  41,  45,  50
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 67 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/larvitar/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/larvitar/front_silver.dimensions"
ENDC
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm ANCIENTPOWER, ATTRACT, BODY_SLAM, CURSE, DETECT, DIG, DOUBLE_EDGE, DOUBLE_TEAM, EARTHQUAKE, ENDURE, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, IRON_TAIL, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, REST, RETURN, ROCK_SLIDE, ROCK_SMASH, SANDSTORM, SLEEP_TALK, SNORE, SUBSTITUTE, SUNNY_DAY, SWAGGER, TAKE_DOWN, TOXIC
	; end

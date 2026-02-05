	db SLUGMA ; 218

	db  40,  40,  40,  20,  70,  40
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 78 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/slugma/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/slugma/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm ANCIENTPOWER, ATTRACT, BODY_SLAM, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, EARTHQUAKE, ENDURE, FIRE_BLAST, FLAMETHROWER, FRUSTRATION, HIDDEN_POWER, LIGHT_SCREEN, MIMIC, MUD_SLAP, PAIN_SPLIT, PROTECT, REFLECT, REST, RETURN, ROCK_SLIDE, ROCK_SMASH, ROLLOUT, SANDSTORM, SELFDESTRUCT, SLEEP_TALK, SNORE, SUBSTITUTE, SUNNY_DAY, SWAGGER, TAKE_DOWN, TOXIC
	; end

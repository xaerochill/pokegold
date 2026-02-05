	db ARBOK ; 024

	db  60,  85,  69,  80,  65,  79
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 90 ; catch rate
	db 147 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/arbok/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/arbok/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, DIG, DOUBLE_EDGE, DOUBLE_TEAM, EARTHQUAKE, ENDURE, FISSURE, FRUSTRATION, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, IRON_TAIL, LEECH_LIFE, MEGA_DRAIN, MIMIC, MUD_SLAP, PAIN_SPLIT, PROTECT, RAIN_DANCE, REST, RETURN, ROCK_SLIDE, SKULL_BASH, SLEEP_TALK, SLUDGE_BOMB, SNORE, STRENGTH, SUBSTITUTE, SUNNY_DAY, SWAGGER, TAKE_DOWN, THIEF, TOXIC
	; end

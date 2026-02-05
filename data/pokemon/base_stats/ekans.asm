	db EKANS ; 023

	db  35,  60,  44,  55,  40,  54
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 255 ; catch rate
	db 62 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/ekans/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/ekans/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, DIG, DOUBLE_EDGE, DOUBLE_TEAM, EARTHQUAKE, ENDURE, FISSURE, FRUSTRATION, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, IRON_TAIL, LEECH_LIFE, MEGA_DRAIN, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, REST, RETURN, ROCK_SLIDE, SKULL_BASH, SLEEP_TALK, SLUDGE_BOMB, SNORE, STRENGTH, SUBSTITUTE, SUNNY_DAY, SWAGGER, TAKE_DOWN, THIEF, TOXIC
	; end

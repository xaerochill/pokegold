	db SMOOCHUM ; 238

	db  45,  30,  15,  65,  85,  65
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 87 ; base exp
	db ICE_BERRY, ICE_BERRY ; items
	db GENDER_F100 ; gender ratio
	db 25 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/smoochum/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/smoochum/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BLIZZARD, BODY_SLAM, COUNTER, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, DREAM_EATER, DYNAMICPUNCH, ENDURE, FRUSTRATION, HEAL_BELL, HIDDEN_POWER, ICE_BEAM, ICE_PUNCH, ICY_WIND, LIGHT_SCREEN, MEGA_KICK, MEGA_PUNCH, METRONOME, MIMIC, MUD_SLAP, NIGHTMARE, PROTECT, PSYCHIC_M, PSYCH_UP, RAIN_DANCE, REFLECT, REST, RETURN, SEISMIC_TOSS, SHADOW_BALL, SLEEP_TALK, SNORE, SUBSTITUTE, SWAGGER, SWEET_SCENT, THIEF, TOXIC
	; end

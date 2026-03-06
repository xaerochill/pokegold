	db DELIBIRD ; 225

	db  45,  55,  45,  75,  65,  45
	;   hp  atk  def  spd  sat  sdf

	db ICE, FLYING ; type
	db 45 ; catch rate
	db 183 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/delibird/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/delibird/front_silver.dimensions"
ENDC
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BLIZZARD, BODY_SLAM, COUNTER, CURSE, DETECT, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FLY, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, ICE_BEAM, ICE_PUNCH, ICY_WIND, MEGA_KICK, MEGA_PUNCH, MIMIC, MUD_SLAP, PAY_DAY, PROTECT, RAIN_DANCE, REST, RETURN, ROLLOUT, SEISMIC_TOSS, SKY_ATTACK, SLEEP_TALK, SNORE, SPIKES, STEEL_WING, SUBSTITUTE, SWAGGER, SWIFT, TAKE_DOWN, THIEF, TOXIC
	; end

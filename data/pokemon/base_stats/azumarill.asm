	db AZUMARILL ; 184

	db 100,  50,  80,  50,  50,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 75 ; catch rate
	db 153 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/azumarill/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/azumarill/front_silver.dimensions"
ENDC
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BLIZZARD, BODY_SLAM, BUBBLEBEAM, CURSE, DIG, DOUBLE_EDGE, DOUBLE_TEAM, DYNAMICPUNCH, ENDURE, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, ICE_BEAM, ICE_PUNCH, ICY_WIND, IRON_TAIL, LIGHT_SCREEN, MEGA_KICK, MEGA_PUNCH, METRONOME, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, REST, RETURN, ROCK_SMASH, ROLLOUT, SEISMIC_TOSS, SLEEP_TALK, SNORE, STRENGTH, SUBSTITUTE, SURF, SWAGGER, SWIFT, TAKE_DOWN, TOXIC, WATERFALL, WHIRLPOOL
	; end

	db HITMONTOP ; 237

	db  50,  95,  95,  70,  35, 110
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 138 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 25 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/hitmontop/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/hitmontop/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, COUNTER, CURSE, DETECT, DIG, DOUBLE_EDGE, DOUBLE_TEAM, EARTHQUAKE, ENDURE, FRUSTRATION, HEADBUTT, HIDDEN_POWER, LOW_KICK, MEGA_KICK, MEGA_PUNCH, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, REST, RETURN, ROCK_SLIDE, ROCK_SMASH, ROLLOUT, SANDSTORM, SEISMIC_TOSS, SLEEP_TALK, SNORE, STRENGTH, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, THIEF, TOXIC, TWISTER
	; end

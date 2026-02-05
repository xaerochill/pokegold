	db PHANPY ; 231

	db  90,  60,  60,  40,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 120 ; catch rate
	db 124 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/phanpy/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/phanpy/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ANCIENTPOWER, ATTRACT, BODY_SLAM, COUNTER, CURSE, DIG, DOUBLE_EDGE, DOUBLE_TEAM, EARTHQUAKE, ENDURE, FISSURE, FRUSTRATION, HEADBUTT, HIDDEN_POWER, IRON_TAIL, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, REST, RETURN, ROAR, ROCK_SLIDE, ROCK_SMASH, ROLLOUT, SANDSTORM, SLEEP_TALK, SNORE, STRENGTH, SUBSTITUTE, SUNNY_DAY, SWAGGER, TAKE_DOWN, THIEF, TOXIC
	; end

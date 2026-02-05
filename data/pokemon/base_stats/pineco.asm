	db PINECO ; 204

	db  50,  65,  90,  15,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG ; type
	db 190 ; catch rate
	db 60 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/pineco/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/pineco/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, COUNTER, CURSE, DIG, DOUBLE_EDGE, DOUBLE_TEAM, EARTHQUAKE, ENDURE, EXPLOSION, FRUSTRATION, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, LIGHT_SCREEN, MIMIC, PAIN_SPLIT, PROTECT, RAIN_DANCE, REFLECT, REST, RETURN, ROCK_SLIDE, ROCK_SMASH, ROLLOUT, SANDSTORM, SELFDESTRUCT, SLEEP_TALK, SNORE, SOLARBEAM, SPIKES, STRENGTH, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWEET_SCENT, SWIFT, TAKE_DOWN, TOXIC
	; end

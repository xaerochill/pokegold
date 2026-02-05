	db GLIGAR ; 207

	db  65,  75, 105,  85,  35,  65
	;   hp  atk  def  spd  sat  sdf

	db GROUND, FLYING ; type
	db 60 ; catch rate
	db 108 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/gligar/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/gligar/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, COUNTER, CURSE, CUT, DETECT, DIG, DOUBLE_EDGE, DOUBLE_TEAM, DREAM_EATER, EARTHQUAKE, ENDURE, FALSE_SWIPE, FRUSTRATION, FURY_CUTTER, HEADBUTT, HIDDEN_POWER, IRON_TAIL, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, RAZOR_WIND, REST, RETURN, ROCK_SLIDE, ROCK_SMASH, SANDSTORM, SLEEP_TALK, SLUDGE_BOMB, SNORE, SPIKES, STEEL_WING, STRENGTH, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, SWORDS_DANCE, TAKE_DOWN, THIEF, TOXIC
	; end

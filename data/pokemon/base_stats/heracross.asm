	db HERACROSS ; 214

	db  80, 125,  75,  85,  40,  95
	;   hp  atk  def  spd  sat  sdf

	db BUG, FIGHTING ; type
	db 45 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/heracross/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/heracross/front_silver.dimensions"
ENDC
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, COUNTER, CURSE, CUT, DETECT, DIG, DOUBLE_EDGE, DOUBLE_TEAM, EARTHQUAKE, ENDURE, FALSE_SWIPE, FRUSTRATION, FURY_CUTTER, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, LOW_KICK, MEGAHORN, MIMIC, PROTECT, RAIN_DANCE, REST, RETURN, ROCK_SLIDE, ROCK_SMASH, SEISMIC_TOSS, SLEEP_TALK, SNORE, SPIKES, STRENGTH, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWORDS_DANCE, TAKE_DOWN, THIEF, TOXIC
	; end

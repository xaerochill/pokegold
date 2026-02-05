	db SCIZOR ; 212

	db  70, 130, 100,  65,  55,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, STEEL ; type
	db 25 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/scizor/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/scizor/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, COUNTER, CURSE, CUT, DETECT, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FALSE_SWIPE, FRUSTRATION, FURY_CUTTER, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, LIGHT_SCREEN, MIMIC, PROTECT, RAIN_DANCE, RAZOR_WIND, REST, RETURN, ROCK_SMASH, SAFEGUARD, SANDSTORM, SLEEP_TALK, SNORE, STEEL_WING, STRENGTH, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, SWORDS_DANCE, TAKE_DOWN, THIEF, TOXIC
	; end

	db KRABBY ; 098

	db  30, 105,  90,  50,  25,  25
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 225 ; catch rate
	db 115 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/krabby/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/krabby/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm ANCIENTPOWER, ATTRACT, BLIZZARD, BODY_SLAM, BUBBLEBEAM, CURSE, CUT, DIG, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FALSE_SWIPE, FRUSTRATION, FURY_CUTTER, HEADBUTT, HIDDEN_POWER, ICE_BEAM, ICY_WIND, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, REST, RETURN, ROCK_SLIDE, ROCK_SMASH, SLEEP_TALK, SNORE, STRENGTH, SUBSTITUTE, SURF, SWAGGER, SWORDS_DANCE, TAKE_DOWN, THIEF, TOXIC, WHIRLPOOL
	; end

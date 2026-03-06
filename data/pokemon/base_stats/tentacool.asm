	db TENTACOOL ; 072

	db  40,  40,  35,  70,  50, 100
	;   hp  atk  def  spd  sat  sdf

	db WATER, POISON ; type
	db 190 ; catch rate
	db 105 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/tentacool/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/tentacool/front_silver.dimensions"
ENDC
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BLIZZARD, BUBBLEBEAM, CURSE, CUT, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FRUSTRATION, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, ICE_BEAM, ICY_WIND, MEGA_DRAIN, MIMIC, PROTECT, RAIN_DANCE, REFLECT, REST, RETURN, SAFEGUARD, SKULL_BASH, SLEEP_TALK, SLUDGE_BOMB, SNORE, SUBSTITUTE, SURF, SWAGGER, SWIFT, SWORDS_DANCE, TAKE_DOWN, THIEF, TOXIC, WATERFALL, WHIRLPOOL
	; end

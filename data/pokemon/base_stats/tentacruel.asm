	db TENTACRUEL ; 073

	db  80,  70,  65, 100,  80, 120
	;   hp  atk  def  spd  sat  sdf

	db WATER, POISON ; type
	db 60 ; catch rate
	db 205 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/tentacruel/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/tentacruel/front_silver.dimensions"
ENDC
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BLIZZARD, BUBBLEBEAM, CURSE, CUT, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FRUSTRATION, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, ICE_BEAM, ICY_WIND, MEGA_DRAIN, MIMIC, PROTECT, RAIN_DANCE, REFLECT, REST, RETURN, SAFEGUARD, SKULL_BASH, SLEEP_TALK, SLUDGE_BOMB, SNORE, SUBSTITUTE, SURF, SWAGGER, SWIFT, SWORDS_DANCE, TAKE_DOWN, THIEF, TOXIC, WHIRLPOOL
	; end

	db GOLBAT ; 042

	db  75,  80,  70,  90,  65,  75
	;   hp  atk  def  spd  sat  sdf

	db POISON, FLYING ; type
	db 90 ; catch rate
	db 171 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/golbat/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/golbat/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, CURSE, DETECT, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FRUSTRATION, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, LEECH_LIFE, MEGA_DRAIN, MIMIC, PROTECT, RAIN_DANCE, RAZOR_WIND, REST, RETURN, SHADOW_BALL, SLEEP_TALK, SLUDGE_BOMB, SNORE, STEEL_WING, SUBSTITUTE, SUNNY_DAY, SUPER_FANG, SWAGGER, SWIFT, TAKE_DOWN, THIEF, TOXIC, TWISTER, WHIRLWIND
	; end

	db CROBAT ; 169

	db  85,  90,  80, 130,  70,  80
	;   hp  atk  def  spd  sat  sdf

	db POISON, FLYING ; type
	db 90 ; catch rate
	db 204 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/crobat/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/crobat/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, CURSE, DETECT, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FLY, FRUSTRATION, GIGA_DRAIN, HIDDEN_POWER, HYPER_BEAM, LEECH_LIFE, MIMIC, PROTECT, RAIN_DANCE, REST, RETURN, SHADOW_BALL, SKY_ATTACK, SLEEP_TALK, SLUDGE_BOMB, SNORE, STEEL_WING, SUBSTITUTE, SUNNY_DAY, SUPER_FANG, SWAGGER, SWIFT, THIEF, TOXIC, TWISTER
	; end

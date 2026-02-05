	db FEAROW ; 022

	db  65,  90,  65, 100,  61,  61
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 90 ; catch rate
	db 162 ; base exp
	db NO_ITEM, SHARP_BEAK ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/fearow/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/fearow/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, CURSE, DETECT, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FALSE_SWIPE, FLY, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, RAZOR_WIND, REST, RETURN, SKY_ATTACK, SLEEP_TALK, SNORE, STEEL_WING, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, THIEF, TOXIC, TRI_ATTACK, TWISTER, WHIRLWIND
	; end

	db SPEAROW ; 021

	db  40,  60,  30,  70,  31,  31
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 255 ; catch rate
	db 58 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/spearow/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/spearow/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, CURSE, DETECT, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FALSE_SWIPE, FLY, FRUSTRATION, HEADBUTT, HIDDEN_POWER, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, RAZOR_WIND, REST, RETURN, SKY_ATTACK, SLEEP_TALK, SNORE, STEEL_WING, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, THIEF, TOXIC, TRI_ATTACK, TWISTER, WHIRLWIND
	; end

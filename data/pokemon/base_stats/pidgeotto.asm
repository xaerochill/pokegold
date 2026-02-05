	db PIDGEOTTO ; 017

	db  63,  60,  55,  71,  50,  50
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 120 ; catch rate
	db 113 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/pidgeotto/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/pidgeotto/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, CURSE, DETECT, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FLY, FRUSTRATION, HEADBUTT, HIDDEN_POWER, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, RAZOR_WIND, REFLECT, REST, RETURN, SKY_ATTACK, SLEEP_TALK, SNORE, STEEL_WING, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, THIEF, TOXIC, TWISTER, WHIRLWIND
	; end

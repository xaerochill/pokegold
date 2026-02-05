	db PIDGEOT ; 018

	db  83,  80,  75,  91,  70,  70
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 172 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/pidgeot/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/pidgeot/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, CURSE, DETECT, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FLY, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, RAZOR_WIND, REFLECT, REST, RETURN, SKY_ATTACK, SLEEP_TALK, SNORE, STEEL_WING, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, THIEF, TOXIC, TWISTER, WHIRLWIND
	; end

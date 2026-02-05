	db DODUO ; 084

	db  35,  85,  45,  75,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 190 ; catch rate
	db 96 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/doduo/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/doduo/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FLY, FRUSTRATION, HEADBUTT, HIDDEN_POWER, LOW_KICK, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, REFLECT, REST, RETURN, SKULL_BASH, SKY_ATTACK, SLEEP_TALK, SNORE, STEEL_WING, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, SWORDS_DANCE, TAKE_DOWN, THIEF, TOXIC, TRI_ATTACK, WHIRLWIND
	; end

	db ARTICUNO ; 144

	db  90,  85, 100,  85,  95, 125
	;   hp  atk  def  spd  sat  sdf

	db ICE, FLYING ; type
	db 3 ; catch rate
	db 215 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 80 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/articuno/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/articuno/front_silver.dimensions"
ENDC
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm ANCIENTPOWER, BLIZZARD, BUBBLEBEAM, CURSE, DETECT, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FLY, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, ICE_BEAM, ICY_WIND, LIGHT_SCREEN, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, RAZOR_WIND, REFLECT, REST, RETURN, ROAR, ROCK_SMASH, SANDSTORM, SKY_ATTACK, SLEEP_TALK, SNORE, STEEL_WING, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, TOXIC, TWISTER, WHIRLWIND
	; end

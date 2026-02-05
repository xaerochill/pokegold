	db HORSEA ; 116

	db  30,  40,  70,  60,  70,  25
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 225 ; catch rate
	db 83 ; base exp
	db NO_ITEM, DRAGON_SCALE ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/horsea/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/horsea/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BLIZZARD, BUBBLEBEAM, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, DRAGONBREATH, DRAGON_RAGE, ENDURE, FRUSTRATION, HEADBUTT, HIDDEN_POWER, ICE_BEAM, ICY_WIND, MIMIC, PROTECT, RAIN_DANCE, RAZOR_WIND, REST, RETURN, SKULL_BASH, SLEEP_TALK, SNORE, SUBSTITUTE, SURF, SWAGGER, SWIFT, TAKE_DOWN, TOXIC, TWISTER, WATERFALL, WHIRLPOOL
	; end

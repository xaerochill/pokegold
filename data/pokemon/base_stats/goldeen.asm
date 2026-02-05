	db GOLDEEN ; 118

	db  45,  67,  60,  63,  35,  50
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 225 ; catch rate
	db 111 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/goldeen/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/goldeen/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BLIZZARD, BODY_SLAM, BUBBLEBEAM, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FRUSTRATION, FURY_CUTTER, HEADBUTT, HIDDEN_POWER, HORN_DRILL, ICE_BEAM, ICY_WIND, MEGAHORN, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, REST, RETURN, SKULL_BASH, SLEEP_TALK, SNORE, SUBSTITUTE, SURF, SWAGGER, SWIFT, SWORDS_DANCE, TAKE_DOWN, TOXIC, WATERFALL
	; end

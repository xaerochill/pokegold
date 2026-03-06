	db SHELLDER ; 090

	db  30,  65, 100,  40,  45,  25
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 190 ; catch rate
	db 97 ; base exp
	db PEARL, BIG_PEARL ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/shellder/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/shellder/front_silver.dimensions"
ENDC
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BLIZZARD, BUBBLEBEAM, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, EXPLOSION, FRUSTRATION, HEADBUTT, HIDDEN_POWER, ICE_BEAM, ICY_WIND, MIMIC, PROTECT, RAIN_DANCE, REFLECT, REST, RETURN, SELFDESTRUCT, SLEEP_TALK, SNORE, SPIKES, SUBSTITUTE, SURF, SWAGGER, SWIFT, TAKE_DOWN, TELEPORT, TOXIC, TRI_ATTACK, WATERFALL, WHIRLPOOL
	; end

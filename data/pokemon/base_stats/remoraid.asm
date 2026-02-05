	db REMORAID ; 223

	db  35,  65,  35,  65,  65,  35
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 190 ; catch rate
	db 78 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/remoraid/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/remoraid/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BLIZZARD, BUBBLEBEAM, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FIRE_BLAST, FLAMETHROWER, FRUSTRATION, HIDDEN_POWER, HYPER_BEAM, ICE_BEAM, ICY_WIND, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, REST, RETURN, SLEEP_TALK, SNORE, SUBSTITUTE, SUNNY_DAY, SURF, SWAGGER, SWIFT, THIEF, THUNDER_WAVE, TOXIC, WHIRLPOOL
	; end

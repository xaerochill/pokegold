	db RATTATA ; 019

	db  30,  56,  35,  72,  25,  35
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 57 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/rattata/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/rattata/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BLIZZARD, BODY_SLAM, BUBBLEBEAM, COUNTER, CURSE, CUT, DIG, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FRUSTRATION, HEADBUTT, HIDDEN_POWER, ICE_BEAM, ICY_WIND, IRON_TAIL, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, REST, RETURN, ROCK_SMASH, SHADOW_BALL, SKULL_BASH, SLEEP_TALK, SLUDGE_BOMB, SNORE, SUBSTITUTE, SUNNY_DAY, SUPER_FANG, SWAGGER, SWIFT, TAKE_DOWN, THIEF, THUNDER, THUNDERBOLT, THUNDER_WAVE, TOXIC
	; end

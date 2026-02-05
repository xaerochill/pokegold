	db FARFETCH_D ; 083

	db  52,  65,  55,  60,  58,  62
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 94 ; base exp
	db NO_ITEM, STICK ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/farfetch_d/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/farfetch_d/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, CUT, DETECT, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FALSE_SWIPE, FLY, FRUSTRATION, FURY_CUTTER, HEADBUTT, HIDDEN_POWER, IRON_TAIL, MIMIC, MUD_SLAP, PROTECT, PSYCH_UP, RAZOR_WIND, REFLECT, REST, RETURN, SKULL_BASH, SKY_ATTACK, SLEEP_TALK, SNORE, STEEL_WING, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, SWORDS_DANCE, TAKE_DOWN, THIEF, TOXIC, TWISTER, WHIRLWIND
	; end

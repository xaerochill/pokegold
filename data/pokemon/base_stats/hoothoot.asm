	db HOOTHOOT ; 163

	db  60,  30,  30,  50,  36,  56
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 255 ; catch rate
	db 58 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/hoothoot/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/hoothoot/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, CURSE, DETECT, DOUBLE_EDGE, DOUBLE_TEAM, DREAM_EATER, ENDURE, FLASH, FLY, FRUSTRATION, HIDDEN_POWER, MIMIC, MUD_SLAP, NIGHTMARE, PROTECT, PSYCH_UP, RAIN_DANCE, REFLECT, REST, RETURN, SHADOW_BALL, SKY_ATTACK, SLEEP_TALK, SNORE, STEEL_WING, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, THIEF, TOXIC, TWISTER, WHIRLWIND
	; end

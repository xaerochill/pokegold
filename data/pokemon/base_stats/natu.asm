	db NATU ; 177

	db  40,  50,  45,  70,  70,  45
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FLYING ; type
	db 190 ; catch rate
	db 73 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/natu/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/natu/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, CURSE, DETECT, DOUBLE_EDGE, DOUBLE_TEAM, DREAM_EATER, ENDURE, FLASH, FRUSTRATION, GIGA_DRAIN, HIDDEN_POWER, LIGHT_SCREEN, MIMIC, NIGHTMARE, PAIN_SPLIT, PROTECT, PSYCHIC_M, PSYCH_UP, RAIN_DANCE, REFLECT, REST, RETURN, SHADOW_BALL, SKY_ATTACK, SLEEP_TALK, SNORE, SOLARBEAM, STEEL_WING, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TELEPORT, THIEF, THUNDER_WAVE, TOXIC, TWISTER
	; end

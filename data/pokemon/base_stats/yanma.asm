	db YANMA ; 193

	db  65,  65,  45,  95,  75,  45
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 75 ; catch rate
	db 147 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/yanma/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/yanma/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm ANCIENTPOWER, ATTRACT, CURSE, DETECT, DOUBLE_EDGE, DOUBLE_TEAM, DREAM_EATER, ENDURE, FLASH, FRUSTRATION, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, LEECH_LIFE, MIMIC, PROTECT, PSYCH_UP, REST, RETURN, SHADOW_BALL, SLEEP_TALK, SNORE, SOLARBEAM, STEEL_WING, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, SWORDS_DANCE, TAKE_DOWN, THIEF, TOXIC, WHIRLWIND
	; end

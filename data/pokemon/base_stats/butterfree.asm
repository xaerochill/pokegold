	db BUTTERFREE ; 012

	db  60,  45,  50,  70,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 160 ; base exp
	db NO_ITEM, SILVERPOWDER ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/butterfree/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/butterfree/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, DREAM_EATER, ENDURE, FLASH, FRUSTRATION, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, MEGA_DRAIN, MIMIC, NIGHTMARE, PROTECT, PSYCHIC_M, PSYCH_UP, PSYWAVE, RAIN_DANCE, RAZOR_WIND, REFLECT, REST, RETURN, SAFEGUARD, SHADOW_BALL, SLEEP_TALK, SNORE, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWEET_SCENT, SWIFT, TAKE_DOWN, TELEPORT, THIEF, TOXIC, TWISTER, WHIRLWIND
	; end

	db VENOMOTH ; 049

	db  70,  65,  60,  90,  90,  75
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 75 ; catch rate
	db 138 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/venomoth/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/venomoth/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, DREAM_EATER, ENDURE, FLASH, FRUSTRATION, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, LEECH_LIFE, MEGA_DRAIN, MIMIC, PROTECT, PSYCHIC_M, PSYWAVE, RAZOR_WIND, REFLECT, REST, RETURN, SLEEP_TALK, SLUDGE_BOMB, SNORE, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWEET_SCENT, SWIFT, TAKE_DOWN, TELEPORT, THIEF, TOXIC, TWISTER, WHIRLWIND
	; end

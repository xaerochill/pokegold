	db LEDYBA ; 165

	db  40,  20,  30,  55,  40,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 255 ; catch rate
	db 54 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/ledyba/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/ledyba/front_silver.dimensions"
ENDC
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, COUNTER, CURSE, DIG, DOUBLE_EDGE, DOUBLE_TEAM, DYNAMICPUNCH, ENDURE, FLASH, FRUSTRATION, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, ICE_PUNCH, LIGHT_SCREEN, MEGA_PUNCH, MIMIC, PROTECT, REFLECT, REST, RETURN, ROLLOUT, SAFEGUARD, SLEEP_TALK, SNORE, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWEET_SCENT, SWIFT, SWORDS_DANCE, THIEF, THUNDERPUNCH, TOXIC
	; end

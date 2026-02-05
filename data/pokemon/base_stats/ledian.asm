	db LEDIAN ; 166

	db  55,  35,  50,  85,  55, 110
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 90 ; catch rate
	db 134 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/ledian/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/ledian/front_silver.dimensions"
ENDC
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, CURSE, DIG, DOUBLE_EDGE, DOUBLE_TEAM, DYNAMICPUNCH, ENDURE, FLASH, FRUSTRATION, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, ICE_PUNCH, LIGHT_SCREEN, MEGA_PUNCH, MIMIC, PROTECT, REFLECT, REST, RETURN, ROCK_SMASH, ROLLOUT, SAFEGUARD, SLEEP_TALK, SNORE, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWEET_SCENT, SWIFT, SWORDS_DANCE, THIEF, THUNDERPUNCH, TOXIC
	; end

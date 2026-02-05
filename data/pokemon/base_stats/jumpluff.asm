	db JUMPLUFF ; 189

	db  75,  55,  70, 110,  55,  85
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 45 ; catch rate
	db 176 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/jumpluff/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/jumpluff/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FLASH, FRUSTRATION, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, LIGHT_SCREEN, MEGA_DRAIN, MIMIC, PROTECT, PSYCH_UP, RAIN_DANCE, REFLECT, REST, RETURN, SLEEP_TALK, SNORE, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWEET_SCENT, SWORDS_DANCE, SYNTHESIS, TAKE_DOWN, THIEF, TOXIC
	; end

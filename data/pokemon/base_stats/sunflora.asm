	db SUNFLORA ; 192

	db  75,  75,  55,  30, 105,  85
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 120 ; catch rate
	db 146 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/sunflora/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/sunflora/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, CURSE, CUT, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FLASH, FRUSTRATION, GIGA_DRAIN, HIDDEN_POWER, HYPER_BEAM, LIGHT_SCREEN, MEGA_DRAIN, MIMIC, PROTECT, RAIN_DANCE, REST, RETURN, SAFEGUARD, SLEEP_TALK, SLUDGE_BOMB, SNORE, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWEET_SCENT, SWORDS_DANCE, SYNTHESIS, TAKE_DOWN, TOXIC
	; end

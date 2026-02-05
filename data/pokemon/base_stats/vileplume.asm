	db VILEPLUME ; 045

	db  75,  80,  85,  50, 100,  90
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 184 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/vileplume/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/vileplume/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, CUT, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FLASH, FRUSTRATION, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, MEGA_DRAIN, MIMIC, PROTECT, REFLECT, REST, RETURN, SAFEGUARD, SLEEP_TALK, SLUDGE_BOMB, SNORE, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWEET_SCENT, SWORDS_DANCE, SYNTHESIS, TAKE_DOWN, TOXIC
	; end

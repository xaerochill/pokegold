	db VENUSAUR ; 003

	db  80,  82,  83,  80, 100, 100
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 208 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/venusaur/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/venusaur/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, CUT, DOUBLE_EDGE, DOUBLE_TEAM, EARTHQUAKE, ENDURE, FALSE_SWIPE, FLASH, FRUSTRATION, FURY_CUTTER, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, LIGHT_SCREEN, MEGA_DRAIN, MIMIC, MUD_SLAP, PROTECT, REFLECT, REST, RETURN, ROAR, ROCK_SMASH, SAFEGUARD, SLEEP_TALK, SLUDGE_BOMB, SNORE, SOLARBEAM, STRENGTH, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWEET_SCENT, SWORDS_DANCE, SYNTHESIS, TAKE_DOWN, TOXIC
	; end

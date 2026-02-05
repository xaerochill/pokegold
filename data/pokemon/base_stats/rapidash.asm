	db RAPIDASH ; 078

	db  65, 100,  70, 105,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 60 ; catch rate
	db 192 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/rapidash/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/rapidash/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FIRE_BLAST, FLAMETHROWER, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HORN_DRILL, HYPER_BEAM, IRON_TAIL, LOW_KICK, MEGAHORN, MIMIC, PAY_DAY, PROTECT, REFLECT, REST, RETURN, SKULL_BASH, SLEEP_TALK, SNORE, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, SWORDS_DANCE, TAKE_DOWN, TOXIC
	; end

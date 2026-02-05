	db PONYTA ; 077

	db  50,  85,  55,  90,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 152 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/ponyta/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/ponyta/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FIRE_BLAST, FLAMETHROWER, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HORN_DRILL, IRON_TAIL, LOW_KICK, MIMIC, PROTECT, REFLECT, REST, RETURN, SKULL_BASH, SLEEP_TALK, SNORE, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, TOXIC
	; end

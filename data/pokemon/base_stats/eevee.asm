	db EEVEE ; 133

	db  55,  55,  50,  55,  45,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 92 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 35 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/eevee/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/eevee/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, DETECT, DIG, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FRUSTRATION, HEADBUTT, HEAL_BELL, HIDDEN_POWER, IRON_TAIL, MIMIC, MUD_SLAP, PAY_DAY, PROTECT, RAIN_DANCE, REFLECT, REST, RETURN, ROAR, SHADOW_BALL, SKULL_BASH, SLEEP_TALK, SNORE, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, TOXIC
	; end

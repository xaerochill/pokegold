	db STANTLER ; 234

	db  73,  95,  62,  85,  85,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 165 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/stantler/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/stantler/front_silver.dimensions"
ENDC
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, DETECT, DIG, DOUBLE_EDGE, DOUBLE_TEAM, DREAM_EATER, EARTHQUAKE, ENDURE, FLASH, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, IRON_TAIL, LIGHT_SCREEN, MEGAHORN, MIMIC, MUD_SLAP, NIGHTMARE, PROTECT, PSYCHIC_M, PSYCH_UP, RAIN_DANCE, REFLECT, REST, RETURN, ROAR, SHADOW_BALL, SLEEP_TALK, SNORE, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, THIEF, THUNDER, THUNDERBOLT, THUNDER_WAVE, TOXIC
	; end

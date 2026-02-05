	db PICHU ; 172

	db  20,  40,  15,  60,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 42 ; base exp
	db NO_ITEM, BERRY ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/pichu/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/pichu/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, COUNTER, CURSE, DETECT, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FLASH, FRUSTRATION, HEADBUTT, HIDDEN_POWER, IRON_TAIL, LIGHT_SCREEN, MEGA_KICK, MEGA_PUNCH, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, REFLECT, REST, RETURN, ROLLOUT, SEISMIC_TOSS, SLEEP_TALK, SNORE, SUBSTITUTE, SWAGGER, SWIFT, TAKE_DOWN, THUNDER, THUNDERBOLT, THUNDERPUNCH, THUNDER_WAVE, TOXIC, ZAP_CANNON
	; end

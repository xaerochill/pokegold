	db MURKROW ; 198

	db  60,  85,  42,  91,  85,  42
	;   hp  atk  def  spd  sat  sdf

	db DARK, FLYING ; type
	db 30 ; catch rate
	db 107 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/murkrow/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/murkrow/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, CURSE, DETECT, DOUBLE_EDGE, DOUBLE_TEAM, DREAM_EATER, ENDURE, FLY, FRUSTRATION, HIDDEN_POWER, HYPER_BEAM, ICY_WIND, MIMIC, MUD_SLAP, NIGHTMARE, PROTECT, PSYCHIC_M, PSYCH_UP, RAIN_DANCE, REST, RETURN, SHADOW_BALL, SKY_ATTACK, SLEEP_TALK, SNORE, STEEL_WING, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, THIEF, THUNDER_WAVE, TOXIC, TWISTER, WHIRLWIND
	; end

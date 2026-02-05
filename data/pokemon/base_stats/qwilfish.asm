	db QWILFISH ; 211

	db  65,  95,  75,  85,  55,  55
	;   hp  atk  def  spd  sat  sdf

	db WATER, POISON ; type
	db 45 ; catch rate
	db 100 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/qwilfish/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/qwilfish/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BLIZZARD, BUBBLEBEAM, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, EXPLOSION, FRUSTRATION, HEADBUTT, HIDDEN_POWER, ICE_BEAM, ICY_WIND, MIMIC, PAIN_SPLIT, PROTECT, RAIN_DANCE, REST, RETURN, ROLLOUT, SELFDESTRUCT, SHADOW_BALL, SLEEP_TALK, SLUDGE_BOMB, SNORE, SPIKES, SUBSTITUTE, SURF, SWAGGER, SWIFT, SWORDS_DANCE, TAKE_DOWN, THUNDER_WAVE, TOXIC, WATERFALL, WHIRLPOOL
	; end

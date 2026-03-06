	db CLOYSTER ; 091

	db  50,  95, 180,  70,  85,  45
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 60 ; catch rate
	db 203 ; base exp
	db PEARL, BIG_PEARL ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/cloyster/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/cloyster/front_silver.dimensions"
ENDC
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BLIZZARD, BODY_SLAM, BUBBLEBEAM, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, EXPLOSION, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, ICE_BEAM, ICY_WIND, LIGHT_SCREEN, MIMIC, PROTECT, RAIN_DANCE, REFLECT, REST, RETURN, SELFDESTRUCT, SLEEP_TALK, SNORE, SPIKES, SUBSTITUTE, SURF, SWAGGER, SWIFT, TAKE_DOWN, TELEPORT, TOXIC, TRI_ATTACK, WATERFALL, WHIRLPOOL
	; end

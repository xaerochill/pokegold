	db DODRIO ; 085

	db  60, 110,  70, 100,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 158 ; base exp
	db NO_ITEM, SHARP_BEAK ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/dodrio/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/dodrio/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FLY, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, LOW_KICK, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, REFLECT, REST, RETURN, SKULL_BASH, SKY_ATTACK, SLEEP_TALK, SNORE, STEEL_WING, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, SWORDS_DANCE, TAKE_DOWN, THIEF, TOXIC, TRI_ATTACK, WHIRLWIND
	; end

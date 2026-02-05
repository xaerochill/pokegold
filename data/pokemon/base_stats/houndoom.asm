	db HOUNDOOM ; 229

	db  75,  90,  50,  95, 110,  80
	;   hp  atk  def  spd  sat  sdf

	db DARK, FIRE ; type
	db 45 ; catch rate
	db 204 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/houndoom/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/houndoom/front_silver.dimensions"
ENDC
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, COUNTER, CURSE, DETECT, DOUBLE_EDGE, DOUBLE_TEAM, DREAM_EATER, ENDURE, FIRE_BLAST, FLAMETHROWER, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, IRON_TAIL, MIMIC, MUD_SLAP, NIGHTMARE, PAIN_SPLIT, PROTECT, RAIN_DANCE, REST, RETURN, ROAR, ROCK_SMASH, SHADOW_BALL, SLEEP_TALK, SLUDGE_BOMB, SNORE, SOLARBEAM, STRENGTH, SUBSTITUTE, SUNNY_DAY, SUPER_FANG, SWAGGER, SWIFT, TAKE_DOWN, THIEF, TOXIC
	; end

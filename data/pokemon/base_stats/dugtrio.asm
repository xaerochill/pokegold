	db DUGTRIO ; 051

	db  35,  80,  50, 120,  50,  70
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 50 ; catch rate
	db 153 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/dugtrio/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/dugtrio/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, CUT, DIG, DOUBLE_EDGE, DOUBLE_TEAM, EARTHQUAKE, ENDURE, FISSURE, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, MIMIC, MUD_SLAP, PROTECT, REST, RETURN, ROCK_SLIDE, ROCK_SMASH, SANDSTORM, SLEEP_TALK, SLUDGE_BOMB, SNORE, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWORDS_DANCE, TAKE_DOWN, THIEF, TOXIC, TRI_ATTACK
	; end

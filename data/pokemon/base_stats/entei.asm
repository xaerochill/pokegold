	db ENTEI ; 244

	db 115, 115,  85, 100,  90,  75
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 3 ; catch rate
	db 217 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 80 ; step cycles to hatch
	INCBIN "gfx/pokemon/entei/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm BODY_SLAM, CURSE, CUT, DETECT, DIG, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FIRE_BLAST, FLAMETHROWER, FLASH, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, IRON_TAIL, MIMIC, MUD_SLAP, PROTECT, PSYCH_UP, RAIN_DANCE, REFLECT, REST, RETURN, ROAR, ROCK_SMASH, SANDSTORM, SHADOW_BALL, SLEEP_TALK, SNORE, SOLARBEAM, STRENGTH, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, TOXIC
	; end

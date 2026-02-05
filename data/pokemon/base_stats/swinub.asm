	db SWINUB ; 220

	db  50,  50,  40,  50,  30,  30
	;   hp  atk  def  spd  sat  sdf

	db ICE, GROUND ; type
	db 225 ; catch rate
	db 78 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/swinub/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ANCIENTPOWER, ATTRACT, BLIZZARD, BODY_SLAM, CURSE, DETECT, DIG, DOUBLE_EDGE, DOUBLE_TEAM, EARTHQUAKE, ENDURE, FISSURE, FRUSTRATION, HEADBUTT, HIDDEN_POWER, ICE_BEAM, ICY_WIND, LIGHT_SCREEN, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, REFLECT, REST, RETURN, ROAR, ROCK_SLIDE, ROCK_SMASH, SANDSTORM, SLEEP_TALK, SNORE, STRENGTH, SUBSTITUTE, SWAGGER, TAKE_DOWN, TOXIC
	; end

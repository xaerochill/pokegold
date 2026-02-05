	db MOLTRES ; 146

	db  90, 100,  90,  90, 125,  85
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FLYING ; type
	db 3 ; catch rate
	db 217 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 80 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/moltres/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/moltres/front_silver.dimensions"
ENDC
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm ANCIENTPOWER, CURSE, DETECT, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FIRE_BLAST, FLAMETHROWER, FLY, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, MIMIC, MUD_SLAP, PROTECT, RAIN_DANCE, RAZOR_WIND, REFLECT, REST, RETURN, ROAR, ROCK_SMASH, SAFEGUARD, SANDSTORM, SKY_ATTACK, SLEEP_TALK, SNORE, SOLARBEAM, STEEL_WING, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, TOXIC, TWISTER, WHIRLWIND
	; end

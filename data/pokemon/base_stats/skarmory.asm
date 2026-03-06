	db SKARMORY ; 227

	db  65,  80, 140,  70,  40,  70
	;   hp  atk  def  spd  sat  sdf

	db STEEL, FLYING ; type
	db 25 ; catch rate
	db 168 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/skarmory/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/skarmory/front_silver.dimensions"
ENDC
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, COUNTER, CURSE, CUT, DETECT, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FLASH, FLY, FRUSTRATION, FURY_CUTTER, HIDDEN_POWER, HYPER_BEAM, ICY_WIND, MIMIC, MUD_SLAP, PROTECT, REST, RETURN, ROAR, ROCK_SLIDE, ROCK_SMASH, SANDSTORM, SKY_ATTACK, SLEEP_TALK, SNORE, SPIKES, STEEL_WING, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, SWORDS_DANCE, TAKE_DOWN, THIEF, TOXIC, TWISTER, WHIRLWIND
	; end

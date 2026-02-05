	db SHUCKLE ; 213

	db  20,  10, 230,  05,  10, 230
	;   hp  atk  def  spd  sat  sdf

	db BUG, ROCK ; type
	db 190 ; catch rate
	db 80 ; base exp
	db BERRY, BERRY ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/shuckle/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/shuckle/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm ANCIENTPOWER, ATTRACT, BODY_SLAM, CURSE, DIG, DOUBLE_EDGE, DOUBLE_TEAM, EARTHQUAKE, ENDURE, FLASH, FRUSTRATION, HEADBUTT, HIDDEN_POWER, MIMIC, MUD_SLAP, PROTECT, REST, RETURN, ROCK_SLIDE, ROCK_SMASH, ROLLOUT, SAFEGUARD, SANDSTORM, SLEEP_TALK, SLUDGE_BOMB, SNORE, STRENGTH, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWEET_SCENT, TOXIC
	; end

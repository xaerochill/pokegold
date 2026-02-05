	db STEELIX ; 208

	db  75,  85, 200,  30,  55,  65
	;   hp  atk  def  spd  sat  sdf

	db STEEL, GROUND ; type
	db 25 ; catch rate
	db 196 ; base exp
	db NO_ITEM, METAL_COAT ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/steelix/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/steelix/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm ANCIENTPOWER, ATTRACT, BODY_SLAM, CURSE, CUT, DIG, DOUBLE_EDGE, DOUBLE_TEAM, DRAGONBREATH, EARTHQUAKE, ENDURE, EXPLOSION, FRUSTRATION, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, IRON_TAIL, MIMIC, MUD_SLAP, PROTECT, PSYCH_UP, REST, RETURN, ROAR, ROCK_SLIDE, ROCK_SMASH, ROLLOUT, SANDSTORM, SELFDESTRUCT, SLEEP_TALK, SNORE, STRENGTH, SUBSTITUTE, SUNNY_DAY, SWAGGER, TOXIC, TWISTER
	; end

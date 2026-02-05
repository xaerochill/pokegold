	db CYNDAQUIL ; 155

	db  39,  52,  43,  65,  60,  50
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 65 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/cyndaquil/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/cyndaquil/front_silver.dimensions"
ENDC
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ATTRACT, BODY_SLAM, CURSE, CUT, DETECT, DIG, DOUBLE_EDGE, DOUBLE_TEAM, ENDURE, FIRE_BLAST, FLAMETHROWER, FRUSTRATION, HEADBUTT, HIDDEN_POWER, IRON_TAIL, MIMIC, MUD_SLAP, PROTECT, REST, RETURN, ROAR, ROLLOUT, SLEEP_TALK, SNORE, SUBMISSION, SUBSTITUTE, SUNNY_DAY, SWAGGER, SWIFT, TAKE_DOWN, TOXIC
	; end

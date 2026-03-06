; Pokémon traded from RBY do not have held items, so GSC usually interprets the
; catch rate as an item. The following items are transferred from vanilla RBY:
; 3   BRIGHTPOWDER
; 30  LUCKY_PUNCH
; 35  METAL_POWDER
; 60  SILVER_LEAF
; 75  GOLD_LEAF
; 96  TWISTEDSPOON
; 150 MYSTERYBERRY
; 163 LIGHT_BALL
; 170 POLKADOT_BOW
; 180 BRICK_PIECE
;However, if the catch rate appears in this table, the
; item associated with the table entry is used instead.

TimeCapsule_CatchRateItems:
	db ANTIDOTE,  DRAGON_SCALE ; 3  (Dragonite in Yellow)
	db ITEM_19,   LEFTOVERS    ; 25 (Snorlax)
	db PROTEIN,   DRAGON_FANG  ; 27 (Dragonair in Yellow)
	db ITEM_2D,   BITTER_BERRY ; 45
	db ITEM_32,   GOLD_BERRY   ; 50
	db ITEM_5A,   BERRY        ; 90
	db ITEM_64,   BERRY        ; 100
	db ITEM_78,   BERRY        ; 120
	db OLD_AMBER, BERRY        ; 150
	db ITEM_BE,   BERRY        ; 190
	db ITEM_C8,   BERRY        ; 200
	db ITEM_E1,   BERRY        ; 225
	db ITEM_EB,   BERRY        ; 235
	db -1,        BERRY        ; 255
	db 0 ; end

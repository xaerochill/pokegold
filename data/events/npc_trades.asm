MACRO npctrade
; dialog set, requested mon, offered mon, nickname, dvs, item, OT ID, OT name, move, level
	db \1, \2, \3
	dname \4, NAME_LENGTH
	db \5, \6, \7
	dw \8
	dname \9, NAME_LENGTH
	db \<10>, \<11>
ENDM

NPCTrades:
; entries correspond to NPCTRADE_* constants
	table_width NPCTRADE_STRUCT_LENGTH
	npctrade TRADE_DIALOGSET_COLLECTOR, DROWZEE,    MACHOP,     "MUSCLE",   $DD, $FF, MIRACLEBERRY, 37758, "MIKE",   ROLLING_KICK, 100 ; Goldenrod City,  min hue shift,    HP Bug
	npctrade TRADE_DIALOGSET_COLLECTOR, BELLSPROUT, ONIX,       "ROCKY",    $FF, $FF, MIRACLEBERRY, 48008, "KYLE",   ROCK_SLIDE,   0 ; Violet City,     min hue shift,    HP Dark
	npctrade TRADE_DIALOGSET_HAPPY,     KRABBY,     BLASTOISE,  "BUFFY",    $EF, $FF, MIRACLEBERRY, 29223, "TIM",    CONFUSION,    0 ; Olivine City,    max hue shift,    HP Electric
	npctrade TRADE_DIALOGSET_NEWBIE,    DRAGONAIR,  RHYDON,     "DON",      $DD, $FF, MIRACLEBERRY, 01337, "EMY",    OUTRAGE,      0 ; Blackthorn City, custom hue shift, HP Bug
	npctrade TRADE_DIALOGSET_HAPPY,     NIDORINO,   KINGLER,    "SAILOR",   $CF, $FF, MIRACLEBERRY, 65482, "MARGE",  HYDRO_PUMP,   0 ; Pewter City,     max hue shift,    HP Ground
	npctrade TRADE_DIALOGSET_NEWBIE,    CHANSEY,    AERODACTYL, "AEROY",    $CD, $FF, MIRACLEBERRY, 26169, "KIM",    WHIRLWIND,    0 ; Fuchsia City,    min hue shift,    HP Fying
	npctrade TRADE_DIALOGSET_COLLECTOR, NIDORINO,   DUGTRIO,    "GLURIO",   $FF, $FF, MIRACLEBERRY, 55511, "RANDY",  ANCIENTPOWER, 0 ; Vermilion City,  max hue shift,    HP Dark
	npctrade TRADE_DIALOGSET_COLLECTOR, ABRA,       MR__MIME,   "MARCEL",   $FF, $FF, MIRACLEBERRY, 03111, "GARET",  HYPNOSIS,     0 ; Saffron City,    min hue shift,    HP Dark
	npctrade TRADE_DIALOGSET_HAPPY,     GLOOM,      CHARIZARD,  "RICKY",    $FF, $FF, MIRACLEBERRY, 51006, "CHRIS",  METAL_CLAW,   0 ; Mahogany Town,   min hue shift,    HP Dark
	npctrade TRADE_DIALOGSET_NEWBIE,    GROWLITHE,  DEWGONG,    "CEZANNE",  $EE, $FF, MIRACLEBERRY, 21043, "CINDY",  HYDRO_PUMP,   0 ; Cinnabar Island, min hue shift,    HP Grass
	npctrade TRADE_DIALOGSET_HAPPY,     SPEAROW,    FARFETCH_D, "DUX",      $FF, $FF, STICK,        62777, "MOE",    BATON_PASS,   0 ; Azalea City,     min hue shift,    HP Dark
	npctrade TRADE_DIALOGSET_NEWBIE,    SLOWBRO,    PIDGEOT,    "MARTY",    $FF, $FF, MIRACLEBERRY, 10128, "DARREN", FAINT_ATTACK, 0 ; Cianwood City,   min hue shift,    HP Dark
	npctrade TRADE_DIALOGSET_COLLECTOR, POLIWHIRL,  JYNX,       "LOLA",     $FF, $FF, MIRACLEBERRY, 11120, "CORY",   PETAL_DANCE,  0 ; Celadon City,    min hue shift,    HP Dark
	npctrade TRADE_DIALOGSET_COLLECTOR, RAICHU,     MAGNETON,   "MAGGIE",   $FD, $FF, METAL_COAT,   07331, "TRACE",  THUNDERBOLT,  0 ; Cerulean City,   custom hue shift, HP Ice
	npctrade TRADE_DIALOGSET_HAPPY,     VENONAT,    VENUSAUR,   "CRINKLES", $FF, $FF, MIRACLEBERRY, 33339, "AMY",    PETAL_DANCE,  0 ; Viridian City,   max hue shift,    HP Dark
	npctrade TRADE_DIALOGSET_NEWBIE,    NIDORAN_M,  PARASECT,   "SPIKE",    $FD, $FF, MIRACLEBERRY, 44206, "JAYE",   PSYBEAM,      0 ; Ecruteak City,   min hue shift,    HP Ice
	assert_table_length NUM_NPC_TRADES

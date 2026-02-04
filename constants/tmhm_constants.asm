DEF __tmhm_value__ = 1
DEF __tm_count__ = 0

MACRO add_tm
; creates TM_\1, \1_TMNUM, and TMxx numeric alias
	DEF __tm_count__ += 1
	DEF TM_\1 EQU __tmhm_value__
	DEF \1_TMNUM EQU __tmhm_value__
	DEF TM{02d:__tm_count__} EQU __tmhm_value__  ; TM01, TM02, etc.
	DEF __tmhm_value__ += 1
ENDM

DEF __hm_count__ = 0

MACRO add_hm
; creates HM_\1, \1_TMNUM, and HMxx numeric alias
	DEF __hm_count__ += 1
	DEF HM_\1 EQU __tmhm_value__
	DEF \1_TMNUM EQU __tmhm_value__
	DEF HM{02d:__hm_count__} EQU __tmhm_value__  ; HM01, HM02, etc.
	DEF __tmhm_value__ += 1
ENDM

	const_def
	const NO_TMHM           ; 00

	add_tm MEGA_PUNCH       ; 01 TBD: Mount Moon
	add_tm RAZOR_WIND       ; 02 TBD: Rocket Hideout
	add_tm SWORDS_DANCE     ; 03 TBD: Silph Co.
	add_tm WHIRLWIND        ; 04 Route 4
	add_tm MEGA_KICK        ; 05 TBD: Victory Road
	add_tm TOXIC            ; 06 Fuchsia Gym
	add_tm HORN_DRILL       ; 07 TBD: Rocket Hideout
	add_tm BODY_SLAM        ; 08 TBD: S.S. Anne
	add_tm TAKE_DOWN        ; 09 TBD: Silph Co.
	add_tm DOUBLE_EDGE      ; 10 TBD: Rocket Hideout
	add_tm BUBBLEBEAM       ; 11 Cerulean Gym
	add_tm LOW_KICK         ; 12 TBD: Move Tutor
	add_tm ICE_BEAM         ; 13 Celadon Dept. Store 2F
	add_tm BLIZZARD         ; 14 TBD: Pokémon Mansion
	add_tm HYPER_BEAM       ; 15 Celadon Game Corner Prize Room
	add_tm PAY_DAY          ; 16 Route 12
	add_tm SUBMISSION       ; 17 TBD: Victory Road
	add_tm COUNTER          ; 18 Celadon Dept. Store 2F
	add_tm SEISMIC_TOSS     ; 19 Route 25
	add_tm ANCIENTPOWER     ; 20 Pewter Gym
	add_tm MEGA_DRAIN       ; 21 TBD: ?
	add_tm SOLARBEAM        ; 22 TBD: Pokémon Mansion
	add_tm DRAGON_RAGE      ; 23 Celadon Game Corner Prize Room
	add_tm THUNDERBOLT      ; 24 Vermilion Gym
	add_tm THUNDER          ; 25 TBD: Power Plant
	add_tm EARTHQUAKE       ; 26 TBD: Silph Co.
	add_tm FISSURE          ; 27 TBD: Viridian Gym
	add_tm DIG              ; 28 Cerulean Police Station
	add_tm PSYCHIC_M        ; 29 Mr. Psychic's House
	add_tm TELEPORT         ; 30 Route 30
	add_tm MIMIC            ; 31 Copycat's House
	add_tm DOUBLE_TEAM      ; 32 TBD: Safari Zone
	add_tm REFLECT          ; 33 TBD: Power Plant
	add_tm SWAGGER          ; 34 Olivine Lighthouse 5F
	add_tm METRONOME        ; 35 TBD: Cinnabar Lab
	add_tm SELFDESTRUCT     ; 36 TBD: Silph Co.
	add_tm EGG_BOMB         ; 37 TBD: Safari Zone
	add_tm FIRE_BLAST       ; 38 Seafoam Gym
	add_tm SWIFT            ; 39 TBD: Lavender Route 12 Gate 2F
	add_tm DYNAMICPUNCH     ; 40 Cianwood Gym
	add_tm SOFTBOILED       ; 41 Celadon City
	add_tm DREAM_EATER      ; 42 Viridian City
	add_tm SKY_ATTACK       ; 43 TBD: Victory Road
	add_tm REST             ; 44 TBD: S.S. Anne
	add_tm THUNDER_WAVE     ; 45 Route 24
	add_tm PSYWAVE          ; 46 Saffron Gym
	add_tm EXPLOSION        ; 47 TBD: Silph Co.
	add_tm ROCK_SLIDE       ; 48 Goldenrod Game Corner
	add_tm TRI_ATTACK       ; 49 Goldenrod Game Corner
	add_tm SUBSTITUTE       ; 50 Celadon Game Corner Prize Room
	add_tm SANDSTORM        ; 51 Route 27 Sandstorm House
	add_tm HEADBUTT         ; 52 Ilex Forest
	add_tm CURSE            ; 53 Celadon Mansion Roof House
	add_tm ROLLOUT          ; 54 Route 35
	add_tm ROAR             ; 55 Route 32
	add_tm LIGHT_SCREEN     ; 56 TBD: ?
	add_tm ZAP_CANNON       ; 57 Power Plant
	add_tm ROCK_SMASH       ; 58 Route 36
	add_tm PSYCH_UP         ; 59 TBD: Move Tutor
	add_tm MEGAHORN         ; 60 TBD: Move Tutor
	add_tm SUNNY_DAY        ; 61 Radio Tower 3F
	add_tm PAIN_SPLIT       ; 62 TBD: Move Tutor
	add_tm SNORE            ; 63 Route 39 Farm House
	add_tm SWEET_SCENT      ; 64 Route 34 Ilex Forest Gate
	add_tm FLAMETHROWER     ; 65 Goldenrod Game Corner
	add_tm ICY_WIND         ; 66 Mahogany Gym
	add_tm PROTECT          ; 67 Celadon Dept. Store 2F
	add_tm RAIN_DANCE       ; 68 Slowpoke Well B2F
	add_tm GIGA_DRAIN       ; 69 Celadon Gym
	add_tm ENDURE           ; 70 Burned Tower B1F
	add_tm FRUSTRATION      ; 71 Goldenrod Dept. Store 5F
	add_tm SUPER_FANG       ; 72 Celadon Dept. Store 2F
	add_tm DETECT           ; 73 Lake of Rage
	add_tm DRAGONBREATH     ; 74 Dragon's Den B1F
	add_tm SLEEP_TALK       ; 75 Goldenrod Underground Warehouse
	add_tm THIEF            ; 76 Team Rocket Base B2F
	add_tm RETURN           ; 77 Goldenrod Dept. Store 5F
	add_tm FIRE_PUNCH       ; 78 Goldenrod Dept. Store 5F
	add_tm FURY_CUTTER      ; 79 Azalea Gym
	add_tm SHADOW_BALL      ; 80 Ecruteak Gym
	add_tm MUD_SLAP         ; 81 Violet Gym
	add_tm TWISTER          ; 82 Route 15
	add_tm ICE_PUNCH        ; 83 Goldenrod Dept. Store 5F
	add_tm HIDDEN_POWER     ; 84 Hidden Power House
	add_tm ATTRACT          ; 85 Goldenrod Gym
	add_tm SLUDGE_BOMB      ; 86 Route 43 Gate
	add_tm IRON_TAIL        ; 87 Olivine Gym
	add_tm HEAL_BELL        ; 88 TBD: Move Tutor
	add_tm SYNTHESIS        ; 89 TBD: Move Tutor
	add_tm NIGHTMARE        ; 90 Route 31
	add_tm THUNDERPUNCH     ; 91 Goldenrod Dept. Store 5F
	add_tm SAFEGUARD        ; 92 TBD: Move Tutor
	add_tm SKULL_BASH       ; 93 TBD: Safari Zone
	add_tm FALSE_SWIPE      ; 94 TBD: Move Tutor
	add_tm LEECH_LIFE       ; 95 TBD: Move Tutor
	add_tm SPIKES           ; 96 TBD: Move Tutor
	add_tm STEEL_WING       ; 97 Route 28 Steel Wing House
DEF NUM_TMS EQU __tmhm_value__ - 1

	add_hm CUT              ; 01 Ilex Forest
	add_hm FLY              ; 02 Cianwood City
	add_hm SURF             ; 03 Dance Theater
	add_hm STRENGTH         ; 04 Olivine Café
	add_hm FLASH            ; 05 Sprout Tower 3F
	add_hm WHIRLPOOL        ; 06 Team Rocket Base B2F
	add_hm WATERFALL        ; 07 Olivine House Beta
DEF NUM_HMS EQU __tmhm_value__ - NUM_TMS - 1

DEF NUM_TM_HM EQU NUM_TMS + NUM_HMS
DEF NUM_TM_HM_FLAGS EQU NUM_TM_HM
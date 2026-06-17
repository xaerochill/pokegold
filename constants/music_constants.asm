; song ids
; Music indexes (see audio/music_pointers.asm)
	const_def
	const MUSIC_NONE                         ; 00
	const MUSIC_TITLE                        ; 01
	const MUSIC_ROUTE_1                      ; 02
	const MUSIC_ROUTE_3                      ; 03
	const MUSIC_ROUTE_12                     ; 04
	const MUSIC_MAGNET_TRAIN                 ; 05
	const MUSIC_KANTO_GYM_LEADER_BATTLE      ; 06
	const MUSIC_KANTO_TRAINER_BATTLE         ; 07
	const MUSIC_KANTO_WILD_BATTLE            ; 08
	const MUSIC_POKEMON_CENTER               ; 09
	const MUSIC_HIKER_ENCOUNTER              ; 0a
	const MUSIC_LASS_ENCOUNTER               ; 0b
	const MUSIC_OFFICER_ENCOUNTER            ; 0c
	const MUSIC_HEAL                         ; 0d
	const MUSIC_LAVENDER_TOWN                ; 0e
	const MUSIC_ROUTE_2                      ; 0f
	const MUSIC_MT_MOON                      ; 10
	const MUSIC_SHOW_ME_AROUND               ; 11
	const MUSIC_GAME_CORNER                  ; 12
	const MUSIC_BICYCLE                      ; 13
	const MUSIC_HALL_OF_FAME                 ; 14
	const MUSIC_VIRIDIAN_CITY                ; 15
	const MUSIC_CELADON_CITY                 ; 16
	const MUSIC_TRAINER_VICTORY              ; 17
	const MUSIC_WILD_VICTORY                 ; 18
	const MUSIC_GYM_VICTORY                  ; 19
	const MUSIC_MT_MOON_SQUARE               ; 1a
	const MUSIC_GYM                          ; 1b
	const MUSIC_PALLET_TOWN                  ; 1c
	const MUSIC_POKEMON_TALK                 ; 1d
	const MUSIC_PROF_OAK                     ; 1e
	const MUSIC_RIVAL_ENCOUNTER              ; 1f
	const MUSIC_RIVAL_AFTER                  ; 20
	const MUSIC_SURF                         ; 21
	const MUSIC_EVOLUTION                    ; 22
	const MUSIC_NATIONAL_PARK                ; 23
	const MUSIC_CREDITS                      ; 24
	const MUSIC_AZALEA_TOWN                  ; 25
	const MUSIC_CHERRYGROVE_CITY             ; 26
	const MUSIC_KIMONO_ENCOUNTER             ; 27
	const MUSIC_UNION_CAVE                   ; 28
	const MUSIC_JOHTO_WILD_BATTLE            ; 29
	const MUSIC_JOHTO_TRAINER_BATTLE         ; 2a
	const MUSIC_ROUTE_30                     ; 2b
	const MUSIC_ECRUTEAK_CITY                ; 2c
	const MUSIC_VIOLET_CITY                  ; 2d
	const MUSIC_JOHTO_GYM_LEADER_BATTLE      ; 2e
	const MUSIC_CHAMPION_BATTLE              ; 2f
	const MUSIC_RIVAL_BATTLE                 ; 30
	const MUSIC_ROCKET_BATTLE                ; 31
	const MUSIC_PROF_ELM                     ; 32
	const MUSIC_DARK_CAVE                    ; 33
	const MUSIC_ROUTE_29                     ; 34
	const MUSIC_ROUTE_36                     ; 35
	const MUSIC_SS_AQUA                      ; 36
	const MUSIC_YOUNGSTER_ENCOUNTER          ; 37
	const MUSIC_BEAUTY_ENCOUNTER             ; 38
	const MUSIC_ROCKET_ENCOUNTER             ; 39
	const MUSIC_POKEMANIAC_ENCOUNTER         ; 3a
	const MUSIC_SAGE_ENCOUNTER               ; 3b
	const MUSIC_NEW_BARK_TOWN                ; 3c
	const MUSIC_GOLDENROD_CITY               ; 3d
	const MUSIC_VERMILION_CITY               ; 3e
	const MUSIC_POKEMON_CHANNEL              ; 3f
	const MUSIC_POKE_FLUTE_CHANNEL           ; 40
	const MUSIC_TIN_TOWER                    ; 41
	const MUSIC_SPROUT_TOWER                 ; 42
	const MUSIC_BURNED_TOWER                 ; 43
	const MUSIC_LIGHTHOUSE                   ; 44
	const MUSIC_LAKE_OF_RAGE                 ; 45
	const MUSIC_INDIGO_PLATEAU               ; 46
	const MUSIC_ROUTE_37                     ; 47
	const MUSIC_ROCKET_HIDEOUT               ; 48
	const MUSIC_DRAGONS_DEN                  ; 49
	const MUSIC_JOHTO_WILD_BATTLE_NIGHT      ; 4a
	const MUSIC_RUINS_OF_ALPH_RADIO          ; 4b
	const MUSIC_CAPTURE                      ; 4c
	const MUSIC_ROUTE_26                     ; 4d
	const MUSIC_MOM                          ; 4e
	const MUSIC_VICTORY_ROAD                 ; 4f
	const MUSIC_POKEMON_LULLABY              ; 50
	const MUSIC_POKEMON_MARCH                ; 51
	const MUSIC_GS_OPENING                   ; 52
	const MUSIC_GS_OPENING_2                 ; 53
	const MUSIC_MAIN_MENU                    ; 54
	const MUSIC_RUINS_OF_ALPH_INTERIOR       ; 55
	const MUSIC_ROCKET_OVERTURE              ; 56
	const MUSIC_DANCING_HALL                 ; 57
	const MUSIC_BUG_CATCHING_CONTEST_RANKING ; 58
	const MUSIC_BUG_CATCHING_CONTEST         ; 59
	const MUSIC_LAKE_OF_RAGE_ROCKET_RADIO    ; 5a
	const MUSIC_PRINTER                      ; 5b
	const MUSIC_POST_CREDITS                 ; 5c

; new to Crystal
	const MUSIC_CLAIR                        ; 5d
	const MUSIC_MOBILE_ADAPTER_MENU          ; 5e unused
	const MUSIC_MOBILE_ADAPTER               ; 5f unused
	const MUSIC_BUENAS_PASSWORD              ; 60 unused
	const MUSIC_MYSTICALMAN_ENCOUNTER        ; 61 unused
	const MUSIC_BATTLE_TOWER_THEME           ; 62
	const MUSIC_SUICUNE_BATTLE               ; 63
	const MUSIC_BATTLE_TOWER_LOBBY           ; 64 unused
	const MUSIC_MOBILE_CENTER                ; 65 unused

	; https://gitgud.io/zumi-gbs/other/pokecrystal/-/tree/proto-music

	; .DAT files from /SOURCE/EFFDATA
	const MUSIC_BOUSAN                       ; 66
	const MUSIC_M_FLD6                       ; 67
	const MUSIC_M_PMC                        ; 68 unused
	const MUSIC_M_TITLE3                     ; 69 unused
	const MUSIC_M_TOWN12                     ; 6a
	const MUSIC_M_TOWN17                     ; 6b
	const MUSIC_M_TSUR1                      ; 6c unused
	; .MUS files from /SOURCE/SOUND
	const MUSIC_DEALER2                      ; 6d unused
	const MUSIC_DIGDA01                      ; 6e
	const MUSIC_ENDING01                     ; 6f unused
	const MUSIC_KINCHO01                     ; 70 unused
	const MUSIC_KOUKAN                       ; 71
	const MUSIC_OHKIDO03                     ; 72 unused
	const MUSIC_VICTORY4                     ; 73 unused
	
	; https://github.com/dannye/pokered-crysaudio

	; TCG
	const MUSIC_CARD_POP                     ; 74 unused
	const MUSIC_CHALLENGE_HALL               ; 75 unused
	const MUSIC_CLUB_1                       ; 76
	const MUSIC_CLUB_2                       ; 77
	const MUSIC_CLUB_3                       ; 78
	const MUSIC_CREDITS_TCG                  ; 79 unused
	const MUSIC_DECK_MACHINE                 ; 7a
	const MUSIC_DUEL_THEME_1                 ; 7b
	const MUSIC_DUEL_THEME_2                 ; 7c unused
	const MUSIC_DUEL_THEME_3                 ; 7d unused
	const MUSIC_HALL_OF_HONOR                ; 7e
	const MUSIC_IMAKUNI                      ; 7f unused
	const MUSIC_OVERWORLD                    ; 80
	const MUSIC_PAUSE_MENU                   ; 81 unused
	const MUSIC_PC_MAIN_MENU                 ; 82 unused
	const MUSIC_POKEMON_DOME                 ; 83
	const MUSIC_RONALD                       ; 84 unused
	const MUSIC_TITLE_SCREEN_TCG             ; 85 unused

	;TCG2
	const MUSIC_CREDITS_TCG2                 ; 86 unused
	const MUSIC_FORT_1                       ; 87
	const MUSIC_FORT_2                       ; 88
	const MUSIC_FORT_3                       ; 89
	const MUSIC_FORT_4                       ; 8a
	const MUSIC_GAME_CORNER_TCG2             ; 8b
	const MUSIC_GR_BLIMP                     ; 8c unused
	const MUSIC_GR_CASTLE                    ; 8d unused
	const MUSIC_GR_DUEL_THEME_1              ; 8e unused
	const MUSIC_GR_DUEL_THEME_2              ; 8f unused
	const MUSIC_GR_DUEL_THEME_3              ; 90 unused
	const MUSIC_GR_OVERWORLD                 ; 91
	const MUSIC_HERE_COMES_GR                ; 92 unused
	const MUSIC_IMAKUNI_2                    ; 93
	const MUSIC_ISHIHARA                     ; 94 unused
	const MUSIC_TITLE_SCREEN_TCG2            ; 95 unused

	; Pinball
	const MUSIC_FIELD_SELECT                 ; 96 unused
	const MUSIC_GASTLY_GRAVEYARD             ; 97 unused
	const MUSIC_GENGAR_GRAVEYARD             ; 98 unused Agatha
	const MUSIC_HISCORE                      ; 99
	const MUSIC_HURRY_UP_RED                 ; 9a unused
	const MUSIC_MEOWTH_STAGE                 ; 9b
	const MUSIC_MEWTWO_STAGE                 ; 9c
	const MUSIC_NAME_ENTRY                   ; 9d
	const MUSIC_OPTIONS                      ; 9e
	const MUSIC_POKEDEX                      ; 9f
	const MUSIC_REDFIELD                     ; a0
	const MUSIC_SEELSTAGE                    ; a1
	const MUSIC_TITLE_PINBALL                ; a2
	const MUSIC_WHACK_THE_DIGLETT            ; a3
	const MUSIC_WHACK_THE_DUGTRIO            ; a4

	; Red & Blue
	const MUSIC_CELADON                      ; a5 unused Celadon University
	const MUSIC_CINNABAR                     ; a6
	const MUSIC_CINNABAR_MANSION             ; a7
	const MUSIC_CITIES1                      ; a8
	const MUSIC_CITIES2                      ; a9
	const MUSIC_DUNGEON1                     ; aa unused Power Plant, Cerulean Cave
	const MUSIC_DUNGEON2                     ; ab
	const MUSIC_DUNGEON3                     ; ac
	const MUSIC_FINAL_BATTLE                 ; ad
	const MUSIC_GAME_CORNER_RBY              ; ae
	const MUSIC_GYM_RBY                      ; af
	const MUSIC_GYM_LEADER_BATTLE            ; b0
	const MUSIC_INDIGO_PLATEAU_RBY           ; b1
	const MUSIC_JIGGLYPUFF_SONG              ; b2 unused
	const MUSIC_LAVENDER                     ; b3
	const MUSIC_MEET_EVIL_TRAINER            ; b4 unused
	const MUSIC_MEET_FEMALE_TRAINER          ; b5 unused
	const MUSIC_MEET_MALE_TRAINER            ; b6 unused
	const MUSIC_MEET_PROF_OAK                ; b7 unused
	const MUSIC_MEET_RIVAL                   ; b8 unused
	const MUSIC_MUSEUM_GUY                   ; b9 unused
	const MUSIC_OAKS_LAB                     ; ba
	const MUSIC_PALLET_TOWN_RBY              ; bb unused
	const MUSIC_POKECENTER                   ; bc
	const MUSIC_POKEMON_TOWER                ; bd unused
	const MUSIC_ROUTES1                      ; be unused
	const MUSIC_ROUTES2                      ; bf
	const MUSIC_ROUTES3                      ; c0
	const MUSIC_ROUTES4                      ; c1
	const MUSIC_SILPH_CO                     ; c2
	const MUSIC_SS_ANNE                      ; c3
	const MUSIC_TRAINER_BATTLE               ; c4 unused
	const MUSIC_VERMILION                    ; c5
	const MUSIC_WILD_BATTLE                  ; c6

	; Yellow
	const MUSIC_SURFING_PIKACHU              ; c7 unused
	const MUSIC_MEET_JESSIE_JAMES            ; c8 unused
	const MUSIC_YELLOW_UNUSED_SONG           ; c9 unused

	; https://github.com/TwitchPlaysPokemon/tppcrystal251pub
	const MUSIC_HO_OH_BATTLE                 ; ca
	const MUSIC_KANTO_LEGEND_BATTLE          ; cb
	const MUSIC_LUGIA_BATTLE                 ; cc
	const MUSIC_LUGIAS_SONG                  ; cd

	; https://github.com/ShiraTheMogul/jep-hack
	const MUSIC_STADIUM_2_TEAM_SELECT        ; ce

	; https://github.com/TriteHexagon/Trite_ASM_Repository/tree/main

	;night music
	const MUSIC_NEW_BARK_TOWN_NIGHT          ; cf
	const MUSIC_ROUTE_29_NIGHT               ; d0
	const MUSIC_CHERRYGROVE_CITY_NIGHT       ; d1
	const MUSIC_ROUTE_30_NIGHT               ; d2
	const MUSIC_ROUTE_36_NIGHT               ; d3
	const MUSIC_VIOLET_CITY_NIGHT            ; d4
	const MUSIC_AZALEA_TOWN_NIGHT            ; d5
	const MUSIC_GOLDENROD_CITY_NIGHT         ; d6
	const MUSIC_ECRUTEAK_CITY_NIGHT          ; d7
	const MUSIC_ROUTE_37_NIGHT               ; d8
	const MUSIC_LAKE_OF_RAGE_NIGHT           ; d9
	const MUSIC_ROUTE_26_NIGHT               ; da
	const MUSIC_VIRIDIAN_CITY_NIGHT          ; db
	const MUSIC_ROUTE_3_NIGHT                ; dc
	const MUSIC_ROUTE_12_NIGHT               ; dd
	const MUSIC_CELADON_CITY_NIGHT           ; de
	const MUSIC_VERMILION_CITY_NIGHT         ; df
	const MUSIC_PALLET_TOWN_NIGHT            ; e0
	const MUSIC_ROUTE_1_NIGHT                ; e1
	const MUSIC_LAVENDER_TOWN_NIGHT	         ; e2
	const MUSIC_KANTO_WILD_BATTLE_NIGHT      ; e3

	;remixes
	const MUSIC_ICE_PATH_HGSS                ; e4
	const MUSIC_UNDERGROUND                  ; e5
	const MUSIC_CERULEAN_CITY_GBS            ; e6
	const MUSIC_SEVII_ISLANDS                ; e7

	; monstarules
	const MUSIC_FOUR_ISLAND                  ; e8

	; mmmmmmmmmmmmmmmm
	const MUSIC_LYRA                         ; e9 unused
	const MUSIC_SAFARI_ZONE                  ; ea
	const MUSIC_SAFARI_ZONE_GATE             ; eb
	const MUSIC_SPIKY_EARED_PICHU            ; ec
	const MUSIC_SUMMONING_DANCE              ; ed unused
DEF NUM_MUSIC_SONGS EQU const_value

; GetMapMusic picks music for these values (see home/map.asm)
DEF MUSIC_MAHOGANY_MART EQU $fc
DEF MUSIC_RADIO_TOWER   EQU $fd

; ExitPokegearRadio_HandleMusic uses these values
DEF RESTART_MAP_MUSIC EQU $fe
DEF ENTER_MAP_MUSIC   EQU $ff

assert NUM_MUSIC_SONGS <= MUSIC_MAHOGANY_MART, "song IDs overlap special values"

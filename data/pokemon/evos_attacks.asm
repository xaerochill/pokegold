SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evos_attacks_pointers.asm"

BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 16, IVYSAUR
IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 32, VENUSAUR
VenusaurEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 7, LEECH_SEED
	db 9, VINE_WHIP
	db 13, POISONPOWDER
	db 13, SLEEP_POWDER
	db 15, TAKE_DOWN
	db 20, RAZOR_LEAF
	db 23, SWEET_SCENT
	db 28, GROWTH
	db 30, PETAL_DANCE
	db 31, DOUBLE_EDGE
	db 37, AMNESIA
	db 45, SYNTHESIS
	db 53, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 12, DRAGONBREATH
	db 19, RAGE
	db 24, FIRE_SPIN
	db 30, DRAGON_RAGE
	db 36, SCARY_FACE
	db 39, SLASH
	db 41, FLAMETHROWER
	db 47, WING_ATTACK
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, DEFENSE_CURL
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, WITHDRAW
	db 16, BITE
	db 20, RAPID_SPIN
	db 23, WATER_GUN
	db 24, PROTECT
	db 36, SKULL_BASH
	db 44, RAIN_DANCE
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, HARDEN
	db 1, TACKLE
	db 1, STRING_SHOT
	db 1, CONFUSION
	db 10, CONFUSION
	db 12, POISONPOWDER
	db 12, STUN_SPORE
	db 12, SLEEP_POWDER
	db 16, GUST
	db 18, SUPERSONIC
	db 22, WHIRLWIND
	db 24, PSYBEAM
	db 28, SAFEGUARD
	db 32, BATON_PASS
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, HARDEN
	db 1, PECK
	db 1, STRING_SHOT
	db 1, POISON_STING
	db 10, POISON_STING
	db 12, FURY_ATTACK
	db 12, FOCUS_ENERGY
	db 12, TWINEEDLE
	db 16, RAGE
	db 18, PURSUIT
	db 22, PIN_MISSILE
	db 24, AGILITY
	db 28, OUTRAGE
	db 32, BATON_PASS
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 18, PIDGEOTTO
PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 9, GUST
	db 13, QUICK_ATTACK
	db 17, WHIRLWIND
	db 21, TWISTER
	db 25, WING_ATTACK
	db 29, AGILITY
	db 33, MIRROR_MOVE
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, QUICK_ATTACK
	db 7, FOCUS_ENERGY
	db 10, BITE
	db 13, HYPER_FANG
	db 16, PURSUIT
	db 16, TAKE_DOWN
	db 20, SCARY_FACE
	db 22, CRUNCH
	db 25, SWORDS_DANCE
	db 28, SUPER_FANG
	db 31, DOUBLE_EDGE
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL, 20, FEAROW
FearowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 5, LEER
	db 9, FURY_ATTACK
	db 13, PURSUIT
	db 18, WING_ATTACK
	db 21, MIRROR_MOVE
	db 22, TAKE_DOWN
	db 25, AGILITY
	db 29, FOCUS_ENERGY
	db 37, DRILL_PECK
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
ArbokEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 4, POISON_STING
	db 9, BITE
	db 12, GLARE
	db 17, SCREECH
	db 20, ACID
	db 27, CRUNCH
	db 32, SLUDGE_BOMB
	db 39, HAZE
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, GROWL
	db 5, DEFENSE_CURL
	db 10, THUNDER_WAVE
	db 12, SPARK
	db 13, QUICK_ATTACK
	db 18, DOUBLE_TEAM
	db 21, SLAM
	db 26, THUNDERBOLT
	db 28, IRON_TAIL
	db 34, AGILITY
	db 35, LIGHT_SCREEN
	db 41, THUNDER
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 3, DEFENSE_CURL
	db 7, SAND_ATTACK
	db 9, POISON_STING
	db 13, RAPID_SPIN
	db 12, PIN_MISSILE
	db 15, SWIFT
	db 17, MAGNITUDE
	db 19, FURY_SWIPES
	db 21, DEFENSE_CURL
	db 21, ROLLOUT
	db 23, METAL_CLAW
	db 25, FURY_CUTTER
	db 27, AGILITY
	db 30, DIG
	db 31, SLASH
	db 37, SANDSTORM
	db 38, SWORDS_DANCE
	db 46, EARTHQUAKE
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 5, SUPERSONIC
	db 7, TAIL_WHIP
	db 8, SCRATCH
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 19, FURY_SWIPES
	db 21, BITE
	db 23, BODY_SLAM
	db 37, CRUNCH
	db 40, TOXIC
	db 43, OUTRAGE
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 1, TACKLE
	db 5, SUPERSONIC
	db 7, FOCUS_ENERGY
	db 8, HORN_ATTACK
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 20, FURY_ATTACK
	db 23, THRASH
	db 38, HORN_DRILL
	db 40, TOXIC
	db 43, MEGAHORN
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 4, ENCORE
	db 7, SING
	db 10, DOUBLESLAP
	db 13, DEFENSE_CURL
	db 19, MINIMIZE
	db 31, METRONOME
	db 37, MOONLIGHT
	db 40, LIGHT_SCREEN
	db 41, BODY_SLAM
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, TAIL_WHIP
	db 5, DISABLE
	db 7, QUICK_ATTACK
	db 11, FIRE_SPIN
	db 12, SPITE
	db 13, ROAR
	db 17, CONFUSE_RAY
	db 20, FLAMETHROWER
	db 24, FAINT_ATTACK
	db 27, SAFEGUARD
	db 37, HYPNOSIS
	db 41, FIRE_BLAST
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 4, DEFENSE_CURL
	db 8, POUND
	db 12, DISABLE
	db 16, PRESENT
	db 18, ROLLOUT
	db 20, DOUBLESLAP
	db 24, REST
	db 28, BODY_SLAM
	db 32, CHARM
	db 36, MINIMIZE
	db 40, MIMIC
	db 44, DOUBLE_EDGE
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, LEECH_LIFE
	db 5, SUPERSONIC
	db 9, QUICK_ATTACK
	db 13, BITE
	db 18, CONFUSE_RAY
	db 21, WHIRLWIND
	db 23, SWIFT
	db 26, MEAN_LOOK
	db 29, HYPNOSIS
	db 30, WING_ATTACK
	db 37, HAZE
	db 42, AGILITY
	db 46, CRUNCH
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 21, GLOOM
GloomEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
BellossomEvosAttacks:
	db 0 ; no more evolutions
VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, GROWTH
	db 5, SWEET_SCENT
	db 9, ACID
	db 12, MEGA_DRAIN
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 21, SLEEP_POWDER
	db 33, GIGA_DRAIN
	db 34, LEECH_SEED
	db 35, PETAL_DANCE
	db 37, MOONLIGHT
	db 40, TOXIC
	db 42, SUNNY_DAY
	db 44, SOLARBEAM
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 24, PARASECT
ParasectEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, STRING_SHOT
	db 1, SLEEP_POWDER
	db 4, ABSORB
	db 6, STUN_SPORE
	db 7, POISONPOWDER
	db 11, FURY_CUTTER
	db 12, LEECH_LIFE
	db 15, SCREECH
	db 17, SPORE
	db 22, SLASH
	db 27, GROWTH
	db 33, GIGA_DRAIN
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 31, VENOMOTH
VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, STRING_SHOT
	db 1, DISABLE
	db 1, FORESIGHT
	db 1, TACKLE
	db 5, SUPERSONIC
	db 11, POISONPOWDER
	db 13, CONFUSION
	db 17, LEECH_LIFE
	db 23, STUN_SPORE
	db 24, MEGA_DRAIN
	db 25, PSYBEAM
	db 29, SLEEP_POWDER
	db 31, GUST
	db 36, CONFUSE_RAY
	db 41, PSYCHIC_M
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, GROWL
	db 12, MAGNITUDE
	db 13, SAND_ATTACK
	db 14, AGILITY
	db 15, MUD_SLAP
	db 17, FURY_SWIPES
	db 18, DIG
	db 20, SANDSTORM
	db 26, SLASH
	db 30, EARTHQUAKE
	db 36, FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 6, BITE
	db 12, PAY_DAY
	db 14, FURY_SWIPES
	db 17, SCREECH
	db 20, SWIFT
	db 24, FAINT_ATTACK
	db 30, AGILITY
	db 33, METAL_CLAW
	db 36, SLASH
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, TAIL_WHIP
	db 9, WATER_GUN
	db 14, DISABLE
	db 18, CONFUSION
	db 27, FURY_SWIPES
	db 31, SCREECH
	db 33, PSYBEAM
	db 35, PSYCH_UP
	db 36, AMNESIA
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, LOW_KICK
	db 1, FOCUS_ENERGY
	db 8, MUD_SLAP
	db 9, FURY_SWIPES
	db 12, PURSUIT
	db 13, KARATE_CHOP
	db 17, SEISMIC_TOSS
	db 21, SCREECH
	db 28, RAGE
	db 29, SKULL_BASH
	db 33, SWAGGER
	db 37, CROSS_CHOP
	db 41, THRASH
	db 47, OUTRAGE
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, ROAR
	db 6, EMBER
	db 9, LEER
	db 13, CHARM
	db 18, SCARY_FACE
	db 20, FLAME_WHEEL
	db 25, REVERSAL
	db 31, TAKE_DOWN
	db 32, OUTRAGE
	db 34, FLAMETHROWER
	db 39, AGILITY
	db 42, CRUNCH
	db 47, EXTREMESPEED
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_TRADE, KINGS_ROCK, POLITOED
PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 5, BUBBLE
	db 6, POUND
	db 8, HYPNOSIS
	db 11, WATER_GUN
	db 15, DOUBLESLAP
	db 18, RAIN_DANCE
	db 21, BODY_SLAM
	db 25, BUBBLEBEAM
	db 31, BELLY_DRUM
	db 38, HYDRO_PUMP
	db 43, DYNAMICPUNCH
	db 51, MIND_READER
	db 54, DOUBLE_EDGE
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_TRADE, -1, ALAKAZAM
AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 16, CONFUSION
	db 18, DISABLE
	db 21, FUTURE_SIGHT
	db 22, NIGHT_SHADE
	db 24, PSYBEAM
	db 27, KINESIS
	db 28, REFLECT
	db 30, RECOVER
	db 36, PSYCHIC_M
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 28, MACHOKE
MachokeEvosAttacks:
	db EVOLVE_TRADE, -1, MACHAMP
MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 10, KARATE_CHOP
	db 13, FORESIGHT
	db 19, SEISMIC_TOSS
	db 25, VITAL_THROW
	db 31, SUBMISSION
	db 37, CROSS_CHOP
	db 43, SCARY_FACE
	db 46, DYNAMICPUNCH
	db 52, DOUBLE_EDGE
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 6, GROWTH
	db 11, WRAP
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 16, BIND
	db 17, STUN_SPORE
	db 23, ACID
	db 30, SWEET_SCENT
	db 37, RAZOR_LEAF
	db 45, SLAM
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, BIND
	db 1, POISON_STING
	db 5, SUPERSONIC
	db 8, CONSTRICT
	db 11, WATER_GUN
	db 12, ACID
	db 19, BARRIER
	db 22, WRAP
	db 25, BUBBLEBEAM
	db 30, CONFUSE_RAY
	db 36, ACID_ARMOR
	db 42, SCREECH
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
GravelerEvosAttacks:
	db EVOLVE_TRADE, -1, GOLEM
GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, TACKLE
	db 4, SANDSTORM
	db 7, HARDEN
	db 11, ROCK_THROW
	db 13, SAND_ATTACK
	db 15, SCARY_FACE
	db 18, MAGNITUDE
	db 24, ROLLOUT
	db 30, SELFDESTRUCT
	db 34, RAPID_SPIN
	db 40, EARTHQUAKE
	db 44, DOUBLE_EDGE
	db 48, EXPLOSION
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, TAIL_WHIP
	db 13, EMBER
	db 15, QUICK_ATTACK
	db 16, LOW_KICK
	db 17, FIRE_SPIN
	db 19, STOMP
	db 26, FLAME_WHEEL
	db 28, TAKE_DOWN
	db 33, FURY_ATTACK
	db 37, AGILITY
	db 38, FIRE_BLAST
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 37, SLOWBRO
	db EVOLVE_TRADE, KINGS_ROCK, SLOWKING
SlowbroEvosAttacks:
	db 0 ; no more evolutions
SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 6, GROWL
	db 9, WATER_GUN
	db 12, CONFUSION
	db 15, DISABLE
	db 18, HEADBUTT
	db 21, AMNESIA
	db 24, PSYCHIC_M
	db 27, RAIN_DANCE
	db 30, PSYCH_UP
	db 36, HYDRO_PUMP
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
MagnetonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 14, SONICBOOM
	db 17, THUNDER_WAVE
	db 22, SPARK
	db 24, CONFUSE_RAY
	db 27, LOCK_ON
	db 33, SWIFT
	db 39, ZAP_CANNON
	db 42, AGILITY
	db 45, SCREECH
	db 48, LIGHT_SCREEN
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, SAND_ATTACK
	db 1, LEER
	db 1, FURY_CUTTER
	db 4, FOCUS_ENERGY
	db 7, FURY_ATTACK
	db 13, RAZOR_LEAF
	db 15, WING_ATTACK
	db 19, SLASH
	db 25, SWORDS_DANCE
	db 27, AGILITY
	db 30, FALSE_SWIPE
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 31, DODRIO
DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 5, QUICK_ATTACK
	db 8, LEER
	db 9, PURSUIT
	db 10, RAGE
	db 13, FURY_ATTACK
	db 21, TRI_ATTACK
	db 27, JUMP_KICK
	db 30, AGILITY
	db 33, DRILL_PECK
	db 37, SWORDS_DANCE
	db 40, THRASH
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 34, DEWGONG
DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 3, GROWL
	db 7, WATER_GUN
	db 7, CHARM
	db 11, ICY_WIND
	db 12, FLAIL
	db 13, ENCORE
	db 16, AURORA_BEAM
	db 21, REST
	db 32, TAKE_DOWN
	db 37, ICE_BEAM
	db 45, SAFEGUARD
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
MukEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, POUND
	db 4, HARDEN
	db 7, SMOG
	db 10, MUD_SLAP
	db 16, MINIMIZE
	db 17, DISABLE
	db 18, SLUDGE
	db 26, TOXIC
	db 33, SCREECH
	db 36, ACID_ARMOR
	db 39, SLUDGE_BOMB
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, WITHDRAW
	db 7, SUPERSONIC
	db 8, WATER_GUN
	db 12, LEER
	db 16, PROTECT
	db 17, AURORA_BEAM
	db 20, BUBBLEBEAM
	db 25, CLAMP
	db 32, TWINEEDLE
	db 40, SPIKE_CANNON
	db 49, ICE_BEAM
	db 58, HYDRO_PUMP
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
HaunterEvosAttacks:
	db EVOLVE_TRADE, -1, GENGAR
GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 5, SPITE
	db 7, POISON_GAS
	db 8, MEAN_LOOK
	db 12, CURSE
	db 13, SMOG
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 28, DREAM_EATER
	db 33, HYPNOSIS
	db 39, SHADOW_BALL
	db 44, DESTINY_BOND
	db 50, NIGHTMARE
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_TRADE, METAL_COAT, STEELIX
SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 1, BIND
	db 1, HARDEN
	db 5, DEFENSE_CURL
	db 7, ROCK_THROW
	db 13, RAGE
	db 19, SANDSTORM
	db 25, SLAM
	db 31, SHARPEN
	db 33, DRAGONBREATH
	db 34, CURSE
	db 37, ROCK_SLIDE
	db 40, IRON_TAIL
	db 46, CRUNCH
	db 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 4, NIGHTMARE
	db 7, DISABLE
	db 9, CONFUSION
	db 15, HEADBUTT
	db 18, POISON_GAS
	db 21, MEDITATE
	db 26, PSYBEAM
	db 27, MIND_READER
	db 29, PSYCH_UP
	db 33, FUTURE_SIGHT
	db 37, SWAGGER
	db 40, PSYCHIC_M
	db 42, TAKE_DOWN
	db 45, BATON_PASS
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, LEER
	db 9, VICEGRIP
	db 11, HARDEN
	db 24, WATER_GUN
	db 15, PROTECT
	db 21, METAL_CLAW
	db 25, STOMP
	db 29, BUBBLEBEAM
	db 31, GUILLOTINE
	db 35, AMNESIA
	db 40, SWORDS_DANCE
	db 41, CRABHAMMER
	db 45, FLAIL
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 4, THUNDERSHOCK
	db 5, TACKLE
	db 8, SONICBOOM
	db 9, SCREECH
	db 12, SPARK
	db 15, ROLLOUT
	db 17, SONICBOOM
	db 18, SCARY_FACE
	db 19, SELFDESTRUCT
	db 23, SCREECH
	db 29, LIGHT_SCREEN
	db 33, SWIFT
	db 34, AGILITY
	db 36, THUNDERBOLT
	db 43, EXPLOSION
	db 47, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRAGE
	db 1, HYPNOSIS
	db 7, ABSORB
	db 9, REFLECT
	db 11, LEECH_SEED
	db 15, STUN_SPORE
	db 19, MEGA_DRAIN
	db 19, CONFUSION
	db 21, POISONPOWDER
	db 22, SLEEP_POWDER
	db 23, GIGA_DRAIN
	db 24, PSYBEAM
	db 25, SYNTHESIS
	db 27, EGG_BOMB
	db 43, SOLARBEAM
	db 47, PSYCHIC_M
	db 0 ; no more level-up moves 

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 2, MUD_SLAP
	db 3, TAIL_WHIP
	db 7, BONE_CLUB
	db 11, HEADBUTT
	db 13, LEER
	db 17, FOCUS_ENERGY
	db 21, BONEMERANG
	db 23, RAGE
	db 27, FALSE_SWIPE
	db 31, THRASH
	db 34, BONE_RUSH
	db 37, SCREECH
	db 43, DOUBLE_EDGE
	db 55, OUTRAGE
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DOUBLE_KICK
	db 5, MEDITATE
	db 8, LOW_KICK
	db 9, ROLLING_KICK
	db 11, JUMP_KICK
	db 16, FOCUS_ENERGY
	db 21, HI_JUMP_KICK
	db 24, MIND_READER
	db 28, FORESIGHT
	db 32, ENDURE
	db 36, MEGA_KICK
	db 40, REVERSAL
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, COMET_PUNCH
	db 5, FOCUS_ENERGY
	db 8, AGILITY
	db 9, PURSUIT
	db 16, MACH_PUNCH
	db 21, THUNDERPUNCH
	db 24, ICE_PUNCH
	db 28, FIRE_PUNCH
	db 32, MEGA_PUNCH
	db 36, DETECT
	db 40, COUNTER
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 5, SUPERSONIC
	db 9, DEFENSE_CURL
	db 13, DOUBLESLAP
	db 17, WRAP
	db 21, STOMP
	db 23, ACID
	db 25, DISABLE
	db 29, SLAM
	db 31, BIND
	db 33, ROLLOUT
	db 33, DEFENSE_CURL
	db 45, SCREECH
	db 47, THRASH
	db 50, BELLY_DRUM
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 6, SMOG
	db 10, SMOKESCREEN
	db 14, SCREECH
	db 17, SELFDESTRUCT
	db 21, SLUDGE
	db 25, HAZE
	db 33, TOXIC
	db 37, EXPLOSION
	db 42, SLUDGE_BOMB
	db 46, DESTINY_BOND
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 4, SAND_ATTACK
	db 9, STOMP
	db 13, FURY_ATTACK
	db 21, SCARY_FACE
	db 27, ROCK_THROW
	db 33, TAKE_DOWN
	db 37, HORN_DRILL
	db 48, EARTHQUAKE
	db 55, MEGAHORN
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 4, DEFENSE_CURL
	db 5, TAIL_WHIP
	db 12, SOFTBOILED
	db 16, DOUBLESLAP
	db 20, MINIMIZE
	db 23, SING
	db 27, TAKE_DOWN
	db 31, CHARM
	db 34, LIGHT_SCREEN
	db 38, EGG_BOMB
	db 46, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, LEECH_SEED
	db 5, SLEEP_POWDER
	db 8, ABSORB
	db 12, GROWTH
	db 15, POISONPOWDER
	db 19, VINE_WHIP
	db 20, PAIN_SPLIT
	db 22, MEGA_DRAIN
	db 26, BIND
	db 29, STUN_SPORE
	db 33, ANCIENTPOWER
	db 36, GIGA_DRAIN
	db 43, SLAM
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 1, LEER
	db 4, GROWL
	db 10, TAIL_WHIP
	db 13, BITE
	db 16, STOMP
	db 19, MEGA_PUNCH
	db 20, FOCUS_ENERGY
	db 21, FAINT_ATTACK
	db 22, RAGE
	db 24, HEADBUTT
	db 25, DIZZY_PUNCH
	db 31, CRUNCH
	db 34, ENDURE
	db 36, OUTRAGE
	db 41, REVERSAL
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
SeadraEvosAttacks:
	db EVOLVE_TRADE, DRAGON_SCALE, KINGDRA
KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 4, SMOKESCREEN
	db 8, LEER
	db 11, WATER_GUN
	db 12, SCARY_FACE
	db 14, FOCUS_ENERGY
	db 18, BUBBLEBEAM
	db 20, TWISTER
	db 23, DRAGONBREATH
	db 26, AGILITY
	db 35, HYDRO_PUMP
	db 45, RAIN_DANCE
	db 50, OUTRAGE
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db EVOLVE_LEVEL, 33, SEAKING
SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 7, SUPERSONIC
	db 8, HORN_ATTACK
	db 13, FLAIL
	db 16, BUBBLEBEAM
	db 21, QUICK_ATTACK
	db 24, FURY_ATTACK
	db 29, WATERFALL
	db 32, MEGAHORN
	db 37, AGILITY
	db 40, HORN_DRILL
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 6, WATER_GUN
	db 10, RAPID_SPIN
	db 13, PSYWAVE
	db 15, RECOVER
	db 24, SWIFT
	db 26, MINIMIZE
	db 28, PSYBEAM
	db 33, BUBBLEBEAM
	db 40, CONFUSE_RAY
	db 42, LIGHT_SCREEN
	db 45, PSYCHIC_M
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRIER
	db 1, CONFUSION
	db 8, MEDITATE
	db 11, ENCORE
	db 15, DOUBLESLAP
	db 16, PSYWAVE
	db 18, MIMIC
	db 20, PROTECT
	db 22, LIGHT_SCREEN
	db 24, PSYBEAM
	db 25, REFLECT
	db 29, SUBSTITUTE
	db 32, BATON_PASS
	db 36, PSYCHIC_M
	db 39, SAFEGUARD
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_TRADE, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, FALSE_SWIPE
	db 17, AGILITY
	db 21, WING_ATTACK
	db 25, FURY_CUTTER
	db 29, SLASH
	db 33, RAZOR_WIND
	db 37, DOUBLE_TEAM
	db 41, SWORDS_DANCE
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 30, JYNX
JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LICK
	db 1, SWEET_KISS
	db 9, LOVELY_KISS
	db 12, CONFUSION
	db 13, POWDER_SNOW
	db 15, DOUBLESLAP
	db 18, SING
	db 21, ICE_PUNCH
	db 24, BODY_SLAM
	db 28, MEAN_LOOK
	db 34, PSYCHIC_M
	db 40, PERISH_SONG
	db 46, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 1, THUNDERSHOCK
	db 10, LOW_KICK
	db 16, SWIFT
	db 19, THUNDER_WAVE
	db 23, THUNDERPUNCH
	db 24, ROLLING_KICK
	db 25, LIGHT_SCREEN
	db 26, BARRIER
	db 39, THUNDERBOLT
	db 42, MEDITATE
	db 44, SCREECH
	db 46, CROSS_CHOP
	db 48, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGMAR
MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 1, SMOG
	db 1, FIRE_PUNCH
	db 7, LEER
	db 10, SMOKESCREEN
	db 13, SMOG
	db 16, FLAME_WHEEL
	db 17, FAINT_ATTACK
	db 19, FIRE_SPIN
	db 24, SCARY_FACE
	db 25, CONFUSE_RAY
	db 28, FIRE_PUNCH
	db 37, FLAMETHROWER
	db 41, LOW_KICK
	db 43, SUNNY_DAY
	db 46, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, STRING_SHOT
	db 1, VICEGRIP
	db 1, FOCUS_ENERGY
	db 4, BIND
	db 8, SEISMIC_TOSS
	db 13, HARDEN
	db 25, VITAL_THROW
	db 35, THRASH
	db 38, SWORDS_DANCE
	db 42, SUBMISSION
	db 47, GUILLOTINE
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, TAIL_WHIP
	db 5, RAGE
	db 7, FOCUS_ENERGY
	db 8, HORN_ATTACK
	db 11, SCARY_FACE
	db 15, PURSUIT
	db 20, SPITE
	db 35, TAKE_DOWN
	db 36, SWAGGER
	db 41, THRASH
	db 44, REST
	db 47, OUTRAGE
	db 51, DOUBLE_EDGE
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 5, BUBBLE
	db 10, REVERSAL
	db 15, TACKLE
	db 30, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, THRASH
	db 20, BITE
	db 23, DRAGON_RAGE
	db 26, LEER
	db 29, TWISTER
	db 33, SCARY_FACE
	db 38, RAIN_DANCE
	db 40, HYDRO_PUMP
	db 45, CRUNCH
	db 50, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, GROWL
	db 1, SING
	db 4, MIST
	db 7, CONFUSE_RAY
	db 18, BODY_SLAM
	db 22, RAIN_DANCE
	db 27, PERISH_SONG
	db 32, ICE_BEAM
	db 43, SAFEGUARD
	db 57, HYDRO_PUMP
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 10, SWIFT
	db 15, GROWL
	db 22, QUICK_ATTACK
	db 29, BITE
	db 32, CHARM
	db 36, FOCUS_ENERGY
	db 37, DOUBLE_EDGE
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 10, SWIFT
	db 15, WATER_GUN
	db 22, QUICK_ATTACK
	db 29, BITE
	db 32, CHARM
	db 37, DOUBLE_EDGE
	db 38, AURORA_BEAM
	db 41, HAZE
	db 42, ACID_ARMOR
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 10, SWIFT
	db 15, THUNDERSHOCK
	db 22, QUICK_ATTACK
	db 29, DOUBLE_KICK
	db 32, CHARM
	db 36, PIN_MISSILE
	db 37, DOUBLE_EDGE
	db 41, THUNDER_WAVE
	db 42, AGILITY
	db 45, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, FIRE_SPIN
	db 8, SAND_ATTACK
	db 10, SWIFT
	db 15, EMBER
	db 22, QUICK_ATTACK
	db 29, BITE
	db 32, CHARM
	db 36, FLAMETHROWER
	db 37, DOUBLE_EDGE
	db 41, SMOG
	db 42, SCARY_FACE
	db 45, FIRE_BLAST
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_TRADE, UP_GRADE, PORYGON2
Porygon2EvosAttacks:
	db 0 ; no more evolutions
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 1, SHARPEN
	db 7, PSYBEAM
	db 9, AGILITY
	db 12, THUNDERSHOCK
	db 18, LOCK_ON
	db 22, TRI_ATTACK
	db 25, PAIN_SPLIT
	db 29, RECOVER
	db 34, BARRIER
	db 40, ZAP_CANNON
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 40, OMASTAR
OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 6, BITE
	db 11, LEER
	db 16, WATER_GUN
	db 21, SAND_ATTACK
	db 23, ROLLOUT
	db 26, BIND
	db 28, PIN_MISSILE
	db 30, ROCK_THROW
	db 34, PROTECT
	db 36, SPIKE_CANNON
	db 40, HYDRO_PUMP
	db 46, ANCIENTPOWER
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 40, KABUTOPS
KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 6, ABSORB
	db 11, LEER
	db 16, LEECH_LIFE
	db 21, SAND_ATTACK
	db 23, MEGA_DRAIN
	db 26, ENDURE
	db 28, SCREECH
	db 30, ROCK_THROW
	db 34, PROTECT
	db 36, CONFUSE_RAY
	db 40, SLASH
	db 46, ANCIENTPOWER
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCARY_FACE
	db 1, BITE
	db 5, SUPERSONIC
	db 8, ROCK_THROW
	db 9, ROAR
	db 10, WING_ATTACK
	db 17, AGILITY
	db 25, ANCIENTPOWER
	db 33, CRUNCH
	db 41, TAKE_DOWN
	db 45, HYPER_BEAM
	db 50, ROCK_SLIDE
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, DEFENSE_CURL
	db 8, AMNESIA
	db 9, LICK
	db 12, BITE
	db 17, BELLY_DRUM
	db 25, SLEEP_TALK
	db 28, REST
	db 29, HEADBUTT
	db 40, DEFENSE_CURL
	db 41, ROLLOUT
	db 44, CRUNCH
	db 53, BODY_SLAM
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEAL_BELL
	db 1, PECK
	db 1, LEER
	db 1, GUST
	db 1, POWDER_SNOW
	db 8, MIST
	db 15, HAZE
	db 24, MIRROR_COAT
	db 29, ANCIENTPOWER
	db 35, ICE_BEAM
	db 43, MIND_READER
	db 45, AGILITY
	db 64, REFLECT
	db 71, BLIZZARD
	db 90, SKY_ATTACK
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, PECK
	db 1, LEER
	db 1, THUNDERSHOCK
	db 1, THUNDER_WAVE
	db 15, DETECT
	db 24, RAIN_DANCE
	db 29, ANCIENTPOWER
	db 35, THUNDERBOLT
	db 43, DRILL_PECK
	db 45, AGILITY
	db 64, LIGHT_SCREEN
	db 71, THUNDER
	db 90, SKY_ATTACK
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1, MORNING_SUN
	db 1, GUST
	db 1, EMBER
	db 1, PECK
	db 1, FIRE_SPIN
	db 15, ENDURE
	db 24, SUNNY_DAY
	db 29, ANCIENTPOWER
	db 35, FLAMETHROWER
	db 43, WING_ATTACK
	db 45, AGILITY
	db 64, SAFEGUARD
	db 71, SOLARBEAM
	db 90, SKY_ATTACK
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 36, AGILITY
	db 40, RAIN_DANCE
	db 43, SAFEGUARD
	db 50, OUTRAGE
	db 55, WING_ATTACK
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY
	db 1, CONFUSION
	db 1, DISABLE
	db 8, ANCIENTPOWER
	db 8, BARRIER
	db 15, SWIFT
	db 22, FUTURE_SIGHT
	db 29, PSYCH_UP
	db 43, MIST
	db 55, RECOVER
	db 57, AMNESIA
	db 66, PSYCHIC_M
	db 86, AGILITY
	db 93, SAFEGUARD
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, NIGHT_SHADE
	db 1, HYDRO_PUMP
	db 1, OUTRAGE
	db 1, CRUNCH
	db 1, METAL_CLAW
	db 1, CHARM
	db 1, ENCORE
	db 1, POUND
	db 1, TRANSFORM
	db 1, HYPNOSIS
	db 1, FUTURE_SIGHT
	db 5, AGILITY
	db 10, MEGA_PUNCH
	db 15, METRONOME
	db 20, CONFUSION
	db 25, SCREECH
	db 30, CONFUSE_RAY
	db 35, HAZE
	db 40, PSYBEAM
	db 45, BARRIER
	db 50, ANCIENTPOWER
	db 55, PSYCHIC_M
	db 60, AMNESIA
	db 65, BATON_PASS
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 16, BAYLEEF
BayleefEvosAttacks:
	db EVOLVE_LEVEL, 32, MEGANIUM
MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, RAZOR_LEAF
	db 9, POISONPOWDER
	db 12, SYNTHESIS
	db 17, REFLECT
	db 22, GIGA_DRAIN
	db 23, LEECH_SEED
	db 26, CHARM
	db 28, SWEET_SCENT
	db 30, PETAL_DANCE
	db 31, LIGHT_SCREEN
	db 34, BODY_SLAM
	db 39, SAFEGUARD
	db 45, SOLARBEAM
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 14, QUILAVA
QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 36, TYPHLOSION
TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 10, EMBER
	db 12, CONFUSE_RAY
	db 13, QUICK_ATTACK
	db 19, FLAME_WHEEL
	db 22, DEFENSE_CURL
	db 28, SWIFT
	db 32, REVERSAL
	db 37, FLAMETHROWER
	db 40, ROLLOUT
	db 46, DOUBLE_EDGE
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL, 18, CROCONAW
CroconawEvosAttacks:
	db EVOLVE_LEVEL, 30, FERALIGATR
FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 18, MUD_SLAP
	db 22, FLAIL
	db 25, LOW_KICK
	db 27, SLASH
	db 29, CRUNCH
	db 34, SCREECH
	db 36, THRASH
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 1, SCRATCH
	db 1, GROWL
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, FURY_SWIPES
	db 17, SLAM
	db 21, REST
	db 28, AMNESIA
	db 32, BATON_PASS
	db 36, DOUBLE_EDGE
	db 39, REVERSAL
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 5, HYPNOSIS
	db 9, PECK
	db 11, NIGHT_SHADE
	db 14, CONFUSE_RAY
	db 17, DREAM_EATER
	db 21, REFLECT
	db 25, CONFUSION
	db 29, TAKE_DOWN
	db 33, PSYBEAM
	db 36, AGILITY
	db 39, HAZE
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 18, LEDIAN
LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SUPERSONIC
	db 8, SWIFT
	db 12, LIGHT_SCREEN
	db 12, REFLECT
	db 12, SAFEGUARD
	db 15, MACH_PUNCH
	db 20, COMET_PUNCH
	db 22, BATON_PASS
	db 24, AGILITY
	db 29, BARRIER
	db 33, DOUBLE_EDGE
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 22, ARIADOS
AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 5, SCARY_FACE
	db 7, ABSORB
	db 8, CONSTRICT
	db 12, LEECH_LIFE
	db 15, NIGHT_SHADE
	db 19, FURY_SWIPES
	db 23, FOCUS_ENERGY
	db 28, SPIDER_WEB
	db 31, PIN_MISSILE
	db 35, PSYCHIC_M
	db 37, SCREECH
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, SUPERSONIC
	db 6, THUNDER_WAVE
	db 9, FLAIL
	db 12, WATER_GUN
	db 17, CONFUSE_RAY
	db 20, SPARK
	db 23, TAKE_DOWN
	db 28, BUBBLEBEAM
	db 32, PSYBEAM
	db 35, AGILITY
	db 39, AMNESIA
	db 42, HYDRO_PUMP
	db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 5, DEFENSE_CURL
	db 10, THUNDER_WAVE
	db 13, SWEET_KISS
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, POUND
	db 1, CHARM
	db 4, ENCORE
	db 7, SING
	db 10, SWEET_KISS
	db 13, DEFENSE_CURL
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, SING
	db 1, CHARM
	db 5, DEFENSE_CURL
	db 9, POUND
	db 13, SWEET_KISS
	db 16, DISABLE
	db 17, DEFENSE_CURL
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
TogeticEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 1, POUND
	db 5, DEFENSE_CURL
	db 6, METRONOME
	db 10, SWEET_KISS
	db 12, ENCORE
	db 16, ANCIENTPOWER
	db 20, SAFEGUARD
	db 24, BATON_PASS
	db 28, DOUBLE_EDGE
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 25, XATU
XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 6, TELEPORT
	db 9, NIGHT_SHADE
	db 12, TWISTER
	db 17, FUTURE_SIGHT
	db 23, CONFUSE_RAY
	db 25, DETECT
	db 30, SKY_ATTACK
	db 36, PSYCHIC_M
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, GROWL
	db 10, THUNDERSHOCK
	db 14, THUNDER_WAVE
	db 18, TAKE_DOWN
	db 19, COTTON_SPORE
	db 25, THUNDERPUNCH
	db 27, AGILITY
	db 30, CONFUSE_RAY
	db 37, LIGHT_SCREEN
	db 46, THUNDER
	db 50, OUTRAGE
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 18, AZUMARILL
AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 7, TAIL_WHIP
	db 9, WATER_GUN
	db 12, SLAM
	db 14, DEFENSE_CURL
	db 15, ROLLOUT
	db 18, BUBBLEBEAM
	db 25, CHARM
	db 27, DOUBLE_EDGE
	db 30, RAIN_DANCE
	db 35, HYDRO_PUMP
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, FLAIL
	db 1, LOW_KICK
	db 9, DEFENSE_CURL
	db 12, ROLLOUT
	db 15, MIMIC
	db 19, FAINT_ATTACK
	db 22, COUNTER
	db 26, ROCK_SLIDE
	db 29, SLAM
	db 33, DOUBLE_EDGE
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, PERISH_SONG
	db 1, BUBBLEBEAM
	db 5, BUBBLE
	db 6, POUND
	db 8, HYPNOSIS
	db 11, WATER_GUN
	db 15, DOUBLESLAP
	db 18, RAIN_DANCE
	db 21, BODY_SLAM
	db 25, BUBBLEBEAM
	db 27, SWAGGER
	db 31, BELLY_DRUM
	db 35, PERISH_SONG
	db 38, HYDRO_PUMP
	db 43, DYNAMICPUNCH
	db 51, MIND_READER
	db 54, DOUBLE_EDGE
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 4, SYNTHESIS
	db 5, ABSORB
	db 7, TAIL_WHIP
	db 10, TACKLE
	db 12, POISONPOWDER
	db 14, MEGA_DRAIN
	db 16, STUN_SPORE
	db 22, SLEEP_POWDER
	db 25, LEECH_SEED
	db 28, GIGA_DRAIN
	db 31, COTTON_SPORE
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 4, SAND_ATTACK
	db 11, BATON_PASS
	db 18, FURY_SWIPES
	db 22, SWIFT
	db 25, SCREECH
	db 29, AGILITY
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1, PETAL_DANCE
	db 1, SPLASH
	db 1, ABSORB
	db 1, GROWTH
	db 1, TACKLE
	db 3, ENCORE
	db 5, MEGA_DRAIN
	db 10, LEECH_SEED
	db 16, RAZOR_LEAF
	db 19, SYNTHESIS
	db 22, SUNNY_DAY
	db 25, DOUBLE_EDGE
	db 28, GIGA_DRAIN
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 14, DETECT
	db 17, SONICBOOM
	db 20, GUST
	db 22, SUPERSONIC
	db 25, STRING_SHOT
	db 30, PURSUIT
	db 33, ANCIENTPOWER
	db 37, SWIFT
	db 38, HYPNOSIS
	db 46, SCREECH
	db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 20, QUAGSIRE
QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 9, DEFENSE_CURL
	db 12, SLAM
	db 16, HAZE
	db 19, BUBBLEBEAM
	db 23, RAIN_DANCE
	db 28, AMNESIA
	db 30, EARTHQUAKE
	db 34, HYDRO_PUMP
	db 38, MIST
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 10, SWIFT
	db 15, CONFUSION
	db 22, QUICK_ATTACK
	db 29, SWIFT
	db 32, CHARM
	db 36, PSYBEAM
	db 37, DOUBLE_EDGE
	db 41, FUTURE_SIGHT
	db 42, PSYCH_UP
	db 45, PSYCHIC_M
	db 48, MORNING_SUN
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 10, SWIFT
	db 15, PURSUIT
	db 22, QUICK_ATTACK
	db 29, CONFUSE_RAY
	db 32, CHARM
	db 37, DOUBLE_EDGE
	db 41, FAINT_ATTACK
	db 42, MEAN_LOOK
	db 45, SCREECH
	db 48, MOONLIGHT
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 5, PURSUIT
	db 6, SPITE
	db 7, SCARY_FACE
	db 9, GUST
	db 11, HAZE
	db 13, NIGHT_SHADE
	db 15, WING_ATTACK
	db 21, CONFUSE_RAY
	db 25, FAINT_ATTACK
	db 31, MEAN_LOOK
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PSYWAVE
	db 4, CONFUSION
	db 5, SPITE
	db 14, CONFUSE_RAY
	db 19, MEAN_LOOK
	db 23, PSYBEAM
	db 28, PAIN_SPLIT
	db 32, SHADOW_BALL
	db 37, PERISH_SONG
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, ENCORE
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, TACKLE
	db 1, GROWL
	db 10, STOMP
	db 12, MIRROR_COAT
	db 14, AGILITY
	db 16, DOUBLE_KICK
	db 17, IRON_TAIL
	db 19, PSYBEAM
	db 20, MEAN_LOOK
	db 21, CONFUSE_RAY
	db 23, BATON_PASS
	db 28, PSYCHIC_M
	db 32, CRUNCH
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 31, FORRETRESS
ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 1, STRING_SHOT
	db 6, SELFDESTRUCT
	db 9, DEFENSE_CURL
	db 12, TAKE_DOWN
	db 17, BIDE
	db 20, RAPID_SPIN
	db 23, REFLECT
	db 28, SPIKES
	db 33, EXPLOSION
	db 40, DOUBLE_EDGE
	db 45, ZAP_CANNON
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 1, DEFENSE_CURL
	db 4, ROLLOUT
	db 7, SPITE
	db 10, PURSUIT
	db 13, SCREECH
	db 16, MUD_SLAP
	db 19, ANCIENTPOWER
	db 22, TAKE_DOWN
	db 25, AGILITY
	db 28, GLARE
	db 31, ENDURE
	db 34, DOUBLE_EDGE
	db 37, FLAIL
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 5, SAND_ATTACK
	db 9, HARDEN
	db 16, QUICK_ATTACK
	db 17, SCARY_FACE
	db 19, MUD_SLAP
	db 20, FURY_CUTTER
	db 21, AGILITY
	db 23, FAINT_ATTACK
	db 27, SCREECH
	db 31, SLASH
	db 34, SWORDS_DANCE
	db 45, CRABHAMMER
	db 45, EARTHQUAKE
	db 65, GUILLOTINE
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 23, GRANBULL
GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 1, TAIL_WHIP
	db 1, CHARM
	db 7, BITE
	db 13, LICK
	db 16, GROWL
	db 19, HEADBUTT
	db 25, ROAR
	db 31, RAGE
	db 34, REVERSAL
	db 37, TAKE_DOWN
	db 40, CRUNCH
	db 42, OUTRAGE
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, POISON_STING
	db 4, HARDEN
	db 8, BUBBLE
	db 9, MINIMIZE
	db 12, DEFENSE_CURL
	db 15, ROLLOUT
	db 17, WATER_GUN
	db 20, PIN_MISSILE
	db 28, TAKE_DOWN
	db 30, TOXIC
	db 32, DESTINY_BOND
	db 36, HYDRO_PUMP
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, FALSE_SWIPE
	db 17, AGILITY
	db 21, METAL_CLAW
	db 25, FURY_CUTTER
	db 29, SLASH
	db 33, RAZOR_WIND
	db 48, DOUBLE_TEAM
	db 57, SWORDS_DANCE
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 1, BIDE
	db 3, STRING_SHOT
	db 5, ROLLOUT
	db 6, DEFENSE_CURL
	db 9, ENCORE
	db 12, SWEET_SCENT
	db 13, ROCK_THROW
	db 14, SAFEGUARD
	db 22, WRAP
	db 27, REST
	db 38, ROCK_SLIDE
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, HORN_ATTACK
	db 1, ENDURE
	db 7, FURY_ATTACK
	db 25, COUNTER
	db 31, TAKE_DOWN
	db 35, PIN_MISSILE
	db 43, REVERSAL
	db 45, THRASH
	db 46, SWORDS_DANCE
	db 50, MEGAHORN
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 8, QUICK_ATTACK
	db 10, FAINT_ATTACK
	db 14, ICY_WIND
	db 16, FURY_SWIPES
	db 18, METAL_CLAW
	db 22, SCREECH
	db 24, AGILITY
	db 28, SLASH
	db 32, BEAT_UP
	db 35, MOONLIGHT
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
	db 7, DEFENSE_CURL
	db 8, FURY_SWIPES
	db 11, METAL_CLAW
	db 15, FAINT_ATTACK
	db 22, SWEET_SCENT
	db 29, SLASH
	db 31, CHARM
	db 36, CRUNCH
	db 37, REST
	db 43, THRASH
	db 49, SNORE
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 38, MAGCARGO
MagcargoEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOG
	db 7, DEFENSE_CURL
	db 8, EMBER
	db 10, ROCK_THROW
	db 14, HARDEN
	db 19, RECOVER
	db 23, FIRE_SPIN
	db 26, ANCIENTPOWER
	db 28, AMNESIA
	db 30, ROCK_SLIDE
	db 31, BODY_SLAM
	db 33, FLAMETHROWER
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
PiloswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, POWDER_SNOW
	db 1, ANCIENTPOWER
	db 1, PECK
	db 4, TACKLE
	db 8, POWDER_SNOW
	db 13, MUD_SLAP
	db 16, ENDURE
	db 25, ICY_WIND
	db 32, TAKE_DOWN
	db 37, EARTHQUAKE
	db 40, MIST
	db 41, THRASH
	db 44, BLIZZARD
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, BUBBLE
	db 5, HARDEN
	db 8, DEFENSE_CURL
	db 10, RECOVER
	db 13, WATER_GUN
	db 17, SPIKE_CANNON
	db 20, ENDURE
	db 23, BUBBLEBEAM
	db 27, ANCIENTPOWER
	db 29, MIRROR_COAT
	db 31, FLAIL
	db 35, HYDRO_PUMP
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 25, OCTILLERY
OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYBEAM
	db 1, AURORA_BEAM
	db 1, WATER_GUN
	db 1, CONSTRICT
	db 4, WRAP
	db 6, LOCK_ON
	db 14, BUBBLEBEAM
	db 15, PSYBEAM
	db 17, STRING_SHOT
	db 19, AURORA_BEAM
	db 23, OCTAZOOKA
	db 24, FOCUS_ENERGY
	db 40, ICE_BEAM
	db 45, HYPER_BEAM
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	db 1, PRESENT
	db 15, DRILL_PECK
	db 18, AGILITY
	db 21, BATON_PASS
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, BUBBLE
	db 1, SUPERSONIC
	db 1, PSYBEAM
	db 5, GUST
	db 13, HEADBUTT
	db 19, AGILITY
	db 21, WATER_GUN
	db 22, WING_ATTACK
	db 31, TAKE_DOWN
	db 37, CONFUSE_RAY
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 6, SAND_ATTACK
	db 9, SWIFT
	db 10, METAL_CLAW
	db 12, AGILITY
	db 17, FURY_ATTACK
	db 20, WING_ATTACK
	db 28, SPIKES
	db 34, STEEL_WING
	db 36, DRILL_PECK
	db 42, SLASH
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 1, SMOG
	db 14, ROAR
	db 17, BITE
	db 22, FIRE_SPIN
	db 27, BEAT_UP
	db 31, SCARY_FACE
	db 35, FAINT_ATTACK
	db 43, FLAMETHROWER
	db 48, CRUNCH
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 1, FLAIL
	db 6, RAPID_SPIN
	db 10, TAKE_DOWN
	db 15, ROLLOUT
	db 19, MAGNITUDE
	db 24, SLAM
	db 25, FURY_ATTACK
	db 28, ENDURE
	db 33, CHARM
	db 39, SCARY_FACE
	db 42, DOUBLE_EDGE
	db 43, EARTHQUAKE
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, LEER
	db 6, SCARY_FACE
	db 10, HYPNOSIS
	db 13, STOMP
	db 14, AGILITY
	db 16, SAND_ATTACK
	db 18, FUTURE_SIGHT
	db 21, TAKE_DOWN
	db 23, CONFUSE_RAY
	db 27, JUMP_KICK
	db 32, PSYBEAM
	db 37, DOUBLE_EDGE
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 1, FOCUS_ENERGY
	db 1, RAGE
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, ROLLING_KICK
	db 5, FOCUS_ENERGY
	db 8, PURSUIT
	db 9, QUICK_ATTACK
	db 16, TRIPLE_KICK
	db 21, DIG
	db 24, TWISTER
	db 28, RAPID_SPIN
	db 32, AGILITY
	db 36, DETECT
	db 40, COUNTER
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 7, THUNDERSHOCK
	db 10, LOW_KICK
	db 16, SWIFT
	db 19, THUNDER_WAVE
	db 25, LIGHT_SCREEN
	db 28, THUNDERPUNCH
	db 37, THUNDERBOLT
	db 43, SCREECH
	db 46, THUNDER
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 5, DEFENSE_CURL
	db 8, STOMP
	db 11, MILK_DRINK
	db 15, BIDE
	db 19, ROLLOUT
	db 24, BODY_SLAM
	db 25, HEADBUTT
	db 48, HEAL_BELL
	db 50, CHARM
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, ZAP_CANNON
	db 1, SCARY_FACE
	db 1, AGILITY
	db 1, BITE
	db 1, LEER
	db 8, THUNDERSHOCK
	db 11, REFLECT
	db 15, ROAR
	db 22, QUICK_ATTACK
	db 29, SPARK
	db 30, EXTREMESPEED
	db 42, CRUNCH
	db 66, RAIN_DANCE
	db 71, THUNDER
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, SACRED_FIRE
	db 1, SCARY_FACE
	db 1, AGILITY
	db 1, BITE
	db 1, LEER
	db 8, FIRE_SPIN
	db 11, SWAGGER
	db 15, ROAR
	db 22, REVERSAL
	db 29, FLAME_WHEEL
	db 30, EXTREMESPEED
	db 42, CRUNCH
	db 66, SUNNY_DAY
	db 71, FIRE_BLAST
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, MIRROR_COAT
	db 1, SCARY_FACE
	db 1, AGILITY
	db 1, BITE
	db 1, LEER
	db 8, WATER_GUN
	db 11, MIST
	db 21, ROAR
	db 22, GUST
	db 29, BUBBLEBEAM
	db 30, EXTREMESPEED
	db 42, CRUNCH
	db 66, RAIN_DANCE
	db 71, HYDRO_PUMP
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 30, PUPITAR
PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 1, SANDSTORM
	db 1, SCREECH
	db 3, TACKLE
	db 11, FOCUS_ENERGY
	db 22, ROCK_THROW
	db 29, SCARY_FACE
	db 36, THRASH
	db 43, CRUNCH
	db 45, ROCK_SLIDE
	db 50, EARTHQUAKE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	db 1, WHIRLWIND
	db 1, SCARY_FACE
	db 9, GUST
	db 11, MIST
	db 29, RAIN_DANCE
	db 37, HYDRO_PUMP
	db 43, AEROBLAST
	db 57, ANCIENTPOWER
	db 65, SAFEGUARD
	db 66, SWIFT
	db 71, RECOVER
	db 79, FUTURE_SIGHT
	db 90, SKY_ATTACK
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1, WHIRLWIND
	db 9, GUST
	db 29, SUNNY_DAY
	db 37, FIRE_BLAST
	db 43, SACRED_FIRE
	db 57, ANCIENTPOWER
	db 65, SAFEGUARD
	db 66, SWIFT
	db 71, RECOVER
	db 79, FUTURE_SIGHT
	db 90, SKY_ATTACK
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, CONFUSION
	db 1, HEAL_BELL
	db 1, SYNTHESIS
	db 37, BATON_PASS
	db 57, ANCIENTPOWER
	db 65, SAFEGUARD
	db 71, RECOVER
	db 79, FUTURE_SIGHT
	db 90, PERISH_SONG
	db 0 ; no more level-up moves

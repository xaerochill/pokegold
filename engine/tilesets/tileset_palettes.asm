LoadSpecialMapPalette:
	ld a, [wMapGroup]
	cp GROUP_CINNABAR_GYM
	jr nz, .check_mansion
	ld a, [wMapNumber]
	cp MAP_CINNABAR_GYM
	jp z, .cinnabar

.check_mansion
	ld a, [wMapGroup]
	cp GROUP_POKEMON_MANSION_B1F
	jr nz, .floor1
	ld a, [wMapNumber]
	cp MAP_POKEMON_MANSION_B1F
	jp z, .cinnabar

.floor1
	ld a, [wMapGroup]
	cp GROUP_POKEMON_MANSION_1F
	jr nz, .floor2
	ld a, [wMapNumber]
	cp MAP_POKEMON_MANSION_1F
	jp z, .cinnabar

.floor2
	ld a, [wMapGroup]
	cp GROUP_POKEMON_MANSION_2F
	jr nz, .floor3
	ld a, [wMapNumber]
	cp MAP_POKEMON_MANSION_2F
	jp z, .cinnabar

.floor3
	ld a, [wMapGroup]
	cp GROUP_POKEMON_MANSION_3F
	jr nz, .continue
	ld a, [wMapNumber]
	cp MAP_POKEMON_MANSION_3F
	jp z, .cinnabar

.continue
	ld a, [wMapTileset]
	cp TILESET_ICE_PATH
	jr z, .ice_path
	cp TILESET_HOUSE
	jr z, .house
	cp TILESET_RADIO_TOWER
	jr z, .radio_tower
	cp TILESET_GATE
	jr z, .gate
	jr .do_nothing

.cinnabar
	call LoadCinnabarPalette
	scf
	ret

.ice_path
	ld a, [wEnvironment]
	and $7
	cp INDOOR ; Hall of Fame
	jr z, .do_nothing
	call LoadIcePathPalette
	scf
	ret

.house
	call LoadHousePalette
	scf
	ret

.radio_tower
	call LoadRadioTowerPalette
	scf
	ret

.gate
	call LoadGatePalette
	scf
	ret

.do_nothing
	and a
	ret

LoadCinnabarPalette:
	ld de, wBGPals1
	ld hl, CinnabarPalette
	ld bc, 8 palettes
	call CopyBytes
	ret

CinnabarPalette:
INCLUDE "gfx/tilesets/cinnabar.pal"

LoadIcePathPalette:
	ld de, wBGPals1
	ld hl, IcePathPalette
	ld bc, 8 palettes
	call CopyBytes
	ret

IcePathPalette:
INCLUDE "gfx/tilesets/ice_path.pal"

LoadHousePalette:
	ld de, wBGPals1
	ld hl, HousePalette
	ld bc, 8 palettes
	call CopyBytes
	ret

HousePalette:
INCLUDE "gfx/tilesets/house.pal"

LoadRadioTowerPalette:
	ld de, wBGPals1
	ld hl, RadioTowerPalette
	ld bc, 8 palettes
	call CopyBytes
	ret

RadioTowerPalette:
INCLUDE "gfx/tilesets/radio_tower.pal"

LoadGatePalette:
	ld de, wBGPals1
	ld hl, GatePalette
	ld bc, 8 palettes
	call CopyBytes
	ret

GatePalette:
INCLUDE "gfx/tilesets/gate.pal"

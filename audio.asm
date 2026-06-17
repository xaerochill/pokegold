SECTION "Audio", ROMX

INCLUDE "audio/engine.asm"
INCLUDE "data/trainers/encounter_music.asm"
INCLUDE "audio/music_pointers.asm"
INCLUDE "audio/music/nothing.asm"
INCLUDE "audio/cry_pointers.asm"
INCLUDE "audio/sfx_pointers.asm"


SECTION "Songs 1", ROMX

INCLUDE "audio/music/route36.asm"
INCLUDE "audio/music/rivalbattle.asm"
INCLUDE "audio/music/rocketbattle.asm"
INCLUDE "audio/music/elmslab.asm"
INCLUDE "audio/music/darkcave.asm"
INCLUDE "audio/music/johtogymbattle.asm"
INCLUDE "audio/music/championbattle.asm"
INCLUDE "audio/music/ssaqua.asm"
INCLUDE "audio/music/newbarktown.asm"
INCLUDE "audio/music/goldenrodcity.asm"
INCLUDE "audio/music/vermilioncity.asm"
INCLUDE "audio/music/titlescreen.asm"
INCLUDE "audio/music/ruinsofalphinterior.asm"
INCLUDE "audio/music/lookpokemaniac.asm"
INCLUDE "audio/music/trainervictory.asm"


SECTION "Songs 2", ROMX

INCLUDE "audio/music/route1.asm"
INCLUDE "audio/music/route3.asm"
INCLUDE "audio/music/route12.asm"
INCLUDE "audio/music/kantogymbattle.asm"
INCLUDE "audio/music/kantotrainerbattle.asm"
INCLUDE "audio/music/pokemoncenter.asm"
INCLUDE "audio/music/looklass.asm"
INCLUDE "audio/music/lookofficer.asm"
INCLUDE "audio/music/route2.asm"
INCLUDE "audio/music/mtmoon.asm"
INCLUDE "audio/music/showmearound.asm"
INCLUDE "audio/music/gamecorner.asm"
INCLUDE "audio/music/bicycle.asm"
INCLUDE "audio/music/looksage.asm"
INCLUDE "audio/music/pokemonchannel.asm"
INCLUDE "audio/music/lighthouse.asm"
INCLUDE "audio/music/lakeofrage.asm"
INCLUDE "audio/music/indigoplateau.asm"
INCLUDE "audio/music/route37.asm"
INCLUDE "audio/music/rockethideout.asm"
INCLUDE "audio/music/dragonsden.asm"
INCLUDE "audio/music/ruinsofalphradio.asm"
INCLUDE "audio/music/lookbeauty.asm"
INCLUDE "audio/music/route26.asm"
INCLUDE "audio/music/ecruteakcity.asm"
INCLUDE "audio/music/lakeofragerocketradio.asm"
INCLUDE "audio/music/magnettrain.asm"
INCLUDE "audio/music/dancinghall.asm"
INCLUDE "audio/music/contestresults.asm"
INCLUDE "audio/music/route30.asm"


SECTION "Songs 3", ROMX

INCLUDE "audio/music/violetcity.asm"
INCLUDE "audio/music/route29.asm"
INCLUDE "audio/music/halloffame.asm"
INCLUDE "audio/music/healpokemon.asm"
INCLUDE "audio/music/evolution.asm"
INCLUDE "audio/music/printer.asm"


SECTION "Songs 4", ROMX

INCLUDE "audio/music/wildpokemonvictory.asm"
INCLUDE "audio/music/successfulcapture.asm"
assert BANK(Music_WildPokemonVictory) == BANK(Music_SuccessfulCapture)

INCLUDE "audio/music/gymleadervictory.asm"
INCLUDE "audio/music/mtmoonsquare.asm"
INCLUDE "audio/music/gym.asm"
INCLUDE "audio/music/pallettown.asm"
INCLUDE "audio/music/profoakspokemontalk.asm"
INCLUDE "audio/music/profoak.asm"

INCLUDE "audio/music/lookrival.asm"
INCLUDE "audio/music/aftertherivalfight.asm"
assert BANK(Music_LookRival) == BANK(Music_AfterTheRivalFight)

INCLUDE "audio/music/surf.asm"
INCLUDE "audio/music/nationalpark.asm"
INCLUDE "audio/music/azaleatown.asm"
INCLUDE "audio/music/cherrygrovecity.asm"
INCLUDE "audio/music/unioncave.asm"
INCLUDE "audio/music/johtotrainerbattle.asm"
INCLUDE "audio/music/lookyoungster.asm"
INCLUDE "audio/music/tintower.asm"
INCLUDE "audio/music/sprouttower.asm"
INCLUDE "audio/music/burnedtower.asm"
INCLUDE "audio/music/mom.asm"
INCLUDE "audio/music/victoryroad.asm"
INCLUDE "audio/music/pokemonlullaby.asm"
INCLUDE "audio/music/pokemonmarch.asm"
INCLUDE "audio/music/goldsilveropening.asm"
INCLUDE "audio/music/goldsilveropening2.asm"
INCLUDE "audio/music/lookhiker.asm"

INCLUDE "audio/music/lookrocket.asm"
INCLUDE "audio/music/rockettheme.asm"
assert BANK(Music_LookRocket) == BANK(Music_RocketTheme)

INCLUDE "audio/music/mainmenu.asm"
INCLUDE "audio/music/lookkimonogirl.asm"
INCLUDE "audio/music/pokeflutechannel.asm"
INCLUDE "audio/music/bugcatchingcontest.asm"


SECTION "Songs 5", ROMX

INCLUDE "audio/music/celadoncity.asm"
INCLUDE "audio/music/johtowildbattle.asm"
INCLUDE "audio/music/johtowildbattlenight.asm"
assert BANK(Music_JohtoWildBattle) == BANK(Music_JohtoWildBattleNight)

INCLUDE "audio/music/kantowildbattle.asm"
INCLUDE "audio/music/lavendertown.asm"
INCLUDE "audio/music/viridiancity.asm"

SECTION "Extra Songs 1", ROMX

INCLUDE "audio/music/credits.asm"


SECTION "Extra Songs 2", ROMX

INCLUDE "audio/music/postcredits.asm"


SECTION "New Songs - Crystal", ROMX

INCLUDE "audio/music/crystal/clair.asm"
INCLUDE "audio/music/crystal/mobileadaptermenu.asm"
INCLUDE "audio/music/crystal/mobileadapter.asm"
INCLUDE "audio/music/crystal/buenaspassword.asm"
INCLUDE "audio/music/crystal/lookmysticalman.asm"
INCLUDE "audio/music/crystal/battletowertheme.asm"
INCLUDE "audio/music/crystal/suicunebattle.asm"
INCLUDE "audio/music/crystal/battletowerlobby.asm"
INCLUDE "audio/music/crystal/mobilecenter.asm"


SECTION "New Songs - Mons2", ROMX

INCLUDE "audio/music/mons2/BOUSAN.asm"
INCLUDE "audio/music/mons2/M_FLD6.asm"
INCLUDE "audio/music/mons2/M_PMC.asm"
INCLUDE "audio/music/mons2/M_TITLE3.asm"
INCLUDE "audio/music/mons2/M_TOWN12.asm"
INCLUDE "audio/music/mons2/M_TOWN17.asm"
INCLUDE "audio/music/mons2/M_TSUR1.asm"
INCLUDE "audio/music/mons2/DEALER2.asm"
INCLUDE "audio/music/mons2/DIGDA01.asm"
INCLUDE "audio/music/mons2/ENDING01.asm"
INCLUDE "audio/music/mons2/KINCHO01.asm"
INCLUDE "audio/music/mons2/KOUKAN.asm"
INCLUDE "audio/music/mons2/OHKIDO03.asm"
INCLUDE "audio/music/mons2/VICTORY4.asm"


SECTION "New Songs - TCG 1", ROMX

INCLUDE "audio/music/tcg/cardpop.asm"
INCLUDE "audio/music/tcg/challengehall.asm"
INCLUDE "audio/music/tcg/club1.asm"
INCLUDE "audio/music/tcg/club2.asm"
INCLUDE "audio/music/tcg/club3.asm"
INCLUDE "audio/music/tcg/credits.asm"
INCLUDE "audio/music/tcg/deckmachine.asm"
INCLUDE "audio/music/tcg/dueltheme1.asm"
INCLUDE "audio/music/tcg/dueltheme2.asm"


SECTION "New Songs - TCG 2", ROMX

INCLUDE "audio/music/tcg/dueltheme3.asm"
INCLUDE "audio/music/tcg/hallofhonor.asm"
INCLUDE "audio/music/tcg/imakuni.asm"
INCLUDE "audio/music/tcg/overworld.asm"
INCLUDE "audio/music/tcg/pausemenu.asm"
INCLUDE "audio/music/tcg/pcmainmenu.asm"
INCLUDE "audio/music/tcg/pokemondome.asm"
INCLUDE "audio/music/tcg/ronald.asm"
INCLUDE "audio/music/tcg/titlescreen.asm"


SECTION "New Songs - TCG2 1", ROMX

INCLUDE "audio/music/tcg2/credits.asm"
INCLUDE "audio/music/tcg2/fort1.asm"
INCLUDE "audio/music/tcg2/fort2.asm"
INCLUDE "audio/music/tcg2/fort3.asm"
INCLUDE "audio/music/tcg2/fort4.asm"
INCLUDE "audio/music/tcg2/gamecorner.asm"


SECTION "New Songs - TCG2 2", ROMX

INCLUDE "audio/music/tcg2/grblimp.asm"
INCLUDE "audio/music/tcg2/grcastle.asm"
INCLUDE "audio/music/tcg2/grdueltheme1.asm"
INCLUDE "audio/music/tcg2/grdueltheme2.asm"
INCLUDE "audio/music/tcg2/grdueltheme3.asm"
INCLUDE "audio/music/tcg2/groverworld.asm"


SECTION "New Songs - TCG2 3", ROMX

INCLUDE "audio/music/tcg2/herecomesgr.asm"
INCLUDE "audio/music/tcg2/imakuni2.asm"
INCLUDE "audio/music/tcg2/ishihara.asm"
INCLUDE "audio/music/tcg2/titlescreen.asm"


SECTION "New Songs - Pinball 1", ROMX

INCLUDE "audio/music/pinball/fieldselect.asm"
INCLUDE "audio/music/pinball/gastlyinthegraveyard.asm"
INCLUDE "audio/music/pinball/gengarinthegraveyard.asm"
INCLUDE "audio/music/pinball/hiscore.asm"
INCLUDE "audio/music/pinball/hurryupred.asm"
INCLUDE "audio/music/pinball/meowthstage.asm"
INCLUDE "audio/music/pinball/mewtwostage.asm"


SECTION "New Songs - Pinball 2", ROMX

INCLUDE "audio/music/pinball/nameentry.asm"
INCLUDE "audio/music/pinball/options.asm"
INCLUDE "audio/music/pinball/pokedex.asm"
INCLUDE "audio/music/pinball/redfield.asm"
INCLUDE "audio/music/pinball/seelstage.asm"
INCLUDE "audio/music/pinball/title.asm"
INCLUDE "audio/music/pinball/whackthediglett.asm"
INCLUDE "audio/music/pinball/whackthedugtrio.asm"


SECTION "New Songs - RBY 1", ROMX

INCLUDE "audio/music/rby/celadon.asm"
INCLUDE "audio/music/rby/cinnabar.asm"
INCLUDE "audio/music/rby/cinnabarmansion.asm"
INCLUDE "audio/music/rby/cities1.asm"
INCLUDE "audio/music/rby/cities2.asm"
INCLUDE "audio/music/rby/dungeon1.asm"
INCLUDE "audio/music/rby/dungeon2.asm"
INCLUDE "audio/music/rby/dungeon3.asm"
INCLUDE "audio/music/rby/finalbattle.asm"
INCLUDE "audio/music/rby/gamecorner.asm"
INCLUDE "audio/music/rby/gym.asm"
INCLUDE "audio/music/rby/gymleaderbattle.asm"
INCLUDE "audio/music/rby/indigoplateau.asm"
INCLUDE "audio/music/rby/jigglypuffsong.asm"
INCLUDE "audio/music/rby/lavender.asm"
INCLUDE "audio/music/rby/meeteviltrainer.asm"
INCLUDE "audio/music/rby/meetfemaletrainer.asm"
INCLUDE "audio/music/rby/meetjessiejames.asm"


SECTION "New Songs - RBY 2", ROMX

INCLUDE "audio/music/rby/meetmaletrainer.asm"
INCLUDE "audio/music/rby/meetprofoak.asm"
INCLUDE "audio/music/rby/meetrival.asm"
INCLUDE "audio/music/rby/museumguy.asm"
INCLUDE "audio/music/rby/oakslab.asm"
INCLUDE "audio/music/rby/pallettown.asm"
INCLUDE "audio/music/rby/pokecenter.asm"
INCLUDE "audio/music/rby/pokemontower.asm"
INCLUDE "audio/music/rby/routes1.asm"
INCLUDE "audio/music/rby/routes2.asm"
INCLUDE "audio/music/rby/routes3.asm"
INCLUDE "audio/music/rby/routes4.asm"
INCLUDE "audio/music/rby/silphco.asm"
INCLUDE "audio/music/rby/ssanne.asm"
INCLUDE "audio/music/rby/surfingpikachu.asm"
INCLUDE "audio/music/rby/trainerbattle.asm"
INCLUDE "audio/music/rby/vermilion.asm"
INCLUDE "audio/music/rby/wildbattle.asm"
INCLUDE "audio/music/rby/yellowunusedsong.asm"


SECTION "New Songs - Other", ROMX

INCLUDE "audio/music/tppcrystal251pub/hoohbattle.asm"
INCLUDE "audio/music/tppcrystal251pub/kantolegendbattle.asm"
INCLUDE "audio/music/tppcrystal251pub/lugiabattle.asm"
INCLUDE "audio/music/tppcrystal251pub/lugiassong.asm"
INCLUDE "audio/music/jep-hack/Stadium2TeamSelect.asm"
INCLUDE "audio/music/trite-hexagon/icepathHGSS.asm"
INCLUDE "audio/music/trite-hexagon/underground.asm"
INCLUDE "audio/music/trite-hexagon/ceruleanCityGBS.asm"
INCLUDE "audio/music/trite-hexagon/seviiIslands.asm"
INCLUDE "audio/music/monstarules/four_island.asm"
INCLUDE "audio/music/mx16/lyra.asm"
INCLUDE "audio/music/mx16/safarizone.asm"
INCLUDE "audio/music/mx16/safarizonegate.asm"
INCLUDE "audio/music/mx16/spikyearedpichu.asm"
INCLUDE "audio/music/mx16/summoningdance.asm"


SECTION "Sound Effects", ROMX

INCLUDE "audio/sfx.asm"


SECTION "Cries", ROMX

INCLUDE "data/pokemon/cries.asm"

INCLUDE "audio/cries.asm"

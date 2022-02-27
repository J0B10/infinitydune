#priority 1
import mods.astralsorcery.Altar;
import mods.astralsorcery.Lightwell;
import crafttweaker.item.IIngredient;

static itemCrystal as IIngredient = <astralsorcery:itemrockcrystalsimple> | <astralsorcery:itemtunedrockcrystal> | <astralsorcery:itemcelestialcrystal> | <astralsorcery:itemtunedcelestialcrystal>;

//Hearthwell shard as cheap supply for liquid starlight
Lightwell.addLiquefaction(<hwell:shard_ca>, <liquid:astralsorcery.liquidstarlight>, 0.3, 14, 0xFFFFFF);

//Resonating Wand
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_basicwand");
recipes.addShaped("age1/tool_basicwand", <astralsorcery:itemwand>, [
    [null, <hwell:shard_o>, <botania:twigwand>], 
    [null, <ore:stoneMarble>, <hwell:shard_o>], 
    [<ore:stoneMarble>, null, null]
]);

//Sextant
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/sextant");
Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/sextant", <astralsorcery:itemsextant>, 450, 100, [
    null, <astralsorcery:itemcraftingcomponent:3>, null, 
    <ore:ingotBronze>, <astralsorcery:itemcraftingcomponent:3>, <ore:ingotBronze>, 
    <ore:stickWood>, <ore:stickWood>, <ore:stickWood>
]);

//Looking Glass
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/handtelescope");
Altar.addDiscoveryAltarRecipe("astralsorcery :shaped/internal/altar/handtelescope", <astralsorcery:itemhandtelescope>, 700, 100, [
    null, <ore:stickWood>, <astralsorcery:itemcraftingcomponent:3>, 
    <ore:stickWood>, <ore:ingotBronze>, <ore:stickWood>, 
    <ore:plankWood>, <ore:stickWood>, null
]);

//Crystal lens
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/glasslens");
Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/glasslens", <astralsorcery:itemcraftingcomponent:3>, 100, 100, [
    null, <ore:paneGlassColorless>, null, 
    <ore:paneGlassColorless>, <ore:gemHearthWellCrystal>, <ore:paneGlassColorless>, 
    null, <ore:paneGlassColorless>, null
]);

//Astral Tome
recipes.remove(<astralsorcery:itemjournal>);
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/journal");
Altar.addDiscoveryAltarRecipe("infinitydune:shaped/internal/altar/journal", <astralsorcery:itemjournal>, 10, 100, [
    null, null, null, 
    null, <minecraft:book>, null, 
    null, null, null
]);

//Illumination Powder
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminationpowder");
Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/illuminationpowder", <astralsorcery:itemusabledust> * 16, 200, 100, [
    null, <ore:dustGlowstone>, null, 
    <ore:dustGlowstone>, <hwell:locked_light>, <ore:dustGlowstone>, 
    null, <ore:dustGlowstone>, null
]);

//Fosic Resonator
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/skyresonator");
Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/skyresonator", <astralsorcery:itemskyresonator>, 100, 100, [
    null, <hwell:shard_o>, null, 
    <ore:stoneMarble>, <liquid:astralsorcery.liquidstarlight>, <ore:stoneMarble>, 
    null, <hwell:crystal_bowl>, null
]);

//Spectral Relay
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/attunementrelay");
Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/attunementrelay", <astralsorcery:blockattunementrelay>, 250, 100, [
    null, null, null, 
    <ore:nuggetBronze>, <ore:paneGlassColorless>, <ore:nuggetBronze>, 
    <astralsorcery:blockinfusedwood:1>, <ore:stoneMarble>, <astralsorcery:blockinfusedwood:1>
]);

//Lightwell
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/lightwell");
Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/lightwell", <astralsorcery:blockwell>, 200, 100, [
    <astralsorcery:blockmarble:6>, null, <astralsorcery:blockmarble:6>, 
    <hwell:shard_o>, itemCrystal, <hwell:shard_o>, 
    <ore:stoneMarble>, <astralsorcery:blockmarble:6>, <ore:stoneMarble>
]);

#priority 1
import mods.astralsorcery.Altar;
import mods.astralsorcery.Lightwell;
import crafttweaker.item.IIngredient;
import mods.astralsorcery.LightTransmutation;

//////////////////////////////////////////////
//                Discovery                 //
//////////////////////////////////////////////


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
    null, <botania:petal:11>, null, 
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
    <hwell:shard_o>, <ore:crystal>, <hwell:shard_o>, 
    <ore:stoneMarble>, <astralsorcery:blockmarble:6>, <ore:stoneMarble>
]);

//////////////////////////////////////////////
//                Attunement                //
//////////////////////////////////////////////

//Telescope
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/telescope");
Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/telescope", <astralsorcery:blockmachine>, 1400, 300, [
    null, <astralsorcery:itemhandtelescope>, null, 
    <ore:ingotBronze>, <astralsorcery:blockinfusedwood:1>, <ore:ingotBronze>, 
    <ore:stickWood>, <ore:stickWood>, <ore:stickWood>,
    null, null, null, null
]);

//Linking tool
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_linking");
Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/tool_linking", <astralsorcery:itemlinkingtool>, 1000, 300, [
    <ore:stickWood>, <botania:petal:11>, null,
    <ore:stickWood>, <astralsorcery:itemrockcrystalsimple>, <hwell:shard_o>, 
    <astralsorcery:blockinfusedwood:1>, <ore:stickWood>, <ore:stickWood>,
    null, null, <astralsorcery:blockinfusedwood:1>, null,
]);

//Stralight transmutation of Sand to Aquamarine
LightTransmutation.removeTransmutation(<minecraft:clay>, false);
LightTransmutation.addTransmutation(<minecraft:sand>, <astralsorcery:blockcustomsandore>, 100);

//Celestial Gateway
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/gateway");
Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/gateway", <astralsorcery:blockcelestialgateway>, 1400, 300, [
    <astralsorcery:blockblackmarble>, <ore:runeAirB>, <astralsorcery:blockblackmarble>,
    <astralsorcery:itemcraftingcomponent:3>, <ore:crystal>, <astralsorcery:itemcraftingcomponent:3>,
    <ore:ingotBronze>, <ore:blockMarble>, <ore:ingotBronze>,
    <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <ore:gemAquamarine>, <ore:gemAquamarine>
]);

//Cave Illuminator
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminator");
Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/illuminator", <astralsorcery:blockworldilluminator>, 1400, 300, [
    <astralsorcery:itemusabledust>, <bloodmagic:sigil_blood_light>, <astralsorcery:itemusabledust>,
    <ore:gemAquamarine>, <ore:blockHearthWellNetherCrystal>, <ore:gemAquamarine>,
    <astralsorcery:itemusabledust>, <botania:shinyflower:4>, <astralsorcery:itemusabledust>,
    <hwell:locked_light>, <hwell:locked_light>, <hwell:locked_light>, <hwell:locked_light>
]);

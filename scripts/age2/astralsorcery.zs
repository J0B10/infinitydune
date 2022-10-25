#priority 1
import mods.astralsorcery.Altar;
import mods.astralsorcery.Lightwell;
import mods.astralsorcery.LightTransmutation;

//////////////////////////////////////////////
//                Discovery                 //
//////////////////////////////////////////////

//Hearthwell shard as cheap supply for liquid starlight
Lightwell.addLiquefaction(<hwell:shard_ca>, <liquid:astralsorcery.liquidstarlight>, 0.3, 14, 0xFFFFFF);

//Spectral Relay
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/attunementrelay");
Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/attunementrelay", <astralsorcery:blockattunementrelay>, 250, 100, [
    null, null, null, 
    <ore:nuggetBronze>, <ore:paneGlassColorless>, <ore:nuggetBronze>, 
    <astralsorcery:blockinfusedwood:1>, <ore:stoneMarble>, <astralsorcery:blockinfusedwood:1>
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
    <ore:dustAquamarine>, <ore:blockHearthWellNetherCrystal>, <ore:dustAquamarine>,
    <astralsorcery:itemusabledust>, <botania:shinyflower:4>, <astralsorcery:itemusabledust>,
    <hwell:locked_light>, <hwell:locked_light>, <hwell:locked_light>, <hwell:locked_light>
]);

//Illumination Wand
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_illumination");
Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/tool_illumination", <astralsorcery:itemilluminationwand>, 1600, 300, [
    null, <astralsorcery:itemusabledust>, <hwell:locked_light>,
    <astralsorcery:itemusabledust>, <astralsorcery:blockmarble:6>, <ore:dustAquamarine>,
    <astralsorcery:blockmarble:6>, null, null,
    null, null, <ore:glowstone>, null
]);

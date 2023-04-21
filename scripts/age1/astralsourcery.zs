#priority 1
import mods.astralsorcery.Altar;
import mods.astralsorcery.Lightwell;
import mods.astralsorcery.LightTransmutation;
import mods.astralsorcery.Grindstone;

//Aquamarine Dust
Grindstone.addRecipe(<ore:oreAquamarine>, <jaopca:dust.aquamarine> * 2, 0.85f);
Grindstone.addRecipe(<ore:gemAquamarine>, <jaopca:dust.aquamarine>, 0.15f);

//////////////////////////////////////////////
//                Discovery                 //
//////////////////////////////////////////////

//Resonating Wand
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_basicwand");
recipes.addShaped("age1/tool_basicwand", <astralsorcery:itemwand>, [
    [null, <hwell:shard_o>, <botania:twigwand>], 
    [null, <ore:stoneMarble>, <hwell:shard_o>], 
    [<ore:stoneMarble>, null, null]
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

//Lightwell
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/lightwell");
Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/lightwell", <astralsorcery:blockwell>, 200, 100, [
    <astralsorcery:blockmarble:6>, null, <astralsorcery:blockmarble:6>, 
    <hwell:shard_o>, <ore:crystal>, <hwell:shard_o>, 
    <ore:stoneMarble>, <astralsorcery:blockmarble:6>, <ore:stoneMarble>
]);

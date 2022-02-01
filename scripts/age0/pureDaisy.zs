#priority 1
import crafttweaker.item.IItemStack;
import mods.botania.PureDaisy;

//Syntax: 
// PureDaisy.addRecipe(input, output, ticks);

//Dead Bush -> Sappling
PureDaisy.addRecipe(<minecraft:deadbush>, <minecraft:sapling>, 240);

//Sand -> Dirt
PureDaisy.addRecipe(<minecraft:sand>, <minecraft:dirt>, 100);

//Dirt -> Grass after 50s
PureDaisy.addRecipe(<minecraft:dirt>, <minecraft:grass>, 1000);
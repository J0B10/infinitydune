#priority 1
import mods.hwell;
import mods.botania.ManaInfusion;

//Craftable by throwing through the portal
hwell.addNetherPortalRecipe(<minecraft:sand>, <minecraft:soul_sand>);
hwell.addNetherPortalRecipe(<minecraft:stone>, <minecraft:netherrack>);


//Prismarine
recipes.addShapeless("age2/ink", <minecraft:dye:0> * 3, [<harvestcraft:octopusrawitem>]);
ManaInfusion.removeRecipe(<minecraft:prismarine_shard>);
ManaInfusion.addAlchemy(<minecraft:prismarine_shard>, <minecraft:dye:0>, 1000);

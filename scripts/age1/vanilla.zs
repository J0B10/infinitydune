#priority 1
import mods.botania.ManaInfusion;

//Prismarine
recipes.addShapeless("age1/ink", <minecraft:dye:0> * 3, [<harvestcraft:octopusrawitem>]);
ManaInfusion.removeRecipe(<minecraft:prismarine_shard>);
ManaInfusion.addAlchemy(<minecraft:prismarine_shard>, <minecraft:dye:0>, 1000);

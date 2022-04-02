#priority 1
import mods.hwell.removeTubeRecipe;

//Press water out of cactus
recipes.addShapeless("age0/water_bowl", <botania:waterbowl>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), [<minecraft:bowl>, <ore:blockCactus>]);

//Remove water recipes
removeTubeRecipe(<minecraft:cactus>);
removeTubeRecipe(<minecraft:leaves:0>);
removeTubeRecipe(<minecraft:leaves:1>);
removeTubeRecipe(<minecraft:leaves:2>);
removeTubeRecipe(<minecraft:leaves:3>);
removeTubeRecipe(<minecraft:leaves2:0>);
removeTubeRecipe(<minecraft:leaves2:1>);
removeTubeRecipe(<hwell:myst_leaves>);

#priority 1

//                  Cooking Items
//////////////////////////////////////////////////////////

//Cutting Board
recipes.remove(<harvestcraft:cuttingboarditem>);
recipes.addShaped("age1/cuttingboard", <harvestcraft:cuttingboarditem>, [
	[null, <tconstruct:knife_blade>.withTag({Material: "flint"})], 
	[<ore:stickWood>, <ore:pressurePlateWood>]
]);

//Pot
recipes.remove(<harvestcraft:potitem>);
recipes.addShapedMirrored("age1/pot", <harvestcraft:potitem>, [
	[<ore:stickWood>, <ore:ingotHeavy>, <ore:ingotHeavy>], 
	[null, <ore:ingotHeavy>, <ore:ingotHeavy>]
]);

//Skill
recipes.remove(<harvestcraft:skilletitem>);
recipes.addShapedMirrored("age1/skillet", <harvestcraft:skilletitem>, [
	[null, null, <ore:ingotHeavy>], 
	[null, <ore:ingotHeavy>, null], 
	[<ore:stickWood>, null, null]
]);

//                      Food
//////////////////////////////////////////////////////////

//Bread
recipes.remove(<minecraft:bread>);
furnace.remove(<minecraft:bread>);
furnace.addRecipe(<minecraft:bread>, <ore:foodDough>);

//Toast
recipes.remove(<harvestcraft:toastitem>);
recipes.addShapeless("age1/toast", <harvestcraft:toastitem>, [
	<ore:toolCuttingboard>, <ore:foodBread>, <ore:foodButter>
]);

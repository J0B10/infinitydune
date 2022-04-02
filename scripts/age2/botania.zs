#priority 1

//Alchemic catalyst
recipes.remove(<botania:alchemycatalyst>);
recipes.addShapedMirrored("age2/alchemycatalyst_1", <botania:alchemycatalyst>, [
    [<botania:livingrock>, <ore:runeAirB>, <botania:livingrock>], 
    [<ore:runeWaterB>, <hwell:crystal_catalyst>, <ore:runeFireB>], 
    [<botania:livingrock>, <ore:runeEarthB>, <botania:livingrock>]
]);
recipes.addShapedMirrored("age2/alchemycatalyst_2", <botania:alchemycatalyst>, [
    [<botania:livingrock>, <ore:runeFireB>, <botania:livingrock>], 
    [<ore:runeAirB>, <hwell:crystal_catalyst>, <ore:runeEarthB>], 
    [<botania:livingrock>, <ore:runeWaterB>, <botania:livingrock>]
]);

//Mana Lens
recipes.remove(<botania:lens:0>);
recipes.addShaped("age2/botania_lens", <botania:lens>, [
    [null, <ore:ingotCopper>, null], 
    [<ore:ingotCopper>, <botania:managlass> | <botania:managlasspane>, <ore:ingotCopper>], 
    [null, <ore:ingotCopper>, null]
]);

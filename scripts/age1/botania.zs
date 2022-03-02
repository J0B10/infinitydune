#priority 1

//Alchemic catalyst
recipes.remove(<botania:alchemycatalyst>);
recipes.addShapedMirrored("age1/alchemycatalyst_1", <botania:alchemycatalyst>, [
    [<botania:livingrock>, <ore:runeAirB>, <botania:livingrock>], 
    [<ore:runeWaterB>, <hwell:crystal_catalyst>, <ore:runeFireB>], 
    [<botania:livingrock>, <ore:runeEarthB>, <botania:livingrock>]
]);
recipes.addShapedMirrored("age1/alchemycatalyst_2", <botania:alchemycatalyst>, [
    [<botania:livingrock>, <ore:runeFireB>, <botania:livingrock>], 
    [<ore:runeAirB>, <hwell:crystal_catalyst>, <ore:runeEarthB>], 
    [<botania:livingrock>, <ore:runeWaterB>, <botania:livingrock>]
]);

//Cocoon of Caprice
recipes.remove(<botania:cocoon>);
recipes.addShaped("age1/cocoon_1", <botania:cocoon>, [
	[<ore:manaString>, <ore:string>, <ore:manaString>], 
	[<ore:string>, <botania:felpumpkin>, <ore:string>], 
	[<ore:manaString>, <ore:string>, <ore:manaString>]
]);
recipes.addShaped("age1/cocoon_2", <botania:cocoon>, [
	[<ore:string>, <ore:manaString>, <ore:string>], 
	[<ore:manaString>, <botania:felpumpkin>, <ore:manaString>], 
	[<ore:string>, <ore:manaString>, <ore:string>]
]);

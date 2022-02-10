#priority 1

//Piston
val heavy_rod = <tconstruct:tough_tool_rod>.withTag({Material: "heavy_ingot"});
recipes.remove(<minecraft:piston>);
recipes.addShaped("age1/piston", <minecraft:piston>, [
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
    [<quark:sturdy_stone>, heavy_rod, <quark:sturdy_stone>], 
    [<quark:sturdy_stone>, <ore:dustRedstone>, <quark:sturdy_stone>]
]);

//Dropper
recipes.remove(<minecraft:dropper>);
recipes.addShaped("age1/dropper", <minecraft:dropper>, [
    [<quark:sturdy_stone>, <quark:sturdy_stone>, <quark:sturdy_stone>], 
    [<quark:sturdy_stone>, null, <quark:sturdy_stone>], 
    [<quark:sturdy_stone>, <ore:dustRedstone>, <quark:sturdy_stone>]
]);

//Dispenser
recipes.remove(<minecraft:dispenser>);
recipes.addShapedMirrored("age1/dispenser", <minecraft:dispenser>, [
    [<ore:stickWood>, <ore:string>, null], 
    [<ore:stickWood>, <minecraft:dropper>, <ore:string>], 
    [<ore:stickWood>, <ore:string>, null]
]);

//Oberver
recipes.remove(<minecraft:observer>);
recipes.addShapedMirrored("age1/observer", <minecraft:observer>, [
    [<quark:sturdy_stone>, <quark:sturdy_stone>, <quark:sturdy_stone>], 
    [<ore:dustRedstone>, <ore:dustRedstone>, <ore:gemQuartz>], 
    [<quark:sturdy_stone>, <quark:sturdy_stone>, <quark:sturdy_stone>]
]);

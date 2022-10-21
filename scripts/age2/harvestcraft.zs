#priority 1

//Grinder
recipes.remove(<harvestcraft:grinder>);
recipes.addShaped("grinder", <harvestcraft:grinder>, [
    [<ore:stoneBrackish>, <ore:gearTin>, <ore:stoneBrackish>], 
    [<ore:stoneBrackish>, null, <ore:stoneBrackish>], 
    [<astralsorcery:blockinfusedwood:1>, <minecraft:repeater>, <astralsorcery:blockinfusedwood:1>]
]);

//Presser
recipes.remove(<harvestcraft:presser>);
recipes.addShaped("presser", <harvestcraft:presser>, [
    [<ore:plateTin>, <hwell:crushing_block>, <ore:plateTin>], 
    [<ore:plateTin>, null, <ore:plateTin>], 
    [<astralsorcery:blockinfusedwood:1>, <ore:craftingPiston>, <astralsorcery:blockinfusedwood:1>]
]);

//Shipping Bin
recipes.remove(<harvestcraft:shippingbin>);
recipes.addShaped("shippingbin", <harvestcraft:shippingbin>, [
    [<astralsorcery:blockinfusedwood:1>, <ore:cropCotton>, <astralsorcery:blockinfusedwood:1>], 
    [<ore:cropPineapple>, <ore:gemEmerald>, <ore:cropCorn>], 
    [<astralsorcery:blockinfusedwood:1>, <ore:cropTomato>, <astralsorcery:blockinfusedwood:1>]
]);

//Merket
recipes.remove(<harvestcraft:market>);
recipes.addShaped("market", <harvestcraft:market>, [
    [<astralsorcery:itemcraftingcomponent:5>, <ore:gemEmerald>, <botania:hourglass>], 
    [<minecraft:dye:0>, <harvestcraft:shippingbin>, <ore:feather>], 
    [<minecraft:carpet:5>, <minecraft:carpet:5>, <minecraft:carpet:5>]
]);

//Traps
recipes.remove(<harvestcraft:groundtrap>);
recipes.addShaped("groundtrap", <harvestcraft:groundtrap>, [
    [<minecraft:deadbush>, <ore:trapdoorWood>, <minecraft:deadbush>], 
    [<minecraft:web>, <tconstruct:wooden_hopper>, <minecraft:web>], 
    [<minecraft:deadbush>, <minecraft:web>, <minecraft:deadbush>]
]);
recipes.remove(<harvestcraft:watertrap>);
recipes.addShaped("watertrap", <harvestcraft:watertrap>, [
    [<ore:sugarcane>, <minecraft:fishing_rod>, <ore:sugarcane>], 
    [<minecraft:web>, <tconstruct:wooden_hopper>, <minecraft:web>], 
    [<ore:sugarcane>, <minecraft:web>, <ore:sugarcane>]
]);

#priority 1

recipes.remove(<storagedrawers:controller>);
recipes.addShaped("age1/compdrawer", <storagedrawers:controller>, [
    [<ore:stonePolished>, <tconstruct:wooden_hopper>, <ore:stonePolished>], 
    [<minecraft:repeater>, <storagedrawers:compdrawers>, <minecraft:repeater>], 
    [<ore:stonePolished>, <ore:gearAluminium>, <ore:stonePolished>]
]);

recipes.remove(<storagedrawers:compdrawers>);
recipes.addShaped("age1/drawer_controller", <storagedrawers:compdrawers>, [
    [<ore:stonePolished>, <quark:sturdy_stone>, <ore:stonePolished>], 
    [<ore:workbench>, <ore:drawerBasic>, <ore:workbench>], 
    [<ore:stonePolished>, <minecraft:piston>, <ore:stonePolished>]
]);

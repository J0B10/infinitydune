#priority 1

recipes.remove(<storagedrawers:controller>);
recipes.addShaped("age1/drawer_controller", <storagedrawers:controller>, [
    [<ore:stonePolished>, <tconstruct:wooden_hopper>, <ore:stonePolished>], 
    [<minecraft:repeater>, <storagedrawers:compdrawers>, <minecraft:repeater>], 
    [<ore:stonePolished>, <ore:gearAluminium>, <ore:stonePolished>]
]);

recipes.remove(<storagedrawers:controllerslave>);
recipes.addShaped("age1/drawer_controllerslave", <storagedrawers:controllerslave>, [
    [<ore:stonePolished>, <tconstruct:wooden_hopper>, <ore:stonePolished>], 
    [<minecraft:repeater>, <ore:drawerTrim>, <minecraft:repeater>], 
    [<ore:stonePolished>, <ore:gearAluminium>, <ore:stonePolished>]
]);

recipes.remove(<storagedrawers:compdrawers>);
recipes.addShaped("age1/compdrawer", <storagedrawers:compdrawers>, [
    [<ore:stonePolished>, <quark:sturdy_stone>, <ore:stonePolished>], 
    [<ore:workbench>, <ore:drawerBasic>, <ore:workbench>], 
    [<ore:stonePolished>, <minecraft:piston>, <ore:stonePolished>]
]);

////////////////////////////////////////////////
//                  Upgrades                  //
////////////////////////////////////////////////

recipes.remove(<storagedrawers:upgrade_void>);
recipes.addShaped("age1/upgrade_void", <storagedrawers:upgrade_void>, [
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
    [<ore:obsidian>, <storagedrawers:upgrade_template>, <ore:obsidian>], 
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.remove(<storagedrawers:upgrade_storage:0>);
recipes.addShaped("age1/upgrade_storage0", <storagedrawers:upgrade_storage:0>, [
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
    [<ore:ingotHeavy>, <storagedrawers:upgrade_template>, <ore:ingotHeavy>], 
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.remove(<storagedrawers:upgrade_storage:1>);
recipes.addShaped("age1/upgrade_storage1", <storagedrawers:upgrade_storage:1>, [
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
    [<ore:ingotTin>, <storagedrawers:upgrade_storage:0>, <ore:ingotTin>], 
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.remove(<storagedrawers:upgrade_storage:2>);
recipes.addShaped("age1/upgrade_storage2", <storagedrawers:upgrade_storage:2>, [
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
    [<ore:ingotGold>, <storagedrawers:upgrade_storage:1>, <ore:ingotGold>], 
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.remove(<storagedrawers:upgrade_storage:3>);
recipes.addShaped("age1/upgrade_storage3", <storagedrawers:upgrade_storage:3>, [
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
    [<ore:gemDiamond>, <storagedrawers:upgrade_storage:2>, <ore:gemDiamond>], 
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.remove(<storagedrawers:upgrade_storage:4>);
recipes.addShaped("age1/upgrade_storage4", <storagedrawers:upgrade_storage:4>, [
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
    [<ore:ingotTerrasteel>, <storagedrawers:upgrade_storage:3>, <ore:ingotTerrasteel>], 
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.addShapedMirrored("age1/drawer_key", <storagedrawers:drawer_key>, [
    [<ore:nuggetAlubrass>, <ore:ingotAlubrass>, null], 
    [null, <ore:ingotAlubrass>, null], 
    [null, <storagedrawers:upgrade_template>, null]
]);

recipes.remove(<storagedrawers:upgrade_conversion>);
recipes.addShaped("age1/upgrade_conversion", <storagedrawers:upgrade_conversion>, [
    [<ore:dyeBlue>, <ore:dyeLightBlue>, <ore:dyeLightBlue>], 
    [<ore:stickWood>, <storagedrawers:upgrade_template>, <ore:stickWood>], 
    [<ore:dyeLightBlue>, <ore:dyeBlue>, <ore:dyeBlue>]
]);

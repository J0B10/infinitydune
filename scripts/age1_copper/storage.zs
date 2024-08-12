
// tier 2 upgrade is now made from tin
craftingTable.removeByName("storagedrawers:iron_storage_upgrade");
craftingTable.addShaped("crafting/iron_storage_upgrade", <item:storagedrawers:iron_storage_upgrade>, [
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>],
    [<tag:items:forge:ingots/tin>, <item:storagedrawers:upgrade_template>, <tag:items:forge:ingots/tin>],
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>]
]);

//TODO: Maybe also reskin / rename iron chest to tin chest

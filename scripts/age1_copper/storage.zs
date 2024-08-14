
// tier 2 upgrade is now made from aluminum
craftingTable.removeByName("storagedrawers:iron_storage_upgrade");
craftingTable.addShaped("crafting/iron_storage_upgrade", <item:storagedrawers:iron_storage_upgrade>, [
    [<tag:items:forge:ingots/aluminum>, <tag:items:forge:ingots/aluminum>, <tag:items:forge:ingots/aluminum>],
    [<tag:items:forge:ingots/aluminum>, <item:storagedrawers:obsidian_storage_upgrade>, <tag:items:forge:ingots/aluminum>],
    [<tag:items:forge:ingots/aluminum>, <tag:items:forge:ingots/aluminum>, <tag:items:forge:ingots/aluminum>]
]);

// aluminum chest instead of iron chest
//TODO: Maybe also reskin / rename iron chest to aluminium chest
craftingTable.removeByName("expandedstorage:iron_chest");
craftingTable.addShaped("crafting/aluminum_chest", <item:expandedstorage:iron_chest>, [
    [<tag:items:forge:ingots/aluminum>, <tag:items:forge:ingots/aluminum>, <tag:items:forge:ingots/aluminum>],
    [<tag:items:forge:ingots/aluminum>, <tag:items:expandedstorage:wooden_chests>, <tag:items:forge:ingots/aluminum>],
    [<tag:items:forge:ingots/aluminum>, <tag:items:forge:ingots/aluminum>, <tag:items:forge:ingots/aluminum>]
]);
craftingTable.removeByName("expandedstorage:iron_mini_chest");
craftingTable.addShaped("crafting/aluminum_mini_chest", <item:expandedstorage:iron_mini_chest> * 8, [
    [<item:minecraft:air>, <tag:items:forge:ingots/aluminum>, <item:minecraft:air>],
    [<item:minecraft:paper>, <tag:items:expandedstorage:wooden_chests>, <item:minecraft:paper>],
    [<item:minecraft:air>, <item:minecraft:paper>, <item:minecraft:air>]
]);


// chests use modded chests by default
craftingTable.removeByName("minecraft:chest");
craftingTable.removeByName("expandedstorage:wood_chest");
craftingTable.addShaped("crafting/wood_chest", <item:expandedstorage:wood_chest>, [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:air>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
]);
craftingTable.addShapeless("crafting/vanilla_chest", <item:minecraft:chest>, [<item:expandedstorage:wood_chest>]);
craftingTable.addShapeless("crafting/vanilla_chest_revert", <item:expandedstorage:wood_chest>, [<item:minecraft:chest>]);

// disable old chest models for simplicity
disable(<item:expandedstorage:old_wood_chest>);
disable(<item:expandedstorage:old_iron_chest>);
disable(<item:expandedstorage:old_gold_chest>);
disable(<item:expandedstorage:old_diamond_chest>);
disable(<item:expandedstorage:old_obsidian_chest>);
disable(<item:expandedstorage:old_netherite_chest>);

// cheaper storage upgrades, require deepslate instead of obsidian
craftingTable.removeByName("storagedrawers:void_upgrade");
craftingTable.addShaped("crafting/void_upgrade", <item:storagedrawers:void_upgrade>, [
    [<item:minecraft:deepslate>, <tag:items:forge:obsidian>, <item:minecraft:deepslate>],
    [<tag:items:forge:obsidian>, <item:storagedrawers:upgrade_template>, <tag:items:forge:obsidian>],
    [<item:minecraft:deepslate>, <tag:items:forge:obsidian>, <item:minecraft:deepslate>]
]);

craftingTable.removeByName("storagedrawers:obsidian_storage_upgrade");
craftingTable.addShaped("crafting/obsidian_storage_upgrade", <item:storagedrawers:obsidian_storage_upgrade>, [
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>],
    [<item:minecraft:deepslate>, <item:storagedrawers:upgrade_template>, <item:minecraft:deepslate>],
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>]
]);


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

// make silly chest variants cheaper to encourage their use
craftingTable.removeByName("expandedstorage:bamboo_chest");
craftingTable.addShaped("crafting/bamboo_chest", <item:expandedstorage:bamboo_chest> * 4, [
    [<item:minecraft:bamboo_block>, <item:minecraft:bamboo_block>, <item:minecraft:bamboo_block>],
    [<item:minecraft:bamboo_block>, <item:minecraft:air>, <item:minecraft:bamboo_block>],
    [<item:minecraft:bamboo_block>, <item:minecraft:bamboo_block>, <item:minecraft:bamboo_block>]
]);
craftingTable.removeByName("expandedstorage:moss_chest");
craftingTable.addShaped("crafting/moss_chest", <item:expandedstorage:moss_chest>, [
    [<item:minecraft:moss_block>, <item:minecraft:moss_block>, <item:minecraft:moss_block>],
    [<item:minecraft:moss_block>, <item:minecraft:air>, <item:minecraft:moss_block>],
    [<item:minecraft:moss_block>, <item:minecraft:moss_block>, <item:minecraft:moss_block>]
]);
craftingTable.removeByName("expandedstorage:pumpkin_chest");
craftingTable.addShaped("crafting/pumpkin_chest", <item:expandedstorage:pumpkin_chest> * 4, [
    [<item:minecraft:pumpkin>, <item:minecraft:pumpkin>, <item:minecraft:pumpkin>],
    [<item:minecraft:pumpkin>, <item:minecraft:air>, <item:minecraft:pumpkin>],
    [<item:minecraft:pumpkin>, <item:minecraft:pumpkin>, <item:minecraft:pumpkin>]
]);

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
    [<item:minecraft:deepslate>, <item:minecraft:deepslate>, <item:minecraft:deepslate>],
    [<item:minecraft:deepslate>, <item:storagedrawers:upgrade_template>, <item:minecraft:deepslate>],
    [<item:minecraft:deepslate>, <item:minecraft:deepslate>, <item:minecraft:deepslate>]
]);

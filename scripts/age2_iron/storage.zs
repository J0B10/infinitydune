
// tier 3 upgrade is still made from gold, but more expensive
craftingTable.removeByName("storagedrawers:gold_storage_upgrade");
craftingTable.addShaped("crafting/gold_storage_upgrade", <item:storagedrawers:gold_storage_upgrade>, [
    [<tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>],
    [<tag:items:forge:ingots/gold>, <item:storagedrawers:iron_storage_upgrade>, <tag:items:forge:ingots/gold>],
    [<tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>]
]);

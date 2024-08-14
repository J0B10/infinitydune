
// tier 4 upgrade is still made from diamonds, but insanely expensive
craftingTable.removeByName("storagedrawers:diamond_storage_upgrade");
craftingTable.addShaped("crafting/diamond_storage_upgrade", <item:storagedrawers:diamond_storage_upgrade>, [
    [<tag:items:forge:gems/diamond>, <tag:items:forge:gems/diamond>, <tag:items:forge:gems/diamond>],
    [<tag:items:forge:gems/diamond>, <item:storagedrawers:gold_storage_upgrade>, <tag:items:forge:gems/diamond>],
    [<tag:items:forge:gems/diamond>, <tag:items:forge:gems/diamond>, <tag:items:forge:gems/diamond>]
]);

// tier 5 upgrade is made from terrasteel. expensive yet worth it
craftingTable.removeByName("storagedrawers:emerald_storage_upgrade");
craftingTable.addShaped("crafting/terrasteel_storage_upgrade", <item:storagedrawers:emerald_storage_upgrade>, [
    [<tag:items:forge:nuggets/terrasteel>, <tag:items:forge:nuggets/terrasteel>, <tag:items:forge:nuggets/terrasteel>],
    [<tag:items:forge:ingots/terrasteel>, <item:storagedrawers:diamond_storage_upgrade>, <tag:items:forge:ingots/terrasteel>],
    [<tag:items:forge:nuggets/terrasteel>, <tag:items:forge:nuggets/terrasteel>, <tag:items:forge:nuggets/terrasteel>]
]);

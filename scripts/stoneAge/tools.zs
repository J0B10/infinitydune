#priority 1
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import scripts.utils.disable;
import scripts.stoneAge.patternChest.item as pattern_chest;

//Blank Pattern
recipes.remove(<tconstruct:pattern>);
recipes.addShaped("age0/blank_pattern", <tconstruct:pattern>, [
    [<ore:stickWood>, <ore:stickWood>],
    [<ore:stickWood>, <ore:stickWood>]
]);

//Tool Rod Pattern
val tool_rod_pattern = <tconstruct:pattern>.withTag({PartType: "tconstruct:tool_rod"});
recipes.addShapeless("age0/tool_rod_pattern", tool_rod_pattern, [<tconstruct:pattern:0>, <ore:stickWood>]);

//Part Builder
var part_builder = <tconstruct:tooltables:2>.withTag({
    textureBlock: {
        id: "minecraft:cactus", 
        Count: 1 as byte, 
        Damage: 0 as short
    }
});
//recipe already exists from tc but does not show up in jei
JEI.addItem(part_builder);

//Pattern chest
recipes.remove(<tconstruct:tooltables:4>);
recipes.addShapeless("age0/pattern_chest", pattern_chest, [tool_rod_pattern, part_builder]);

//Tool Station
disable(<tconstruct:tooltables:3>);
val tool_station = <tconstruct:tooltables:3>.withTag({
    textureBlock: {
        id: "minecraft:sandstone", 
        Count: 1 as byte, 
        Damage: 2 as short
    }
});
JEI.addItem(tool_station);
recipes.addShapedMirrored("age0/tool_station", tool_station, [
    [<tconstruct:pattern:0>, <ore:partPickHead>], 
    [<minecraft:sandstone:2>, null]
]);

//Armor Station
disable(<conarm:armorstation>);
val armor_station = <conarm:armorstation>.withTag(tool_station.tag);
JEI.addItem(armor_station);
recipes.addShapedMirrored("age0/armor_station", armor_station, [
    [<tconstruct:pattern:0>, <conarm:chest_core:*>], 
    [<minecraft:sandstone:2>, null]
]);

// Crafting "Table"
recipes.remove(<tconstruct:tooltables:0>);
recipes.addShapedMirrored("age0/crafting_table", <tconstruct:tooltables:0>, [
    [<ore:plankWood>, <ore:plankWood>], 
    [<ore:logWood>, <ore:logWood>]
]);

// Crafting "Block"
recipes.remove(<minecraft:crafting_table>);
recipes.addShapeless("age0/vanilla_crafting_table", <minecraft:crafting_table>, [<tconstruct:tooltables:0>]);
recipes.addShapeless("age0/vanilla_crafting_table_revert", <tconstruct:tooltables:0>, [<minecraft:crafting_table>]);

#priority 1
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import scripts.utils.disable;
import scripts.stoneAge.patternChest.item as pattern_chest;

//Blank Pattern
recipes.remove(<tconstruct:pattern>);
recipes.addShaped("stoneAge/blank_pattern", <tconstruct:pattern>, [
    [<ore:stickWood>, <ore:stickWood>],
    [<ore:stickWood>, <ore:stickWood>]
]);

//Tool Rod Pattern
val tool_rod_pattern = <tconstruct:pattern>.withTag({PartType: "tconstruct:tool_rod"});
recipes.addShapeless("stoneAge/tool_rod_pattern", tool_rod_pattern, [<tconstruct:pattern:0>, <ore:stickWood>]);

//Stenicl Table is no longer needed
disable(<tconstruct:tooltables:1>);

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
recipes.addShapeless("stoneAge/pattern_chest", pattern_chest, [tool_rod_pattern, part_builder]);

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
recipes.addShapedMirrored("stoneAge/tool_station", tool_station, [
	[<tconstruct:pattern:0>, <ore:partPickHead>], 
	[<minecraft:sandstone:2>, null]
]);

//Armor Station
disable(<conarm:armorstation>);
val armor_station = <conarm:armorstation>.withTag(tool_station.tag);
JEI.addItem(armor_station);
recipes.addShapedMirrored("stoneAge/armor_station", armor_station, [
	[<tconstruct:pattern:0>, <conarm:chest_core:*>], 
	[<minecraft:sandstone:2>, null]
]);
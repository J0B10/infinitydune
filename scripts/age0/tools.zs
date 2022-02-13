#priority 1
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import scripts.utils.disable;
import scripts.age0.patternChest.item as pattern_chest;

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
recipes.remove(<tconstruct:tooltables:3>);
recipes.addShapedMirrored("age0/tool_station", <tconstruct:tooltables:3>, [
    [<tconstruct:pattern:0>, <ore:partPickHead>], 
    [<ore:sandstone>.marked("sandstone"), null]
], function(out,items,cinf) {
    val block = items.sandstone;
    return out.withTag({
        textureBlock: {
            id: block.definition.id, 
            Count: 1 as byte, 
            Damage: block.damage as short
        }
    });
}, null);

//Armor Station
recipes.remove(<conarm:armorstation>);
recipes.addShapedMirrored("age0/armor_station", <conarm:armorstation>, [
    [<tconstruct:pattern:0>, <conarm:chest_core:*>], 
    [<ore:sandstone>.marked("sandstone"), null]
], function(out,items,cinf) {
    val block = items.sandstone;
    return out.withTag({
        textureBlock: {
            id: block.definition.id,
            Count: 1 as byte,  
            Damage: block.damage as short
        }
    });
}, null);

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

// Furnace
recipes.remove(<minecraft:furnace>);
recipes.remove(<quark:sturdy_stone>);
recipes.addShaped("age0/sturdy_stone", <quark:sturdy_stone> * 4, [
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], 
	[<ore:cobblestone>, null, <ore:cobblestone>], 
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
]);
recipes.addShaped("age0/furnace", <minecraft:furnace>, [
    [<quark:sturdy_stone>, <quark:sturdy_stone>, <quark:sturdy_stone>], 
    [<quark:sturdy_stone>, null, <quark:sturdy_stone>], 
    [<quark:sturdy_stone>, <quark:sturdy_stone>, <quark:sturdy_stone>]
]);

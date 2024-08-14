import crafttweaker.api.recipe.MirrorAxis;

val runic_altar = <recipetype:botania:runic_altar>;

//Cocoon of Caprice
craftingTable.removeByName("botania:cocoon");
craftingTable.addShaped("crafting/cocoon_1", <item:botania:cocoon>, [
    [<item:botania:mana_string>, <tag:items:forge:string>, <item:botania:mana_string>], 
    [<tag:items:forge:string>, <item:botania:fel_pumpkin>, <tag:items:forge:string>], 
    [<item:botania:mana_string>, <tag:items:forge:string>, <item:botania:mana_string>]
]);
craftingTable.addShaped("crafting/cocoon_2", <item:botania:cocoon>, [
    [<tag:items:forge:string>, <item:botania:mana_string>, <tag:items:forge:string>], 
    [<item:botania:mana_string>, <item:botania:fel_pumpkin>, <item:botania:mana_string>], 
    [<tag:items:forge:string>, <item:botania:mana_string>, <tag:items:forge:string>]
]);

// mana lens requires weathered or oxidized copper
val oxidizedCopper = <item:purecoppertools:weathered_copper_ingot> | <item:purecoppertools:oxidized_copper_ingot>;
craftingTable.removeByName("botania:lens_normal");
craftingTable.addShaped("crafting/lens_normal", <item:botania:lens_normal>, [
    [<item:minecraft:air>, oxidizedCopper, <item:minecraft:air>],
    [oxidizedCopper, <item:botania:mana_glass>, oxidizedCopper],
    [<item:minecraft:air>, oxidizedCopper, <item:minecraft:air>],
]);

// hourglass is made from bronze (instead of gold)
craftingTable.removeByName("botania:hourglass");
craftingTable.addShaped("crafting/hourglass", <item:botania:hourglass>, [
    [<tag:items:forge:ingots/bronze>, <item:botania:mana_glass>, <tag:items:forge:ingots/bronze>],
    [<tag:items:forge:dusts/redstone>, <item:minecraft:air>, <tag:items:forge:dusts/redstone>],
    [<tag:items:forge:ingots/bronze>, <item:botania:mana_glass>, <tag:items:forge:ingots/bronze>]
]);

// alchemy catalyst ist crafted from runes of four elements
craftingTable.removeByName("botania:alchemy_catalyst");
craftingTable.addShapedMirrored("crafting/alchemy_catalyst",  MirrorAxis.ALL, <item:botania:alchemy_catalyst>, [
    [<item:botania:livingrock>, <item:botania:rune_air>, <item:botania:livingrock>],
    [<item:botania:rune_water>, <item:botania:mana_pearl>, <item:botania:rune_fire>],
    [<item:botania:livingrock>, <item:botania:rune_earth>, <item:botania:livingrock>]
]);


// Vitreous pickaxe requires weathered or oxidized copper instead of manasteel
craftingTable.removeByName("botania:glass_pickaxe");
craftingTable.addShaped("crafting/glass_pickaxe", <item:botania:glass_pickaxe>, [
    [<item:botania:mana_glass>, oxidizedCopper, <item:botania:mana_glass>],
    [<item:minecraft:air>, <item:botania:livingwood_twig>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:botania:livingwood_twig>, <item:minecraft:air>]
]);

// Soulscribe (dagger) requires weathered or oxidized copper instead of manasteel
craftingTable.removeByName("botania:ender_dagger");
craftingTable.addShaped("crafting/ender_dagger", <item:botania:ender_dagger>, [
    [<item:botania:mana_pearl>],
    [oxidizedCopper],
    [<item:botania:livingwood_twig>]
]);

// Rod of the Seas requires bucket of water
craftingTable.removeByName("botania:water_rod");
craftingTable.addShapedMirrored("crafting/water_rod", MirrorAxis.HORIZONTAL, <item:botania:water_rod>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:water_bucket>],
    [<item:minecraft:air>, <item:botania:livingwood_twig>, <item:minecraft:air>],
    [<item:botania:rune_water>, <item:minecraft:air>, <item:minecraft:air>]
]);

//                          Runes
/////////////////////////////////////////////////////////////////////

runic_altar.removeByName("botania:runic_altar/fire");
addRunicAltar("runic_altar/fire", <item:botania:rune_fire> * 2, 7000, [
    <tag:items:botania:mana_dusts>, <item:botania:mana_string>, <item:minecraft:magma_block>, 
    <tag:items:forge:dusts/glowstone>, <item:minecraft:campfire>, <item:bloodmagic:blankslate>, 
]);

val waterBottle = <item:minecraft:potion>.withTag({Potion: "minecraft:water"});
runic_altar.removeByName("botania:runic_altar/water");
addRunicAltar("runic_altar/water", <item:botania:rune_water> * 2, 7000, [
    <tag:items:botania:mana_dusts>, <item:botania:mana_string>, <tag:items:minecraft:bamboo_blocks>, 
    <item:minecraft:blue_dye>, waterBottle, <item:bloodmagic:blankslate>, 
]);

val mushroom = <item:minecraft:brown_mushroom> | <item:minecraft:red_mushroom>;
runic_altar.removeByName("botania:runic_altar/earth");
addRunicAltar("runic_altar/earth", <item:botania:rune_earth> * 2, 7000, [
    <tag:items:botania:mana_dusts>, <item:botania:mana_string>, <tag:items:forge:storage_blocks/raw_copper>, 
    <tag:items:forge:dusts/redstone>, mushroom, <item:bloodmagic:blankslate>, 
]);

runic_altar.removeByName("botania:runic_altar/air");
addRunicAltar("runic_altar/air", <item:botania:rune_air> * 2, 7000, [
    <tag:items:botania:mana_dusts>, <item:botania:mana_string>, <item:minecraft:white_carpet>, 
    <tag:items:forge:gunpowder>, <tag:items:forge:feathers>, <item:bloodmagic:blankslate>, 
]);

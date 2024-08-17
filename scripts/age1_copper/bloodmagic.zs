import crafttweaker.api.ingredient.IIngredient;

val bloodAltar = <recipetype:bloodmagic:altar>;

//                         Blood Orbs
/////////////////////////////////////////////////////////////////////

<tag:items:infinitydune:orbs/5>.add([<item:bloodmagic:archmagebloodorb>]);
<tag:items:infinitydune:orbs/4>.add([<item:bloodmagic:masterbloodorb>]);
<tag:items:infinitydune:orbs/3>.add([<item:bloodmagic:magicianbloodorb>]);
<tag:items:infinitydune:orbs/2>.add([<item:bloodmagic:apprenticebloodorb>]);
<tag:items:infinitydune:orbs/1>.add([<item:bloodmagic:weakbloodorb>]);

// add higher tier orbs to lower tiers (order of statements is important!)
<tag:items:infinitydune:orbs/4>.add(<tag:items:infinitydune:orbs/5>);
<tag:items:infinitydune:orbs/3>.add(<tag:items:infinitydune:orbs/4>);
<tag:items:infinitydune:orbs/2>.add(<tag:items:infinitydune:orbs/3>);
<tag:items:infinitydune:orbs/1>.add(<tag:items:infinitydune:orbs/2>);

bloodAltar.removeByName("bloodmagic:altar/weakbloodorb");
addBloodAltar("blood_altar/weakbloodorb", 0, <tag:items:forge:storage_blocks/redstone>, <item:bloodmagic:weakbloodorb>, {
    altarSyphon: 2000,
    consumptionRate: 2,
    drainRate: 0,
});

bloodAltar.removeByName("bloodmagic:altar/apprenticebloodorb");
addBloodAltar("blood_altar/apprenticebloodorb", 1, <item:botania:mana_pearl>, <item:bloodmagic:apprenticebloodorb>, {
    altarSyphon: 5000,
    consumptionRate: 5,
    drainRate: 5,
});

bloodAltar.removeByName("bloodmagic:altar/magicianbloodorb");
addBloodAltar("blood_altar/magicianbloodorb", 2, <tag:items:forge:storage_blocks/lapis>, <item:bloodmagic:magicianbloodorb>, {
    altarSyphon: 25000,
    consumptionRate: 20,
    drainRate: 20,
});

//                         Crafting
/////////////////////////////////////////////////////////////////////

// blood altar crafted from deepslate, redstone and tin
craftingTable.removeByName("bloodmagic:blood_altar");
craftingTable.addShaped("crafting/blood_altar", <item:bloodmagic:altar>, [
    [<item:minecraft:redstone>, <item:minecraft:air>, <item:minecraft:redstone>],
    [<item:minecraft:redstone>, <item:minecraft:deepslate>, <item:minecraft:redstone>],
    [<item:minecraft:deepslate>, <tag:items:forge:ingots/tin>, <item:minecraft:deepslate>],
]);

// sacrificial knife from tin, glass and mana dust 
craftingTable.removeByName("bloodmagic:sacrificial_dagger");
craftingTable.addShaped("crafting/sacrificial_dagger", <item:bloodmagic:sacrificialdagger>, [
    [<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:dusts/mana>],
    [<item:minecraft:air>, <tag:items:forge:ingots/tin>, <tag:items:forge:glass>],
    [<tag:items:forge:ingots/tin>, <item:minecraft:air>, <tag:items:forge:glass>]
]);

// incense altar from bronze, deepslate, weathered copper and a rune of fire
val weathered_copper = <item:minecraft:weathered_copper> | <item:minecraft:waxed_weathered_copper>;
craftingTable.removeByName("bloodmagic:incense_altar");
craftingTable.addShaped("crafting/incense_altar", <item:bloodmagic:incensealtar>, [
    [<tag:items:forge:ingots/bronze>, <item:botania:rune_fire>, <tag:items:forge:ingots/bronze>],
    [<tag:items:forge:ingots/bronze>, weathered_copper, <tag:items:forge:ingots/bronze>],
    [<item:minecraft:deepslate>, (<tag:items:infinitydune:orbs/1> as IIngredient).reuse(), <item:minecraft:deepslate>],
]);

// dagger of sacrifice requires tier 3 altar and weathered or oxidized copper sword
val weathered_copper_sword = <item:purecoppertools:weathered_copper_sword> | <item:purecoppertools:oxidized_copper_sword>;
bloodAltar.removeByName("bloodmagic:altar/daggerofsacrifice");
addBloodAltar("blood_altar/daggerofsacrifice", 2, weathered_copper_sword, <item:bloodmagic:daggerofsacrifice>, {
    altarSyphon: 9000,
    consumptionRate: 12,
    drainRate: 12,
});

// hellfire forge is made from tin, rune of fire, mana dust and blank runes
craftingTable.removeByName("bloodmagic:soul_forge");
craftingTable.addShaped("crafting/soul_forge", <item:bloodmagic:soulforge>, [
    [<tag:items:forge:dusts/mana>, <item:minecraft:air>, <tag:items:forge:dusts/mana>],
    [<item:bloodmagic:blankrune>, <item:botania:rune_fire>, <item:bloodmagic:blankrune>],
    [<item:bloodmagic:blankrune>, <tag:items:forge:storage_blocks/tin>, <item:bloodmagic:blankrune>],
]);

//                          Disabled Items
/////////////////////////////////////////////////////////////////////

// Disable higher tiers to lock progression for now
// TODO: remove once supported
//disable(<item:bloodmagic:masterbloodorb>);
//disable(<item:bloodmagic:archmagebloodorb>);
disable(<item:bloodmagic:largebloodstonebrick>);

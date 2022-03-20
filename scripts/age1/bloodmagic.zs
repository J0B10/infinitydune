#priority 1
import mods.bloodmagic.BloodAltar;
import crafttweaker.item.IItemStack;
import mods.bloodmagic.TartaricForge;
import scripts.age1.bloodOrbs.orbTier;

//Document TC Modifier
<bloodmagic:monster_soul:0>.addTooltip(format.gray("Demonic Modifier"));

//Rudimentary snare
recipes.remove(<bloodmagic:soul_snare>);
recipes.addShaped("age1/soul_snare", <bloodmagic:soul_snare> * 8, [
    [null, <ore:manaString>, <ore:manaString>], 
    [null, <hwell:shard_ca>, <ore:manaString>], 
    [<ore:manaString>, null, null]
]);

//Blood Altar
recipes.remove(<bloodmagic:altar>);
recipes.addShaped("age1/blood_altar", <bloodmagic:altar>, [
    [<ore:slimeballBlood>, <ore:blockHearthWellNetherCrystal>, <ore:slimeballBlood>], 
    [<quark:sturdy_stone>, <astralsorcery:blockaltar:1>, <quark:sturdy_stone>], 
    [<quark:sturdy_stone>, <bloodmagic:monster_soul>, <quark:sturdy_stone>]
]);

//Hellfire Forge
recipes.remove(<bloodmagic:soul_forge>);
recipes.addShaped("age1/soul_forge", <bloodmagic:soul_forge>, [
    [<ore:powderMana>, null, <ore:powderMana>], 
    [<quark:sturdy_stone>, <ore:blockTin>, <quark:sturdy_stone>], 
    [<quark:sturdy_stone>, <ore:powderMana>, <quark:sturdy_stone>]
]);

//Blood Orbs
BloodAltar.removeRecipe(<minecraft:diamond>);
BloodAltar.removeRecipe(<minecraft:redstone_block>);
BloodAltar.removeRecipe(<minecraft:gold_block>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <minecraft:redstone_block>, 0, 2000, 2, 1);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <botania:manaresource:1>, 1, 5000, 5, 5);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}), <hwell:crystal_nether_block>, 2, 25000, 20, 20);

//Sacrifical Dagger
recipes.addShaped("age1/sacrificial_dagger", <bloodmagic:sacrificial_dagger>, [
    [null, null, <tconstruct:knife_blade>.withTag({Material: "bronze"})], 
    [null, <tconstruct:wide_guard>.withTag({Material: "obsidian"}), null], 
    [<tconstruct:tool_rod>.withTag({Material: "heavy_ingot"}), null, null]
]);

//Dagger of Sacrifice
BloodAltar.removeRecipe(<minecraft:iron_sword>);
BloodAltar.addRecipe(<bloodmagic:dagger_of_sacrifice>, <tconstruct:knife_blade>.withTag({Material: "silver"}), 1, 3000, 5, 5);

//Incense Altar
recipes.remove(<bloodmagic:incense_altar>);
recipes.addShaped("age1/incense_altar", <bloodmagic:incense_altar>, [
    [<ore:ingotAlubrass>, null, <ore:ingotAlubrass>], 
    [<ore:blockAlubrass>, <ore:runeFireB>, <ore:blockAlubrass>], 
    [<bloodmagic:blood_rune>, orbTier(1), <bloodmagic:blood_rune>]
]);

//Tartaric Gems
TartaricForge.removeRecipe([<minecraft:redstone>, <minecraft:gold_ingot>, <minecraft:glass>, <minecraft:dye:4>]);
TartaricForge.addRecipe(<bloodmagic:soul_gem:0>, [<ore:powderMana>, <ore:ingotTin>, <ore:blockGlass>, <ore:petalBlue>], 1, 1);
TartaricForge.removeRecipe([<bloodmagic:soul_gem:0>, <minecraft:diamond>, <minecraft:redstone_block>, <minecraft:lapis_block>]);
TartaricForge.addRecipe(<bloodmagic:soul_gem:1>, [<bloodmagic:soul_gem:0>, <ore:crystal>, <bloodmagic:blood_rune:0>, <hwell:asul_block>], 60, 20);
TartaricForge.removeRecipe([<bloodmagic:soul_gem:1>, <minecraft:diamond>, <minecraft:gold_block>, <bloodmagic:slate:2>]);
TartaricForge.addRecipe(<bloodmagic:soul_gem:2>, [<bloodmagic:soul_gem:1>, <bloodmagic:slate:2>, <ore:blockGold>, <ore:blockLapis>], 240, 50);


//Blood letters pack
recipes.remove(<bloodmagic:pack_self_sacrifice>);
recipes.addShaped("age1/pack_self_sacrifice", <bloodmagic:pack_self_sacrifice>, [
    [null, <tconstruct:knife_blade>.withTag({Material: "bronze"}), null], 
    [<ore:bVial>, <conarm:chestplate>, <ore:manaString>], 
    [null, <bloodmagic:slate:0>, null]
]);

//Coat of Arms
recipes.remove(<bloodmagic:pack_sacrifice>);
recipes.addShaped("age1/pack_sacrifice", <bloodmagic:pack_sacrifice>, [
    [null, <tconstruct:large_plate>.withTag({Material: "obsidian"}), null], 
    [<ore:bVial>, <conarm:chestplate>, <ore:manaString>], 
    [null, <bloodmagic:slate:1>, null]
]);

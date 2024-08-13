import crafttweaker.api.recipe.MirrorAxis;

//                          Crook
/////////////////////////////////////////////////////////////////////

//extra damage (but reduced speed) for wooden crook - serves as wooden sword replacement
<item:exnihilosequentia:wooden_crook>.addGlobalAttributeModifier(
  <attribute:minecraft:generic.attack_damage>, "CB3F55D3-645C-4F38-A497-9C13A33DB5CF", "Attack Damage", 
  3, <constant:minecraft:attribute/operation:addition>, [<constant:minecraft:equipmentslot:mainhand>]);
<item:exnihilosequentia:wooden_crook>.addGlobalAttributeModifier(
  <attribute:minecraft:generic.attack_speed>, "FA233E1C-4180-4865-B01B-BCCE9785ACA3", "Attack Speed", 
  2.0, <constant:minecraft:attribute/operation:addition>, [<constant:minecraft:equipmentslot:mainhand>]);


//extra damage (but reduced speed) for bone crook - serves as stone sword replacement
<item:exnihilosequentia:bone_crook>.addGlobalAttributeModifier(
  <attribute:minecraft:generic.attack_damage>, "CB3F55D3-645C-4F38-A497-9C13A33DB5CF", "Attack Damage", 
  4, <constant:minecraft:attribute/operation:addition>, [<constant:minecraft:equipmentslot:mainhand>]);
<item:exnihilosequentia:bone_crook>.addGlobalAttributeModifier(
  <attribute:minecraft:generic.attack_speed>, "FA233E1C-4180-4865-B01B-BCCE9785ACA3", "Attack Speed", 
  2.0, <constant:minecraft:attribute/operation:addition>, [<constant:minecraft:equipmentslot:mainhand>]);


//cheaper crook recipes for the beginning
recipes.remove(<item:exnihilosequentia:wooden_crook>);
craftingTable.addShapedMirrored("crafting/wooden_crook", MirrorAxis.HORIZONTAL, <item:exnihilosequentia:wooden_crook>, [
    [<item:minecraft:stick>, <item:minecraft:stick>],
    [<item:minecraft:air>, <item:minecraft:stick>],
]);
recipes.remove(<item:exnihilosequentia:bone_crook>);
craftingTable.addShapedMirrored("crafting/bone_crook", MirrorAxis.HORIZONTAL, <item:exnihilosequentia:bone_crook>, [
    [<item:minecraft:bone>, <item:minecraft:bone>],
    [<item:minecraft:air>, <item:minecraft:bone>],
]);

// dead bushes can be farmed with crooks (earlygame shear replacement)
addCrookHarvest("harvest/dead_bush", <item:minecraft:dead_bush>, [
  <item:minecraft:dead_bush> % 0.1, 
  <item:minecraft:stick> % 0.001,
]);

//                          Sifting
/////////////////////////////////////////////////////////////////////

// bambo comes from sand instead of dirt 
recipes.removeByName("exnihilosequentia:sifting/ens_bamboo");
addSifting("sifting/ens_bamboo", <item:minecraft:sand>, <item:minecraft:bamboo>, [
  siftingRoll("flint", 0.05),
]);

// glowstone and redstone may be sifted with flint mesh
recipes.removeByName("exnihilosequentia:sifting/ens_redstone");
recipes.removeByName("exnihilosequentia:sifting/ens_glowstone");
addSifting("sifting/ens_redstone", <item:exnihilosequentia:dust>, <item:minecraft:redstone>, [
  siftingRoll("flint", 0.125),
  siftingRoll("iron", 0.175),
  siftingRoll("diamond", 0.25),
]);
addSifting("sifting/ens_glowstone", <item:exnihilosequentia:dust>, <item:minecraft:glowstone_dust>, [
  siftingRoll("flint", 0.5),
  siftingRoll("iron", 0.0625),
]);

// higher drop chances for copper
recipes.removeByName("exnihilosequentia:sifting/ens_copper_pieces_gravel");
addSifting("sifting/ens_copper_pieces_gravel", <item:minecraft:gravel>, <item:exnihilosequentia:copper_pieces>, [
  siftingRoll("flint", 0.075),
  siftingRoll("iron", 0.1),
  siftingRoll("diamond", 0.15),
  siftingRoll("emerald", 0.25),
]);

// these materials are not available from siftiing:
recipes.removeByRegex("exnihilosequentia:sifting/ens_\\w*_sapling");  //all saplings
recipes.removeByRegex("exnihilosequentia:sifting/ens_\\w*_spores?");  //all spores
recipes.removeByName("exnihilosequentia:sifting/ens_sugar_cane");
recipes.removeByName("exnihilosequentia:sifting/ens_seed_grass");
recipes.removeByName("exnihilosequentia:sifting/ens_pebble_end_stone");
recipes.removeByName("exnihilosequentia:sifting/ens_ender_pearl");
recipes.removeByName("exnihilosequentia:sifting/ens_chorus_flower");
recipes.removeByName("exnihilosequentia:sifting/ens_ghast_tear");
recipes.removeByName("exnihilosequentia:sifting/ens_netherite_scrap");
recipes.removeByName("exnihilosequentia:sifting/ens_nether_wart");
recipes.removeByName("exnihilosequentia:sifting/ens_pebble_netherrack");

// unlocked in later ages:
recipes.removeByName("exnihilosequentia:sifting/ens_platinum_pieces_gravel");
recipes.removeByName("exnihilosequentia:sifting/ens_uranium_pieces_gravel");
recipes.removeByName("exnihilosequentia:sifting/ens_lead_pieces_gravel");
recipes.removeByName("exnihilosequentia:sifting/ens_iron_pieces_gravel");
recipes.removeByName("exnihilosequentia:sifting/ens_iron_pieces_sand");
recipes.removeByName("exnihilosequentia:sifting/ens_gold_pieces_gravel");
recipes.removeByName("exnihilosequentia:sifting/ens_gold_pieces_crushed_netherrack");
recipes.removeByName("exnihilosequentia:sifting/ens_silver_pieces_gravel");
recipes.removeByName("exnihilosequentia:sifting/ens_zinc_pieces_gravel");
recipes.removeByName("exnihilosequentia:sifting/ens_nickel_pieces_gravel");

recipes.removeByName("exnihilosequentia:sifting/ens_lapis_lazuli");
recipes.removeByName("exnihilosequentia:sifting/ens_diamond");
recipes.removeByName("exnihilosequentia:sifting/ens_emerald");
recipes.removeByName("exnihilosequentia:sifting/ens_blaze_powder");
recipes.removeByName("exnihilosequentia:sifting/ens_quartz");

//                             Barrel
/////////////////////////////////////////////////////////////////////

// remove recipes using witchwater
recipes.removeByName("exnihilosequentia:precipitate/ens_red_mushroom");
recipes.removeByName("exnihilosequentia:precipitate/ens_slime");
recipes.removeByName("exnihilosequentia:precipitate/ens_soul_soil");
recipes.removeByName("exnihilosequentia:precipitate/ens_soul_sand");
recipes.removeByName("exnihilosequentia:transition/ens_witch_water");

// do not allow creation of stones from other dimensions: 
recipes.removeByName("exnihilosequentia:precipitate/ens_netherrack");
recipes.removeByName("exnihilosequentia:precipitate/ens_end_stone");
recipes.removeByName("exnihilosequentia:precipitate/ens_brown_mushroom");

// unlocked in later age:
recipes.removeByName("exnihilosequentia:transition/ens_sea_water");


//                          Disabled Items
/////////////////////////////////////////////////////////////////////
disable(<item:exnihilosequentia:mycelium_spores>);
disable(<item:exnihilosequentia:crimson_nylium_spores>);
disable(<item:exnihilosequentia:warped_nylium_spores>);
disable(<item:exnihilosequentia:grass_seeds>);
disable(<item:exnihilosequentia:end_cake>);
disable(<item:exnihilosequentia:netherrack_pebble>);
disable(<item:exnihilosequentia:end_stone_pebble>);

// disable all dolls
mods.jeitweaker.Jei.hideIngredientsByRegex("exnihilosequentia:\\w*_doll");
crafttweaker.api.GenericRecipesManager.INSTANCE.removeByRegex("exnihilosequentia:\\w*_doll");

// disable all wooden crucibles
for i in <tag:items:exnihilosequentia:crucibles> {
  disable(i);
}

// disable witchwater
mods.jeitweaker.Jei.hideIngredientsByRegex("exnihilosequentia:witch_water\\w*");

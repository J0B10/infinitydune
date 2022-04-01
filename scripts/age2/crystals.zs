#priority 1
import mods.botania.ManaInfusion;
import mods.hwell;
import mods.botania.ElvenTrade;

//Mysterious mixture
recipes.remove(<hwell:leaf_mesh>);
recipes.addShapeless("age2/leaf_mesh", <hwell:leaf_mesh>, [
    <hwell:heavy_mesh>, 
    <hwell:myst_leaves>, <hwell:myst_leaves>, 
    <hwell:myst_dust>, <hwell:myst_dust>
]);

//Crystal Catalyst
recipes.remove(<hwell:crystal_catalyst>);
recipes.addShaped("age2/crystal_catalyst", <hwell:crystal_catalyst>, [
    [<hwell:shard_o>, <hwell:shard_p>, <hwell:shard_n>], 
    [<hwell:shard_h>, <hwell:leaf_mesh>, <hwell:shard_fe>], 
    [<hwell:shard_au>, <hwell:shard_c>, <hwell:shard_ca>]
]);

//Crystal crafting
furnace.remove(<hwell:crystal_block>);
ManaInfusion.addInfusion(<hwell:crystal>, <hwell:crystal_catalyst>, 3000);

//Nether portal crafting of crsytal blocks too
hwell.addNetherPortalRecipe(<hwell:crystal_block>, <hwell:crystal_nether_block>);

//Elven Crystal
//TODO Potentially age 3
ElvenTrade.addRecipe([<contenttweaker:crystal_elf_block>], [<hwell:crystal_block>]);
ElvenTrade.addRecipe([<contenttweaker:crystal_elf>], [<hwell:crystal>]);
recipes.addShapeless("age3/crystal_elf_block_decompress", <contenttweaker:crystal_elf> * 9, [<contenttweaker:crystal_elf_block>]);
recipes.addShaped("age3/crystal_elf_block", <contenttweaker:crystal_elf_block>, [
    [<contenttweaker:crystal_elf>, <contenttweaker:crystal_elf>, <contenttweaker:crystal_elf>], 
    [<contenttweaker:crystal_elf>, <contenttweaker:crystal_elf>, <contenttweaker:crystal_elf>], 
    [<contenttweaker:crystal_elf>, <contenttweaker:crystal_elf>, <contenttweaker:crystal_elf>]
]);

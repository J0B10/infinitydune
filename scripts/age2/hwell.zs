#priority 1
import scripts.utils.addCompressionRecipes;
import mods.astralsorcery.LightTransmutation;
import mods.botania.RuneAltar;
import mods.hwell.addTubeRecipe;
import mods.hwell.addMutationPasteRecipe;
import mods.extendedcrafting.TableCrafting;

//Starlight transmutation of Crystal Block to Raw Asul
recipes.remove(<hwell:raw_asul_block>);
LightTransmutation.addTransmutation(<hwell:crystal_block>, <hwell:raw_asul_block>, 50);

//Raw Soulsteel Block
addCompressionRecipes("raw_soulsteel", null, <hwell:raw_soulsteel>, <contenttweaker:raw_soulsteel_block>);
recipes.remove(<hwell:raw_soulsteel>);
furnace.remove(<hwell:soulsteel_ingot>);
recipes.addShaped("age2/raw_soulsteel", <hwell:raw_soulsteel> * 4, [
    [<ore:ingotHeavy>, <hwell:soul_dust>, <ore:ingotHeavy>], 
    [<hwell:soul_dust>, <liquid:liquid_souls> * 1000, <hwell:soul_dust>], 
    [<ore:ingotHeavy>, <hwell:soul_dust>, <ore:ingotHeavy>]
]);

//Additional Tube Recepies
addTubeRecipe(<contenttweaker:heavy_mesh_block>, <hwell:heavy_block>);
addTubeRecipe(<contenttweaker:raw_soulsteel_block>, <hwell:soulsteel_block>);

//Asul Machine Case
recipes.remove(<hwell:asul_machine_case>);
recipes.addShaped("age2/asul_machine_case", <hwell:asul_machine_case>, [
    [<ore:ingotAsul>, <ore:ingotAsul>, <ore:ingotAsul>], 
    [<ore:dustRedstone>, <ore:blockHeavy>, <ore:dustRedstone>], 
    [<ore:ingotAsul>, <ore:ingotAsul>, <ore:ingotAsul>]
]);

//Mutation Paste
recipes.addShapeless("age2/mutation_paste_block", <hwell:mutation_paste_block>, [
    <hwell:gaseous_sand>, <ore:blockClay>, <contenttweaker:raw_soulsteel_block>, <hwell:shard_h>
]);

//Mutator Recipes
addMutationPasteRecipe(<ore:mysticFlower>.items);
addMutationPasteRecipe(<ore:garden>.items);
addMutationPasteRecipe(<ore:listAllFishable>.items);

//Mystical Ore Puller
recipes.remove(<hwell:puller>);
TableCrafting.addShaped(0, <hwell:puller>, [
    [null, null, null, null, null], 
    [<hwell:antigravity_block>, <hwell:asul_machine_case>, <ore:runeEarthB>, <hwell:asul_machine_case>, <hwell:antigravity_block>], 
    [<hwell:heat_block>, <ore:ingotSoulsteel>, <hwell:crystal_catalyst>, <ore:ingotSoulsteel>, <hwell:heat_block>], 
    [<hwell:gravity_block>, <hwell:asul_machine_case>, <botania:lens:13>, <hwell:asul_machine_case>, <hwell:gravity_block>], 
    [null, null, <hwell:furnace_tube>, null, null]
]);

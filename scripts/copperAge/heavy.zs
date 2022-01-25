#priority 1
import crafttweaker.item.IItemStack;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;

//Disable burning in furnacne, smelting is required
furnace.remove(<hwell:heavy_ingot>);

//Heavy Mix Block compacting & decompacting
recipes.addShaped("age1/heavy_mesh_block", <contenttweaker:heavy_mesh_block>, [
	[<hwell:heavy_mesh>, <hwell:heavy_mesh>], 
	[<hwell:heavy_mesh>, <hwell:heavy_mesh>]
]);
recipes.addShapeless("age1/heavy_mesh_block_decompress", <hwell:heavy_mesh> * 4, [<contenttweaker:heavy_mesh_block>]);

//Melting and casting
Melting.addRecipe(<liquid:heavy_fluid> * 144,<hwell:heavy_mesh>, 612);
Melting.addRecipe(<liquid:heavy_fluid> * 144,<hwell:heavy_ingot>, 548);
Melting.addRecipe(<liquid:heavy_fluid> * 1296,<contenttweaker:heavy_mesh_block>, 812);
Melting.addRecipe(<liquid:heavy_fluid> * 1296,<hwell:heavy_block>, 789);
Melting.addRecipe(<liquid:heavy_fluid> * 16,<hwell:heavy_nugget>, 424);
Casting.addTableRecipe(<hwell:heavy_mesh>, null, <liquid:heavy_fluid>, 144);
Casting.addBasinRecipe(<hwell:heavy_block>, null, <liquid:heavy_fluid>, 1296, false, 240);
Casting.addTableRecipe(<hwell:heavy_ingot>, <tconstruct:cast_custom:0>, <liquid:heavy_fluid>, 144, false, 40);
Casting.addTableRecipe(<hwell:heavy_nugget>, <tconstruct:cast_custom:1>, <liquid:heavy_fluid>, 144 / 9, false, 20);

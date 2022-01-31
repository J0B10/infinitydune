#priority 1
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.data.IData;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.events.IEventManager;
import crafttweaker.event.BlockBreakEvent;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import moretweaker.jei.MoreJei;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityItem;
import crafttweaker.entity.IEntityDefinition;

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

//Heavy Mesh Ingot Cast crafting recipe
MoreJei.addDescription(<contenttweaker:heavy_mesh_cast>, [
	"A rudimental cast for getting started.", 
	"Breaks easily!"
]);
recipes.addShaped("age1/heavy_mesh_cast", <contenttweaker:heavy_mesh_cast> * 4, [
	[<hwell:heavy_mesh>, <hwell:heavy_mesh>, <hwell:heavy_mesh>],
	[<hwell:heavy_mesh>, null, <hwell:heavy_mesh>],
	[<hwell:heavy_mesh>, <hwell:heavy_mesh>, <hwell:heavy_mesh>]
]);

//Add recipes for Heavy Mesh Cast
val castingRecipes as IItemStack[ILiquidStack] = {
	<liquid:alubrass>: <tconstruct:ingots:5>,
	<liquid:aluminum>: <embers:ingot_aluminum>,
	<liquid:ardite>: <tconstruct:ingots:1>,
	<liquid:astral_starmetal>: <astralsorcery:itemcraftingcomponent:1>,
	<liquid:bronze>: <embers:ingot_bronze>,
	<liquid:clay>: <minecraft:brick>,
	<liquid:cobalt>: <tconstruct:ingots>,
	<liquid:constantan>: <immersiveengineering:metal:6>,
	<liquid:copper>: <embers:ingot_copper>,
	<liquid:dirt>: <tconstruct:materials:1>,
	<liquid:electrum>: <tconstruct:materials:1>,
	<liquid:gold>: <minecraft:gold_ingot>,
	<liquid:heavy_fluid>: <hwell:heavy_ingot>,
	<liquid:iron>: <minecraft:iron_ingot>,
	<liquid:knightslime>: <tconstruct:ingots:3>,
	<liquid:lead>: <embers:ingot_lead>,
	<liquid:manyullyn>: <tconstruct:ingots:2>,
	<liquid:nickel>: <embers:ingot_nickel>,
	<liquid:pigiron>: <tconstruct:ingots:4>,
	<liquid:silver>: <embers:ingot_silver>,
	<liquid:steel>: <immersiveengineering:metal:8>,
	<liquid:stone>: <tconstruct:materials:0>,
	<liquid:tin>: <embers:ingot_tin>,
	<liquid:uranium>: <immersiveengineering:metal:5>
};
for liquid, ingot in castingRecipes {
	Casting.addTableRecipe(ingot, <contenttweaker:heavy_mesh_cast>, liquid, 144, true, 80);
}

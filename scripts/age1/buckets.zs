#priority 1
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.MetalPress;
import mods.tconstruct.Casting;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

//Mold crafting recipe
Blueprint.addRecipe("molds", <contenttweaker:mold_bucket>, [
    <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:tool:1>
]);

val materials = {
    <minecraft:bucket> : <liquid:iron>,
    <morebuckets:aluminum_bucket> : <liquid:aluminum>,
    <morebuckets:copper_bucket> : <liquid:copper>,
    <morebuckets:tin_bucket> : <liquid:tin>,
    <morebuckets:rubber_bucket> : <liquid:heavy_fluid>,
    <morebuckets:silver_bucket> : <liquid:silver>,
    <morebuckets:bronze_bucket> : <liquid:bronze>,
    <morebuckets:steel_bucket> : <liquid:steel>,
    <morebuckets:ardite_bucket> : <liquid:ardite>,
    <morebuckets:cobalt_bucket> : <liquid:cobalt>,
    <morebuckets:manyullyn_bucket> : <liquid:manyullyn>,
    <morebuckets:golden_bucket> : <liquid:gold>, 
} as ILiquidStack[IItemStack];

for bucket in materials.keys {
    recipes.remove(bucket);
    if (!(<minecraft:bucket> has bucket)) {
        Casting.addTableRecipe(bucket, <tcomplement:cast>, materials[bucket], 3 * 144, false, 7*20);
        Casting.addTableRecipe(bucket, <tcomplement:cast_clay>, materials[bucket], 3 * 144, true, 7*20);
    }
    if (!(<morebuckets:rubber_bucket> has bucket)) {
        val liquidName = materials[bucket].definition.name;
        val ingot = "ingot" ~ liquidName.substring(0, 1).toUpperCase() ~ liquidName.substring(1);
        MetalPress.addRecipe(bucket, oreDict[ingot], <contenttweaker:mold_bucket>, 2000, 3);
    } else {
        MetalPress.addRecipe(bucket, <ore:ingotHeavy>, <contenttweaker:mold_bucket>, 2000, 3);
    }
}

#priority 1
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.MetalPress;
import mods.tconstruct.Casting;
import mods.bloodmagic.BloodAltar;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

//Mold crafting recipe
Blueprint.addRecipe("molds", <contenttweaker:mold_bucket>, [
    <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:tool:1>
]);

//Cast crafting recipes
Casting.addTableRecipe(<tcomplement:cast_clay>, <ore:listAllEmptyBucket>, <liquid:clay>, 288, true, 80);
Casting.addTableRecipe(<tcomplement:cast>, <ore:listAllEmptyBucket>, <liquid:gold>, 288, true, 60);
Casting.addTableRecipe(<tcomplement:cast>, <ore:listAllEmptyBucket>, <liquid:alubrass>, 144, true, 40);

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

val amount = {
    <morebuckets:aluminum_bucket> :1,
    <morebuckets:copper_bucket> : 1,
    <morebuckets:tin_bucket> : 1,
    <morebuckets:rubber_bucket> : 1,
    <morebuckets:silver_bucket> : 3,
    <morebuckets:golden_bucket> : 4, 
    <morebuckets:bronze_bucket> : 4,
    <morebuckets:steel_bucket> : 6,
    <morebuckets:ardite_bucket> : 9,
    <morebuckets:cobalt_bucket> : 9,
    <morebuckets:manyullyn_bucket> : 16,
} as int[IItemStack];

for bucket in amount.keys {
    val mb = (amount[bucket] * 1000);
    BloodAltar.addRecipe(bucket.withTag({FluidName: "lifeessence", Amount: mb}), bucket.withEmptyTag(), 0, mb, 5, 0);
}

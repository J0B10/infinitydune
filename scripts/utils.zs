#priority 10
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Disable item by removing crafting recipes and hiding
function disable(input as IItemStack) {
    recipes.remove(input);
    furnace.remove(input);
    mods.jei.JEI.removeAndHide(input);
}

// Disable all items in the given meta range by removing crafting recipes and hiding
function disableAll(input as IItemStack, metaFrom as int, metaTo as int) {
    for i in metaFrom to metaTo {
        disable(input.definition.makeStack(i));
    }
}


//helper method adding compression and decompression recipes for a material
function addCompressionRecipes(alias as string, nugget as IIngredient, ingot as IIngredient, block as IIngredient) {
    if (!isNull(nugget) && !isNull(ingot)) {
        recipes.addShapeless(alias ~ "_decompress", nugget.itemArray[0] * 9, [ingot]);
        recipes.addShaped(alias ~ "_compress_nugget", ingot.itemArray[0], [
            [nugget, nugget, nugget],
            [nugget, nugget, nugget],
            [nugget, nugget, nugget]
        ]);
    }    
    if (!isNull(ingot) && !isNull(block)) {
        recipes.addShapeless(alias ~ "_decompress_block", ingot.itemArray[0] * 9, [block]);
        recipes.addShaped(alias ~ "_compress", block.itemArray[0], [
            [ingot, ingot, ingot],
            [ingot, ingot, ingot],
            [ingot, ingot, ingot]
        ]);
    }
}

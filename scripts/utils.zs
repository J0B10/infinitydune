#priority 100

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.GenericRecipesManager;
import mods.jeitweaker.Jei;

// Disable item by removing crafting recipes and hiding
public function disable(input as IItemStack) as void {
    GenericRecipesManager.INSTANCE.remove(input);
    GenericRecipesManager.INSTANCE.removeByInput(input);
    Jei.hideIngredient(input);
}

public function disableMod(modId as string) as void {
    GenericRecipesManager.INSTANCE.removeByModid(modId);
    Jei.hideModIngredients(modId);
    loot.modifiers.removeByModId(modId);
}

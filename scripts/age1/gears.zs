#priority 1
import mods.immersiveengineering.MetalPress;

for entry in <ore:gear*> {
    recipes.remove(entry);
    if (oreDict has entry.name.replace("gear", "gem")) {
        val gem = oreDict[entry.name.replace("gear", "gem")];
        MetalPress.addRecipe(entry.firstItem, gem, <immersiveengineering:mold:1>, 2000, 3);
    } 
}

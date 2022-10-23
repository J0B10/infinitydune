#priority 200
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.CreativeTab;

# Creative Tab for all custom items
static creativeTab as CreativeTab = VanillaFactory.createCreativeTab("pack", <item:minecraft:sand>);
creativeTab.register();

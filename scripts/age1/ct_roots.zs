#priority 101
#loader contenttweaker
#ignoreBracketErrors
import mods.contenttweaker.tconstruct.MaterialBuilder;

//Cave Roots as Bowstring Material
val roots = MaterialBuilder.create("roots");
roots.color = 0xBC9862;
roots.craftable = true;
roots.castable = false;
roots.representativeItem = <item:quark:roots>;
roots.addItem(<item:quark:roots>);
roots.addItem(<item:quark:roots_white_flower>);
roots.addItem(<item:quark:roots_blue_flower>);
roots.addItem(<item:quark:roots_black_flower>);
roots.addBowStringMaterialStats(1);
roots.register();

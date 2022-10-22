#priority 100
#loader contenttweaker
#ignoreBracketErrors
import mods.contenttweaker.tconstruct.MaterialBuilder;

//Arrow Shaft Material
val myst_rod = MaterialBuilder.create("myst_rod");
myst_rod.color = 0xCDADF4;
myst_rod.craftable = true;
myst_rod.castable = false;
myst_rod.representativeItem = <item:hwell:myst_rod>;
myst_rod.addItem(<item:hwell:myst_rod>);
myst_rod.addArrowShaftMaterialStats(0.6, 3);
myst_rod.addMaterialTrait("mysterious", "shaft");
myst_rod.register();

#priority 100
#loader contenttweaker
#ignoreBracketErrors
import mods.contenttweaker.tconstruct.MaterialBuilder;

//Sisal as Arrow Fletching
val sisal = MaterialBuilder.create("sisal");
sisal.color = 0xC0D588;
sisal.craftable = true;
sisal.castable = false;
sisal.representativeItem = <item:harvestcraft:sisalitem>;
sisal.addItem(<item:harvestcraft:sisalitem>, 1, 36);
sisal.addFletchingMaterialStats(0.9, 1.25);
sisal.addBowStringMaterialStats(1);
sisal.register();

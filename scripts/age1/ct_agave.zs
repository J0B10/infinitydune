#priority 100
#loader contenttweaker
#ignoreBracketErrors
import mods.contenttweaker.tconstruct.MaterialBuilder;

//Agave as Arrow Fletching
val agave = MaterialBuilder.create("agave");
agave.color = 0x53BA74;
agave.craftable = true;
agave.castable = false;
agave.representativeItem = <item:harvestcraft:agaveitem>;
agave.addItem(<item:harvestcraft:agaveitem>, 1, 36);
agave.addFletchingMaterialStats(0.7, 2);
agave.register();

#priority 1
import crafttweaker.oredict.IOreDictEntry;
import mods.astralsorcery.Grindstone;

// Ores may not be smelt in a furnace
val outputs as string[] = [ "ingot", "gem", "dust" ];
for ore in <ore:ore*> {
    for type in outputs {
        var name = ore.name.replace("ore", type);
        if (oreDict has name) {
            furnace.remove(oreDict[name], ore);
            break;
        }
    }
}


// Grindstone should only have 0.25 chance to double most ores
val remove as string[] = [ 
    "dustLapis", "dustEmerald", "dustDiamond", "dustQuartz", "dustAquamarine" 
];
val skipp as string[] = [
    "dustAstralStarmetal", "dustCoal", "dustRedstone", "dustGlowstone"
];
for entry in <ore:ore*> {
    val dust = entry.name.replace("ore", "dust");
    if (!(skipp has dust) && (oreDict has dust)) {
        Grindstone.removeRecipe(oreDict[dust].firstItem);
        if (!(remove has dust)) {
            Grindstone.addRecipe(entry, oreDict[dust].firstItem, 0.25f);
        }
    }
}
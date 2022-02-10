#priority 1
import mods.botania.Orechid;

//Remove all ores
for ore in <ore:ore*> {
    Orechid.removeOre(ore);
}

//Add back Bronze age Ores
//(Rock Crystal, Glowstone, Redstone, Aluminium, Tin, Copper, Coal)
Orechid.addOre(<ore:oreRockCrystal>, 10);
Orechid.addOre(<ore:oreGlowstone>, 40);
Orechid.addOre(<ore:oreRedstone>, 70);
Orechid.addOre(<ore:embOreAluminium>, 60);
Orechid.addOre(<ore:embOreTin>, 80);
Orechid.addOre(<ore:embOreCopper>, 100);
Orechid.addOre(<ore:oreCoal>, 280);

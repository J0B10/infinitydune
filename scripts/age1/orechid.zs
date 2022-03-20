#priority 1
import mods.botania.Orechid;
import mods.botania.Apothecary;

//Modified Orechid Recipe

Apothecary.removeRecipe("orechid");
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "orechid"}), [
    <ore:petalGray>, <ore:petalGray>, <ore:petalYellow>, <ore:petalGreen>, <ore:petalRed>, 
    <ore:runeFireB>, <ore:runeEarthB>, <ore:redstoneRoot>, <ore:manaPearl>
]);


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

#priority 1
import scripts.customBlockDrops;
import crafttweaker.block.IBlock;
import mods.J0B10.tweaks.SpawnBox;
import mods.jei.JEI;

// Fake Sand
<botania:altgrass:5>.displayName = "Fake Sand";
customBlockDrops.add(<botania:altgrass:5>, [<minecraft:sand>]);
<botania:altgrass:5>.addTooltip("Looks like sand but tastes like dirt.");

val box = SpawnBox.create("village")
    .addSpawn(<entity:minecraft:husk>)
    .addSpawn(<entity:minecraft:zombie_villager>);
JEI.addItem(box.item(3, 8).withDisplayName("§6Village Spawn Box"));

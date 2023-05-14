import mods.J0B10.tweaks.SpawnBox;
import mods.jei.JEI;

// Spawn single villager zombie inside huts
val village_inside = SpawnBox.create("village_inside")
    .addSpawn(<entity:minecraft:zombie_villager>);
JEI.addItem(village_inside.item(1, 16).withDisplayName("§1Village Hut Spawn Box"));

//Spawn packs of husks on village roads or plazas
val village_outside = SpawnBox.create("village_outside")
    .addSpawn(<entity:minecraft:husk>);
JEI.addItem(village_outside.item(5, 16).withDisplayName("§6Village Road Spawn Box"));

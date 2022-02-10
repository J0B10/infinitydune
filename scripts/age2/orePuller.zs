#priority 1
import mods.hwell.addPullerRecipe;
import mods.hwell.removePullerRecipe;

//Remove existing recipes
removePullerRecipe(<minecraft:emerald_ore>);
removePullerRecipe(<minecraft:diamond_ore>);
removePullerRecipe(<hwell:quartz_ore>);

//Add new ores
addPullerRecipe(<embers:ore_quartz>, 8.0, <hwell:shard_ca>);
addPullerRecipe(<astralsorcery:blockcustomore>, 2.5, <hwell:shard_ca>);
addPullerRecipe(<embers:ore_silver>, 12.0, <hwell:shard_h>);
addPullerRecipe(<embers:ore_aluminum>, 15.0, <hwell:shard_h>);
addPullerRecipe(<embers:ore_nickel>, 12.0, <hwell:shard_n>);
addPullerRecipe(<embers:ore_tin>, 18.0, <hwell:shard_n>);
addPullerRecipe(<embers:ore_copper>, 25.0, <hwell:shard_fe>);

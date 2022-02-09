#priority 1
import mods.hwell;

//Disable unwanted crushing recipes
hwell.removeCrushingBlockRecipe(<hwell:locked_light>);
hwell.removeCrushingBlockRecipe(<hwell:crystal>);
hwell.removeCrushingBlockRecipe(<hwell:crystal_nether>);
hwell.removeCrushingBlockRecipe(<minecraft:cobblestone>);

//New shard recipes
hwell.addCrushingBlockRecipe(<minecraft:log:*>, [<hwell:shard_c>], [0.24]);
hwell.addCrushingBlockRecipe(<hwell:dust_block>, [<hwell:shard_fe>], [0.24]);
hwell.addCrushingBlockRecipe(<minecraft:sand>, [<hwell:shard_au>], [0.24]);
hwell.addCrushingBlockRecipe(<botania:flower:*>, [<hwell:shard_o>], [0.76]);
hwell.addCrushingBlockRecipe(<minecraft:dirt>, [<hwell:shard_h>], [0.24]);
hwell.addCrushingBlockRecipe(<astralsorcery:blockmarble>, [<hwell:shard_ca>], [0.24]);
hwell.addCrushingBlockRecipe(<minecraft:netherrack>, [<hwell:shard_p>], [0.24]);
hwell.addCrushingBlockRecipe(<minecraft:cactus>, [<hwell:shard_n>], [0.24]);

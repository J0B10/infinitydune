#priority 1
import mods.hwell;

//Disable unwanted crushing recipes
hwell.removeCrushingBlockRecipe(<hwell:locked_light>);
hwell.removeCrushingBlockRecipe(<hwell:crystal>);
hwell.removeCrushingBlockRecipe(<hwell:crystal_nether>);

//New shard recipes
hwell.addCrushingBlockRecipe(<hwell:dust_block>, [<hwell:shard_fe>], [0.24]);
hwell.addCrushingBlockRecipe(<minecraft:sand>, [<hwell:shard_au>], [0.24]);
hwell.addCrushingBlockRecipe(<minecraft:dirt>, [<hwell:shard_h>], [0.24]);
hwell.addCrushingBlockRecipe(<astralsorcery:blockmarble>, [<hwell:shard_ca>], [0.24]);
hwell.addCrushingBlockRecipe(<minecraft:netherrack>, [<hwell:shard_p>], [0.24]);
hwell.addCrushingBlockRecipe(<minecraft:cactus>, [<hwell:shard_n>], [0.24]);
hwell.addCrushingBlockRecipe(<minecraft:log2:0>, [<hwell:shard_c>], [0.24]);
hwell.addCrushingBlockRecipe(<minecraft:log2:1>, [<hwell:shard_c>], [0.24]);
for i in 0 to 3 {
    hwell.addCrushingBlockRecipe(<minecraft:log>.withDamage(i), [<hwell:shard_c>], [0.24]);
}
for flower in <ore:mysticFlower>.items {
    hwell.addCrushingBlockRecipe(flower, [<hwell:shard_o>], [0.76]);
}

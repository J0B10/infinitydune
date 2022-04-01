#priority 1
import mods.botania.RuneAltar;

//Rune of Water
RuneAltar.removeRecipe(<botania:rune:0>);
RuneAltar.addRecipe(<botania:rune:0>,[<ore:powderMana>, <ore:manaString>, <bloodmagic:slate:0>, <hwell:shard_o>, <ore:dustSalt>, <minecraft:fish>, <minecraft:reeds>], 5200);

//Rune of Fire
RuneAltar.removeRecipe(<botania:rune:1>);
RuneAltar.addRecipe(<botania:rune:1>,[<ore:powderMana>, <ore:manaString>, <bloodmagic:slate:0>, <hwell:shard_p>, <ore:dustGlowstone>, <minecraft:fire_charge>, <tconstruct:seared:3>], 5200);

//Rune of Earth
RuneAltar.removeRecipe(<botania:rune:2>);
RuneAltar.addRecipe(<botania:rune:2>,[<ore:powderMana>, <ore:manaString>, <bloodmagic:slate:0>, <hwell:shard_n>, <ore:dustRedstone>,  <ore:caveRootSprout>, <chisel:basalt2:7>], 5200);

//Rune of Air
RuneAltar.removeRecipe(<botania:rune:3>);
RuneAltar.addRecipe(<botania:rune:3>,[<ore:powderMana>, <ore:manaString>, <bloodmagic:slate:0>, <hwell:shard_ca>, <ore:gunpowder>, <minecraft:feather>, <ore:blockCarpet>], 5200);

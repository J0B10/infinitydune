#priority 100
#loader contenttweaker
import scripts.ct_global;
import mods.contenttweaker.VanillaFactory;

//Raw soulsteel block
val raw_soulsteel_block = VanillaFactory.createBlock("raw_soulsteel_block", <blockmaterial:Clay>);
raw_soulsteel_block.blockHardness = 0.55;
raw_soulsteel_block.creativeTab = ct_global.creativeTab;
raw_soulsteel_block.toolClass = "pickaxe";
raw_soulsteel_block.toolLevel = -1;
raw_soulsteel_block.register();
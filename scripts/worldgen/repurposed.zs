#priority 1
import scripts.customBlockDrops;
import crafttweaker.block.IBlock;

// Fake Sand
<botania:altgrass:5>.displayName = "Fake Sand";
customBlockDrops.add(<botania:altgrass:5>, [<minecraft:sand>]);
<botania:altgrass:5>.addTooltip("Looks like sand but tastes like dirt.");

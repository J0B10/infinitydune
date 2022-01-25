#priority 1
import scripts.customBlockDrops;
import crafttweaker.block.IBlock;

//Cactus should drop fruits
customBlockDrops.add(<minecraft:cactus>, [
    (<harvestcraft:cactusfruititem> * 3) % 17,
    (<harvestcraft:cactusfruititem> * 2) % 17,
    <minecraft:cactus> % 66,
]);
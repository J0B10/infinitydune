#priority 10
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.event.BlockHarvestDropsEvent;

// map holding all drops
static customDrops as WeightedItemStack[][string] = {};

//helper methoid creating a blockstring from block for robust matching
function blockString(block as IBlock) as string {
    return block.definition.id ~ ":" ~ block.meta;
}

// register drop event handler
events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
    val block = blockString(event.block);
    if (customDrops.keys has block) {
        event.dropChance = 1.0;
        event.drops = customDrops[block];
    }
});

// add custom drops for the given block
function add(block as IBlock, drops as WeightedItemStack[]) {
    customDrops[blockString(block)] = drops;
}

// remove all registered custom drops for the given block
function remove(block as IBlock) {
    val drops as WeightedItemStack[] = []; 
    customDrops[blockString(block)] = drops;
}

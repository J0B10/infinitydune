#priority 1
import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingDeathDropsEvent;
import crafttweaker.entity.IEntityItem;

static blacklist as string[] = [
    "minecraft:iron_ingot",
    "minecraft:iron_sword",
    "minecraft:iron_axe",
    "minecraft:gold_ingot",
    "minecraft:gold_nugget",
    "minecraft:golden_sword"
];

events.onEntityLivingDeathDrops(function(event as EntityLivingDeathDropsEvent) {
    var overwriteDrops = [] as IEntityItem[];
    for itemEntity in event.drops {
        if (!(blacklist has itemEntity.item.definition.id)) {
            overwriteDrops += itemEntity;
        }
    }
    if (overwriteDrops.length != event.drops.length) {
        event.drops = overwriteDrops;
    }
});

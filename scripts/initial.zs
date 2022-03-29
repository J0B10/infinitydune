#priority 1
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerAdvancementEvent;
import crafttweaker.item.IItemStack;
import scripts.akashic.item as akashic_tome;

//Items that will be given to the player on startup
static items as IItemStack[] = [
    akashic_tome
];

//Event handler that is triggered if root advancment is achived (e.g. first join)
events.onPlayerAdvancement(function(event as PlayerAdvancementEvent) {
    if (event.id == "infinitydune:root") {
        for item in items {
            event.player.give(item);
        }
    }
});

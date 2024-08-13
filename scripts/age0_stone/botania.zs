//                          Pure Daisy
/////////////////////////////////////////////////////////////////////

//Dead Bush -> Sappling
addPureDaisyRecipe("pure_daisy/sapling", <block:minecraft:dead_bush>, <block:minecraft:acacia_sapling>, 40);

//Sand -> Dirt
addPureDaisyRecipe("pure_daisy/dirt", <block:minecraft:sand>, <block:minecraft:dirt>, 240);

//Dirt -> Grass
addPureDaisyRecipe("pure_daisy/grass", <block:minecraft:dirt>, <block:minecraft:grass_block>, 1000);

//                          Disabled Items
/////////////////////////////////////////////////////////////////////
disable(<item:botania:living_root>);
disable(<item:botania:root>);
disable(<item:botania:pebble>);


//                    Delete any created pebbles
/////////////////////////////////////////////////////////////////////
import crafttweaker.forge.api.event.entity.EntityJoinLevelEvent;
import crafttweaker.api.entity.type.item.ItemEntity;
import crafttweaker.api.item.IItemStack;
import mods.jeitweaker.Jei;

//pebbles are not allowed to exist
events.register<EntityJoinLevelEvent>((event) => {
    if (event.entity.type == <entitytype:minecraft:item>) {
        val entity = event.entity as ItemEntity ;
        if (entity.item.matches(<item:botania:pebble>)) {
            event.cancel();
        }
    }
});


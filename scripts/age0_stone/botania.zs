//                          Pure Daisy
/////////////////////////////////////////////////////////////////////

//Dead Bush -> Sappling
recipes.addJsonRecipe("pure_daisy/sapling", {
  type: "botania:pure_daisy",
  input: {
    type: "block",
    block: "minecraft:dead_bush"
  },
  output: {
    name: "minecraft:acacia_sapling"
  },
  time: 40,
});

//Sand -> Dirt
recipes.addJsonRecipe("pure_daisy/dirt", {
  type: "botania:pure_daisy",
  input: {
    type: "block",
    block: "minecraft:sand"
  },
  output: {
    name: "minecraft:dirt"
  },
  time: 240,
});

//Dirt -> Grass
recipes.addJsonRecipe("pure_daisy/grass", {
  type: "botania:pure_daisy",
  input: { 
    type: "block", 
    block: "minecraft:dirt"
  },
  output: { 
    name: "minecraft:grass_block"
  },
  time: 1000,
});

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


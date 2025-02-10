import crafttweaker.api.recipe.MirrorAxis;

// Floral obedience stick should be cheap
craftingTable.removeByName("botania:obedience_stick");
craftingTable.addShapedMirrored("crafting/obedience_stick", MirrorAxis.HORIZONTAL, <item:botania:obedience_stick>, [
    [<item:minecraft:air>, <item:minecraft:air>, <tag:items:botania:mana_dusts>], 
    [<item:minecraft:air>, <tag:items:botania:livingwood_twig>, <item:minecraft:air>], 
    [<tag:items:botania:livingwood_twig>, <item:minecraft:air>, <item:minecraft:air>]
]);

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

//pebbles are not allowed to exist
disable(<item:botania:pebble>);
<tag:blocks:gardenofglass:pebble_sources>.clear();

//             Fill water bowl in Fired Crucible
/////////////////////////////////////////////////////////////////////
import mods.jeitweaker.Jei;
import crafttweaker.api.text.Component;
import crafttweaker.forge.api.event.interact.RightClickBlockEvent;

val waterBowl = <item:botania:water_bowl>.withTag({Fluid: {FluidName: "minecraft:water", Amount: 1000}});

Jei.addIngredientInformation(<item:botania:water_bowl>, Component.literal("Bowls may hold 1000mb of water." 
    + "\n\nThey can be filled at water sources or the Fired Crucible."));


events.register<RightClickBlockEvent>((event) => {
    val item = event.itemStack;
    if (!<item:minecraft:bowl>.matches(item)) {
        return;
    }
    val world = event.entity.commandSenderWorld;
    val state = world.getBlockState(event.blockPos);
    if (<blockstate:exnihilosequentia:fired_crucible> != state) {
        return;
    }
    val blockEntity = world.getBlockEntity(event.blockPos);
    val data = blockEntity.data;
    if (data["tank"]["FluidName"] != "minecraft:water") {
        return;
    }
    val amount = data["tank"]["Amount"];
    if (amount < 1000) {
        return;
    }
    data["tank"]["Amount"] = amount - 1000;
    print(data.asString());
    blockEntity.updateData(data);
    print(blockEntity.data.asString());
    if (item.amount > 1) {
        event.entity.setItemInHand(<constant:minecraft:interactionhand:main_hand>, item.copy().shrink(1));
        event.entity.addItem(waterBowl.copy());
    } else {
        event.entity.setItemInHand(<constant:minecraft:interactionhand:main_hand>, waterBowl.copy());
    }
});

#priority 1
import crafttweaker.item.IItemStack;
import mods.tconstruct.Melting;

// New grout recipes
recipes.remove(<tconstruct:soil>);
recipes.addShapeless("age1/grout_2", <tconstruct:soil> * 2, [<hwell:heavy_mesh>, <ore:gravel>, <ore:sand>,]);
recipes.addShaped("age1/grout_8", <tconstruct:soil> * 8, [
    [<ore:gravel>, <ore:sand>, <ore:gravel>], 
    [<ore:sand>, <contenttweaker:heavy_mesh_block>, <ore:sand>], 
    [<ore:gravel>, <ore:sand>, <ore:gravel>]
]);

// Seared stone directly from grout
furnace.remove(<tconstruct:materials:0>);
furnace.addRecipe(<tconstruct:seared>, <tconstruct:soil>);

// Higher yields from grout in smeltery
Melting.removeRecipe(<liquid:stone>, <tconstruct:soil>);
Melting.addRecipe(<liquid:stone> * (144 * 2), <tconstruct:soil>, 415);

// Smeltery Drain
recipes.remove(<tconstruct:smeltery_io>);
recipes.addShaped("age1/smeltery/drain", <tconstruct:smeltery_io>, [
    [<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>], 
    [<ore:blockSeared>, null, <ore:blockSeared>], 
    [<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>]
]);

// Smeltery Faucet
recipes.remove(<tconstruct:faucet>);
recipes.addShaped("age1/smeltery/faucet", <tconstruct:faucet>, [
    [null, null, null], 
    [<ore:blockSeared>, null, <ore:blockSeared>], 
    [null, <ore:blockSeared>, null]
]);

// Smeltery Channel
recipes.remove(<tconstruct:channel>);
recipes.addShaped("age1/smeltery/channel", <tconstruct:channel>, [
    [null, null, null], 
    [<ore:blockSeared>, null, <ore:blockSeared>], 
    [<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>]
]);

// Smeltery Casting Table
recipes.remove(<tconstruct:casting>);
recipes.addShaped("age1/smeltery/casting_table", <tconstruct:casting>, [
    [<ore:blockSeared>, <contenttweaker:heavy_mesh_cast>, <ore:blockSeared>], 
    [<ore:blockSeared>, null, <ore:blockSeared>], 
    [<ore:blockSeared>, null, <ore:blockSeared>]
]);

// Smeltery Casting Basin
recipes.remove(<tconstruct:casting:1>);
recipes.addShaped("age1/smeltery/casting_basin", <tconstruct:casting:1>, [
    [<ore:blockSeared>, null, <ore:blockSeared>], 
    [<ore:blockSeared>, null, <ore:blockSeared>], 
    [<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>]
]);

// Smeltery Tank
recipes.remove(<tconstruct:seared_tank>);
recipes.addShaped("age1/smeltery/tank", <tconstruct:seared_tank>, [
    [<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>], 
    [<ore:blockSeared>, <ore:blockGlassColorless>, <ore:blockSeared>], 
    [<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>]
]);

// Smeltery Controller
recipes.remove(<minecraft:fire_charge>);
recipes.addShapeless("age1/fire_charge", <minecraft:fire_charge>, [<ore:gunpowder>, <minecraft:flint>, <minecraft:coal:*>]);
recipes.remove(<tconstruct:smeltery_controller>);
recipes.addShaped("age1/smeltery/controller", <tconstruct:smeltery_controller>, [
	[<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>], 
	[<astralsorcery:blockblackmarble:1>, <minecraft:fire_charge>, <astralsorcery:blockblackmarble:1>], 
	[<ore:blockSeared>, <ore:powderMana>, <ore:blockSeared>]
]);

// Seared Tank
recipes.remove(<tconstruct:tinker_tank_controller>);
recipes.addShaped("age1/seared_tank_controller", <tconstruct:tinker_tank_controller>, [
	[<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>], 
	[<astralsorcery:blockblackmarble:1>, <morebuckets:copper_bucket>, <astralsorcery:blockblackmarble:1>], 
	[<ore:blockSeared>, <ore:powderMana>, <ore:blockSeared>]
]);

// Seared Furnace
recipes.remove(<tconstruct:seared_furnace_controller>);
recipes.addShaped("age1/seared_furnce_controller", <tconstruct:seared_furnace_controller>, [
	[<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>], 
	[<astralsorcery:blockblackmarble:1>, <minecraft:furnace>, <astralsorcery:blockblackmarble:1>], 
	[<ore:blockSeared>, <ore:powderMana>, <ore:blockSeared>]
]);

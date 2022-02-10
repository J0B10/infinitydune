#priority 1
import mods.extendedcrafting.TableCrafting;

//Tiny Chest
recipes.remove(<colossalchests:uncolossal_chest>);
recipes.addShapeless("age1/uncolossal", <colossalchests:uncolossal_chest> * 8, [<minecraft:chest>]);

//Colossal Chest Interface
recipes.remove(<colossalchests:interface>);
recipes.addShaped("age1/colossal_interface", <colossalchests:interface>, [
    [<tconstruct:wooden_hopper>], 
    [<colossalchests:chest_wall>], 
]);

//Colossal Chest Wall
recipes.remove(<colossalchests:chest_wall>);
recipes.addShaped("age1/colossal_wall", <colossalchests:chest_wall>, [
	[<astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>], 
	[<astralsorcery:blockinfusedwood>, null, <astralsorcery:blockinfusedwood>], 
	[<astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>]
]);

//Colossal Chest Core
recipes.remove(<colossalchests:colossal_chest>);
TableCrafting.addShaped(0, <colossalchests:colossal_chest>, [
    [<astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>], 
    [<astralsorcery:blockinfusedwood>, null, null, null, <astralsorcery:blockinfusedwood>], 
    [<astralsorcery:blockinfusedwood>, null, <storagedrawers:controller>, null, <astralsorcery:blockinfusedwood>], 
    [<astralsorcery:blockinfusedwood>, null, null, null, <astralsorcery:blockinfusedwood>], 
    [<astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>, <astralsorcery:blockinfusedwood>]
]);

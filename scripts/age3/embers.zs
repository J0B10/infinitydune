#priority 1

//Item Vacuum
recipes.remove(<embers:vacuum>);
recipes.addShaped("age3/vacuum", <embers:vacuum>, [
    [<ore:ingotNickel>, null, <ore:ingotNickel>], 
    [<ore:ingotNickel>, <botania:specialflower>, <ore:ingotNickel>], 
    [null, <embers:item_pipe>, null]
]);

//Automatic Breaker
recipes.remove(<embers:breaker>);
recipes.addShaped("age3/breaker", <embers:breaker>, [
    [<ore:plateIron>, <ore:gearIron>, <ore:plateIron>], 
    [<ore:ingotNickel>, <embers:mech_core>, <ore:ingotNickel>], 
    [<ore:ingotNickel>, <ore:dustRedstone>, <ore:ingotNickel>]
]);

//Item Transfer
recipes.remove(<embers:item_transfer>);
recipes.addShaped("age3/item_transfer", <embers:item_transfer>, [
    [<ore:plateNickel>, <embers:item_pipe>, <ore:plateNickel>], 
    [<ore:ingotNickel>, <embers:item_pipe>, <ore:ingotNickel>], 
    [<ore:ingotNickel>, null, <ore:ingotNickel>]
]);

//Item Pipe
recipes.remove(<embers:item_pipe>);
recipes.addShaped("age3/item_pipe",<embers:item_pipe>, [
    [<ore:ingotNickel>, <ore:plateNickel>, <ore:ingotNickel>]
]);

//Cinder Plinth
recipes.remove(<embers:cinder_plinth>);
recipes.addShaped("age3/cinder_plinth", <embers:cinder_plinth>, [
    [null, <ore:plateNickel>, null], 
    [<ore:ingotSilver>, <minecraft:furnace>, <ore:ingotSilver>], 
    [<ore:plateNickel>, <embers:block_caminite_brick>, <ore:plateNickel>]
]);

//Mechanical Core
recipes.remove(<embers:mech_core>);
recipes.addShaped("age3/mech_core", <embers:mech_core>, [
    [<ore:ingotIron>, <ore:powderMana>, <ore:ingotIron>], 
    [<ore:dustRedstone>, <ore:gearNickel>, <ore:dustRedstone>], 
    [<ore:ingotIron>, <ore:powderMana>, <ore:ingotIron>]
]);

val bloodAltar = <recipetype:bloodmagic:altar>;

//                         Blood Orbs
/////////////////////////////////////////////////////////////////////

bloodAltar.removeByName("bloodmagic:altar/weakbloodorb");
addBloodAltar("blood_altar/weakbloodorb", 0, <tag:items:forge:storage_blocks/redstone>, <item:bloodmagic:weakbloodorb>, {
    altarSyphon: 2000,
    consumptionRate: 2,
    drainRate: 0,
});

bloodAltar.removeByName("bloodmagic:altar/apprenticebloodorb");
addBloodAltar("blood_altar/apprenticebloodorb", 1, <item:botania:mana_pearl>, <item:bloodmagic:apprenticebloodorb>, {
    altarSyphon: 5000,
    consumptionRate: 5,
    drainRate: 5,
});

bloodAltar.removeByName("bloodmagic:altar/magicianbloodorb");
addBloodAltar("blood_altar/magicianbloodorb", 2, <tag:items:forge:storage_blocks/lapis>, <item:bloodmagic:magicianbloodorb>, {
    altarSyphon: 25000,
    consumptionRate: 20,
    drainRate: 20,
});

// Disable higher tiers to lock progression for now
// TODO: remove once supported
disable(<item:bloodmagic:masterbloodorb>);
disable(<item:bloodmagic:archmagebloodorb>);
disable(<item:bloodmagic:largebloodstonebrick>);

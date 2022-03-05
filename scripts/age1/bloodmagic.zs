#priority 1

//Rudimentary snare
recipes.remove(<bloodmagic:soul_snare>);
recipes.addShaped("age1/soul_snare", <bloodmagic:soul_snare> * 8, [
    [null, <ore:manaString>, <ore:manaString>], 
    [null, <hwell:shard_ca>, <ore:manaString>], 
    [<ore:manaString>, null, null]
]);

//Blood Altar
recipes.remove(<bloodmagic:altar>);
recipes.addShaped("age1/blood_altar", <bloodmagic:altar>, [
    [<ore:slimeballBlood>, <ore:blockHearthWellNetherCrystal>, <ore:slimeballBlood>], 
    [<quark:sturdy_stone>, <astralsorcery:blockaltar:1>, <quark:sturdy_stone>], 
    [<quark:sturdy_stone>, <bloodmagic:monster_soul>, <quark:sturdy_stone>]
]);

//Hellfire Forge
recipes.remove(<bloodmagic:soul_forge>);
recipes.addShaped("age1/soul_forge", <bloodmagic:soul_forge>, [
	[<ore:powderMana>, null, <ore:powderMana>], 
	[<quark:sturdy_stone>, <ore:blockTin>, <quark:sturdy_stone>], 
	[<quark:sturdy_stone>, <ore:powderMana>, <quark:sturdy_stone>]
]);

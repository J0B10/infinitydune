val runic_altar = <recipetype:botania:runic_altar>;

//                          Runes
/////////////////////////////////////////////////////////////////////

runic_altar.removeByName("botania:runic_altar/spring");
addRunicAltar("runic_altar/spring", <item:botania:rune_spring>, 12000, [
    <item:botania:rune_water>, <item:botania:rune_fire>, <tag:items:forge:ingots/manasteel>,
    <item:minecraft:dandelion>, <item:minecraft:poppy>, <item:bloodmagic:reinforcedslate>
]);

runic_altar.removeByName("botania:runic_altar/summer");
addRunicAltar("runic_altar/summer", <item:botania:rune_summer>, 12000, [
    <item:botania:rune_earth>, <item:botania:rune_air>, <tag:items:forge:ingots/manasteel>,
    <item:minecraft:glistering_melon_slice>, <item:minecraft:sugar>, <item:bloodmagic:reinforcedslate>
]);

runic_altar.removeByName("botania:runic_altar/autumn");
addRunicAltar("runic_altar/autumn", <item:botania:rune_autumn>, 12000, [
    <item:botania:rune_fire>, <item:botania:rune_air>, <tag:items:forge:ingots/manasteel>,
    <tag:items:minecraft:leaves>, <tag:items:minecraft:leaves>, <item:bloodmagic:reinforcedslate>
]);

runic_altar.removeByName("botania:runic_altar/winter");
addRunicAltar("runic_altar/winter", <item:botania:rune_winter>, 12000, [
    <item:botania:rune_water>, <item:botania:rune_earth>, <tag:items:forge:ingots/manasteel>,
    <item:minecraft:snow_block>, <item:minecraft:packed_ice>, <item:bloodmagic:reinforcedslate>
]);

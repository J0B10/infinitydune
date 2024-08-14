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


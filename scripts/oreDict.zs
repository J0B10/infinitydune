#priority 9

//Carpet
for i in 0 to 15 {
    <ore:blockCarpet>.add(<minecraft:carpet>.withDamage(i));
}


//Empty BBuckets
<ore:listAllEmptyBucket>.add(<minecraft:bucket>);
<ore:listAllEmptyBucket>.add(<morebuckets:aluminum_bucket>);
<ore:listAllEmptyBucket>.add(<morebuckets:copper_bucket>);
<ore:listAllEmptyBucket>.add(<morebuckets:tin_bucket>);
<ore:listAllEmptyBucket>.add(<morebuckets:rubber_bucket>);
<ore:listAllEmptyBucket>.add(<morebuckets:silver_bucket>);
<ore:listAllEmptyBucket>.add(<morebuckets:bronze_bucket>);
<ore:listAllEmptyBucket>.add(<morebuckets:steel_bucket>);
<ore:listAllEmptyBucket>.add(<morebuckets:ardite_bucket>);
<ore:listAllEmptyBucket>.add(<morebuckets:cobalt_bucket>);
<ore:listAllEmptyBucket>.add(<morebuckets:manyullyn_bucket>);
<ore:listAllEmptyBucket>.add(<morebuckets:golden_bucket>);

//Polished Stone
<ore:stonePolished>.add(<chisel:stonebrick2:9>);

//Bookshelfs
<ore:bookshelf>.add(<minecraft:bookshelf>);

//Rock Crystal
<ore:rockCrystal>.add(<astralsorcery:itemrockcrystalsimple>);
<ore:rockCrystal>.add(<astralsorcery:itemtunedrockcrystal>);
<ore:celestialCrystal>.add(<astralsorcery:itemcelestialcrystal>);
<ore:celestialCrystal>.add(<astralsorcery:itemtunedcelestialcrystal>);
<ore:tunedcrystal>.add(<astralsorcery:itemtunedrockcrystal>);
<ore:tunedcrystal>.add(<astralsorcery:itemtunedcelestialcrystal>);
<ore:crystal>.addAll(<ore:rockCrystal>);
<ore:crystal>.addAll(<ore:celestialCrystal>);

//Rock Crystal ore
<ore:oreRockCrystal>.add(<astralsorcery:blockcustomore>);

//Embers ores
<ore:embOreCopper>.add(<embers:ore_copper>);
<ore:embOreLead>.add(<embers:ore_lead>);
<ore:embOreSilver>.add(<embers:ore_silver>);
<ore:embOreQuartz>.add(<embers:ore_quartz>);
<ore:embOreAluminium>.add(<embers:ore_aluminum>);
<ore:embOreNickel>.add(<embers:ore_nickel>);
<ore:embOreTin>.add(<embers:ore_tin>);

//Mystic Flowers
for i in 0 to 15 {
    <ore:mysticFlower>.add(<botania:flower>.withDamage(i));
}

//Sprouts
for i in 0 to 3 {
    <ore:caveRootSprout>.add(<quark:root_flower>.withDamage(i));
}
<ore:caveRoot>.addAll(<ore:caveRootSprout>);

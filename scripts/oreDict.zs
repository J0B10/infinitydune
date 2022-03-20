#priority 9

//Carpet
for i in 0 to 15 {
    <ore:blockCarpet>.add(<minecraft:carpet>.withDamage(i));
}

<ore:soulGemPetty>.add(<bloodmagic:soul_gem:0>);

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

//Sprouts
for i in 0 to 3 {
    <ore:caveRootSprout>.add(<quark:root_flower>.withDamage(i));
}
<ore:caveRoot>.addAll(<ore:caveRootSprout>);

#priority 9

//Carpet
for i in 0 to 15 {
    <ore:blockCarpet>.add(<minecraft:carpet>.withDamage(i));
}

//Bookshelfs
<ore:bookshelf>.add(<minecraft:bookshelf>);

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

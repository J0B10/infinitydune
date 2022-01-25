#priority 100
#loader contenttweaker
import scripts.ct_global;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.ResourceLocation;

// Fake Sand, does look like sand but act like dirt (removed, did not work)
// val sand_fake = VanillaFactory.createBlock("sand_fake", <blockmaterial:Grass>);
// sand_fake.blockHardness = 0.5;
// sand_fake.blockResistance = 0.5;
// sand_fake.blockSoundType = <soundtype:Sand>;
// sand_fake.creativeTab = ct_global.creativeTab;
// sand_fake.gravity = true;
// sand_fake.toolClass = "shovel";
// sand_fake.toolLevel = 0;
// sand_fake.textureLocation = ResourceLocation.create("minecraft:blocks/sand");
// sand_fake.setDropHandler(function(drops, world, position, state, fortune) {
// 	drops.clear();
// 	drops + <item:minecraft:sand>;
// 	return;
// });
// sand_fake.register();

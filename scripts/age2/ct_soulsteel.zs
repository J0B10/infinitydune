#priority 104
#loader contenttweaker
#ignoreBracketErrors
import scripts.ct_global;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.tconstruct.TraitBuilder;
import mods.contenttweaker.Random;
import mods.contenttweaker.Color;

//Raw soulsteel block
val raw_soulsteel_block = VanillaFactory.createBlock("raw_soulsteel_block", <blockmaterial:Clay>);
raw_soulsteel_block.blockHardness = 0.55;
raw_soulsteel_block.creativeTab = ct_global.creativeTab;
raw_soulsteel_block.toolClass = "pickaxe";
raw_soulsteel_block.toolLevel = -1;
raw_soulsteel_block.register();

//Fluid
var soulsteel_fluid  = VanillaFactory.createFluid("soulsteel", Color.fromHex("A88BB1"));
soulsteel_fluid.density = 2000;
soulsteel_fluid.temperature = 700;
soulsteel_fluid.viscosity = 10000;
soulsteel_fluid.material = <blockmaterial:Lava>;
soulsteel_fluid.stillLocation = "tconstruct:blocks/fluids/molten_metal";
soulsteel_fluid.flowingLocation = "tconstruct:blocks/fluids/molten_metal_flow";
soulsteel_fluid.register();

//Mysterious Material Trait
val mysterious = TraitBuilder.create("mysterious");
mysterious.color = 0x58DFE6;
mysterious.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    val myst_dmg = (target.world.random.nextFloat(0.8, 1.3) * newDamage);
    if (myst_dmg > newDamage) return myst_dmg;
    else return newDamage;
};
mysterious.register();

//TC Material
val soulsteel_mat = MaterialBuilder.create("soulsteel");
soulsteel_mat.color = 0xC8ADD1;
soulsteel_mat.hidden = false;
soulsteel_mat.liquid = <liquid:soulsteel>;
soulsteel_mat.craftable = false;
soulsteel_mat.castable = true;
soulsteel_mat.representativeItem = <item:hwell:soulsteel_ingot>;
soulsteel_mat.addItem(<item:hwell:soulsteel_ingot>, 144);
soulsteel_mat.addItem(<item:hwell:soulsteel_block>, 144 * 9);
soulsteel_mat.addItem(<item:hwell:soulsteel_nugget>, 144 / 9);
soulsteel_mat.addHeadMaterialStats(480, 6.0, 3.8f, 2);
soulsteel_mat.addHandleMaterialStats(0.7f, 70);
soulsteel_mat.addExtraMaterialStats(100);
soulsteel_mat.addMaterialTrait("mysterious", "head");
soulsteel_mat.addMaterialTrait("writable1", "head");
soulsteel_mat.addMaterialTrait("writable1", "handle");
soulsteel_mat.addMaterialTrait("writable1", "extra");
soulsteel_mat.register();

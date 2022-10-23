#priority 105
#loader contenttweaker
//Suppress bracket errors caused by <item:hwell:heavy_mesh>
#ignoreBracketErrors
import scripts.ct_global;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.conarm.ExtendedMaterialBuilder;
import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;

//Heavy mix lump block, for grout crafting
val heavy_mesh_block = VanillaFactory.createBlock("heavy_mesh_block", <blockmaterial:Clay>);
heavy_mesh_block.blockHardness = 1.5;
heavy_mesh_block.blockResistance = 6;
heavy_mesh_block.blockSoundType = <soundtype:Ground>;
heavy_mesh_block.creativeTab = ct_global.creativeTab;
heavy_mesh_block.toolClass = "shovel";
heavy_mesh_block.toolLevel = 1;
heavy_mesh_block.register();

//Fluid
var heavy_fluid  = VanillaFactory.createFluid("heavy_fluid", Color.fromHex("4D4E58"));
heavy_fluid.density = 3000;
heavy_fluid.temperature = 700;
heavy_fluid.viscosity = 10000;
heavy_fluid.material = <blockmaterial:Lava>;
heavy_fluid.register();

//TC Material
val heavy_mat = ExtendedMaterialBuilder.create("heavy_ingot");
heavy_mat.color = 0x4D4E58;
heavy_mat.hidden = false;
heavy_mat.liquid = <liquid:heavy_fluid>;
heavy_mat.craftable = false;
heavy_mat.castable = true;
heavy_mat.representativeItem = <item:hwell:heavy_mesh>;
heavy_mat.addItem(<item:hwell:heavy_mesh>, 144);
heavy_mat.addItem(<item:hwell:heavy_ingot>, 144);
heavy_mat.addItem(<item:hwell:heavy_block>, 144 * 9);
heavy_mat.addItem(<item:hwell:heavy_nugget>, 144 / 9);
heavy_mat.addHeadMaterialStats(200, 5.2f, 3.0f, 1);
heavy_mat.addHandleMaterialStats(1.5f, 50);
heavy_mat.addExtraMaterialStats(90);
heavy_mat.addBowMaterialStats(1.0f, 1.3f, 3.0f);
heavy_mat.addProjectileMaterialStats();
heavy_mat.addCoreMaterialStats(12, 10);
heavy_mat.addPlatesMaterialStats(1.5, 5, 0);
heavy_mat.addTrimMaterialStats(8);
heavy_mat.addMaterialTrait("duritos", "head");
heavy_mat.addMaterialTrait("cheap", "handle");
heavy_mat.addMaterialTrait("cheap", "extra");
heavy_mat.addMaterialTrait("duritos", "bow");
heavy_mat.addMaterialTrait("duritos", "core");
heavy_mat.addMaterialTrait("cheap", "plates");
heavy_mat.addMaterialTrait("cheap", "trim");
heavy_mat.register();

//Heavy Mesh Ingot Cast
val heavy_mesh_cast = VanillaFactory.createItem("heavy_mesh_cast");
heavy_mesh_cast.creativeTab = ct_global.creativeTab;
heavy_mesh_cast.register();

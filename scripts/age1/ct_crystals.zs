#priority 100
#loader contenttweaker
import scripts.ct_global;
import mods.contenttweaker.VanillaFactory;

//Elven Crystal
val crystal_elf = VanillaFactory.createItem("crystal_elf");
crystal_elf.creativeTab = ct_global.creativeTab;
crystal_elf.register();

//Elven Crystal block
val crystal_elf_block = VanillaFactory.createBlock("crystal_elf_block", <blockmaterial:Glass>);
crystal_elf_block.blockHardness = 0.05;
crystal_elf_block.blockLayer = "TRANSLUCENT";
crystal_elf_block.blockSoundType = <soundtype:Glass>;
crystal_elf_block.creativeTab = ct_global.creativeTab;
crystal_elf_block.entitySpawnable = false;
crystal_elf_block.fullBlock = false;
crystal_elf_block.lightOpacity = 0;
crystal_elf_block.toolClass = "pickaxe";
crystal_elf_block.toolLevel = 0;
crystal_elf_block.translucent = true;
crystal_elf_block.register();

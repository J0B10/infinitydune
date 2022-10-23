#priority 111
#loader contenttweaker
#ignoreBracketErrors
import scripts.ct_global;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.tconstruct.TraitBuilder;
import mods.contenttweaker.Random;
import mods.contenttweaker.Color;
import crafttweaker.world.IWorld;

//Helper function used to calc the current modifier of the astral trait
function astralModifier(base as float, world as IWorld, extra as bool) as float {
    if (world.isDayTime()) return 1.0f;
    else return 1.0f + base * (extra ? 2.0 : 1.0);
}

//Astral Material Trait
val astral = TraitBuilder.create("astral1");
astral.color = 0x1AADED;
astral.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    val discidiaVisible = target.world.getMoonPhase() < 2 || target.world.getMoonPhase() > 4;
    return newDamage * astralModifier(0.1, target.world, discidiaVisible);
};
astral.getMiningSpeed = function(trait, tool, event) {
    val world = event.player.world;
    val evorsioVisible = world.getMoonPhase() < 7 && world.getMoonPhase() > 1;
    event.newSpeed = event.newSpeed * astralModifier(0.1, world, evorsioVisible);
};
astral.register();

//TC Material
val aquamarine = MaterialBuilder.create("aquamarine");
aquamarine.color = 0x1AADED;
aquamarine.hidden = false;
aquamarine.craftable = true;
aquamarine.castable = false;
aquamarine.representativeItem = <item:astralsorcery:itemcraftingcomponent:0>;
aquamarine.addItem(<item:astralsorcery:itemcraftingcomponent:0>, 1, 144);
aquamarine.addItem(<item:jaopca:block_blockaquamarine>, 1, 144 * 9);
aquamarine.addItem(<item:jaopca:item_nuggetaquamarine>, 1, 144 / 9);
aquamarine.addHeadMaterialStats(130, 5.0, 3.4, 1);
aquamarine.addHandleMaterialStats(0.7, 0);
aquamarine.addExtraMaterialStats(20);
aquamarine.addMaterialTrait("astral1", "head");
aquamarine.addMaterialTrait("astral1", "handle");
aquamarine.addMaterialTrait("astral1", "extra");
aquamarine.register();

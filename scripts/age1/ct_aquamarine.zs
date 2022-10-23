#priority 111
#loader contenttweaker
#ignoreBracketErrors
import scripts.ct_global;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.conarm.ExtendedMaterialBuilder;
import mods.contenttweaker.tconstruct.TraitBuilder;
import mods.contenttweaker.conarm.ArmorTraitBuilder;
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
    val discidiaVisible = target.world.getMoonPhase() > 0 && target.world.getMoonPhase() < 6;
    return newDamage * astralModifier(0.1, target.world, discidiaVisible);
};
astral.getMiningSpeed = function(trait, tool, event) {
    val world = event.player.world;
    val evorsioVisible = world.getMoonPhase() < 3 || world.getMoonPhase() > 5;
    event.newSpeed = event.newSpeed * astralModifier(0.1, world, evorsioVisible);
};
astral.register();

//Astral Armor Trait
val armara = ArmorTraitBuilder.create("astral1");
armara.color = 0x1AADED;
armara.onDamaged = function(trait, armor, player, source, damage, newDamage, evt) {
    val armaraVisible = player.world.getMoonPhase() > 2;
    return newDamage * (2.0f - astralModifier(0.1, player.world, armaraVisible));
};
armara.register();

//TC Material
val aquamarine = ExtendedMaterialBuilder.create("aquamarine");
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
aquamarine.addProjectileMaterialStats();
aquamarine.addCoreMaterialStats(11, 4.5);
aquamarine.addPlatesMaterialStats(0.7, 0, 0);
aquamarine.addTrimMaterialStats(3);
aquamarine.addMaterialTrait("astral1", "head");
aquamarine.addMaterialTrait("astral1", "handle");
aquamarine.addMaterialTrait("astral1", "extra");
aquamarine.addMaterialTrait("astral1", "projectile");
aquamarine.addMaterialTrait("astral1_armor", "core");
aquamarine.addMaterialTrait("astral1_armor", "plates");
aquamarine.addMaterialTrait("astral1_armor", "trim");
aquamarine.register();

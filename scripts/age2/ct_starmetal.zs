#priority 110
#loader contenttweaker
#ignoreBracketErrors
import scripts.ct_global;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.tconstruct.TraitBuilder;
import mods.contenttweaker.Random;
import mods.contenttweaker.Color;
import scripts.age1.ct_aquamarine.astralModifier;


//Astral Material Trait
val astral2 = TraitBuilder.create("astral2");
astral2.color = 0x242E6A;
astral2.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    val discidiaVisible = target.world.getMoonPhase() < 2 || target.world.getMoonPhase() > 4;
    return newDamage * astralModifier(0.15, target.world, discidiaVisible);
};
astral2.getMiningSpeed = function(trait, tool, event) {
    val world = event.player.world;
    val evorsioVisible = world.getMoonPhase() < 7 && world.getMoonPhase() > 1;
    event.newSpeed = event.newSpeed * astralModifier(0.15, world, evorsioVisible);
};
astral2.register();

//TC Material
val starmetal = MaterialBuilder.create("starmetal");
starmetal.color = 0x242E6A;
starmetal.hidden = false;
starmetal.craftable = false;
starmetal.castable = true;
starmetal.liquid = <liquid:astral_starmetal>;
starmetal.representativeItem = <item:astralsorcery:itemcraftingcomponent:1>;
starmetal.addItem(<item:astralsorcery:itemcraftingcomponent:1>, 1, 144);
starmetal.addItem(<item:jaopca:block_blockastralstarmetal>, 1, 144 * 9);
starmetal.addItem(<item:jaopca:item_nuggetastralstarmetal>, 1, 144 / 9);
starmetal.addHeadMaterialStats(204, 6.4, 4.2, 2);
starmetal.addHandleMaterialStats(0.85, 20);
starmetal.addExtraMaterialStats(80);
starmetal.addMaterialTrait("astral2", "head");
starmetal.addMaterialTrait("astral2", "handle");
starmetal.addMaterialTrait("astral2", "extra");
starmetal.register();

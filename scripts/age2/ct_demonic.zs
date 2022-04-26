#priority 100
#loader contenttweaker

import mods.contenttweaker.tconstruct.TraitBuilder;
import crafttweaker.entity.IEntityMob;

val demonicTrait = TraitBuilder.create("demonic");
demonicTrait.color = 0x58DFE6;
demonicTrait.addItem(<item:bloodmagic:monster_soul:0>);
demonicTrait.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    if (wasHit && (target.world.getWorldInfo().getDifficulty() == "PEACEFUL" || target instanceof IEntityMob)) {
        target.addPotionEffect(<potion:bloodmagic:soul_snare>.makePotionEffect(300, 0));
    }
};
demonicTrait.register();

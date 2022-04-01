#priority 3
import crafttweaker.item.IIngredient;

static tiers as string[] = [
    "bloodmagic:weak",
    "bloodmagic:apprentice",
    "bloodmagic:magician",
    "bloodmagic:master",
    "bloodmagic:archmage",
    "bloodmagic:transcendent"
];

static orbTier as function(int)IIngredient = function(tier as int) as IIngredient {
    var orb = <bloodmagic:blood_orb>.withTag({orb: tiers[tier - 1]}) as IIngredient;
    var t = tier;
    while t < tiers.length {
        orb |= <bloodmagic:blood_orb>.withTag({orb: tiers[t]});
        t += 1;
    }
    return orb;
};
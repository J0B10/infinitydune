#priority 1
import mods.astralsorcery.Altar;

//Starlight Infusor 
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/starlightinfuser");
Altar.addConstellationAltarRecipe("astralsorcery:shaped/internal/altar/starlightinfuser", <astralsorcery:blockstarlightinfuser>, 2000, 500, [
    <ore:ingotGold>, <ore:ingotAstralStarmetal>, <ore:ingotGold>,
    <ore:manaDiamond>, <liquid:astralsorcery.liquidstarlight>, <ore:manaDiamond>,
    <astralsorcery:blockmarble:4>, <astralsorcery:blockmarble:6>, <astralsorcery:blockmarble:4>,
    null, null, <astralsorcery:blockmarble:2>, <astralsorcery:blockmarble:2>,
    null, null, <astralsorcery:blockmarble:5>, <astralsorcery:blockmarble:5>,
    <astralsorcery:blockmarble:2>, <astralsorcery:blockmarble:2>, <astralsorcery:blockmarble:2>, <astralsorcery:blockmarble:2>
]);


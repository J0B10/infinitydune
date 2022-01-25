# [WorkingTitle] `infinitydune` 
## Progression

### Stone Age
* [x] Get food fom cactus & harvestcraft arid gardens  
* [x] DeadBushes provide sticks  
* [x] Patterns are craftable from sticks  
* [x] Tool stations should be craftable without crafting table  
* [x] Get Dirt from sand (Pure Daisy) or find it (oasis)  
* [x] Get Oak Saplings from DeadBush (Pure Daisy)  
* [x] Pure Daisy spawns naturaly  
* [ ] Water must be discovered (caves / oasis / wells)  
* [ ] Should the player be able to get a crafting table in stone age???  
      Maybe a different rcipe is needed



## Recurrent Complex Structures
See https://minecraft-recurrent-complex.fandom.com/wiki/Disabling_Structures for how to disable structures.

This is a ongoing process of checking all structures and determining if they shall be kept or removed. 

For disabling all structures by default set config option `S:structureGenerationMatcher=` to `!$reccomplex`.  
Whitelisted structures must be separated using `|` (logical _or_).

### Whitelist
```
DinosaurSkeleton    ?
DesertBeacon        ?
DesertWatchtower    ?
SmallPyramid        ?
```

### Discarded
```
FallenPalmTree      ?
BigPyramid
BigClockWorkSite
SmallClockWorkSite
JokerTower
MonolythHoly
MonolythUnholy
VillageMarketplace
VillageWoodMill
VillageHouseRich
VillageHouseRich1
VillageForgeLarge
VillageGuardTower
VeledtBath
CuboneSkull
DesertFort          ?
DesertHut           ?
UnnaturalCrater     ?
DinosaurSkull       ?
MeteorSite          ?
LonePillars         ?
```
# [WorkingTitle] `infinitydune` 

You find yourself out in a never ending dessert with nothing to do and everything looking to kill you.  
Even the wood for a crafting table is missing!  
But if you look carefully the dessert provides you with a lot of stuff that you can use to improve your situation.  
Just think out of the box!

**[:file_folder: Download Modpack Dev-Builds](https://github.com/J0B10/infinitydune/releases)**

**Build for multimc**: read [`build/README.md`](build/), releases will come when it's ready  

**ZenScript Dump:** on [`github pages`](https://j0b10.github.io/infinitydune/crafttweaker_dump/tree3.html)  

**Is this on curseforge?**  
Not for now, just use multimc! You will not regret. :smile:

## Progression

### Stone Age
* [x] Get food fom cactus & harvestcraft arid gardens  
* [x] DeadBushes provide sticks  
* [x] Patterns are craftable from sticks  
* [x] Tool stations should be craftable without crafting table  
* [x] Get Dirt from sand (Pure Daisy) or find it (oasis)  
* [x] Get Oak Saplings from DeadBush (Pure Daisy)  
* [x] Pure Daisy spawns naturaly  
* [x] Water must be discovered (caves / oasis / wells)  
* [ ] Should the player be able to get a crafting table in stone age???  
      Maybe a different recipe is needed

### Copper Age
* [ ] Only Coal, Copper & Tin ores should generate (maybe also iron with more restrictions)
* [ ] Ores can't smelt in oven
* [ ] Grout for smeltery based on heavy mix lump
* [ ] Heavy ingot in smeltery


## Modlist


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
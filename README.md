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
![ores](https://imgur.com/0eAtybl.png)
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
      Maybe a different recipe is needed

### Bronze Age
* [X] Only Coal, Copper, Tin, Aluminium, Redstone and RockCrystal ores should generate
* [x] Orechid allows automation / skyblock
* [X] Ores can't smelt in oven
* [X] Grout for smeltery based on heavy mix lump
* [X] Heavy ingot in smeltery
* [X] Stripped down hearthwell
* [ ] Nether is disabled, items can be obtained by throwing through portal
* [ ] Botania without manasteel
* [ ] Astral Sorcery Aquamarines only midgame ( via transmutation)
* [ ] Astral Sorcery Starmetal reqiuires iron age
* [ ] Blood Magic?
* [ ] Embers early game?

### Iron Age
* [X] More ores obtainable via HWell Ore puller 
* [ ] Botania Manasteel recipes

## Modlist
```
AppleSkin
Astral Sorcery
B.A.S.E
Baubles
BetterFps
Botania
Chameleon
Construct's Armory
ContentTweaker
CraftTweaker
Cucumber Library
Default World Generator (port)
Ding
Embers Rekindled
Extended Crafting
Fast Leaf Decay
Hearth Well
IvToolkit
JAOPCA
Just Enough Items (JEI)
Just Enough HarvestCraft (JEHC)
Mantle
ModTweaker
More Buckets
More Overlays
MoreTweaker
Mouse Tweaks
MTLib
Pam's HarvestCraft
Patchouli
ReAuth
Recurrent Complex
Storage Drawers
Storage Drawers KAPPA Addon
Tinkers Construct
The One Probe
Tinker's JEI
Tinkers' Tool Leveling
WrapUp
Botania: Garden of Glass
Immersive Engineering
Immersive Petroleum
Just Enough Petroleum
Engineer's Doors
Immersive Technology
Just Enough Resources (JER)
ConnectedTexturesMod
Chisel
Tinkers' Complement
Quark Oddities
Quark
AutoRegLib
Cyclops Core
Colossal Chests
```

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
SpiderPit
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

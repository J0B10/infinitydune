
//                          Sifting
/////////////////////////////////////////////////////////////////////

//obtain lapis from dust
recipes.addJsonRecipe("sifting/ens_lapis_lazuli", {
  type: "exnihilosequentia:sifting",
  input: { 
    item: "exnihilosequentia:dust" 
  },
  result: { 
    Count: 1, 
    item: "minecraft:lapis_lazuli" 
  },
  rolls: [ 
    { 
      chance: 0.05, 
      mesh: "iron" 
    } 
  ],
  waterlogged: false
});

//ores from gravel
recipes.addJsonRecipe("sifting/ens_iron_pieces_gravel", {
  type: "exnihilosequentia:sifting",
  input: {
    item: "minecraft:gravel"
  },
  result: {
    item: "exnihilosequentia:iron_pieces"
  },
  rolls: [
    {
      chance: 0.1,
      mesh: "iron"
    },
    {
      chance: 0.15,
      mesh: "diamond"
    },
    {
      chance: 0.25,
      mesh: "emerald"
    }
  ],
  waterlogged: false
});
recipes.addJsonRecipe("sifting/ens_gold_pieces_gravel", {
  type: "exnihilosequentia:sifting",
  input: {
    item: "minecraft:gravel"
  },
  result: {
    item: "exnihilosequentia:gold_pieces"
  },
  rolls: [
    {
      chance: 0.0333,
      mesh: "iron"
    },
    {
      chance: 0.05,
      mesh: "diamond"
    },
    {
      chance: 0.1,
      mesh: "emerald"
    }
  ],
  waterlogged: false
});
recipes.addJsonRecipe("sifting/ens_silver_pieces_gravel", {
  type: "exnihilosequentia:sifting",
  input: {
    item: "minecraft:gravel"
  },
  result: {
    item: "exnihilosequentia:silver_pieces"
  },
  rolls: [
    {
      chance: 0.05,
      mesh: "iron"
    },
    {
      chance: 0.075,
      mesh: "diamond"
    },
    {
      chance: 0.15,
      mesh: "emerald"
    }
  ],
  waterlogged: false
});
recipes.addJsonRecipe("sifting/ens_zinc_pieces_gravel", {
  type: "exnihilosequentia:sifting",
  input: {
    item: "minecraft:gravel"
  },
  result: {
    item: "exnihilosequentia:zinc_pieces"
  },
  rolls: [
    {
      chance: 0.05,
      mesh: "iron"
    },
    {
      chance: 0.075,
      mesh: "diamond"
    },
    {
      chance: 0.15,
      mesh: "emerald"
    }
  ],
  waterlogged: false
});

//                             Barrel
/////////////////////////////////////////////////////////////////////

// prismarine may be used to transition water to seawater
recipes.addJsonRecipe("transition/ens_sea_water", {
  type: "exnihilosequentia:transition",
  catalyst: {
    item: "minecraft:prismarine"
  },
  fluidInTank: {
    amount: 1000,
    fluid: "minecraft:water"
  },
  result: {
    amount: 1000,
    fluid: "exnihilosequentia:sea_water"
  }
});
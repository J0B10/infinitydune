#priority 99
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.IData;
import crafttweaker.api.block.Block;

public function addPureDaisyRecipe(name as string, input as Block, output as Block, time as int) as void {
  <recipetype:botania:pure_daisy>.addJsonRecipe(name, {
    "type": "botania:pure_daisy",
    "input": { 
      "type": "block", 
      "block": input.registryName as string
    },
    "output": { 
      "name": output.registryName as string
    },
    "time": time,
  });
}

public function addRunicAltar(name as string, output as IItemStack, mana as int, ingredients as IIngredient[]) as void {
  var list = new IData[](ingredients.length, (i) => ingredients[i] as IData);
  <recipetype:botania:runic_altar>.addJsonRecipe(name, {
    "type": "botania:runic_altar",
    "ingredients": list,
    "mana": mana,
    "output": output as IData
  });
}

public function addOrechidRecipe(name as string, input as Block, output as Block, weight as int) as void {
  <recipetype:botania:orechid>.addJsonRecipe(name, {
    "type": "botania:orechid",
    "input": { 
      "type": "block", 
      "block": input.registryName as string
    },
    "output": { 
      "type": "block", 
      "block": output.registryName as string
    },
    "weight": weight,
  });
}

public function addApothecaryRecipe(name as string, output as IItemStack, ingredients as IIngredient[]) as void {
  var list = new IData[](ingredients.length, (i) => ingredients[i] as IData);
  <recipetype:botania:petal_apothecary>.addJsonRecipe(name, {
    "type": "botania:petal_apothecary",
    "ingredients": list,
    "output": output as IData,
    "reagent": {
      "tag": "botania:seed_apothecary_reagent",
    },
  });
}

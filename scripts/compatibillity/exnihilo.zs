#priority 99
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.IData;
import crafttweaker.api.util.random.Percentaged;

public function addCrookHarvest(name as string, input as IIngredient, output as Percentaged<IItemStack>[]) as void {
  var results = new IData[](output.length, (i) => {
    return (output[i].getData() as IData).merge({"chance" : output[i].getPercentage()});
  });
  <recipetype:exnihilosequentia:harvest>.addJsonRecipe(name, {
    "type": "exnihilosequentia:harvest",
    "input": input as IData,
    "results": results,
  });
}

public function addSifting(name as string, input as IIngredient, output as IItemStack, rolls as IData) as void {
  
  <recipetype:exnihilosequentia:sifting>.addJsonRecipe(name, {
    "type": "exnihilosequentia:sifting",
    "input": input as IData,
    "result": output as IData,
    "rolls": rolls,
    waterlogged: false
  });
}

public function siftingRoll(mesh as string, chance as float) as IData {
  return {
      "chance": chance,
      "mesh": mesh,
    };
}


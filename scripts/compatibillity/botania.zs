#priority 99
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

#priority 99
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.IData;

public function addBloodAltar(name as string, level as int, input as IIngredient, output as IItemStack, settings as IData) as void {
    <recipetype:bloodmagic:altar>.addJsonRecipe(name, ({
        "type": "bloodmagic:altar",
        "input": input,
        "output": output,
        "upgradeLevel": level
    } as IData).merge(settings));
}

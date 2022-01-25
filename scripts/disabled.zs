#priority 9
import scripts.utils.disable;
import crafttweaker.item.IItemStack;

val disabled as IItemStack[] = [
 
    //Botania
    <botania:grassseeds:8>,

    //Tinkers Construct
    <tconstruct:tooltables:1>

];

for i in disabled {
    disable(i);
}
#priority 1
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;

//Melting and casting
Melting.addRecipe(<liquid:soulsteel> * 144, <hwell:soulsteel_ingot>, 548);
Melting.addRecipe(<liquid:soulsteel> * 1296, <hwell:soulsteel_block>, 789);
//Melting.addRecipe(<liquid:soulsteel> * 16, <hwell:soulsteel_nugget>, 424);
Casting.addBasinRecipe(<hwell:soulsteel_block>, null, <liquid:soulsteel>, 1296, false, 240);
Casting.addTableRecipe(<hwell:soulsteel_ingot>, <tconstruct:cast_custom:0>, <liquid:soulsteel>, 144, false, 40);
//Casting.addTableRecipe(<hwell:soulsteel_nugget>, <tconstruct:cast_custom:1>, <liquid:soulsteel>, 144 / 9, false, 20);

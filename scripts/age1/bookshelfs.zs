#priority 1
import crafttweaker.item.IItemStack;

recipes.remove(<ore:bookshelf>);

val variants = [
    <chisel:bookshelf_oak>, 
    <chisel:bookshelf_spruce>, 
    <chisel:bookshelf_birch>, 
    <chisel:bookshelf_jungle>, 
    <chisel:bookshelf_acacia>, 
    <chisel:bookshelf_darkoak>
] as IItemStack[];
for i, variant in variants {
    val planks = <minecraft:planks>.withDamage(i);
    recipes.addShaped("age1/bookshelf" ~ i, variant, [
        [planks, planks, planks], 
        [<minecraft:book>, <minecraft:book>, <minecraft:book>], 
        [planks, planks, planks]
    ]);
}

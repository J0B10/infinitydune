#priority 100
#loader contenttweaker
import scripts.ct_global;
import mods.contenttweaker.VanillaFactory;

//Alchemy Jar
val mold_bucket = VanillaFactory.createItem("alchemy_jar");
mold_bucket.creativeTab = ct_global.creativeTab;
mold_bucket.register();

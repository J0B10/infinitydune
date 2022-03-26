#priority 100
#loader contenttweaker
import scripts.ct_global;
import mods.contenttweaker.VanillaFactory;

//Bucket Press Mold recipe
val mold_bucket = VanillaFactory.createItem("mold_bucket");
mold_bucket.creativeTab = ct_global.creativeTab;
mold_bucket.register();

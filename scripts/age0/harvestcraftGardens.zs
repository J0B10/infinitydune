#priority 1
import crafttweaker.item.IItemStack;
import moretweaker.jei.MoreJei;

function createGardenDescription(garden as IItemStack, args as IItemStack[]) {
    val variant = garden.displayName;
    var s = "Drops ";
    for i, item in args {
        if (i > 0 && i < args.length - 1) {
            s ~= ", " ~ item.displayName;
        } else if (i == args.length - 1) {
            s ~= " & " ~ item.displayName ~ ".";
        }
        MoreJei.addDescription(item, ["Dropped by " ~ variant ~ "s"]);
    }
        MoreJei.addDescription(garden, [s]);
}

//aridGarden
createGardenDescription(<harvestcraft:aridgarden>, [
    <harvestcraft:cactusfruititem>,
    <harvestcraft:agaveitem>,
    <harvestcraft:sisalitem>,
    <harvestcraft:cassavaitem>,
    <harvestcraft:chickpeaitem>,
    <harvestcraft:lentilitem>,
    <minecraft:cactus>
]) ;

//frostGarden
createGardenDescription(<harvestcraft:frostgarden>, [
    <harvestcraft:raspberryitem>,
    <harvestcraft:oatsitem>,
    <harvestcraft:ryeitem>,
    <harvestcraft:celeryitem>,
    <harvestcraft:peasitem>,
    <harvestcraft:beetitem>,
    <harvestcraft:rutabagaitem>,
    <harvestcraft:broccoliitem>,
    <harvestcraft:caulifloweritem>,
    <harvestcraft:cabbageitem>,
    <harvestcraft:spinachitem>,
    <harvestcraft:cottonitem>,
    <harvestcraft:huckleberryitem>,
    <harvestcraft:kohlrabiitem>,
    <harvestcraft:quinoaitem>,
    <harvestcraft:juniperberryitem>
]);

//shadedGarden
createGardenDescription(<harvestcraft:shadedgarden>, [
    <harvestcraft:whitemushroomitem>,
    <harvestcraft:blackberryitem>,
    <harvestcraft:zucchiniitem>,
    <harvestcraft:radishitem>,
    <harvestcraft:rhubarbitem>,
    <harvestcraft:tealeafitem>,
    <harvestcraft:garlicitem>,
    <harvestcraft:sweetpotatoitem>,
    <harvestcraft:turnipitem>,
    <harvestcraft:spiceleafitem>,
    <harvestcraft:beanitem>,
    <harvestcraft:leekitem>,
    <harvestcraft:scallionitem>,
    <harvestcraft:tomatoitem>,
    <harvestcraft:juteitem>
]);

//soggyGarden
createGardenDescription(<harvestcraft:soggygarden>, [
    <harvestcraft:brusselsproutitem>,
    <harvestcraft:spiceleafitem>,
    <harvestcraft:blueberryitem>,
    <harvestcraft:asparagusitem>,
    <harvestcraft:cranberryitem>,
    <harvestcraft:riceitem>,
    <harvestcraft:seaweeditem>,
    <harvestcraft:waterchestnutitem>,
    <harvestcraft:okraitem>,
    <harvestcraft:cottonitem>,
    <harvestcraft:kaleitem>,
    <harvestcraft:milletitem>,
    <harvestcraft:jicamaitem>,
    <harvestcraft:greengrapeitem>,
    <harvestcraft:mulberryitem>,
    <harvestcraft:tomatilloitem>
]);

//tropicalGarden
createGardenDescription(<harvestcraft:tropicalgarden>, [
    <harvestcraft:grapeitem>,
    <harvestcraft:pineappleitem>,
    <harvestcraft:kiwiitem>,
    <harvestcraft:sesameseedsitem>,
    <harvestcraft:curryleafitem>,
    <harvestcraft:bambooshootitem>,
    <harvestcraft:cantaloupeitem>,
    <harvestcraft:gingeritem>,
    <harvestcraft:coffeebeanitem>,
    <harvestcraft:soybeanitem>,
    <harvestcraft:eggplantitem>,
    <harvestcraft:kenafitem>,
    <harvestcraft:arrowrootitem>,
    <harvestcraft:taroitem>
]);

//windyGarden
createGardenDescription(<harvestcraft:windygarden>, [
    <harvestcraft:strawberryitem>,
    <harvestcraft:barleyitem>,
    <harvestcraft:cornitem>,
    <harvestcraft:cucumberitem>,
    <harvestcraft:wintersquashitem>,
    <harvestcraft:mustardseedsitem>,
    <harvestcraft:onionitem>,
    <harvestcraft:parsnipitem>,
    <harvestcraft:peanutitem>,
    <minecraft:potato>,
    <minecraft:carrot>,
    <harvestcraft:lettuceitem>,
    <harvestcraft:artichokeitem>,
    <harvestcraft:bellpepperitem>,
    <harvestcraft:chilipepperitem>,
    <minecraft:wheat>,
    <harvestcraft:flaxitem>,
    <harvestcraft:amaranthitem>,
    <harvestcraft:elderberryitem>
]);

// - Created by Revilo12 -
// - For Lost in Reality -

// - Variables -

val standerdBackPack = <travelersbackpack:travelers_backpack>;

val tank = <travelersbackpack:backpack_tank>;
val sleepingBag = <travelersbackpack:sleeping_bag_bottom>;

val leather = <minecraft:leather>;

val chest = <minecraft:chest>;

val ironRing = <ore:ringIron>;

// - Recipes -

recipes.removeShaped(<travelersbackpack:travelers_backpack>, [[<minecraft:leather>, <minecraft:gold_ingot>, <minecraft:leather>],[<travelersbackpack:backpack_tank>, <minecraft:chest>, <travelersbackpack:backpack_tank>], [<minecraft:leather>, <travelersbackpack:sleeping_bag_bottom>, <minecraft:leather>]]);

recipes.addShaped(standerdBackPack, [
    [leather, leather, leather],
    [tank, chest, tank],
    [ironRing, sleepingBag, ironRing]
]);
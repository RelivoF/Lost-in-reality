// - Created by Revilof -
// - For Lost in reality -

// - Variables -

// - Screw -

val ironScrew = <ore:screwIron>;

// - Framing table -

val framingTable = <storagedrawers:framingtable>;

// - Trims -

val trims = <ore:drawerTrim>;

// - Oak -

val oakBasic = <storagedrawers:basicdrawers>.withTag({material: "oak"});
val oakHalfBasic = <storagedrawers:basicdrawers:1>.withTag({material: "oak"});
val oakQuartBasic = <storagedrawers:basicdrawers:2>.withTag({material: "oak"});
val oakHalfHalfBasic = <storagedrawers:basicdrawers:3>.withTag({material: "oak"});
val oakHalfQuartBasic = <storagedrawers:basicdrawers:4>.withTag({material: "oak"});
val oakTrim = <storagedrawers:trim>;
val oakPlanks = <minecraft:planks>;
val oakSlab = <minecraft:wooden_slab>;

// - spruce -

val spruceBasic = <storagedrawers:basicdrawers>.withTag({material: "spruce"});
val spruceHalfBasic = <storagedrawers:basicdrawers:1>.withTag({material: "spruce"});
val spruceQuartBasic = <storagedrawers:basicdrawers:2>.withTag({material: "spruce"});
val spruceHalfHalfBasic = <storagedrawers:basicdrawers:3>.withTag({material: "spruce"});
val spruceHalfQuartBasic = <storagedrawers:basicdrawers:4>.withTag({material: "spruce"});
val spruceTrim = <storagedrawers:trim:1>;
val sprucePlanks = <minecraft:planks:1>;
val spruceSlab = <minecraft:wooden_slab:1>;

// - birch -

val birchBasic = <storagedrawers:basicdrawers>.withTag({material: "birch"});
val birchHalfBasic = <storagedrawers:basicdrawers:1>.withTag({material: "birch"});
val birchQuartBasic = <storagedrawers:basicdrawers:2>.withTag({material: "birch"});
val birchHalfHalfBasic = <storagedrawers:basicdrawers:3>.withTag({material: "birch"});
val birchHalfQuartBasic = <storagedrawers:basicdrawers:4>.withTag({material: "birch"});
val birchTrim = <storagedrawers:trim:2>;
val birchPlanks = <minecraft:planks:2>;
val birchSlab = <minecraft:wooden_slab:2>;

// - jungle -

val jungleBasic = <storagedrawers:basicdrawers>.withTag({material: "jungle"});
val jungleHalfBasic = <storagedrawers:basicdrawers:1>.withTag({material: "jungle"});
val jungleQuartBasic = <storagedrawers:basicdrawers:2>.withTag({material: "jungle"});
val jungleHalfHalfBasic = <storagedrawers:basicdrawers:3>.withTag({material: "jungle"});
val jungleHalfQuartBasic = <storagedrawers:basicdrawers:4>.withTag({material: "jungle"});
val jungleTrim = <storagedrawers:trim:3>;
val junglePlanks = <minecraft:planks:3>;
val jungleSlab = <minecraft:wooden_slab:3>;

// - acacia -

val acaciaBasic = <storagedrawers:basicdrawers>.withTag({material: "acacia"});
val acaciaHalfBasic = <storagedrawers:basicdrawers:1>.withTag({material: "acacia"});
val acaciaQuartBasic = <storagedrawers:basicdrawers:2>.withTag({material: "acacia"});
val acaciaHalfHalfBasic = <storagedrawers:basicdrawers:3>.withTag({material: "acacia"});
val acaciaHalfQuartBasic = <storagedrawers:basicdrawers:4>.withTag({material: "acacia"});
val acaciaTrim = <storagedrawers:trim:4>;
val acaciaPlanks = <minecraft:planks:4>;
val acaciaSlab = <minecraft:wooden_slab:4>;

// - dark oak -

val darkOakBasic = <storagedrawers:basicdrawers>.withTag({material: "acacia"});
val darkOakHalfBasic = <storagedrawers:basicdrawers:1>.withTag({material: "dark_oak"});
val darkOakQuartBasic = <storagedrawers:basicdrawers:2>.withTag({material: "dark_oak"});
val darkOakHalfHalfBasic = <storagedrawers:basicdrawers:3>.withTag({material: "dark_oak"});
val darkOakHalfQuartBasic = <storagedrawers:basicdrawers:4>.withTag({material: "dark_oak"});
val darkOakTrim = <storagedrawers:trim:5>;
val darkOakPlanks = <minecraft:planks:5>;
val darkOakSlab = <minecraft:wooden_slab:5>;

// - Framed -

val framedBasic = <storagedrawers:customdrawers>;
val framedHalfBasic = <storagedrawers:customdrawers:1>;
val framedQuartBasic = <storagedrawers:customdrawers:2>;
val framedHalfHalfBasic = <storagedrawers:customdrawers:3>;
val framedHalfQuartBasic = <storagedrawers:customdrawers:4>;
val framedTrim = <storagedrawers:customtrim>;
val slab = <ore:slabWood>;
val plank = <ore:plankWood>;

// - Tools -

val screwdriver = <ore:toolScrewdriver>;
val wrench = <ore:toolWrench>;
val saw = <ore:toolSaw>;

// - Minecraft -

val chest = <ore:chestWood>;
val stick = <minecraft:stick>;

// - Recipes -

// - Oak -

// - Basic -

recipes.addShaped(oakBasic, [
    [oakPlanks, ironScrew, oakPlanks],
    [screwdriver, chest, saw],
    [oakPlanks, ironScrew, oakPlanks]
]);

// - Half Basic -

recipes.addShaped(oakHalfBasic, [
    [oakPlanks, chest, oakPlanks],
    [screwdriver, ironScrew, saw],
    [oakPlanks, chest, oakPlanks]
]);

// - Quarter Basic -

recipes.addShaped(oakQuartBasic, [
    [chest, ironScrew, chest],
    [screwdriver, oakPlanks, saw],
    [chest, ironScrew, chest]
]);

// - Half Half Basic - 

recipes.addShaped(oakHalfHalfBasic, [
    [oakSlab, chest, oakSlab],
    [screwdriver, ironScrew, saw],
    [oakSlab, chest, oakSlab]
]);

// - Half Quarter Basic -

recipes.addShaped(oakHalfQuartBasic, [
    [chest, ironScrew, chest],
    [screwdriver, oakSlab, saw],
    [chest, ironScrew, chest]
]);

// - Trim - 

recipes.addShaped(oakTrim, [
    [stick, ironScrew, stick],
    [screwdriver, oakPlanks, saw],
    [stick, ironScrew, stick]
]);

// - Spruce -

// - Basic -

recipes.addShaped(spruceBasic, [
    [sprucePlanks, ironScrew, sprucePlanks],
    [screwdriver, chest, saw],
    [sprucePlanks, ironScrew, sprucePlanks]
]);

// - Half Basic -

recipes.addShaped(spruceHalfBasic, [
    [sprucePlanks, chest, sprucePlanks],
    [screwdriver, ironScrew, saw],
    [sprucePlanks, chest, sprucePlanks]
]);

// - Quarter Basic -

recipes.addShaped(spruceQuartBasic, [
    [chest, ironScrew, chest],
    [screwdriver, sprucePlanks, saw],
    [chest, ironScrew, chest]
]);

// - Half Half Basic - 

recipes.addShaped(spruceHalfHalfBasic, [
    [spruceSlab, chest, spruceSlab],
    [screwdriver, ironScrew, saw],
    [spruceSlab, chest, spruceSlab]
]);

// - Half Quarter Basic -

recipes.addShaped(spruceHalfQuartBasic, [
    [chest, ironScrew, chest],
    [screwdriver, spruceSlab, saw],
    [chest, ironScrew, chest]
]);

// - Trim - 

recipes.addShaped(spruceTrim, [
    [stick, ironScrew, stick],
    [screwdriver, sprucePlanks, saw],
    [stick, ironScrew, stick]
]);

// - birch -

// - Basic -

recipes.addShaped(birchBasic, [
    [birchPlanks, ironScrew, birchPlanks],
    [screwdriver, chest, saw],
    [birchPlanks, ironScrew, birchPlanks]
]);

// - Half Basic -

recipes.addShaped(birchHalfBasic, [
    [birchPlanks, chest, birchPlanks],
    [screwdriver, ironScrew, saw],
    [birchPlanks, chest, birchPlanks]
]);

// - Quarter Basic -

recipes.addShaped(birchQuartBasic, [
    [chest, ironScrew, chest],
    [screwdriver, birchPlanks, saw],
    [chest, ironScrew, chest]
]);

// - Half Half Basic - 

recipes.addShaped(birchHalfHalfBasic, [
    [birchSlab, chest, birchSlab],
    [screwdriver, ironScrew, saw],
    [birchSlab, chest, birchSlab]
]);

// - Half Quarter Basic -

recipes.addShaped(birchHalfQuartBasic, [
    [chest, ironScrew, chest],
    [screwdriver, birchSlab, saw],
    [chest, ironScrew, chest]
]);

// - Trim - 

recipes.addShaped(birchTrim, [
    [stick, ironScrew, stick],
    [screwdriver, birchPlanks, saw],
    [stick, ironScrew, stick]
]);

// - jungle -

// - Basic -

recipes.addShaped(jungleBasic, [
    [junglePlanks, ironScrew, junglePlanks],
    [screwdriver, chest, saw],
    [junglePlanks, ironScrew, junglePlanks]
]);

// - Half Basic -

recipes.addShaped(jungleHalfBasic, [
    [junglePlanks, chest, junglePlanks],
    [screwdriver, ironScrew, saw],
    [junglePlanks, chest, junglePlanks]
]);

// - Quarter Basic -

recipes.addShaped(jungleQuartBasic, [
    [chest, ironScrew, chest],
    [screwdriver, junglePlanks, saw],
    [chest, ironScrew, chest]
]);

// - Half Half Basic - 

recipes.addShaped(jungleHalfHalfBasic, [
    [jungleSlab, chest, jungleSlab],
    [screwdriver, ironScrew, saw],
    [jungleSlab, chest, jungleSlab]
]);

// - Half Quarter Basic -

recipes.addShaped(jungleHalfQuartBasic, [
    [chest, ironScrew, chest],
    [screwdriver, jungleSlab, saw],
    [chest, ironScrew, chest]
]);

// - Trim - 

recipes.addShaped(jungleTrim, [
    [stick, ironScrew, stick],
    [screwdriver, junglePlanks, saw],
    [stick, ironScrew, stick]
]);

// - acacia -

// - Basic -

recipes.addShaped(acaciaBasic, [
    [acaciaPlanks, ironScrew, acaciaPlanks],
    [screwdriver, chest, saw],
    [acaciaPlanks, ironScrew, acaciaPlanks]
]);

// - Half Basic -

recipes.addShaped(acaciaHalfBasic, [
    [acaciaPlanks, chest, acaciaPlanks],
    [screwdriver, ironScrew, saw],
    [acaciaPlanks, chest, acaciaPlanks]
]);

// - Quarter Basic -

recipes.addShaped(acaciaQuartBasic, [
    [chest, ironScrew, chest],
    [screwdriver, acaciaPlanks, saw],
    [chest, ironScrew, chest]
]);

// - Half Half Basic - 

recipes.addShaped(acaciaHalfHalfBasic, [
    [acaciaSlab, chest, acaciaSlab],
    [screwdriver, ironScrew, saw],
    [acaciaSlab, chest, acaciaSlab]
]);

// - Half Quarter Basic -

recipes.addShaped(acaciaHalfQuartBasic, [
    [chest, ironScrew, chest],
    [screwdriver, acaciaSlab, saw],
    [chest, ironScrew, chest]
]);

// - Trim - 

recipes.addShaped(acaciaTrim, [
    [stick, ironScrew, stick],
    [screwdriver, acaciaPlanks, saw],
    [stick, ironScrew, stick]
]);

// - darkOak -

// - Basic -

recipes.addShaped(darkOakBasic, [
    [darkOakPlanks, ironScrew, darkOakPlanks],
    [screwdriver, chest, saw],
    [darkOakPlanks, ironScrew, darkOakPlanks]
]);

// - Half Basic -

recipes.addShaped(darkOakHalfBasic, [
    [darkOakPlanks, chest, darkOakPlanks],
    [screwdriver, ironScrew, saw],
    [darkOakPlanks, chest, darkOakPlanks]
]);

// - Quarter Basic -

recipes.addShaped(darkOakQuartBasic, [
    [chest, ironScrew, chest],
    [screwdriver, darkOakPlanks, saw],
    [chest, ironScrew, chest]
]);

// - Half Half Basic - 

recipes.addShaped(darkOakHalfHalfBasic, [
    [darkOakSlab, chest, darkOakSlab],
    [screwdriver, ironScrew, saw],
    [darkOakSlab, chest, darkOakSlab]
]);

// - Half Quarter Basic -

recipes.addShaped(darkOakHalfQuartBasic, [
    [chest, ironScrew, chest],
    [screwdriver, darkOakSlab, saw],
    [chest, ironScrew, chest]
]);

// - Trim - 

recipes.addShaped(darkOakTrim, [
    [stick, ironScrew, stick],
    [screwdriver, darkOakPlanks, saw],
    [stick, ironScrew, stick]
]);

// - framing table -

recipes.addShaped(framingTable, [
    [ironScrew, screwdriver, ironScrew],
    [trims, trims, trims],
    [trims, saw, trims]   
]);

// - Framed -

// - Framed Basic -

recipes.addShaped(framedBasic, [
    [stick, ironScrew, stick],
    [screwdriver, chest, saw],
    [stick, ironScrew, stick]
]);

// - framed Half Basic -

recipes.addShaped(framedHalfBasic, [
    [stick, chest, stick],
    [screwdriver, ironScrew, saw],
    [stick, chest, stick]
]);

// - framed quarter basic -

recipes.addShaped(framedQuartBasic, [
    [chest, ironScrew, chest],
    [screwdriver, stick, saw],
    [chest, ironScrew, chest]
]);

// - framed half half basic -

recipes.addShaped(framedHalfHalfBasic, [
    [stick, chest, ironScrew],
    [screwdriver, slab, saw],
    [ironScrew, chest, stick]
]);

// - Framed half quarter basic -

recipes.addShaped(framedHalfQuartBasic, [
    [chest, ironScrew, chest],
    [screwdriver, slab, saw],
    [chest, ironScrew, chest]
]);

// - Framed Trim -

recipes.addShaped(framedTrim, [
    [stick, ironScrew, stick],
    [screwdriver, plank, saw],
    [stick, ironScrew, stick]
]);
// - Created by Revilo12 -
// - Made for Lost in Reality -

// - Variables -

val hayBale = <minecraft:hay_block:0>;
val wheat = <minecraft:wheat:0>;

val woodenPlank = <ore:plateWood>;
val ironScrew = <ore:screwIron>;

val dummy = <testdummy:dummy>;

val stick = <ore:stickWood>;

val screwdriver = <ore:toolScrewdriver>;
val saw = <ore:toolSaw>;

// - Recipes -

recipes.remove(dummy);

recipes.addShaped(dummy, [
    [ironScrew, hayBale, ironScrew],
    [wheat, stick, wheat],
    [screwdriver, woodenPlank, saw]
]);
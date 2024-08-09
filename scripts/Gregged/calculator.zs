// - Created by Revilof -
// - Crated for Lost in Reality -

// - Vaiables -

// - Calculator -

val craftingCalculator = <jecalculation:item_calculator>;
val mathCalculator = <jecalculation:item_calculator:1>;

// - Plate -

val stonePlate = <ore:plateStone>;

// - Circuit -

val LVCircuit = <ore:circuitLv>;

// - Tools -

val screwdriver = <ore:toolScrewdriver>;
val wrench = <ore:toolWrench>;

// - Mineraft -

val glass = <ore:blockGlass>;

// - screw -

val ironScrew = <ore:screwWroughtIron>;

// - Recipes -

// - Removal -

recipes.remove(craftingCalculator);
recipes.remove(mathCalculator);

// - Calculator -

recipes.addShaped(craftingCalculator, [
    [screwdriver, stonePlate, wrench],
    [stonePlate, LVCircuit, stonePlate],
    [ironScrew, glass, ironScrew]
]);
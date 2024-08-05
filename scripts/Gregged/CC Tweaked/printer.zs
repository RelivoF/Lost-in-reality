// - Created by Revilof - 
// - For Lost in reality -

// - Import -

import mods.gregtech.recipe.RecipeMap;

// - variables -

// - Machines -

val assembler as RecipeMap = <RecipeMap:assembler>;

// - Blocks -

// - CC Tweaked -

val printer = <computercraft:peripheral:3>;

// - Items -

// - Tools -

val screwdriver = <ore:toolScrewdriver>;
val wrench = <ore:toolWrench>;

// - Circuit -

val MVCircuit = <ore:circuitMv>;

// - Plates -

val stonePlate = <ore:plateStone>;

// - Dye -

val dye = <ore:dye>;

// - Bolt -

val ironBolt = <ore:boltIron>;

// - Recipes -

// - Removal -

recipes.remove(printer);

// - Crafting Table -

recipes.addShaped(printer, [
    [stonePlate, dye, stonePlate],
    [screwdriver, MVCircuit, wrench],
    [stonePlate, ironBolt, stonePlate]
]);

// - Assembler -

assembler.recipeBuilder()
    .inputs(stonePlate * 2, MVCircuit, dye, ironBolt)
    .outputs(printer)
    .duration(80)
    .EUt(60)
    .buildAndRegister();
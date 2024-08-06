// - Created by Revilof - 
// - For Lost in reality -

// - Importing -

import mods.gregtech.recipe.RecipeMap;

// - Variables -

// - Machines -

val assembler as RecipeMap = <recipemap:assembler>;

// - Blocks -

// - CC Tweaked -

val speaker = <computercraft:peripheral:5>;

// - Items -

// - Wire -

val annealedCopperWire = <ore:wireGtSingleAnnealedCopper>;
val fineCopperWire = <ore:wireFineCopper>;

// - Tools -

val screwdriver = <ore:toolScrewdriver>;
val wrench = <ore:toolWrench>;

// - Plates -

val stonePlate = <ore:plateStone>;

// - Ingots -

val magneticSteel = <ore:ingotSteelMagnetic>;

// - Recipes -

// - Removal -

recipes.remove(speaker);

// - Crafting Table -

recipes.addShaped(speaker, [
    [stonePlate, screwdriver, stonePlate],
    [annealedCopperWire, fineCopperWire, wrench],
    [stonePlate, magneticSteel, stonePlate]
]);

// - Assembler -

assembler.recipeBuilder()
    .inputs(stonePlate * 2, fineCopperWire, magneticSteel, annealedCopperWire)
    .outputs(speaker)
    .duration(60)
    .EUt(120)
    .buildAndRegister();
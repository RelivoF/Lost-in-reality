// - Made by Revilo12 -
// - Made for Lost in Reality -

// - Imports -

import mods.gregtech.recipe.RecipeMap;

// - Variables -

val assembler as RecipeMap = <RecipeMap:assembler>;

val wopper = <wopper:wopper>;

val hammer = <ore:toolHammer>;
val wrench = <ore:toolWrench>;

val woodPlank = <ore:plateWood>;
val woodGear = <ore:gearWood>;

val chest = <ore:chestWood>;

// - Recipes -

recipes.remove(wopper);

// - Crafting table -

recipes.addShaped(wopper, [
    [woodPlank, chest, woodPlank],
    [woodPlank, woodGear, woodPlank],
    [wrench, woodPlank, hammer]
]);

// - Assembler -

assembler.recipeBuilder()
    .inputs(chest, woodPlank * 5)
    .outputs(wopper)
    .circuit(2)
    .duration(20)
    .EUt(2)
    .buildAndRegister();
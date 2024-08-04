// - Created by Revilof -
// - For Lost in reality -

// - Imports -

import mods.gregtech.recipe.RecipeMap;

// - Variables -

// - Machines -

val assembler as RecipeMap = <recipemap:assembler>;

// - Items -

// - Scanner -

val scanner = <scannable:scanner>;

// - Sensor -

val MVSensor = <gregtech:meta_item_1:233>;

// - Plates -

val aluminiumPlates = <ore:plateAluminium>;

// - Rods -

val aluminiumRods = <ore:stickAluminium>;

// - Battery -

val MVBattery = <ore:batteryMv>;

// - Tools -

val screwdriver = <ore:toolScrewdriver>;
val wrench = <ore:toolWrench>;

// - Recipes -

// - Removal -

recipes.remove(scanner);

// - Crafting Table - 

// - Scanner -

recipes.addShaped(scanner, [
    [screwdriver, null, wrench],
    [aluminiumRods, MVSensor, aluminiumRods],
    [aluminiumPlates, MVBattery, aluminiumPlates]
]);
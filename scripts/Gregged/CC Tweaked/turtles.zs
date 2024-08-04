// - Created by Revilof - 
// - For Lost in reality -

// - Imports -

import mods.gregtech.recipe.RecipeMap;

// - Variables -

// - Blocks -

// - Computer -

val advComputer = <computercraft:computer:16384>;
val computer = <computercraft:computer>;

// - Turtle -

val advTurtle = <computercraft:turtle_advanced>;
val turtle = <computercraft:turtle_expanded>;

// - Items -

// - Thruster -

val thruster = <gregtech:meta_item_1:776>;

// - Cell -

val storage = <appliedenergistics2:storage_cell_1k>;

// - Tools -

val screwdriver = <ore:toolScrewdriver>;
val wrench = <ore:toolWrench>;

// - Plates -

val stonePlate = <ore:plateStone>;
val goldPlate = <ore:plateGold>;

// - Recipes -

// - Removal -

recipes.remove(turtle);
recipes.remove(advTurtle);

// - Crafting Table

// - Turtle -

recipes.addShaped(turtle, [
    [stonePlate, storage, stonePlate],
    [screwdriver, computer, wrench],
    [stonePlate, thruster, stonePlate]
]);

// - Advanced Turtle -

recipes.addShaped(advTurtle, [
    [goldPlate, storage, goldPlate],
    [screwdriver, advComputer, wrench],
    [goldPlate, thruster, goldPlate]
]);
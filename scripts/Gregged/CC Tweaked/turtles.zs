// - Created by Revilof - 
// - For Lost in reality -

// - Imports -

import mods.gregtech.recipe.RecipeMap;

// - Variables -

// - Machines -

val assembler as RecipeMap = <recipemap:assembler>;

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
val advThruster = <gregtech:meta_item_1:777>;

// - Cell -

val storage = <ore:chest>;

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
    [goldPlate, advThruster, goldPlate]
]);

// - Assembler - 

// - Turtle -

assembler.recipeBuilder()
    .inputs(stonePlate * 2, computer, storage, thruster)
    .outputs(turtle)
    .duration(30)
    .EUt(64)
    .buildAndRegister();

// - Advanced Turtle -

assembler.recipeBuilder()
    .inputs(goldPlate * 2, advComputer, storage, advThruster)
    .outputs(advTurtle)
    .duration(30)
    .EUt(128)
    .buildAndRegister();
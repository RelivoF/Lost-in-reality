// - Created by Revilof -
// - For Lost in reality -

// - Importing -

import mods.gregtech.recipe.RecipeMap;

// - Variables -

// - Machines -

val assembler as RecipeMap = <recipemap:assembler>;

// - Blocks -

// - CC Tweaked -

val computer = <computercraft:computer:0>;
val advancedComputer = <computercraft:computer:16384>;

// - Minecraft -

val glass = <ore:paneGlass>;

// - Items -

// - Tools -

val screwdriver = <ore:toolScrewdriver>;
val wrench = <ore:toolWrench>;

// - Circuit -

val MVCircuit = <ore:circuitMv>;
val HVCircuit = <ore:circuitHv>;

// - Plates -

val stonePlate = <ore:plateStone>;
val goldPlate = <ore:plateGold>;

// - Wires -

val annealedCopperWire = <ore:wireGtSingleAnnealedCopper>;
val blueAlloyWire = <ore:wireGtSingleBlueAlloy>;



// - Recipes -

// - Removal -

recipes.remove(computer);
recipes.remove(advancedComputer);

// - Crafting Table -

// - Computer -

recipes.addShaped(computer, [
    [stonePlate, screwdriver, stonePlate],
    [annealedCopperWire, MVCircuit, wrench],
    [stonePlate, glass, stonePlate]
]);

// - Advanced Computer -

recipes.addShaped(advancedComputer, [
    [goldPlate, screwdriver, goldPlate],
    [blueAlloyWire, HVCircuit, wrench],
    [goldPlate, glass, goldPlate]
]);

// - Assembler -

// - Computer -

assembler.recipeBuilder()
    .inputs(MVCircuit, stonePlate * 2, glass)
    .outputs(computer)
    .duration(60)
    .EUt(64)
    .buildAndRegister();

// - Advanced Computer

assembler.recipeBuilder()
    .inputs(HVCircuit, goldPlate * 2, glass)
    .outputs(advancedComputer)
    .duration(80)
    .EUt(512)
    .buildAndRegister();

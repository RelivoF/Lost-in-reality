// - Created by Revilof - 
// - For Lost in reality -

// - Import - 

import mods.gregtech.recipe.RecipeMap;

// - Variables -

// - machines -

val assembler as RecipeMap = <recipemap:assembler>;

// - blocks -

// - CC Tweaked -

val monitor = <computercraft:peripheral:2>;
val advMonitor = <computercraft:peripheral:4>;

// - Wires -

val annealedCopperWire = <ore:wireGtSingleAnnealedCopper>;
val blueAlloyWire = <ore:wireGtSingleBlueAlloy>;

// - Minecraft -

val glass = <ore:paneGlass>;

// - Items -

// - Tools -

val screwdriver = <ore:toolScrewdriver>;
val wrench = <ore:toolWrench>;

// - Plates -

val stonePlate = <ore:plateStone>;
val goldPlate = <ore:plateGold>;

// - circuit -

val goodCircuit = <gregtech:meta_item_1:402>;

// - Recipes -

// - Removal -

recipes.remove(monitor);
recipes.remove(advMonitor);

// - Crafting Table -

// - Monitor -

recipes.addShaped(monitor, [
    [stonePlate, screwdriver, stonePlate],
    [annealedCopperWire, goodCircuit, wrench],
    [stonePlate, glass, stonePlate]
]);

// - Advanced Monitor -

recipes.addShaped(advMonitor, [
    [goldPlate, screwdriver, goldPlate],
    [blueAlloyWire, goodCircuit, wrench],
    [goldPlate, glass, goldPlate]
]);

// - Assembler -

// - Monitor -

assembler.recipeBuilder()
    .inputs(stonePlate * 2, annealedCopperWire, goodCircuit, glass)
    .outputs(monitor)
    .duration(100)
    .EUt(120)
    .buildAndRegister();

// - Advanced Monitor -

assembler.recipeBuilder()
    .inputs(goldPlate * 2, blueAlloyWire, goodCircuit, glass)
    .outputs(advMonitor)
    .duration(100)
    .EUt(120)
    .buildAndRegister();

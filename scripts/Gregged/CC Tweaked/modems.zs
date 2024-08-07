// - Created by Revilof - 
// - For Lost in reality -

// - Imports -

import mods.gregtech.recipe.RecipeMap;

// - Variables -

// - Machines - 

val assembler as RecipeMap = <recipemap:assembler>;

// - Blocks -

// - Modems -

val enderModem = <computercraft:advanced_modem>;
val wirelessModem = <computercraft:peripheral:1>;
val wiredModem = <computercraft:cable:1>;
val splitWiredModem = <computercraft:wired_modem_full>;

// - Cable - 

val cableNetwork = <computercraft:cable>;

// - Blocks -

// - Wire -

val borosilicateGlassFiber = <ore:wireFineBorosilicateGlass>;

// - Plates -

val redstonePlate = <ore:plateRedstone>;
val stonePlate = <ore:plateStone>;
val goldPlate = <ore:plateGold>;

// - Minecraft -

val eyeOfEnder = <ore:gemEnderEye>;
val enderPearl = <ore:enderpearl>;

// - Tools -

val screwdriver = <ore:toolScrewdriver>;
val wrench = <ore:toolWrench>;
val hammer = <ore:toolHammer>;

// - Recipes -

// - Removal -

recipes.remove(wiredModem);
recipes.remove(wirelessModem);
recipes.remove(enderModem);
recipes.remove(splitWiredModem);
recipes.remove(cableNetwork);

// - Crafting Table -

// - Wireless Modem -

recipes.addShaped(wiredModem, [
    [stonePlate, screwdriver, stonePlate],
    [redstonePlate, cableNetwork, wrench],
    [stonePlate, hammer, stonePlate]
]);

// - Wireless Modem -

recipes.addShaped(wirelessModem, [
    [stonePlate, screwdriver, stonePlate],
    [redstonePlate, enderPearl, wrench],
    [stonePlate, hammer, stonePlate]
]);

// - Ender Modem -

recipes.addShaped(enderModem, [
    [goldPlate, screwdriver, goldPlate],
    [redstonePlate, eyeOfEnder, wrench],
    [goldPlate, hammer, goldPlate]
]);

// - Split Wired Modem -

recipes.addShaped(splitWiredModem, [
    [screwdriver, wiredModem, wrench],
    [wiredModem, wiredModem, wiredModem],
    [wiredModem, wiredModem, hammer]
]);

// - Network Cable -

recipes.addShaped(cableNetwork * 16, [
    [screwdriver, stonePlate, null],
    [null , borosilicateGlassFiber, null],
    [wrench, stonePlate, null]
]);

// - Assembler -

// - Wired Modem -

assembler.recipeBuilder()
    .inputs(stonePlate * 2, cableNetwork, redstonePlate)
    .outputs(wiredModem)
    .duration(80)
    .EUt(64)
    .buildAndRegister();

// - Wireless Modem -

assembler.recipeBuilder()
    .inputs(stonePlate * 2, enderPearl, redstonePlate)
    .outputs(wirelessModem)
    .duration(80)
    .EUt(64)
    .buildAndRegister();

// - Ender Modem -

assembler.recipeBuilder()
    .inputs(goldPlate * 2, eyeOfEnder, redstonePlate)
    .outputs(enderModem)
    .duration(80)
    .EUt(128)
    .buildAndRegister();

// - Split Wired Modem -

assembler.recipeBuilder()
    .inputs(wiredModem * 6)
    .outputs(splitWiredModem)
    .duration(140)
    .EUt(64)
    .buildAndRegister();

// - Network Cable -

assembler.recipeBuilder()
    .inputs(stonePlate, borosilicateGlassFiber)
    .outputs(cableNetwork * 16)
    .duration(40)
    .EUt(64)
    .buildAndRegister();
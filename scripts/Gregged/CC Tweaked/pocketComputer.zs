// - Created by Revilof - 
// - For Lost in reality -

// - Variables -

// - Blocks -

// - Minecraft -

val glass = <ore:paneGlass>;

// - Items -

// - Tools -

val screwdriver = <ore:toolScrewdriver>;
val wrench = <ore:toolWrench>;

// - Circuit -

val MVCircuit = <ore:circuitMv>;
val HVCircuit = <ore:circuitHv>;

// - Battery -

val MVBattery = <ore:batteryMv>;
val HVBattery = <ore:batteryHv>;

// - Plates -

val stonePlate = <ore:plateStone>;
val goldPlate = <ore:plateGold>;

// - Pocket Computer -

val pocketComputer =<computercraft:pocket_computer:0>;
val advancedPocketComputer = <computercraft:pocket_computer:1>;

// - Recipes - 

// - Removal -

recipes.remove(pocketComputer);
recipes.remove(advancedPocketComputer);

// - Crafting Table -

// - Pocket Computer - 

recipes.addShaped(pocketComputer, [
    [stonePlate, MVBattery, stonePlate],
    [screwdriver, MVCircuit, wrench],
    [stonePlate, glass, stonePlate]
]);

// - Advanced Pocket Computer -

recipes.addShaped(advancedPocketComputer, [
    [goldPlate, HVBattery, goldPlate],
    [screwdriver, HVCircuit, wrench],
    [goldPlate, glass, goldPlate]
]);
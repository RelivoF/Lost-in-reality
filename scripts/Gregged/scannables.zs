// - Created by Revilof -
// - For Lost in reality -

// - Variables -

// - Items -

// - module -

val blankModule = <scannable:module_blank>;

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

// - Board -

val board = <gregtech:meta_item_1:382>;

// - wire - 

val goldWire = <ore:wireFineGold>;

// - dye -

val green = <ore:dyeGreen>;

// - Recipes -

// - Removal -

recipes.remove(scanner);
recipes.remove(blankModule);

// - Crafting Table - 

// - Scanner -

recipes.addShaped(scanner, [
    [screwdriver, null, wrench],
    [aluminiumRods, MVSensor, aluminiumRods],
    [aluminiumPlates, MVBattery, aluminiumPlates]
]);

// - module -

recipes.addShaped(blankModule, [
    [screwdriver, green, null],
    [null, board, null],
    [wrench, goldWire, null]
]);
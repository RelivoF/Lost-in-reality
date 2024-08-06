// - Created by Revilof - 
// - For Lost in reality -

// - Variables -

// - Blocks -

// - Disk Drive -

val diskDrive = <computercraft:peripheral>;

// - Wires -

val annealedCopperWire = <ore:wireGtSingleAnnealedCopper>;

// - Plates -

val stonePlate = <ore:plateStone>;

// - Items - 

// - Tools -

val screwdriver = <ore:toolScrewdriver>;
val wrench = <ore:toolWrench>;

// - Dyes -

val black = <ore:dyeBlack>;
val red = <ore:dyeRed>;
val green = <ore:dyeGreen>;
val brown = <ore:dyeBrown>;
val blue = <ore:dyeBlue>;
val purple = <ore:dyePurple>;
val cyan = <ore:dyeCyan>;
val lightGray = <ore:dyeLightGray>;
val gray = <ore:dyeGray>;
val pink = <ore:dyePink>;
val lime = <ore:dyeLime>;
val yellow = <ore:dyeYellow>;
val lightBlue = <ore:dyeLightBlue>;
val magenta = <ore:dyeMagenta>;
val orange = <ore:dyeOrange>;
val white = <ore:dyeWhite>;

// - Plates -

val plasticPlate = <ore:platePlastic>;

// - Ingots -

val magneticSteel = <ore:ingotSteelMagnetic>;

// - Disks -

val blackDisk = <computercraft:disk_expanded>.withTag({color: 1118481});
val redDisk = <computercraft:disk_expanded>.withTag({color: 13388876});
val greenDisk = <computercraft:disk_expanded>.withTag({color: 5744206});
val brownDisk = <computercraft:disk_expanded>.withTag({color: 8349260});
val blueDisk = <computercraft:disk_expanded>.withTag({color: 3368652});
val purpleDisk = <computercraft:disk_expanded>.withTag({color: 11691749});
val cyanDisk = <computercraft:disk_expanded>.withTag({color: 5020082});
val lightGrayDisk = <computercraft:disk_expanded>.withTag({color: 10066329});
val GrayDisk = <computercraft:disk_expanded>.withTag({color: 5000268});
val pinkDisk = <computercraft:disk_expanded>.withTag({color: 15905484});
val limeDisk = <computercraft:disk_expanded>.withTag({color: 8375321});
val yellowDisk = <computercraft:disk_expanded>.withTag({color: 14605932});
val lightBlueDisk = <computercraft:disk_expanded>.withTag({color: 10072818});
val magentaDisk = <computercraft:disk_expanded>.withTag({color: 15040472});
val orangeDisk = <computercraft:disk_expanded>.withTag({color: 15905331});
val whiteDisk = <computercraft:disk_expanded>.withTag({color: 15790320});

// - Circuit -

val MVCircuit = <ore:circuitMv>;

// - Recipes -

// - Removal -

recipes.remove(blackDisk);
recipes.remove(redDisk);
recipes.remove(greenDisk);
recipes.remove(brownDisk);
recipes.remove(blueDisk);
recipes.remove(purpleDisk);
recipes.remove(cyanDisk);
recipes.remove(lightGrayDisk);
recipes.remove(GrayDisk);
recipes.remove(pinkDisk);
recipes.remove(limeDisk);
recipes.remove(yellowDisk);
recipes.remove(lightBlueDisk);
recipes.remove(magentaDisk);
recipes.remove(orangeDisk);
recipes.remove(whiteDisk);
recipes.remove(diskDrive);

// - Crafting Table -

// - black disk -

recipes.addShaped(blackDisk, [
    [null, plasticPlate, null],
    [plasticPlate, magneticSteel, plasticPlate],
    [null, black, null]
]);

// - red disk -

recipes.addShaped(redDisk, [
    [null, plasticPlate, null],
    [plasticPlate, magneticSteel, plasticPlate],
    [null, red, null]
]);

// - green disk -

recipes.addShaped(greenDisk, [
    [null, plasticPlate, null],
    [plasticPlate, magneticSteel, plasticPlate],
    [null, green, null]
]);

// - brown disk -

recipes.addShaped(brownDisk, [
    [null, plasticPlate, null],
    [plasticPlate, magneticSteel, plasticPlate],
    [null, brown, null]
]);

// - blue disk -

recipes.addShaped(blueDisk, [
    [null, plasticPlate, null],
    [plasticPlate, magneticSteel, plasticPlate],
    [null, blue, null]
]);

// - purple disk -

recipes.addShaped(purpleDisk, [
    [null, plasticPlate, null],
    [plasticPlate, magneticSteel, plasticPlate],
    [null, purple, null]
]);

// - cyan disk -

recipes.addShaped(cyanDisk, [
    [null, plasticPlate, null],
    [plasticPlate, magneticSteel, plasticPlate],
    [null, cyan, null]
]);

// - light gray disk -

recipes.addShaped(lightGrayDisk, [
    [null, plasticPlate, null],
    [plasticPlate, magneticSteel, plasticPlate],
    [null, lightGray, null]
]);

// - gray disk -

recipes.addShaped(GrayDisk, [
    [null, plasticPlate, null],
    [plasticPlate, magneticSteel, plasticPlate],
    [null, gray, null]
]);

// - pink disk -

recipes.addShaped(pinkDisk, [
    [null, plasticPlate, null],
    [plasticPlate, magneticSteel, plasticPlate],
    [null, pink, null]
]);

// - lime disk -

recipes.addShaped(limeDisk, [
    [null, plasticPlate, null],
    [plasticPlate, magneticSteel, plasticPlate],
    [null, lime, null]
]);

// - yellow disk -

recipes.addShaped(yellowDisk, [
    [null, plasticPlate, null],
    [plasticPlate, magneticSteel, plasticPlate],
    [null, yellow, null]
]);

// - light blue disk -

recipes.addShaped(lightBlueDisk, [
    [null, plasticPlate, null],
    [plasticPlate, magneticSteel, plasticPlate],
    [null, lightBlue, null]
]);

// - magenta disk -

recipes.addShaped(magentaDisk, [
    [null, plasticPlate, null],
    [plasticPlate, magneticSteel, plasticPlate],
    [null, magenta, null]
]);

// - orange disk -

recipes.addShaped(orangeDisk, [
    [null, plasticPlate, null],
    [plasticPlate, magneticSteel, plasticPlate],
    [null, orange, null]
]);

// - white disk -

recipes.addShaped(whiteDisk, [
    [null, plasticPlate, null],
    [plasticPlate, magneticSteel, plasticPlate],
    [null, white, null]
]);

// - Disk Drive -

recipes.addShaped(diskDrive, [
    [stonePlate, screwdriver, stonePlate],
    [annealedCopperWire, MVCircuit, wrench],
    [stonePlate, magneticSteel, stonePlate]
]);

// - Assembler coming soon -
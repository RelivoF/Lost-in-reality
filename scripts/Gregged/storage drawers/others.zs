// - Created by Revilof - 
// - For Lost in Reality -

//- Variables -

// - Drawer -

val compactingDrawer = <storagedrawers:compdrawers>;
val drawerController = <storagedrawers:controller>;
val controllerSlave = <storagedrawers:controllerslave>;
val drawers = <ore:drawerBasic>;

// - Blocks -

// - Minecraft -

val piston = <minecraft:piston>;

// - Items -

// - Ingots -

val ironIngot = <minecraft:iron_ingot>;

// - Plates -

val stonePlate = <ore:plateStone>;

// - Screw -

val ironScrew = <ore:screwIron>;

// - Circuit -

val LVCircuit = <ore:circuitLv>;

// - Tools -

val screwdriver = <ore:toolScrewdriver>;
val wrench = <ore:toolWrench>;

// - Minecraft -

val comp = <minecraft:comparator>;

// - Recipe -

// - Crafting Table -

// - Compacting Drawer -

recipes.addShaped(compactingDrawer, [
    [screwdriver, stonePlate, wrench],
    [piston, drawers, piston],
    [ironScrew, stonePlate, ironScrew]
]);

// - Controller -

recipes.addShaped(drawerController, [
    [screwdriver, stonePlate, wrench],
    [comp, LVCircuit, comp],
    [ironScrew, drawers, ironScrew]
]);

// - Slave -

recipes.addShaped(controllerSlave, [
    [screwdriver, drawers, wrench],
    [comp, LVCircuit, comp],
    [ironScrew, stonePlate, ironScrew]
]);
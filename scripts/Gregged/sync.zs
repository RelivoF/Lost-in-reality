// - Created by Revilof -
// - for Lost In Reality -

// - Importing -

import mods.gregtech.recipe.RecipeMap;

// - Variables -

// - Machines -

val assembler as RecipeMap = <recipemap:assembler>;

// - Tools -

val screwdriver = <ore:toolScrewdriver>;
val hammer = <ore:toolHammer>;

// - Blocks

// - Sync

val storage = <sync:item_shell_storage:0>;
val constructor = <sync:item_shell_constructor:0>;
val treadmill = <sync:item_treadmill:0>;

// - CC Tweaked -

val monitor = <computercraft:peripheral:2>;

// - Minecraft -

val glass = <minecraft:glass:0>;
val ironBar = <minecraft:iron_bars:0>;

// - Items -

// - GregTech -

val obsidianPlate = <gregtech:meta_plate:297>;
val redstonePlate = <gregtech:meta_plate:2064>;
val lapisPlate = <gregtech:meta_plate:2007>;

// - Sync

val core = <sync:item_placeholder:0>;

// - Minecraft -

val enderPearl = <minecraft:ender_pearl:0>;

// - Recipes -

// - Removal -

// - Sync -

recipes.remove(storage);
recipes.remove(constructor);
recipes.remove(treadmill);
recipes.remove(core);

// - Crafting -

// - Storage -

recipes.addShaped(storage, [
    [obsidianPlate, hammer, obsidianPlate],
    [glass, core, glass],
    [obsidianPlate, screwdriver, obsidianPlate]
]);

// - Constructor -

recipes.addShaped(constructor, [
    [obsidianPlate, screwdriver, obsidianPlate],
    [glass, core, glass],
    [obsidianPlate, redstonePlate, obsidianPlate]
]);

// - Treadmill -

recipes.addShaped(treadmill, [
    [null, null, monitor],
    [screwdriver, hammer, ironBar],
    [obsidianPlate, obsidianPlate, redstonePlate]
]);

// - Assembler -

// - storage -

assembler.recipeBuilder()
    .inputs(obsidianPlate * 2, glass, core)
    .outputs(storage)
    .duration(80)
    .EUt(120)
    .buildAndRegister();

// - constructor -

assembler.recipeBuilder()
    .inputs(obsidianPlate * 2, core, glass, redstonePlate)
    .outputs(constructor)
    .duration(80)
    .EUt(120)
    .buildAndRegister();

// - Core -

assembler.recipeBuilder()
    .inputs(lapisPlate * 2, enderPearl)
    .outputs(core)
    .duration(20)
    .EUt(120)
    .buildAndRegister();

// - treadmill -

assembler.recipeBuilder()
    .inputs(monitor, obsidianPlate, redstonePlate, ironBar)
    .outputs(treadmill)
    .duration(60)
    .EUt(120)
    .buildAndRegister();

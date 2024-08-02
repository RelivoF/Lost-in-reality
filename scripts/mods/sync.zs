// - Created by Revilof -
// - for Lost In Reality -

// - Importing -

import mods.gregtech.recipe.RecipeMap;

// - Variables -

// - Machines -

val assembler as RecipeMap = <recipemap:assembler>;

// - Tools -

val screwdriver = <gregtech:screwdriver:0>;
val hammer = <gregtech:hammer:0>;

// - Blocks

val storage = <sync:item_shell_storage:0>;
val constructor = <sync:item_shell_constructor:0>;
val treadmill = <sync:item_treadmill:0>;

val monitor = <computercraft:peripheral:2>;

val glass = <minecraft:glass:0>;
val ironBar = <minecraft:iron_bars:0>;

// - Items -

val obsidianPlate = <gregtech:meta_plate:297>;
val redstonePlate = <gregtech:meta_plate:2064>;
val lapisPlate = <gregtech:meta_plate:2007>;

val core = <sync:item_placeholder:0>;

val enderPearl = <minecraft:ender_pearl:0>;

// - Recipes -

// - Removal -

recipes.remove(storage);
recipes.remove(constructor);
recipes.remove(treadmill);
recipes.remove(core);

// - Crafting -

recipes.addShaped(storage, [
    [obsidianPlate, hammer, obsidianPlate],
    [glass, core, glass],
    [obsidianPlate, screwdriver, obsidianPlate]
]);

recipes.addShaped(constructor, [
    [obsidianPlate, screwdriver, obsidianPlate],
    [glass, core, glass],
    [obsidianPlate, redstonePlate, obsidianPlate]
]);

recipes.addShaped(treadmill, [
    [null, null, monitor],
    [screwdriver, hammer, ironBar],
    [obsidianPlate, obsidianPlate, redstonePlate]
])

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
    .inputs(obsidianPlate * 2, glass, core, redstonePlate)
    .outputs(constructor)
    .duration(80)
    .EUt(120)
    .buildAndRegister();

// - Core -
assembler.recipeBuilder()
    .inputs(lapisPlate * 2, ender_pearl)
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
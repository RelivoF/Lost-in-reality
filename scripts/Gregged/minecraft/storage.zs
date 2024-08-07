// - Created by Revilof -
// - For Lost in reality -

// - Importing -

import mods.gregtech.recipe.RecipeMap;

// - Variables - 

// - Machines -

val assembler as RecipeMap = <RecipeMap:assembler>;

// - Blocks -

// - Chests - 

val chest = <minecraft:chest>;
val enderChest = <minecraft:ender_chest>;

// - Wood -

val wood = <ore:logWood>;
val planks = <ore:plankWood>;

// - Items -

// - Tools -

val screwdriver = <ore:toolScrewdriver>;
val wrench = <ore:toolWrench>;
val saw = <ore:toolSaw>;

// - Plates -

val obsidianPlate = <ore:plateObsidian>;

// - Eye of ender -

val eyeOfEnder = <ore:gemEnderEye>;

// - Screw -

val steelScrew = <ore:screwSteel>;

// - Recipes -

// - Chest -

recieps.addShaped(chest, [
    [wood, planks, wood],
    [planks, saw, planks],
    [wood, planks, wood]
]);

// - Ender Chest -

recipes.addShaped(enderChest, [
    [screwdriver, obsidianPlate, steelScrew],
    [obsidianPlate, eyeOfEnder, obsidianPlate],
    [steelScrew, obsidianPlate, wrench]
]);

// - Assembler - 

// - Chest -

assembler.recipeBuilder()
    .inputs(wood * 2, planks * 2)
    .outputs(chest)
    .duration(40)
    .EUt(15)
    .buildAndRegister();

// - ender Chest -

assembler.recipeBuilder()
    .inputs(obsidianPlate * 2, eyeOfEnder)
    .outputs(enderChest)
    .duration(120)
    .EUt(64)
    .buildAndRegister();
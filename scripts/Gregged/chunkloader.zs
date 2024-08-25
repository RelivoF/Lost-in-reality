// - Created by Revilof -
// - For Lost in reality -

// - Imports -

import mods.gregtech.recipe.RecipeMap;

// - Variable -

val singleChunkLoader = <chunkloaders:single_chunk_loader>;
val basicChunkLoader = <chunkloaders:basic_chunk_loader>;
val advancedChunkLoader = <chunkloaders:advanced_chunk_loader>;
val ultimateChunkLoader = <chunkloaders:ultimate_chunk_loader>;

val wrench = <ore:toolWrench>;
val hammer = <ore:craftingToolHardHammer>;

val eyeOfEnder = <ore:gemEnderEye>;
val enderPearl = <ore:enderpearl>;

val obsidianPlate = <ore:plateObsidian>;
val goldPlate = <ore:plateGold>;
val diamondPlate = <ore:plateDiamond>;

val assembler as RecipeMap = <recipemap:assembler>;
val cutter as RecipeMap = <recipemap:cutter>;

// - Recipes -

recipes.remove(singleChunkLoader);
recipes.remove(basicChunkLoader);
recipes.remove(advancedChunkLoader);
recipes.remove(ultimateChunkLoader);

// - Crafting -

recipes.addShaped(basicChunkLoader, [
    [wrench, obsidianPlate, hammer],
    [obsidianPlate, enderPearl, obsidianPlate],
    [null, obsidianPlate, null]
]);

recipes.addShaped(basicChunkLoader, [
    [singleChunkLoader, singleChunkLoader, singleChunkLoader],
    [singleChunkLoader, singleChunkLoader, singleChunkLoader],
    [singleChunkLoader, singleChunkLoader, singleChunkLoader]
]);

recipes.addShaped(advancedChunkLoader, [
    [wrench, goldPlate, hammer],
    [goldPlate, basicChunkLoader, goldPlate],
    [null, goldPlate, null]
]);

recipes.addShaped(ultimateChunkLoader, [
    [wrench, diamondPlate, hammer],
    [eyeOfEnder, advancedChunkLoader, eyeOfEnder],
    [null, diamondPlate, null]
]);

// - Assembler -

assembler.recipeBuilder()   
    .inputs(enderPearl, obsidianPlate * 2)
    .outputs(basicChunkLoader)
    .duration(160)
    .EUt(32)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(basicChunkLoader, goldPlate * 2)
    .outputs(advancedChunkLoader)
    .duration(160)
    .EUt(128)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(advancedChunkLoader, eyeOfEnder, diamondPlate * 2)
    .outputs(ultimateChunkLoader)
    .duration(160)
    .EUt(512)
    .buildAndRegister();

// - Cutter -

cutter.recipeBuilder()
    .inputs(basicChunkLoader)
    .fluidInputs([<liquid:water> * 350])
    .outputs(singleChunkLoader * 9)
    .duration(120)
    .EUt(64)
    .buildAndRegister();

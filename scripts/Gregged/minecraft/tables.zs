// - Created by Revilof -
// - For Lost in reality -

// - Import -

import mods.gregtech.recipe.RecipeMap;

// - Variables -

// - Machines -

val assembler as RecipeMap = <RecipeMap:assembler>;

// - Blocks -

// - Minecraft -

// - Tables -

val craftingTable = <minecraft:crafting_table>;
val enchantingTable = <minecraft:enchanting_table>;
val anvil = <minecraft:anvil>;

// - Wood -

val wood = <ore:logWood>;

// - Gems -

val ironBlock = <ore:blockIron>;
val obsidian = <minecraft:obsidian>;

// - Items -

// - Minecraft -

// - Misc -

val flint = <minecraft:flint>;
val bookQuill = <minecraft:writable_book>;

// - Plates -

val obsidianPlate = <ore:plateObsidian>;
val denseObsidianPlate = <ore:plateDenseObsidian>;
val diamondPlate = <ore:plateDiamond>;
val ironPlate = <ore:plateIron>;

// - Tools -

val screwdriver = <ore:toolScrewdriver>;
val wrench = <ore:toolWrench>;
val hammer = <ore:toolHammer>;

// - Recipes -

// - Removal -

recipes.remove(craftingTable);
recipes.remove(enchantingTable);
recipes.remove(anvil);

// Crafting Table * 1
<recipemap:assembler>.findRecipe(6, [<metaitem:circuit.integrated>.withTag({Configuration: 4}), <metaitem:plateWood> * 4], null).remove();

// - Crafting Table -

// - Crafting Table -

recipes.addShaped(craftingTable, [
    [flint],
    [wood]
]);

// - enchanting Table -

recipes.addShaped(enchantingTable, [
    [wrench, bookQuill, hammer],
    [diamondPlate, denseObsidianPlate, diamondPlate],
    [obsidianPlate, obsidian, obsidianPlate]
]);

// - Anvil -

recipes.addShaped(anvil, [
    [ironBlock, ironBlock, ironBlock],
    [screwdriver, ironPlate, wrench],
    [ironPlate, ironPlate, ironPlate]
]);

// - Assembler -

// - Crafting Table -

assembler.recipeBuilder()
    .inputs(wood, flint)
    .outputs(craftingTable)
    .duration(20)
    .EUt(16)
    .buildAndRegister();

// - Enchanting table -

assembler.recipeBuilder()   
    .inputs(bookQuill, diamondPlate, obsidianPlate, obsidian)
    .outputs(enchantingTable)
    .duration(120)
    .EUt(64)
    .buildAndRegister();

// - Anvil -

assembler.recipeBuilder()
    .inputs(ironBlock * 2, ironPlate * 3)
    .outputs(anvil)
    .duration(80)
    .EUt(32)
    .buildAndRegister();
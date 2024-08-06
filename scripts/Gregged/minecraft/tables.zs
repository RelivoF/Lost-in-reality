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

// - Crafting Table -

// - Crafting Table -

recipes.addShaped(craftingTable, [
    [flint, flint],
    [wood, wood]
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
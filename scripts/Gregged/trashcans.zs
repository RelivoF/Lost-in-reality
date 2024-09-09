// - Created by Revilo12 -
// - Made for Lost in Reality -

// - Import -

import mods.gregtech.recipe.RecipeMap;

// - Variables -

val assembler as RecipeMap = <recipemap:assembler>;

val itemTrashCan = <trashcans:item_trash_can>;
val liquidTrashCan = <trashcans:liquid_trash_can>;
val energyTrashCan = <trashcans:energy_trash_can>;
val ultimateTrashCan = <trashcans:ultimate_trash_can>;

val voidUpgrade = <storagedrawers:upgrade_void>;

val screwdriver = <ore:toolScrewdriver>;
val wrench = <ore:toolWrench>;

val ironPlate = <ore:plateIron>;
val ironScrew = <ore:screwIron>;

val cobaltPlate = <ore:plateCobalt>;

val redAlloyPlate = <ore:plateRedAlloy>;

val chest = <ore:chest>;
val bucket = <minecraft:bucket>;
val redAlloyWire = <ore:wireGtSingleRedAlloy>;

// - Recipes -

recipes.remove(itemTrashCan);
recipes.remove(liquidTrashCan);
recipes.remove(energyTrashCan);
recipes.remove(ultimateTrashCan);

// - Crafting table -

recipes.addShaped(itemTrashCan, [
    [ironScrew, ironPlate, ironScrew],
    [screwdriver, voidUpgrade, wrench],
    [ironPlate, chest, ironPlate]
]);

recipes.addShaped(liquidTrashCan, [
    [ironScrew, cobaltPlate, ironScrew],
    [screwdriver, voidUpgrade, wrench],
    [cobaltPlate, bucket, cobaltPlate]
]);

recipes.addShaped(energyTrashCan, [
    [ironScrew, redAlloyPlate, ironScrew],
    [screwdriver, voidUpgrade, wrench],
    [redAlloyPlate, redAlloyWire, redAlloyPlate]
]);

// - Assembler -

assembler.recipeBuilder()
    .inputs(itemTrashCan, liquidTrashCan, energyTrashCan)
    .outputs(ultimateTrashCan)
    .duration(120)
    .EUt(64)
    .buildAndRegister();
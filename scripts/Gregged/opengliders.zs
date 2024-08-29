// - Created by Revilo12 -
// - Made for Lost in Reality -

// - importing - 

import mods.gregtech.recipe.RecipeMap;

// - Variables -

val assembler as RecipeMap = <RecipeMap:assembler>;

val wingRight = <openglider:hang_glider_part:1>;
val wingLeft = <openglider:hang_glider_part>;
val scaffold = <openglider:hang_glider_part:2>;

val glider = <openglider:hang_glider_basic>;
val gliderAdvanced = <openglider:hang_glider_advanced>;

val diamondRod = <ore:stickDiamond>;
val ironRod = <ore:stickIron>;

val screwdriver = <ore:toolScrewdriver>;
val wrench = <ore:toolWrench>;

// - Recipes -

recipes.removeShaped(<openglider:hang_glider_basic>, [[null, null, null],[<openglider:hang_glider_part>, <openglider:hang_glider_part:2>, <openglider:hang_glider_part:1>], [null, null, null]]);
recipes.removeShaped(<openglider:hang_glider_advanced>, [[null, <minecraft:elytra>, null],[<openglider:hang_glider_part>, <openglider:hang_glider_basic>, <openglider:hang_glider_part:1>], [null, <minecraft:elytra>, null]]);
recipes.remove(scaffold);

// - Crafting Table -

recipes.addShaped(scaffold, [
    [screwdriver, ironRod, wrench],
    [ironRod, null, ironRod],
    [ironRod, ironRod, ironRod]
]);

// - Assembler -

assembler.recipeBuilder()
    .inputs(wingLeft, scaffold, wingRight)
    .outputs(glider)
    .duration(40)
    .EUt(32)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(diamondRod * 2, wingLeft, glider, wingRight)
    .outputs(gliderAdvanced)
    .duration(80)
    .EUt(128)
    .buildAndRegister();
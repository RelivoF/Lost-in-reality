// - Created by Revilo12 -
// - Made for Lost in Reality -

// - Import -

import mods.gregtech.recipe.RecipeMap;

// - Variables -

val assembler as RecipeMap = <recipemap:assembler>;

val luvCircuit = <ore:circuitLuv>;

val europiumWire = <ore:wireFineEuropium>;

val plateNaquadah = <ore:plateNaquadah>;
val screwNaquadah = <ore:screwNaquadah>;

val portalFrame = <portality:frame>;
val portalController = <portality:controller>;
val dimenModule = <portality:module_interdimensional>;
val itemModule0 = <portality:module_items>;
val itemModule1 = <portality:module_items:1>;
val fluidModule0 = <portality:module_fluids>;
val fluidModule1 = <portality:module_fluids:1>;
val energyModule0 = <portality:module_energy>;
val energyModule1 = <portality:module_energy:1>;

val advancedComputer = <computercraft:computer:16384>;

val screwdriver = <ore:toolScrewdriver>;
val wrench = <ore:toolWrench>;

val eyeOfEnder = <ore:gemEnderEye>;

val chest = <minecraft:chest>;

val aluminiumDrum = <gregtech:machine:1613>;
val battery = <gregtech:battery_block>;

// - Recipes -

// - Removal -

recipes.remove(portalFrame);
recipes.remove(portalController);
recipes.remove(dimenModule);
recipes.remove(itemModule0);
recipes.remove(itemModule1);
recipes.remove(fluidModule0);
recipes.remove(fluidModule1);
recipes.remove(energyModule0);
recipes.remove(energyModule1);

// - Assembler -

assembler.recipeBuilder()
    .inputs(plateNaquadah * 4, screwNaquadah * 4, europiumWire * 32, luvCircuit)
    .circuit(1)
    .outputs(portalFrame * 2)
    .duration(240)
    .EUt(32768)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(portalFrame * 4, screwNaquadah * 4, advancedComputer)
    .circuit(2)
    .outputs(portalController)
    .duration(120)
    .EUt(32768)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(portalFrame * 4, screwNaquadah * 4, eyeOfEnder)
    .circuit(3)
    .outputs(dimenModule)
    .duration(120)
    .EUt(32768)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(portalFrame * 4, screwNaquadah * 4, chest)
    .circuit(3)
    .outputs(itemModule0)
    .duration(120)
    .EUt(32768)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(portalFrame * 4, screwNaquadah * 4, chest)
    .circuit(4)
    .outputs(itemModule1)
    .duration(120)
    .EUt(32768)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(portalFrame * 4, screwNaquadah * 4, aluminiumDrum)
    .circuit(3)
    .outputs(fluidModule0)
    .duration(120)
    .EUt(32768)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(portalFrame * 4, screwNaquadah * 4, aluminiumDrum)
    .circuit(4)
    .outputs(fluidModule1)
    .duration(120)
    .EUt(32768)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(portalFrame * 4, screwNaquadah * 4, battery)
    .circuit(3)
    .outputs(energyModule0)
    .duration(120)
    .EUt(32768)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(portalFrame * 4, screwNaquadah * 4, battery)
    .circuit(4)
    .outputs(energyModule1)
    .duration(120)
    .EUt(32768)
    .buildAndRegister();
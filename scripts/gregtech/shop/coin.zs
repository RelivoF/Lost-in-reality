// - Created by Revilo12 -
// - Made for Lost in Reality -

// - Importing -

import mods.gregtech.recipe.RecipeMap;

// - Variables -

val formingPress as RecipeMap = <recipemap:forming_press>;

val coinMold = <gregtech:meta_item_1:14>;

val copperCoin = <gregtech:meta_item_1>;
val silverCoin = <gregtech:meta_item_1:2>;
val goldCoin = <gregtech:meta_item_1:3>;
val platinumCoin = <gregtech:meta_item_1:4>;
val osmiumCoin = <gregtech:meta_item_1:5>;
val naquadahCoin = <gregtech:meta_item_1:6>;
val neutroniumCoin = <gregtech:meta_item_1:7>;

val copperPlate = <ore:plateCopper>;
val silverPlate = <ore:plateSilver>;
val goldPlate = <ore:plateGold>;
val platinumPlate = <ore:platePlatinum>;
val osmiumPlate = <ore:plateOsmium>;
val naquadahPlate = <ore:plateNaquadah>;
val neutroniumPlate = <ore:plateNeutronium>;

// - Recipes -

formingPress.recipeBuilder()
    .inputs(copperPlate)
    .notConsumable(coinMold)
    .outputs(copperCoin * 4)
    .duration(100)
    .EUt(16)
    .buildAndRegister();

formingPress.recipeBuilder()
    .inputs(silverPlate)
    .notConsumable(coinMold)
    .outputs(silverCoin * 4)
    .duration(100)
    .EUt(16)
    .buildAndRegister();

formingPress.recipeBuilder()
    .inputs(goldPlate)
    .notConsumable(coinMold)
    .outputs(goldCoin * 4)
    .duration(100)
    .EUt(16)
    .buildAndRegister();

formingPress.recipeBuilder()
    .inputs(platinumPlate)
    .notConsumable(coinMold)
    .outputs(platinumCoin * 4)
    .duration(100)
    .EUt(16)
    .buildAndRegister();

formingPress.recipeBuilder()
    .inputs(osmiumPlate)
    .notConsumable(coinMold)
    .outputs(osmiumCoin * 4)
    .duration(100)
    .EUt(16)
    .buildAndRegister();

formingPress.recipeBuilder()
    .inputs(naquadahPlate)
    .notConsumable(coinMold)
    .outputs(naquadahCoin * 4)
    .duration(100)
    .EUt(16)
    .buildAndRegister();

formingPress.recipeBuilder()
    .inputs(neutroniumPlate)
    .notConsumable(coinMold)
    .outputs(neutroniumCoin * 4)
    .duration(100)
    .EUt(16)
    .buildAndRegister();
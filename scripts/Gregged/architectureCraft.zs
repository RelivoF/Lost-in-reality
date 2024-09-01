// - Created by Revilo12 -
// - Made for Lost in Reality -

// - Variables -

val archHammer = <architecturecraft:hammer>;
val archChisel = <architecturecraft:chisel>;

val archSaw = <architecturecraft:sawblade>;
val archPulley = <architecturecraft:largepulley>;

val archSawBench = <architecturecraft:sawbench>;

val wood = <ore:plankWood>;

val ironPlate = <ore:plateIron>;
val ironIngot = <ore:ingotIron>;
val ironSawBlade = <ore:toolHeadBuzzSawIron>;

val stick = <ore:stickWood>;

val minString = <minecraft:string>;

val hammer = <ore:toolHammer>;
val file = <ore:toolFile>;
val saw = <ore:toolSaw>;
val screwdriver = <ore:toolScrewdriver>;

// - Recipes -

recipes.remove(archChisel);
recipes.remove(archHammer);
recipes.remove(archSaw);
recipes.remove(archPulley);
recipes.remove(archSawBench);

recipes.addShaped(archChisel, [
    [ironIngot, file],
    [null, stick]
]);

recipes.addShaped(archHammer, [
    [ironPlate, ironIngot, hammer],
    [file, stick, ironIngot],
    [null, stick, null]
]);

recipes.addShaped(archPulley, [
    [minString, wood, minString],
    [wood, stick, wood],
    [saw, wood, minString]
]);

recipes.addShaped(archSawBench, [
    [saw, screwdriver, hammer],
    [ironPlate, ironSawBlade, ironPlate],
    [stick, archPulley, stick]
]);
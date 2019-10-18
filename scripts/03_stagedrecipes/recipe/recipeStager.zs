
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//Building Materials
var steelCasing = <mekanism:basicblock:8>;
var blockSteel = <ore:blockSteel>;
var blockGlass = <ore:blockGlass>;
var blockOsmium = <ore:blockOsmium>;
var chestWood = <ore:chestWood>;
var blockGold = <ore:blockGold>;
var electroCore = <mekanism:electrolyticcore>;
var atomicAlloy = <mekanism:atomicalloy>;
var alloyUlt = <ore:alloyUltimate>;
var circuitUlt = <ore:circuitUltimate>;
var blockDiamond = <ore:blockDiamond>;
var blockTin = <ore:blockTin>;
var furnace = <minecraft:furnace>;
var enrichedAlloy = <mekanism:enrichedalloy>;
var blockRedstone = <ore:blockRedstone>;
var alloyBasic = <ore:alloyBasic>;
var alloyElite = <ore:alloyElite>;
var alloyAdvanced = <ore:alloyAdvanced>;
var circuitBasic = <ore:circuitBasic>;
var circuitAdvanced = <ore:circuitAdvanced>;
var circuitElite = <ore:circuitElite>;
var bucket = <minecraft:bucket>;
var cobblestone = <ore:cobblestone>;
var blockLapis = <ore:blockLapis>;
var enderEye = <minecraft:ender_eye>;
var shapeCard = <rftools:shape_card>;
var doubleCompSteel = <gt:double_compressed_steel>;
var tripleCompSteel = <gt:triple_compressed_steel>;
var gearTin = <ore:gearTin>;
var blockGlassHard = <ore:blockGlassHardened>;
var blockLead = <ore:blockLead>;
var leadFluxDuct = <thermaldynamics:duct_0>;
var blockElectrum = <ore:blockElectrum>;
var plateTin = <ore:plateTin>;
var opDuct = <thermaldynamics:duct_32:1>;
var blockInvar = <ore:blockInvar>;
var gearBronze = <ore:gearBronze>;
var gearSilver = <ore:gearSilver>;
var blockSignalum = <ore:blockSignalum>;
var gearElectrum = <ore:gearElectrum>;
var blockEnderium = <ore:blockEnderium>;
var gearLumium = <ore:gearLumium>;
var dustPyro = <thermalfoundation:material:1024>;
var blockSilver = <ore:blockSilver>;
var logWood = <ore:logWood>;
var blockBlackQuartz = <actuallyadditions:block_misc:2>;
var ingotTin = <ore:ingotTin>;
var grainInfinity = <enderio:item_material:20>;
var barsIron = <ore:barsIron>;
var conduitBinder = <enderio:item_item_conduit>;
var blockPulsatingIron = <ore:blockPulsatingIron>;
var blockConductiveIron = <ore:blockConductiveIron>;
var blockEnergeticAlloy = <ore:blockEnergeticAlloy>;
var blockVibrantAlloy = <ore:blockVibrantAlloy>;
var ingotSteel = <ore:ingotSteel>;
var tpCore = <mekanism:teleportationcore>;

//Any item in this array will be added to the kitchen gamestage, removed from default, then added to the heavy stage with the recipe listed
var shapedRecipes as IIngredient[][][][IItemStack] = {
	//Steel Casing
	<mekanism:basicblock:8> : [
		[[blockSteel, blockGlass, blockSteel], [blockGlass, blockOsmium, blockGlass], [blockSteel, blockGlass, blockSteel]]
	],
	//Enrich Chamber
	<mekanism:machineblock:0> : [
		[[alloyBasic, circuitBasic, alloyBasic], [blockSteel, steelCasing, blockSteel], [alloyBasic, circuitBasic, alloyBasic]]
	],
	//Osmium Compressor
    <mekanism:machineblock:1> : [
		[[alloyAdvanced, circuitAdvanced, alloyAdvanced], [bucket, steelCasing, bucket], [alloyAdvanced, circuitAdvanced, alloyAdvanced]]
	],
	//Combiner
	<mekanism:machineblock:2> : [
		[[alloyElite, circuitElite, alloyElite], [cobblestone, steelCasing, cobblestone], [alloyElite, circuitElite, alloyElite]]
	],
	//Crusher
	<mekanism:machineblock:3> : [
		[[blockRedstone, circuitBasic, blockOsmium], [blockSteel, steelCasing, blockSteel], [blockOsmium, circuitBasic, blockRedstone]]
	],
	//Smelter
	<mekanism:machineblock:10> : [
		[[alloyBasic, circuitBasic, alloyBasic], [blockGlass, steelCasing, blockGlass], [alloyBasic, circuitBasic, alloyBasic]]
	],
	//Metallurgic Infuser
	<mekanism:machineblock:8> : [
		[[blockSteel, furnace, blockSteel], [blockRedstone, blockOsmium, blockRedstone], [blockSteel, furnace, blockSteel]]
	],
	//Purification Chamber
	<mekanism:machineblock:9> : [
		[[alloyAdvanced, circuitAdvanced, alloyAdvanced], [blockOsmium, steelCasing, blockOsmium], [alloyAdvanced, circuitAdvanced, alloyAdvanced]]
	],
	//Fluid Pump
	<mekanism:machineblock:12> : [
		[[circuitBasic, circuitBasic, circuitBasic], [enrichedAlloy, steelCasing, enrichedAlloy], [blockOsmium, bucket, blockOsmium]]
	],
	//Personal Chest
	<mekanism:machineblock:13> : [
		[[blockSteel, blockGlass, blockSteel], [chestWood, circuitBasic, chestWood], [blockOsmium, blockRedstone, blockOsmium]]
	],
	//Chemical Inj Chamber
	<mekanism:machineblock2:3> : [
		[[alloyElite, circuitElite, alloyElite], [blockGold, steelCasing, blockGold], [alloyElite, alloyElite, alloyElite]]
	],
	//Electrolytic Seperator
	<mekanism:machineblock2:4> : [
		[[blockSteel, blockRedstone, blockSteel], [enrichedAlloy, electroCore, enrichedAlloy], [blockOsmium, blockRedstone, blockOsmium]]
	],
	//Sawmill
	<mekanism:machineblock2:5> : [
		[[blockSteel, circuitBasic, blockSteel], [blockGold, steelCasing, blockGold], [blockSteel, circuitBasic, blockSteel]]
	],
	//Pressurized Reaction Chamber
	<mekanism:machineblock2:10> : [
		[[blockSteel, enrichedAlloy, blockSteel], [enrichedAlloy, electroCore, enrichedAlloy], [blockOsmium, blockOsmium, blockOsmium]]
	],
	//Seismic Vibrator
	<mekanism:machineblock2:9> : [
		[[blockTin, circuitBasic, blockTin], [circuitBasic, steelCasing, circuitBasic], [blockTin, circuitBasic, blockTin]]
	],
	//Chemical Dissolution Chamber
	<mekanism:machineblock2:6> : [
		[[circuitBasic, blockSteel, circuitBasic], [enrichedAlloy, atomicAlloy, enrichedAlloy], [circuitBasic, blockSteel, circuitBasic]]
	],
	//Factory Installer Advanced
	<mekanism:tierinstaller:1> : [
		[[alloyAdvanced, circuitAdvanced, alloyAdvanced], [blockOsmium, enrichedAlloy, blockOsmium], [alloyAdvanced, circuitAdvanced, alloyAdvanced]]
	],
	//Factory Installer Basic
	<mekanism:tierinstaller> : [
		[[blockRedstone, circuitBasic, blockRedstone], [blockSteel, enrichedAlloy, blockSteel], [blockRedstone, circuitBasic, blockRedstone]]
	],
	//Factory Installer Elite
	<mekanism:tierinstaller:2> : [
		[[alloyElite, circuitElite, alloyElite], [blockGold, enrichedAlloy, blockGold], [alloyElite, circuitElite, alloyElite]]
	],
	//Factory Installer Ultimiate
	<mekanism:tierinstaller:3> : [
		[[alloyUlt, circuitUlt, atomicAlloy], [blockDiamond, enrichedAlloy, blockDiamond], [alloyUlt, circuitUlt, alloyUlt]]
	],
	//Digital Miner
  <mekanism:machineblock:4> : [
		[[atomicAlloy, circuitUlt, atomicAlloy], [blockDiamond, tripleCompSteel, blockDiamond], [tpCore, circuitUlt, tpCore]]
	],
	//Rftools-----------------------------------------------
	//RFTools Machine Frame
	<rftools:machine_frame> : [
		[[blockSteel, blockLapis, alloyUlt], [blockGold, enderEye, blockGold], [blockSteel, blockLapis, blockSteel]]
	],
	//Quarry Card
	<rftools:shape_card:2> : [
		[[blockRedstone, blockDiamond, blockRedstone], [doubleCompSteel, shapeCard, doubleCompSteel], [blockRedstone, blockDiamond, blockRedstone]]
	],
	//Thermal Expansion--------------------------------------
	//TE Machine Frame
	<thermalexpansion:frame:0> : [
		[[blockSteel, blockGlass, blockSteel], [blockGlass, gearTin, blockGlass], [blockSteel, blockGlass, blockSteel]]
	],
	//Lead Fluxduct
	<thermaldynamics:duct_0> : [
		[[blockRedstone, blockRedstone, blockRedstone], [blockLead, blockGlassHard, blockLead], [blockRedstone, blockRedstone, blockRedstone]]
	],
	//Electrum Fluxduct
	<thermaldynamics:duct_0:6> : [
		[[null, null, null], [blockElectrum, leadFluxDuct, blockElectrum], [null, null, null]]
	],
	//Opaque Fluxduct
	<thermaldynamics:duct_32:1> : [
		[[plateTin, plateTin, plateTin], [blockTin, blockGlassHard, blockTin], [plateTin, plateTin, plateTin]]
	],
	//Itemduct
	<thermaldynamics:duct_32> : [
		[[null, null, null], [null, opDuct, null], [null, null, null]]
	],
	//Hard Kit
  <thermalfoundation:upgrade>: [
		[[null, blockInvar, null], [blockInvar, gearBronze, blockInvar], [null, blockInvar, null]]
	],
	//rein Kit
	<thermalfoundation:upgrade:1> : [
		[[null, blockElectrum, null], [blockElectrum, gearSilver, blockElectrum], [null, blockElectrum, null]]
	],
	//Sig Kit
	<thermalfoundation:upgrade:2>: [
		[[null, blockSignalum, null], [blockSignalum, gearElectrum, blockSignalum], [null, blockSignalum, null]]
	],
	//Res Kit
	<thermalfoundation:upgrade:3> : [
		[[null, blockEnderium, null], [blockEnderium, gearLumium, blockEnderium], [dustPyro, blockEnderium, dustPyro]]
	],
	//Trans Coil
	<thermalfoundation:material:514>: [
		[[null, null, blockRedstone], [null, blockSilver, null], [blockRedstone, null, null]]
	],
	//Rec Coil
	<thermalfoundation:material:513> : [
		[[null, null, blockRedstone], [null, blockGold, null], [blockRedstone, null, null]]
	],
	//Conductance Coil
	<thermalfoundation:material:515>: [
		[[blockRedstone, null, null], [null, blockElectrum, null], [null, null, blockRedstone]]
	],
	//Servo
	<thermalfoundation:material:512> : [
		[[null, blockRedstone, null], [null, blockSteel, null], [null, blockRedstone, null]]
	],
	//Actually Additions-----------------------------
	// Iron Casing
	<actuallyadditions:block_misc:9> : [
		[[blockSteel, logWood, blockSteel], [logWood, blockBlackQuartz, logWood], [blockSteel, logWood, blockSteel]]
	],
	//Tech Reborn--------------------------------
	// Basic Machine Frame
	<techreborn:machine_frame>: [
		[[blockSteel, ingotTin, blockSteel], [ingotTin, null, ingotTin], [blockSteel, ingotTin, blockSteel]]
	],
	//ENDERIO---------------------
	// Basic Mahcine Frame
	<enderio:item_material>: [
		[[barsIron, blockSteel, barsIron], [blockSteel, grainInfinity, blockSteel], [barsIron, blockSteel, barsIron]]
	],
	//Item Conduit
	<enderio:item_item_conduit>: [
		[[conduitBinder, conduitBinder, conduitBinder], [blockRedstone, blockPulsatingIron, blockRedstone], [conduitBinder, conduitBinder, conduitBinder]]
	],
	// Energy Conduit
	<enderio:item_power_conduit>: [
		[[conduitBinder, conduitBinder, conduitBinder], [blockRedstone, blockConductiveIron, blockRedstone], [conduitBinder, conduitBinder, conduitBinder]]
	],
	//Enhanced Energy Conduit
	<enderio:item_power_conduit:1>: [
		[[conduitBinder, conduitBinder, conduitBinder], [blockRedstone, blockEnergeticAlloy, blockRedstone], [conduitBinder, conduitBinder, conduitBinder]]
	],
	//Ender Energy Conduit
	<enderio:item_power_conduit:2>: [
		[[conduitBinder, conduitBinder, conduitBinder], [blockRedstone, blockVibrantAlloy, blockRedstone], [conduitBinder, conduitBinder, conduitBinder]]
	],
	//Fluid Conduit
	<enderio:item_liquid_conduit>: [
		[[conduitBinder, conduitBinder, conduitBinder], [ingotSteel, blockGlass, ingotSteel], [conduitBinder, conduitBinder, conduitBinder]]
	],
	//Pressure Fluid Conduit
	<enderio:item_liquid_conduit:1>: [
		[[conduitBinder, conduitBinder, conduitBinder], [ingotSteel, blockGlassHard, ingotSteel], [conduitBinder, conduitBinder, conduitBinder]]
	],
	//Ender Fluid Conduit
	<enderio:item_liquid_conduit:2>: [
		[[conduitBinder, conduitBinder, conduitBinder], [blockGlassHard, blockVibrantAlloy, blockGlassHard], [conduitBinder, conduitBinder, conduitBinder]]
	]
};

for item, recipesForItem in shapedRecipes {

	//get default recipe and store into temp as a List
	var temp = recipes.getRecipesFor(item);

	//remove recipe for item
	recipes.remove(item);

	//temp will be a list
	for returnedrecipes in temp  {
	  //add default recipe to kitchen sink stage
	    mods.recipestages.Recipes.addShaped(STAGES.kitchen, item, returnedrecipes.ingredients2D);
	}  //end inner kitchen loop

	for recipe in recipesForItem {
		//add different recipe to heavy
		mods.recipestages.Recipes.addShaped(STAGES.heavy, item, recipe);
	}  //end inner heavy loop

}  //end outer loop

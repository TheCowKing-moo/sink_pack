
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//Building Materials
var steelCasing = <mekanism:basicblock:8>;
var blockSteel = <ore:blockSteel>;
var glass = <ore:blockGlass>;
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
	
	

//Any item in this array will be added to the kitchen gamestage, removed from default, then added to the heavy stage with the recipe listed
var shapedRecipes as IIngredient[][][][IItemStack] = {
	//Steel Casing
	<mekanism:basicblock:8> : [
		[[blockSteel, glass, blockSteel], [glass, blockOsmium, glass], [blockSteel, glass, blockSteel]]
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
		[[alloyBasic, circuitBasic, alloyBasic], [glass, steelCasing, glass], [alloyBasic, circuitBasic, alloyBasic]]
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
		[[blockSteel, glass, blockSteel], [chestWood, circuitBasic, chestWood], [blockOsmium, blockRedstone, blockOsmium]]
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
		[[alloyUlt, circuitUlt, alloyUlt], [blockDiamond, enrichedAlloy, blockDiamond], [alloyUlt, circuitUlt, alloyUlt]]
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

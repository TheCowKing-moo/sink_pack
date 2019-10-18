//This file adds all teleportation items to the teleportation stage, otherwise its disabled for you

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

var teleportationItems = [
  //RFTools Matter Tx
  //RFTools Matter Rx
  //AS thingy
  //Crafting Waystones
];




for item in teleportationItems {

	//get default recipe and store into temp as a List
	var temp = recipes.getRecipesFor(item);

	//remove recipe for item
	recipes.remove(item);

	//temp will be a list
	for returnedrecipes in temp  {
	  //adds to teleportation stage
	    mods.recipestages.Recipes.addShaped(STAGES.teleportation, item, returnedrecipes.ingredients2D);
	}  //end inner loop

}  //end outer loop

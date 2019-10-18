//Basically this file disables all flight unless you have the flight stage

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;



var flightItems = [
  //Mekanism Jetpack
  //Mantle of Stars
  //All of Simply Jetpacks
  //TR?
  //Boatnia?
  
];

for item in flightItems {

	//get default recipe and store into temp as a List
	var temp = recipes.getRecipesFor(item);

	//remove recipe for item
	recipes.remove(item);

	//temp will be a list
	for returnedrecipes in temp  {
	  //adds to flight stage
	    mods.recipestages.Recipes.addShaped(STAGES.flight, item, returnedrecipes.ingredients2D);
	}  //end inner loop

}  //end outer loop

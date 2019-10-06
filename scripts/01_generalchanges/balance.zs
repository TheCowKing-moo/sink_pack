import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

var flint = <minecraft:flint>;
var gunpowder = <minecraft:gunpowder>;
var oreSaltPeter = <ore:dustSaltpeter>;
var oreSulfur = <ore:dustSulfur>;



##=========== Make Gunpowder require sulfur + salt + coal

## Remove only sulfur crafting of gunpowder
recipes.removeShapeless(gunpowder, [oreSulfur, oreSulfur, oreSulfur, oreSulfur]);

var blockSteel = <ore:blockSteel>;
var ingotSteel = <ore:ingotSteel>;
var doubleSteel as IIngredient = <thermalfoundation:material:160> * 2;
var ingotIron = <minecraft:iron_ingot>;
var dustIron = <thermalfoundation:material:0>;
var coal = <minecraft:coal>;
var charcoal = <minecraft:coal:1>;
var coke = <thermalfoundation:material:802>;
var dustCharcoal = <thermalfoundation:material:769>;
var dustCoal = <thermalfoundation:material:768>;

##============== Steel Ingot Removal
#Nuclearcraft
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(blockSteel);
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(ingotSteel);
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(doubleSteel);


#EnderIO
mods.enderio.AlloySmelter.removeRecipe(ingotSteel.items[0]);

#Thermal - the mod that seems to hate oreDict for some reason
mods.thermalexpansion.InductionSmelter.removeRecipe(ingotIron, coke);
mods.thermalexpansion.InductionSmelter.removeRecipe(ingotIron, dustCharcoal);
mods.thermalexpansion.InductionSmelter.removeRecipe(ingotIron, dustCoal);
mods.thermalexpansion.InductionSmelter.removeRecipe(dustIron, coke);
mods.thermalexpansion.InductionSmelter.removeRecipe(dustIron, dustCharcoal);
mods.thermalexpansion.InductionSmelter.removeRecipe(dustIron, dustCoal);
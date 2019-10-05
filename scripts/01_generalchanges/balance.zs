import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.mekanism.enrichment;
import mods.mekanism.crusher;

var flint = <minecraft:flint>;
var gunpowder = <minecraft:gunpowder>;
var oreSaltPeter = <ore:dustSaltpeter>;
var oreSulfur = <ore:dustSulfur>;

##=========== Make Gunpowder require sulfur + salt + coal

## Remove only sulfur crafting of gunpowder
recipes.removeShapeless(gunpowder, [oreSulfur, oreSulfur, oreSulfur, oreSulfur]);

## Remove flint --> gunpowder 
mods.mekanism.crusher.removeRecipe(gunpowder, flint);

## Remove saltpeter --> gunpowder 
mods.mekanism.enrichment.removeRecipe(oreSaltPeter, gunpowder);

#Remove sulfur --> gunpowder
mods.mekanism.enrichment.removeRecipe(oreSulfur, gunpowder);
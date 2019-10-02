import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

var purpleSlate = <earthworks:block_slate_purple>;
var greenSlate = <earthworks:block_slate_green>;
var blueSlate = <earthworks:block_slate>;

var cookTime = 0.5;

## Slate Conversion
#Green
recipes.addShaped(greenSlate * 8, [[<rustic:slate>, <rustic:slate>, <rustic:slate>], [<rustic:slate>, <ore:dyeGreen>, <rustic:slate>], [<rustic:slate>, <rustic:slate>, <rustic:slate>]]);
#Blue
recipes.addShaped(blueSlate * 8, [[<rustic:slate>, <rustic:slate>, <rustic:slate>], [<rustic:slate>, <ore:dyeBlue>, <rustic:slate>], [<rustic:slate>, <rustic:slate>, <rustic:slate>]]);
#Purple
recipes.addShaped(purpleSlate * 8, [[<rustic:slate>, <rustic:slate>, <rustic:slate>], [<rustic:slate>, <ore:dyePurple>, <rustic:slate>], [<rustic:slate>, <rustic:slate>, <rustic:slate>]]);



# Cook dyed slates back to base <rustic:slate>
furnace.addRecipe(<rustic:slate>, greenSlate, cookTime );
furnace.addRecipe(<rustic:slate>, blueSlate, cookTime );
furnace.addRecipe(<rustic:slate>, purpleSlate, cookTime );
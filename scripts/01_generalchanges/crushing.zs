import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.enderio.SagMill;
import mods.thermalexpansion.Pulverizer;
import mods.immersiveengineering.Crusher;
import mods.mekanism.crusher;


  var energy = 2048;
  var intChance = 50;
  var doubleChance = intChance / 100;

  var dirt as IIngredient = <minecraft:dirt>;
  var sand as IIngredient = <minecraft:sand>;
  
  var dirtCrush as IIngredient[] = [
    <biomesoplenty:dirt:9>,    //Coarse Sandy Dirt
    <biomesoplenty:dirt:1>,     //Sandy Dirt
    <biomesoplenty:dirt:10>,    //Coarse Silty Dirt
    <biomesoplenty:dirt:2>,    //Silty Dirt
    <biomesoplenty:grass:3>,  //Sandy Grass Block
    <biomesoplenty:grass:4>, //Silty Grass Block
    <biomesoplenty:grass:5>   //Origin Grass Block
  ];

  var i = 0;
  while ( i < dirtCrush.length - 1 ) {

      //mods.immersiveengineering.Crusher.addRecipe(IItemStack output, IIngredient input, int energy, @Optional IItemStack secondaryOutput, @Optional double secondaryChance)
      mods.immersiveengineering.Crusher.addRecipe( dirt.items[0], dirtCrush[i], 2048, sand.items[0], 0.5 );

      //mods.thermalexpansion.Pulverizer.addRecipe(IItemStack output, IItemStack input, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance)
      mods.thermalexpansion.Pulverizer.addRecipe( dirt.items[0], dirtCrush[i].items[0], 2048, sand.items[0], 50);

      //mods.enderio.SagMill.addRecipe(IItemStack[] output, float[] chances, IIngredient input, @Optional String bonusType, @Optional int energyCost, @Optional float[] xp)
      mods.enderio.SagMill.addRecipe( [ dirt.items[0], sand.items[0] ], [100, 100], dirtCrush[i] );

      //mods.mekanism.crusher.addRecipe(IIngredient inputStack, IItemStack outputStack)
      mods.mekanism.crusher.addRecipe( dirtCrush[i], dirt.items[0] );
	
	i = i + 1;
  }  //end crush

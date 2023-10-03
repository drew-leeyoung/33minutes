//controller = the id of the ship controller
//position = this module's position in the ship



//check if the ship is dead, alive, or jumped
if(global.shipDataStruct[$ shipID].status==0 || global.shipDataStruct[$ shipID].status==4){
instance_destroy(self)	
}

x=controller.x+(position*16)
y=controller.y



//this aligns the module's highlight with the rest of the ship via the controller
selected=controller.selected
mouseHover=controller.mouseHover


////resource consumption
////track number of people onboard the module
if(position==1){
pop1=global.shipDataStruct[$ shipID].module.one.civilians
pop2=global.shipDataStruct[$ shipID].module.one.marines
pop3=global.shipDataStruct[$ shipID].module.one.scientists	
pop4=global.shipDataStruct[$ shipID].module.one.engineers	

totalModPop=pop1+pop2+pop3+pop4

//add this module's appetite to the amount of food that will be eaten this step
global.foodStepEat += totalModPop*global.foodRate

//subtract food from this module that is equal to this module's percentage of total food stores * the amount
//of food that needs to be eaten this step
global.shipDataStruct[$ shipID].module.one.food -= global.foodStepEat*(global.shipDataStruct[$ shipID].module.one.food/global.totalFood)

//add this module's thirst to the amount of water that will be drank this step
global.waterStepDrink += totalModPop*global.waterRate

//subtract water from this module that is equal to this module's percentage of total water stores * the amount
//of water that needs to be drank this step
global.shipDataStruct[$ shipID].module.one.water -= global.waterStepDrink*(global.shipDataStruct[$ shipID].module.one.water/global.totalWater)


}

if(position==2){
pop1=global.shipDataStruct[$ shipID].module.two.civilians
pop2=global.shipDataStruct[$ shipID].module.two.marines
pop3=global.shipDataStruct[$ shipID].module.two.scientists	
pop4=global.shipDataStruct[$ shipID].module.two.engineers	

totalModPop=pop1+pop2+pop3+pop4

//add this module's appetite to the amount of food that will be eaten this step
global.foodStepEat += totalModPop*global.foodRate

//subtract food from this module that is equal to this module's percentage of total food stores * the amount
//of food that needs to be eaten this step
global.shipDataStruct[$ shipID].module.two.food -= global.foodStepEat*(global.shipDataStruct[$ shipID].module.two.food/global.totalFood)

//add this module's thirst to the amount of water that will be drank this step
global.waterStepDrink += totalModPop*global.waterRate

//subtract water from this module that is equal to this module's percentage of total water stores * the amount
//of water that needs to be drank this step
global.shipDataStruct[$ shipID].module.two.water -= global.waterStepDrink*(global.shipDataStruct[$ shipID].module.two.water/global.totalWater)


}

if(position==3){
pop1=global.shipDataStruct[$ shipID].module.three.civilians
pop2=global.shipDataStruct[$ shipID].module.three.marines
pop3=global.shipDataStruct[$ shipID].module.three.scientists	
pop4=global.shipDataStruct[$ shipID].module.three.engineers	

totalModPop=pop1+pop2+pop3+pop4

//add this module's appetite to the amount of food that will be eaten this step
global.foodStepEat += totalModPop*global.foodRate

//subtract food from this module that is equal to this module's percentage of total food stores * the amount
//of food that needs to be eaten this step
global.shipDataStruct[$ shipID].module.three.food -= global.foodStepEat*(global.shipDataStruct[$ shipID].module.three.food/global.totalFood)

//add this module's thirst to the amount of water that will be drank this step
global.waterStepDrink += totalModPop*global.waterRate

//subtract water from this module that is equal to this module's percentage of total water stores * the amount
//of water that needs to be drank this step
global.shipDataStruct[$ shipID].module.three.water -= global.waterStepDrink*(global.shipDataStruct[$ shipID].module.three.water/global.totalWater)

}

if(position==4){
pop1=global.shipDataStruct[$ shipID].module.four.civilians
pop2=global.shipDataStruct[$ shipID].module.four.marines
pop3=global.shipDataStruct[$ shipID].module.four.scientists	
pop4=global.shipDataStruct[$ shipID].module.four.engineers	

totalModPop=pop1+pop2+pop3+pop4

//add this module's appetite to the amount of food that will be eaten this step
global.foodStepEat += totalModPop*global.foodRate

//subtract food from this module that is equal to this module's percentage of total food stores * the amount
//of food that needs to be eaten this step
global.shipDataStruct[$ shipID].module.four.food -= global.foodStepEat*(global.shipDataStruct[$ shipID].module.four.food/global.totalFood)

//add this module's thirst to the amount of water that will be drank this step
global.waterStepDrink += totalModPop*global.waterRate

//subtract water from this module that is equal to this module's percentage of total water stores * the amount
//of water that needs to be drank this step
global.shipDataStruct[$ shipID].module.four.water -= global.waterStepDrink*(global.shipDataStruct[$ shipID].module.four.water/global.totalWater)

}

if(position==5){
pop1=global.shipDataStruct[$ shipID].module.five.civilians
pop2=global.shipDataStruct[$ shipID].module.five.marines
pop3=global.shipDataStruct[$ shipID].module.five.scientists	
pop4=global.shipDataStruct[$ shipID].module.five.engineers	

totalModPop=pop1+pop2+pop3+pop4

//add this module's appetite to the amount of food that will be eaten this step
global.foodStepEat += totalModPop*global.foodRate

//subtract food from this module that is equal to this module's percentage of total food stores * the amount
//of food that needs to be eaten this step
global.shipDataStruct[$ shipID].module.five.food -= global.foodStepEat*(global.shipDataStruct[$ shipID].module.five.food/global.totalFood)

//add this module's thirst to the amount of water that will be drank this step
global.waterStepDrink += totalModPop*global.waterRate

//subtract water from this module that is equal to this module's percentage of total water stores * the amount
//of water that needs to be drank this step
global.shipDataStruct[$ shipID].module.five.water -= global.waterStepDrink*(global.shipDataStruct[$ shipID].module.five.water/global.totalWater)

}
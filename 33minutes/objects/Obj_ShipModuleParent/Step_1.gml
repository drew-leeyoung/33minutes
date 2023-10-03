//when the ship first spawns, calculate its starting totals. Do this only once per game.
if(global.shipDataStruct[$ shipID].newSpawn==true){
//we set the newSpawn to false in the end step of the ship's controller
//that way each module has time to execute this start up code.
show_debug_message("adding starting res to ship #: " + string(shipID))
//total starting passengers
startingTotalPop = irandom(maxpassengers)
//the "random" code reduces the start modifier by .001 to .1
startingCivs = floor(startingTotalPop*(civBias-(random(100)/1000)))
startingMars = floor(startingTotalPop*(marBias-(random(100)/1000)))
startingScis = floor(startingTotalPop*(sciBias-(random(100)/1000)))
startingEngs = floor(startingTotalPop*(engBias-(random(100)/1000)))

//starting total supplies
startingTotalSupplies = irandom(maxsupplies)

startingFood = floor(startingTotalSupplies*(foodBias-(random(100)/1000)))
startingParts = floor(startingTotalSupplies*(partsBias-(random(100)/1000)))
startingWater = floor(startingTotalSupplies*(waterBias-(random(100)/1000)))
startingMeds = floor(startingTotalSupplies*(medsBias-(random(100)/1000)))

//sets the starting HP, which must be between 10 and 100.
startingHp = clamp(irandom(100)+hpBias,10,100)

//apply the starting values to the ship data struct
switch(position){
	case 1:
global.shipDataStruct[$ shipID].module.one.hp = startingHp;
global.shipDataStruct[$ shipID].module.one.civilians = startingCivs;
global.shipDataStruct[$ shipID].module.one.marines = startingMars;
global.shipDataStruct[$ shipID].module.one.scientists = startingScis;
global.shipDataStruct[$ shipID].module.one.engineers = startingEngs;
global.shipDataStruct[$ shipID].module.one.food = startingFood;
global.shipDataStruct[$ shipID].module.one.parts = startingParts;
global.shipDataStruct[$ shipID].module.one.water = startingWater;
global.shipDataStruct[$ shipID].module.one.medicine = startingMeds;
	break;
	case 2:
global.shipDataStruct[$ shipID].module.two.hp = startingHp;
global.shipDataStruct[$ shipID].module.two.civilians = startingCivs;
global.shipDataStruct[$ shipID].module.two.marines = startingMars;
global.shipDataStruct[$ shipID].module.two.scientists = startingScis;
global.shipDataStruct[$ shipID].module.two.engineers = startingEngs;
global.shipDataStruct[$ shipID].module.two.food = startingFood;
global.shipDataStruct[$ shipID].module.two.parts = startingParts;
global.shipDataStruct[$ shipID].module.two.water = startingWater;
global.shipDataStruct[$ shipID].module.two.medicine = startingMeds;
	break;
	case 3:
global.shipDataStruct[$ shipID].module.three.hp = startingHp;
global.shipDataStruct[$ shipID].module.three.civilians = startingCivs;
global.shipDataStruct[$ shipID].module.three.marines = startingMars;
global.shipDataStruct[$ shipID].module.three.scientists = startingScis;
global.shipDataStruct[$ shipID].module.three.engineers = startingEngs;
global.shipDataStruct[$ shipID].module.three.food = startingFood;
global.shipDataStruct[$ shipID].module.three.parts = startingParts;
global.shipDataStruct[$ shipID].module.three.water = startingWater;
global.shipDataStruct[$ shipID].module.three.medicine = startingMeds;
	break;
	case 4:
global.shipDataStruct[$ shipID].module.four.hp = startingHp;
global.shipDataStruct[$ shipID].module.four.civilians = startingCivs;
global.shipDataStruct[$ shipID].module.four.marines = startingMars;
global.shipDataStruct[$ shipID].module.four.scientists = startingScis;
global.shipDataStruct[$ shipID].module.four.engineers = startingEngs;
global.shipDataStruct[$ shipID].module.four.food = startingFood;
global.shipDataStruct[$ shipID].module.four.parts = startingParts;
global.shipDataStruct[$ shipID].module.four.water = startingWater;
global.shipDataStruct[$ shipID].module.four.medicine = startingMeds;
	break;
	case 5:
global.shipDataStruct[$ shipID].module.five.hp = startingHp;
global.shipDataStruct[$ shipID].module.five.civilians = startingCivs;
global.shipDataStruct[$ shipID].module.five.marines = startingMars;
global.shipDataStruct[$ shipID].module.five.scientists = startingScis;
global.shipDataStruct[$ shipID].module.five.engineers = startingEngs;
global.shipDataStruct[$ shipID].module.five.food = startingFood;
global.shipDataStruct[$ shipID].module.five.parts = startingParts;
global.shipDataStruct[$ shipID].module.five.water = startingWater;
global.shipDataStruct[$ shipID].module.five.medicine = startingMeds;
	break;
}	

}
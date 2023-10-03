// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_fleet_resources(){
totalCivs =0
totalMar =0
totalSci =0
totalEng =0
totalFood =0
totalParts =0
totalWater =0
totalMeds =0

	for(shipNumber=1; shipNumber<=global.fleetSize; shipNumber++){
shipID=global.intToCharArray[shipNumber]
//calculate the ship's total resources
if(global.shipDataStruct[$ shipID].status!=0 && global.shipDataStruct[$ shipID].status!=4){
if(global.shipDataStruct[$ shipID].size==2){
m1HP=global.shipDataStruct[$ shipID].module.one.hp
m2HP=global.shipDataStruct[$ shipID].module.two.hp
shipHP=(m1HP+m2HP)/2

m1Civs=global.shipDataStruct[$ shipID].module.one.civilians
m2Civs=global.shipDataStruct[$ shipID].module.two.civilians
shipCivs=m1Civs+m2Civs

m1Mars=global.shipDataStruct[$ shipID].module.one.marines
m2Mars=global.shipDataStruct[$ shipID].module.two.marines
shipMars=m1Mars+m2Mars

m1Sci=global.shipDataStruct[$ shipID].module.one.scientists
m2Sci=global.shipDataStruct[$ shipID].module.two.scientists
shipSci=m1Sci+m2Sci

m1Eng=global.shipDataStruct[$ shipID].module.one.engineers
m2Eng=global.shipDataStruct[$ shipID].module.two.engineers
shipEng=m1Eng+m2Eng

m1Food=global.shipDataStruct[$ shipID].module.one.food
m2Food=global.shipDataStruct[$ shipID].module.two.food
shipFood=m1Food+m2Food

m1Parts=global.shipDataStruct[$ shipID].module.one.parts
m2Parts=global.shipDataStruct[$ shipID].module.two.parts
shipParts=m1Parts+m2Parts

m1Water=global.shipDataStruct[$ shipID].module.one.water
m2Water=global.shipDataStruct[$ shipID].module.two.water
shipWater=m1Water+m2Water

m1Medicine=global.shipDataStruct[$ shipID].module.one.medicine
m2Medicine=global.shipDataStruct[$ shipID].module.two.medicine
shipMedicine=m1Medicine+m2Medicine
}
if(global.shipDataStruct[$ shipID].size==3){
m1HP=global.shipDataStruct[$ shipID].module.one.hp
m2HP=global.shipDataStruct[$ shipID].module.two.hp
m3HP=global.shipDataStruct[$ shipID].module.three.hp
shipHP=(m1HP+m2HP+m3HP)/3

m1Civs=global.shipDataStruct[$ shipID].module.one.civilians
m2Civs=global.shipDataStruct[$ shipID].module.two.civilians
m3Civs=global.shipDataStruct[$ shipID].module.three.civilians
shipCivs=m1Civs+m2Civs+m3Civs

m1Mars=global.shipDataStruct[$ shipID].module.one.marines
m2Mars=global.shipDataStruct[$ shipID].module.two.marines
m3Mars=global.shipDataStruct[$ shipID].module.three.marines
shipMars=m1Mars+m2Mars+m3Mars

m1Sci=global.shipDataStruct[$ shipID].module.one.scientists
m2Sci=global.shipDataStruct[$ shipID].module.two.scientists
m3Sci=global.shipDataStruct[$ shipID].module.three.scientists
shipSci=m1Sci+m2Sci+m3Sci

m1Eng=global.shipDataStruct[$ shipID].module.one.engineers
m2Eng=global.shipDataStruct[$ shipID].module.two.engineers
m3Eng=global.shipDataStruct[$ shipID].module.three.engineers
shipEng=m1Eng+m2Eng+m3Eng

m1Food=global.shipDataStruct[$ shipID].module.one.food
m2Food=global.shipDataStruct[$ shipID].module.two.food
m3Food=global.shipDataStruct[$ shipID].module.three.food
shipFood=m1Food+m2Food+m3Food

m1Parts=global.shipDataStruct[$ shipID].module.one.parts
m2Parts=global.shipDataStruct[$ shipID].module.two.parts
m3Parts=global.shipDataStruct[$ shipID].module.three.parts
shipParts=m1Parts+m2Parts+m3Parts

m1Water=global.shipDataStruct[$ shipID].module.one.water
m2Water=global.shipDataStruct[$ shipID].module.two.water
m3Water=global.shipDataStruct[$ shipID].module.three.water
shipWater=m1Water+m2Water+m3Water

m1Medicine=global.shipDataStruct[$ shipID].module.one.medicine
m2Medicine=global.shipDataStruct[$ shipID].module.two.medicine
m3Medicine=global.shipDataStruct[$ shipID].module.three.medicine
shipMedicine=m1Medicine+m2Medicine+m3Medicine
}
if(global.shipDataStruct[$ shipID].size==4){
m1HP=global.shipDataStruct[$ shipID].module.one.hp
m2HP=global.shipDataStruct[$ shipID].module.two.hp
m3HP=global.shipDataStruct[$ shipID].module.three.hp
m4HP=global.shipDataStruct[$ shipID].module.four.hp
shipHP=(m1HP+m2HP+m3HP+m4HP)/4

m1Civs=global.shipDataStruct[$ shipID].module.one.civilians
m2Civs=global.shipDataStruct[$ shipID].module.two.civilians
m3Civs=global.shipDataStruct[$ shipID].module.three.civilians
m4Civs=global.shipDataStruct[$ shipID].module.four.civilians
shipCivs=m1Civs+m2Civs+m3Civs+m4Civs

m1Mars=global.shipDataStruct[$ shipID].module.one.marines
m2Mars=global.shipDataStruct[$ shipID].module.two.marines
m3Mars=global.shipDataStruct[$ shipID].module.three.marines
m4Mars=global.shipDataStruct[$ shipID].module.four.marines
shipMars=m1Mars+m2Mars+m3Mars+m4Mars

m1Sci=global.shipDataStruct[$ shipID].module.one.scientists
m2Sci=global.shipDataStruct[$ shipID].module.two.scientists
m3Sci=global.shipDataStruct[$ shipID].module.three.scientists
m4Sci=global.shipDataStruct[$ shipID].module.four.scientists
shipSci=m1Sci+m2Sci+m3Sci+m4Sci

m1Eng=global.shipDataStruct[$ shipID].module.one.engineers
m2Eng=global.shipDataStruct[$ shipID].module.two.engineers
m3Eng=global.shipDataStruct[$ shipID].module.three.engineers
m4Eng=global.shipDataStruct[$ shipID].module.four.engineers
shipEng=m1Eng+m2Eng+m3Eng+m4Eng

m1Food=global.shipDataStruct[$ shipID].module.one.food
m2Food=global.shipDataStruct[$ shipID].module.two.food
m3Food=global.shipDataStruct[$ shipID].module.three.food
m4Food=global.shipDataStruct[$ shipID].module.four.food
shipFood=m1Food+m2Food+m3Food+m4Food

m1Parts=global.shipDataStruct[$ shipID].module.one.parts
m2Parts=global.shipDataStruct[$ shipID].module.two.parts
m3Parts=global.shipDataStruct[$ shipID].module.three.parts
m4Parts=global.shipDataStruct[$ shipID].module.four.parts
shipParts=m1Parts+m2Parts+m3Parts+m4Parts

m1Water=global.shipDataStruct[$ shipID].module.one.water
m2Water=global.shipDataStruct[$ shipID].module.two.water
m3Water=global.shipDataStruct[$ shipID].module.three.water
m4Water=global.shipDataStruct[$ shipID].module.four.water
shipWater=m1Water+m2Water+m3Water+m4Water

m1Medicine=global.shipDataStruct[$ shipID].module.one.medicine
m2Medicine=global.shipDataStruct[$ shipID].module.two.medicine
m3Medicine=global.shipDataStruct[$ shipID].module.three.medicine
m4Medicine=global.shipDataStruct[$ shipID].module.four.medicine
shipMedicine=m1Medicine+m2Medicine+m3Medicine+m4Medicine
}
if(global.shipDataStruct[$ shipID].size==5){
m1HP=global.shipDataStruct[$ shipID].module.one.hp
m2HP=global.shipDataStruct[$ shipID].module.two.hp
m3HP=global.shipDataStruct[$ shipID].module.three.hp
m4HP=global.shipDataStruct[$ shipID].module.four.hp
m5HP=global.shipDataStruct[$ shipID].module.five.hp
shipHP=(m1HP+m2HP+m3HP+m4HP+m5HP)/5

m1Civs=global.shipDataStruct[$ shipID].module.one.civilians
m2Civs=global.shipDataStruct[$ shipID].module.two.civilians
m3Civs=global.shipDataStruct[$ shipID].module.three.civilians
m4Civs=global.shipDataStruct[$ shipID].module.four.civilians
m5Civs=global.shipDataStruct[$ shipID].module.five.civilians
shipCivs=m1Civs+m2Civs+m3Civs+m4Civs+m5Civs

m1Mars=global.shipDataStruct[$ shipID].module.one.marines
m2Mars=global.shipDataStruct[$ shipID].module.two.marines
m3Mars=global.shipDataStruct[$ shipID].module.three.marines
m4Mars=global.shipDataStruct[$ shipID].module.four.marines
m5Mars=global.shipDataStruct[$ shipID].module.five.marines
shipMars=m1Mars+m2Mars+m3Mars+m4Mars+m5Mars

m1Sci=global.shipDataStruct[$ shipID].module.one.scientists
m2Sci=global.shipDataStruct[$ shipID].module.two.scientists
m3Sci=global.shipDataStruct[$ shipID].module.three.scientists
m4Sci=global.shipDataStruct[$ shipID].module.four.scientists
m5Sci=global.shipDataStruct[$ shipID].module.five.scientists
shipSci=m1Sci+m2Sci+m3Sci+m4Sci+m5Sci

m1Eng=global.shipDataStruct[$ shipID].module.one.engineers
m2Eng=global.shipDataStruct[$ shipID].module.two.engineers
m3Eng=global.shipDataStruct[$ shipID].module.three.engineers
m4Eng=global.shipDataStruct[$ shipID].module.four.engineers
m5Eng=global.shipDataStruct[$ shipID].module.five.engineers
shipEng=m1Eng+m2Eng+m3Eng+m4Eng+m5Eng

m1Food=global.shipDataStruct[$ shipID].module.one.food
m2Food=global.shipDataStruct[$ shipID].module.two.food
m3Food=global.shipDataStruct[$ shipID].module.three.food
m4Food=global.shipDataStruct[$ shipID].module.four.food
m5Food=global.shipDataStruct[$ shipID].module.five.food
shipFood=m1Food+m2Food+m3Food+m4Food+m5Food

m1Parts=global.shipDataStruct[$ shipID].module.one.parts
m2Parts=global.shipDataStruct[$ shipID].module.two.parts
m3Parts=global.shipDataStruct[$ shipID].module.three.parts
m4Parts=global.shipDataStruct[$ shipID].module.four.parts
m5Parts=global.shipDataStruct[$ shipID].module.five.parts
shipParts=m1Parts+m2Parts+m3Parts+m4Parts+m5Parts

m1Water=global.shipDataStruct[$ shipID].module.one.water
m2Water=global.shipDataStruct[$ shipID].module.two.water
m3Water=global.shipDataStruct[$ shipID].module.three.water
m4Water=global.shipDataStruct[$ shipID].module.four.water
m5Water=global.shipDataStruct[$ shipID].module.five.water
shipWater=m1Water+m2Water+m3Water+m4Water+m5Water

m1Medicine=global.shipDataStruct[$ shipID].module.one.medicine
m2Medicine=global.shipDataStruct[$ shipID].module.two.medicine
m3Medicine=global.shipDataStruct[$ shipID].module.three.medicine
m4Medicine=global.shipDataStruct[$ shipID].module.four.medicine
m5Medicine=global.shipDataStruct[$ shipID].module.five.medicine
shipMedicine=m1Medicine+m2Medicine+m3Medicine+m4Medicine+m5Medicine
}
totalCivs += shipCivs
totalMar += shipMars
totalSci += shipSci
totalEng += shipEng
totalFood += shipFood
totalParts += shipParts
totalWater += shipWater
totalMeds += shipMedicine

}
	}
global.totalCivs = totalCivs
global.totalMar = totalMar
global.totalSci = totalSci
global.totalEng = totalEng
global.totalFood = totalFood
global.totalParts = totalParts
global.totalWater = totalWater
global.totalMeds = totalMeds
}
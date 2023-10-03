//jump if ordered and charged
if(global.commJumpStatus==4){
global.commJumpStatus=1
show_debug_message("time to leave this room")
//set all ships left behind to dead
show_debug_message("let's see who's dead")
preJumpFleet = global.fleetSize
for(checkLeft = 1; checkLeft<=preJumpFleet; checkLeft++){
shipID = global.intToCharArray[checkLeft]
//sets all ships that didn't jump to dead
if(global.shipDataStruct[$ shipID].status!=4){
	global.shipDataStruct[$ shipID].status=0
	show_debug_message(string(shipID)+" is dead")
//reduce the fleet size by 1
	global.fleetSize-=1
}
show_debug_message(string(shipID)+" is alive")
}
//reset the shipCount for spawning in the next room
//(after all abandoned ships are set to dead)
global.shipCount=1
show_debug_message("spawning new room")
nextPlanet = room_duplicate(rm_scroll)
room_goto(nextPlanet)
}
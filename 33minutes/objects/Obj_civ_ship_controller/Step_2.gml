//if the ship spawned for the first time, set that value to false
//the initial spawn code sets civs to -1; they should be set to > 0 by the module spawn code
if(global.shipDataStruct[$ shipID].module.one.civilians!=-1){
	global.shipDataStruct[$ shipID].newSpawn=false
}


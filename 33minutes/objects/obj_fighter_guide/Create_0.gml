/// @description leader follows this guide

//this object is a first effort at a squad system. 
//The idea is that ships are given a squadrank when spawned and then reference that
//variable to figure out who in their group is the leader. This way, if the leader
//gets popped, the next craft becomes the leader and adopts leader behavior. 
//This would also mean that only leader craft are tracking targets and setting courses.
//the wingmen are just following formation and shooting at anything that ends 
//up close enough and in front of them. 


squadId = global.squadId; //a unique identifier compared to all squads
squadPos = 0; //a unique position within a squad; used to index the wingmen[]; leader is not included in the squadPos counter
squadSize = global.swarmSquadSize; //maximum number of units
squadSizeCurrent = 0; //current number of entities in the squad
hasLeader = false;
leaderInstance = noone;
wingmen = []; //array of wingmen objects
speed = global.squadGuideSpeed;
//min and max offset variables for the whole squad
leaderOffsetX = 0;
leaderOffsetY = 0;

formationOffsetX = 0;
formationOffsetY = 0;
offsetX = 3; //starting offset variables
offsetY = -4;

//pick a target
if(instance_exists(obj_ship_big == true )){
	guideTarget = obj_ship_big;
}

//set alarm to switch targets

//global retarget :: default 2 seconds
alarm[0] = global.enemyTargetSwitch * room_speed;
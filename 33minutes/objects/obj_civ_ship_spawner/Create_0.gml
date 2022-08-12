//The plan: have this spawner in each room. It spawns a civship object 
//at a random point for each ship in the fleet. Each civship object gets a unique number (1+)
//the number tells it which ship to pull data on from the global.shipdata struct. Each number in 
//the shipdata struct is itself a struct with the ship's info. 
//


global.shipdata = 
{
	1 :
	{
		name : "PiePie"
		hull : 100
		type : "orange"
		modules : ["eng1", "pop1", "pop2", "heart", "drive1"]
	}
};

global.fleetSize = 1
shipcount = 1
while(global.fleetSize>=shipCount){
jumpoffsetx = irandom(100)-irandom(100)
jumpoffsety = irandom(100)-irandom(100)
var civship = instance_create_depth(300+jumpoffsetx,300+jumpoffsety,-1000,obj_civ_ship)
civship.shipNumber = shipCount
shipcount-=1
}
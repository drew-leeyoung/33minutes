//I want to select the right batch of data for each ship. This should occur
//once in the create event, but I've jury rigged this using the "runOnce" var
//to force this to occur in the step event (but only once).

//firstspawn determines whether random stats should be applied. 

//this system works! Things needed: a means of creating a randomized ship and loading that into a struct, 
//a system for keeping the ship bits fused for purposes of stat calculation and status

if(runOnce == true){
	
	shipID = global.intToCharArray[shipNumber]
	myName = global.shipDataStruct[$ shipID].nametag
	//myHull = global.shipDataStruct[$ shipID].hull
	moduleCount = global.shipDataStruct[$ shipID].size
	
//this is module generation code	
if(moduleCount >= 2){
	var module = instance_create_layer(x,y,"instances",global.shipDataStruct[$ shipID].module.one.make)	
	module.position=1
	module.controller=other
	module.mouseHover=false
	module.personalMouseHover=false
	module.damaged=false
	module.shipID=shipID
	module.engineSpeed=engineSpeed
	module.moving=false
	module.selected=false
	var module = instance_create_layer(x,y,"instances",global.shipDataStruct[$ shipID].module.two.make)	
	module.position=2
	module.controller=other
	module.mouseHover=false
	module.personalMouseHover=false
	module.damaged=false
	module.shipID=shipID
	module.engineSpeed=engineSpeed
	module.moving=false
	module.selected=false
if(moduleCount >= 3){
	var module = instance_create_layer(x,y,"instances",global.shipDataStruct[$ shipID].module.three.make)	
	module.position=3
	module.controller=other
	module.mouseHover=false
	module.personalMouseHover=false	
	module.damaged=false
	module.shipID=shipID
	module.engineSpeed=engineSpeed
	module.moving=false
	module.selected=false
if(moduleCount >= 4){
	var module = instance_create_layer(x,y,"instances",global.shipDataStruct[$ shipID].module.four.make)	
	module.position=4
	module.controller=other
	module.mouseHover=false
	module.personalMouseHover=false
	module.damaged=false
	module.shipID=shipID
	module.engineSpeed=engineSpeed
	module.moving=false
	module.selected=false
if(moduleCount >= 5){
	var module = instance_create_layer(x,y,"instances",global.shipDataStruct[$ shipID].module.five.make)	
	module.position=5
	module.controller=other
	module.mouseHover=false
	module.personalMouseHover=false
	module.damaged=false
	module.shipID=shipID
	module.engineSpeed=engineSpeed
	module.moving=false
	module.selected=false
}
}
}
}
runOnce=false
}

//these are movement controls

if(moving==true){
move_towards_point(myxTarget-(moduleCount*16/2)-16,myyTarget,engineSpeed)
	if(point_in_rectangle(myxTarget,myyTarget,x+13,y-3,x+(moduleCount*16)+19,y+19)==true){
	show_debug_message("hit target")
	moving = false
	}
}
//this is the accellerating code for when the ship starts moving
if(moving==true && speed<=engineSpeed){
	speed+=engineAccelleration}
//this is the slowing code for when the ship is stopping
if(moving==false && speed>0){
//this is meant to give a bit of inertia to larger ships
	speed-=engineAccelleration/moduleCount
	if(speed<=0){
	speed=0
	}
	}
//this causes the ship to avoid other ships (poorly)
if(place_meeting(x,y,Obj_civ_ship_controller)){
direction+=random(15)-random(15)
if(moving==false){
	speed=(engineSpeed/2)
}
}

//detects the mouse
if(point_in_rectangle(mouse_x,mouse_y,x+13,y-3,x+(moduleCount*16)+19,y+19)==true){
	mouseHover=true
}else{
	mouseHover=false
	}
//determines if the ship is selected by checking the selected ships array
if(array_contains(global.selectedShips,id)==true){
	selected=true
}else{selected=false}
	
//determines if the ship has jumped (moved to jump portal code)
//if(global.shipDataStruct[$ shipID].status==4){
//	audio_play_sound_ext({sound: Sound_CivJump1 })
//	instance_destroy(self)
//}
//determines if the ship is dead
if(moduleCount==2){
m1HP=global.shipDataStruct[$ shipID].module.one.hp
m2HP=global.shipDataStruct[$ shipID].module.two.hp
shipHP=m1HP+m2HP
}
if(moduleCount==3){
m1HP=global.shipDataStruct[$ shipID].module.one.hp
m2HP=global.shipDataStruct[$ shipID].module.two.hp
m3HP=global.shipDataStruct[$ shipID].module.three.hp
shipHP=m1HP+m2HP+m3HP
}
if(moduleCount==4){
m1HP=global.shipDataStruct[$ shipID].module.one.hp
m2HP=global.shipDataStruct[$ shipID].module.two.hp
m3HP=global.shipDataStruct[$ shipID].module.three.hp
m4HP=global.shipDataStruct[$ shipID].module.four.hp
shipHP=m1HP+m2HP+m3HP+m4HP
}
if(moduleCount==5){
m1HP=global.shipDataStruct[$ shipID].module.one.hp
m2HP=global.shipDataStruct[$ shipID].module.two.hp
m3HP=global.shipDataStruct[$ shipID].module.three.hp
m4HP=global.shipDataStruct[$ shipID].module.four.hp
m5HP=global.shipDataStruct[$ shipID].module.five.hp
shipHP=(m1HP+m2HP+m3HP+m4HP+m5HP)
}

//figure out if the ship is dead
if(shipHP<=0){
global.shipDataStruct[$ shipID].status=0
global.fleetSize-=1
show_debug_message("killing ship #: " + string(shipID))
instance_destroy(self)	
}



	
	

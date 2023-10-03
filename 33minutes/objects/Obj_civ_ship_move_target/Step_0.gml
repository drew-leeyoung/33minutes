//if(place_meeting(myShip.x,myShip.y,self)){
//	myShip.moving=false
//	instance_destroy(self)}


if(myShip.moving==false){
	instance_destroy(self)}
if(instance_exists(myShip)==false){
	instance_destroy(self)
}	
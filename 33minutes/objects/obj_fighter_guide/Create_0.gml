//this object is a first effort at a squad system. 
//The idea is that ships are given a squadrank when spawned and then reference that
//variable to figure out who in their group is the leader. This way, if the leader
//gets popped, the next craft becomes the leader and adopts leader behavior. 
//This would also mean that only leader craft are tracking targets and setting courses.
//the wingmen are just following formation and shooting at anything that ends 
//up close enough and in front of them. 
squadrank=0
squadnumber=5
show_debug_message("made a guider")
var wingman
if(squadrank==0){
	show_debug_message("making a wingman")
	while(squadnumber>=0){
	show_debug_message("making wingman #" + string(squadnumber))
	wingman = instance_create_depth(x+(squadnumber*5),y+(squadnumber*5),1000,obj_fighter_guide)
	with(wingman){
	squadrank = other.squadnumber
	}	
	squadnumber-=1
	show_debug_message("Squadsize = " + string(squadnumber))
	}
}
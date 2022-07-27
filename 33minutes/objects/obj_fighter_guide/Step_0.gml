if(squadrank==0){
	//target = instance_nearest(x,y,obj_ship_big)
	x = mouse_x
	y = mouse_y
}else{
	x = target.x+(squadrank*50)
    y = target.y+(squadrank*50)
	
}

//this is the code that creates wingmen if you are the squad leader
if(squadrank==0&&squadnumber>0){
	global.leaders+=1
	show_debug_message("making a wingman")
	while(squadnumber>0){
	show_debug_message("I have been given a new rank, it is " + string(squadrank))
	wingman = instance_create_layer(x+(squadnumber*5),y+(squadnumber*5),"Instances",obj_fighter_guide)
//this component passes variables to the wingman. The problem is in setting the target
//that wingman should follow
	with(wingman){
	squadrank = other.squadnumber
	//target = instance_id[other]
	target=other.myid
	}	
	squadnumber-=1
	show_debug_message("Squadsize = " + string(squadnumber))
	}
}
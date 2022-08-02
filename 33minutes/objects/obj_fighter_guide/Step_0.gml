//
//
//SQUAD LEADER MOVEMENT
//
//
if(squadrank==0){
	//target = instance_nearest(x,y,obj_ship_big)
	//have squad leader follow mouse
	//x = mouse_x + (leaderMoveVector) * 25;
	//y = mouse_y
	
	
	if(leaderTarget == noone) {
		show_debug_message("big ship obj instance not found");
	} else {} //do nothing
	
	//move_towards_point(500,500,0.5);
	//move_towards_point(leaderTarget.x + (leaderMoveVector * 25), leaderTarget.y, 1)
}else{
//
//
//SQUAD MEMBER MOVEMENT
//
//
//have squad members fall in line with a personal offset
	x = target.x+xOffset
    y = target.y+yOffset
	move_towards_point( target.x+xOffset, y, 0.5 )
	//y = target.y + yOffset
	
}

//this is the code that creates wingmen if you are the squad leader
if(squadrank==0&&squadnumber>0){
	global.leaders+=1
	while(squadnumber>0){
	//create wingman with some kind of formation offset
	wingman = instance_create_layer(x+xOffset,y+yOffset,"Instances",obj_fighter_guide)
//this component passes variables to the wingman. The problem is in setting the target
//that wingman should follow
	with(wingman){
	squadrank = other.squadnumber
	//target = instance_id[other]
	target=other.myid
	}	
	squadnumber-=1
	}
}

//Squad leader should oscillate in a serpentine pattern
//helper step function for leader oscillation
leaderMoveVector = abs(sin(get_timer()/1000000)); //a larger get_timer/{value} will slow the oscillation
if(leaderMoveVector>=1){
	leaderMoveVector-=0.1;
}
if(leaderMoveVector<=0){
	leaderMoveVector+=0.1;
}
//end helper
//Squad members should move towards squad lead but never catch up




//move
//move_towards_point(500,500,5);
move_towards_point(leaderTarget.x, leaderTarget.y, 8)



_inst.targetX = x;
_inst.targetY = y;
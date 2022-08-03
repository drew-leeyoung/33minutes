/// @description create wingmen, move, etc

if(squadRank==0) {
	if(guideTarget == noone) {
		show_debug_message("target instance not found");
	} else {} //do nothing
}

//this is the code that creates wingmen if you are the squad leader
if(squadRank==0&&squadNumber>0){
	global.leaders+=1
	while(squadNumber>0){
	//this component passes instance variables to the wingman
	//create wingman with some kind of formation offset
	var formationOffsetX = irandom_range(-offsetMin,offsetMax);
	var formationOffsetY = irandom_range(-offsetMin,-offsetMax);
	wingman = instance_create_layer(x+formationOffsetX,y+formationOffsetY,"Instances",obj_fighter_arc_ctl)
	wingman.targetX = x;
	wingman.targetY = y;
	wingman.guide = self;
	wingman.xOffset = formationOffsetX;
	wingman.yOffset = formationOffsetY;
	global.fighters++;
	with(wingman){
		squadRank = other.squadNumber
	}	
		squadNumber-=1
	}
}

//move
move_towards_point(guideTarget.x, guideTarget.y, global.squadLeaderSpeed);


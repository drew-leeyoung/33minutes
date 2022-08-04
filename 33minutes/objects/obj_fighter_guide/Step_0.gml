/// @description create leader, wingmen, move, etc

if(guideTarget == noone) {
		show_debug_message("target instance not found");
} else {} //do nothing


//this is the code that creates or reassigns a squad leader
if(hasLeader == false && squadSizeCurrent <= 0) { //the squad is empty; create a leader
	if(squadPos > 0) { //the squad has all been eliminated
		//destroy the guide
		instance_destroy();
		exit;
	}
	global.leaders++;
	//squad leader will tail the guide, following at a close distance
	var squadLeader = instance_create_layer(x,y,"Instances",obj_enemy_fighter);
	leaderInstance = squadLeader; //fighter_guide will always know its leader's Instance
	hasLeader = true;
	squadLeader.target = self;
	squadLeader.targetX = x; //coordinates of the guide
	squadLeader.targetY = y;
	squadLeader.guide = self; //the leader will always know its guide's instance
	squadLeader.xOffset = leaderOffsetX;
	squadLeader.yOffset = leaderOffsetY;
	squadLeader.direction = irandom_range(0,25);
	squadLeader.isLeader = true;
	squadSizeCurrent++;
} else if(hasLeader == false && squadSizeCurrent > 0) { //the squad lost its leader
	var i = 0;
	while(hasLeader == false){
		if(wingmen[i] != noone){
		//if there is a wingman to promote
		leaderInstance = wingmen[i]; //promoted
		wingmen[i] = noone; //no longer a wingman
		
		//give new leader his attributes
		//leaderInstance = newSquadLeader;
		leaderInstance.target = self;
		leaderInstance.targetX = x;
		leaderInstance.targetY = y;
		leaderInstance.guide = self;
		leaderInstance.xOffset = leaderOffsetX;
		leaderInstance.yOffset = leaderOffsetY;
		leaderInstance.isLeader = true;
		
		hasLeader = true;
		} else { //wingman[i] is noone, do nothing
		}
		if(i>=squadSize) break; //exit while loop
		i++;
	}
	//at this point we should have a new leader, and need to notify the other wingmen
	for (var j = 0; j < squadSize; j++) {
		if(wingmen[j] != noone) {
			//tell wingmen[j] to follow the new leader
			var temp = wingmen[j];
			temp.leader = leaderInstance;
			temp.target = leaderInstance;
			temp.targetX = temp.leader.x;
			temp.targetY = temp.leader.y;
			temp.guide = self;
			wingmen[j] = temp;
		}
	}
}

//this is the code that creates wingmen
while(hasLeader == true && squadPos < squadSize) { //squad has a leader but no wingmen; not all squadPositions have been filled
	//wingmen should flank the leader left or right, this helps prevent vibrating when following
	formationOffsetX += offsetX;
	formationOffsetY += offsetY;
	offsetX = offsetX * -1.1;
	offsetY = offsetY + (offsetY/10);
	var wingman = instance_create_layer(leaderInstance.x+formationOffsetX,leaderInstance.y+formationOffsetY,"Instances",obj_enemy_fighter)
	wingman.leader = leaderInstance; // follow the leader, not the guide
	wingman.target = leaderInstance;
	wingman.targetX = wingman.leader.x;
	wingman.targetY = wingman.leader.y;
	wingman.guide = self; 
	wingman.xOffset = formationOffsetX;
	wingman.yOffset = formationOffsetY;
	wingmen[squadPos] = wingman;
	squadPos++
	squadSizeCurrent++;
	global.fighters++;
}



















//move
move_towards_point(guideTarget.x, guideTarget.y, global.squadLeaderSpeed);
x = mouse_x;
y = mouse_y

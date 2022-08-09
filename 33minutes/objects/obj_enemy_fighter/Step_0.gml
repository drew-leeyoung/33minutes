/// @description move at an arc to eventually point at target

if(isAlive == false) { //marked for death
	instance_destroy();
}

//angular movement / rotation
image_angle = direction; //always move where it is pointing
//direction will be an arc towards the parent obj_fighter_guide
var _dir = point_direction(x, y, targetX, targetY);
var _diff = angle_difference(_dir, direction);
direction += _diff * fighterTurnSpeed;

//update speed
if(isLeader){speed = global.squadLeaderSpeed;}
else {speed = global.squadFighterSpeed;}

if(!isLeader){ //this keeps wingmen leashed, they wont get left behind
	if(distance_to_object(leader) >= maxDistanceFromLeader){
		speed += 0.0025;
		fighterTurnSpeed += 0.001;
	} else {
		speed = global.squadFighterSpeed;
		fighterTurnSpeed = global.squadFighterTurnSpeed;
	}
}


//update info on parent coordinates
//target{X/Y} stores the last step's location of its guide/parent
if(isLeader){ //leader follows guide
	targetX = guide.x + xOffset;
	targetY = guide.y + yOffset;
} else {	  //wingmen follow leader
	targetX = leader.x + xOffset;
	targetY = leader.y + yOffset;
}
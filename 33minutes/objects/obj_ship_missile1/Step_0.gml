/// @description


if(instance_exists(nearest)) {
	//safe to track to target
	if(tracking == true) {
		move_towards_point(nearest.x, nearest.y, topSpeed);
	} else if(tracking == false) {
		//slow down before tracking starts
		speed = speed - 1;
	}
} else {
	//reset missile
	
}

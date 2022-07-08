/// @description

priority = 0;
topSpeed = 8;

if(instance_exists(obj_enemy_small)){
	image_angle = 90;
	direction = random_range(80,100);
	speed = 2;
	tracking = false;
	nearest = noone;
	alarm[0] = random_range(1.5,2) * room_speed; //0.5-2 second lock-on
} else {
	instance_destroy();
}

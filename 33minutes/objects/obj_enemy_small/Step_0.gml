/// @description

if(alarm[0] > 0) {
	image_angle += rotation_speed;
}
else {
	image_angle = point_direction(self.x,self.y, obj_ship_big.x,obj_ship_big.y);
}


/*
if(image_angle < vector) {
	image_angle += 2;
	direction = image_angle;
}
else if(image_angle > vector){
	image_angle += 2;
}
*/
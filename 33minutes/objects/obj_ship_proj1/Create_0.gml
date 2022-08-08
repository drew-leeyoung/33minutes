/// @description set vector and speed

if(instance_exists(obj_enemy_fighter)){
	pos = instance_nearest(self.x,self.y, obj_enemy_fighter);
	direction = point_direction(self.x,self.y, pos.x,pos.y)
	speed = 5;
} else {
	instance_destroy();
}
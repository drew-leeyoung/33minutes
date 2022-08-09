/// @description start tracking
speed = topSpeed;

nearest = instance_nth_nearest(self.x,self.y,obj_enemy_fighter,priority);
//nearest = instance_nearest(self.x,self.y, obj_enemy_small);
image_angle = point_direction(self.x,self.y, nearest.x,nearest.y);
tracking = true;
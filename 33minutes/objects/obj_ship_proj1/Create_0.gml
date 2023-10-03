/// @description set vector and speed

if(instance_exists(obj_enemy_fighter)){
	pos = instance_nearest(self.x,self.y, obj_enemy_fighter);
	direction = point_direction(self.x,self.y, pos.x,pos.y)
	speed = 5;
	
	//plays the firing sound
switch(irandom(3)){
case 1 : audio_play_sound(Sound_gun1,1,false);
break;
case 2 : audio_play_sound(Sound_gun2,1,false);
break;
case 3 : audio_play_sound(Sound_gun3,1,false);
break;
case 4 : audio_play_sound(Sound_gun4,1,false);
break;
}
	
} else {
	instance_destroy();
}

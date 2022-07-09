/// @description 

//ship health?

with(other) {
	repeat(irandom_range(5,10)) {
	    var debris = instance_create_layer(self.x, self.y, "Instances", obj_debris);
		
		if( choose(0,1) == 0 ){
			debris.sprite_index = spr_enemy_proj;
		} else {
			debris.sprite_index = spr_ship_proj;
		}
		
		
		//debris.image_index = choose(spr_shield_particle1, spr_enemy_proj);
	}
	instance_destroy();
}

instance_destroy();



/// @description explode and damage

repeat(irandom_range(5,20)) {
	    var debris = instance_create_layer(x, y, "Instances", obj_debris);
		if( choose(0,1) == 0 ){
			debris.sprite_index = spr_enemy_proj;
		} else {
			debris.sprite_index = spr_shield_particle1;
		}

}

instance_destroy();

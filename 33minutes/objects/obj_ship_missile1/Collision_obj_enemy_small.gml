/// @description

with(other) {
	instance_destroy();
	repeat(100) {
		var debris = instance_create_layer(x, y, "Instances", obj_debris);
		if( choose(0,1) == 0 ){
			debris.sprite_index = spr_ship_proj;
		} else {
			debris.sprite_index = spr_shield_particle1;
		}
	}
}
instance_destroy();
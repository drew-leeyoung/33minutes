/// @description 

//ship health?

with(other){ //obj_enemy_fighter
	if(isLeader == true){ //was a leader:: notify guide
		isLeader = false;
		guide.hasLeader = false;
		guide.leaderInstance.isAlive = false;
		guide.leaderInstance.isLeader = false;
		//guide.leaderInstance.guide = noone;
	} else { // was a squad member
		//remove self from wingmen[]
		guide.wingmen[squadPos] = noone;
	}
	//no matter what, instance_destroy() and decrement counter
	guide.squadSizeCurrent--;
	global.counterFighters--;
	isAlive = false;
	instance_destroy();	
}

//create explosive debris
repeat(irandom_range(5,10)) {
	    var debris = instance_create_layer(self.x, self.y, "Instances", obj_debris);
		
		if( choose(0,1) == 0 ){
			debris.sprite_index = spr_enemy_proj;
		} else {
			debris.sprite_index = spr_ship_proj;
		}
}

instance_destroy(); //destroy self




/// @description destroy the leader
// test the chain of command


hasLeader = false;
leaderInstance.isAlive = false;
leaderInstance.isLeader = false;
leaderInstance.guide = noone;
squadSizeCurrent--;
if(global.fighters ==0){global.leaders--;}
else{global.fighters--;}
with(leaderInstance){instance_destroy();}

repeat(1000){
	var debris = instance_create_layer(x, y, "Instances", obj_debris);
		debris.sprite_index = spr_enemy_proj;
}
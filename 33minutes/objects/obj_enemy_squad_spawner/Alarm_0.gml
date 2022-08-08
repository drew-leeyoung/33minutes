/// @description spawn fighters every {interval}
// number of enemies determined by obj_game_ctl global.swarmSmall

if (room == rm_fight)
{
	if(global.swarmSquadCount > 1){ //spawn multiple
		repeat(global.swarmSquadCount)
		{
			var xx = self.x;
		    var yy = self.y;
		    var newEnemySmall = instance_create_layer(xx, yy, "Instances", obj_fighter_guide);
			global.counterSquads++;
			newEnemySmall.alarm[0] = global.enemyTargetSwitch * room_speed; //switch targets
		}
	} else { //spawn one
		var xx = self.x;
	    var yy = self.y;
	    var newEnemySmall = instance_create_layer(xx, yy, "Instances", obj_fighter_guide);
		global.counterSquads++;
		newEnemySmall.alarm[0] = global.enemyTargetSwitch * room_speed; //switch targets
	}
}
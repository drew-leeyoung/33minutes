/// @description spawn fighters every {interval}
// number of enemies determined by obj_game_ctl global.swarmSmall

if (room == rm_fight)
{
repeat(global.swarmSmall)
    {
    var xx = self.x;
    var yy = self.y;
    var newEnemySmall = instance_create_layer(xx, yy, "Instances", obj_enemy_small);
	newEnemySmall.alarm[0] = global.enemySmallWakeup;
    }
alarm[0] = global.nextWaveTimer;
}


/*
xpos = instance.x;
ypos = instance.y;

*/
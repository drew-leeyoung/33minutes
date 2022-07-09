/// @description global enemy arrival

//spawn enemies
repeat(3) {
	//random upper x,y location
	var xx = random_range(room_width * 0.1, room_width * 0.9);
    var yy = random_range(room_height * 0.03, room_height * 0.1);
    var newEnemyBig = instance_create_layer(xx, yy, "Instances", obj_enemy_big);
	newEnemyBig.alarm[0] = global.nextWaveTimer;
}
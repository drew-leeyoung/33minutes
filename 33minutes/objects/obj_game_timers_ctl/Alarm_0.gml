/// @description (33min) global enemy arrival

//spawn enemies
if(global.swarmMothershipCount > 0){ //spawn multiple
	repeat(global.swarmMothershipCount) {
		//random upper x,y location
		var xx = random_range(room_width * 0.1, room_width * 0.9);
	    var yy = random_range(room_height * 0.03, room_height * 0.1);
	    var newEnemyBig = instance_create_layer(xx, yy, "Instances", obj_enemy_squad_spawner);
		var len = array_length(global.swarmShipArray)
		global.swarmShipArray[len] = newEnemyBig;
		newEnemyBig.alarm[0] = global.nextWaveTimer; //uncomment to make enemies countdown themselves
	}
} else { //spawn one
	//random upper x,y location
	var xx = random_range(room_width * 0.1, room_width * 0.9);
    var yy = random_range(room_height * 0.03, room_height * 0.1);
    var newEnemyBig = instance_create_layer(xx, yy, "Instances", obj_enemy_squad_spawner);
	var len = array_length(global.swarmShipArray)
	global.swarmShipArray[len] = newEnemyBig;
	newEnemyBig.alarm[0] = global.nextWaveTimer; //uncomment to make enemies countdown themselves
}


//start flashing
isWaveIncoming = true;
alarm[2] = global.cooldownFlashTimer * room_speed;

//start waves of enemies
//alarm[1] = (global.nextWaveTimer + 3) * room_speed; //actually set to 13 seconds for grace period
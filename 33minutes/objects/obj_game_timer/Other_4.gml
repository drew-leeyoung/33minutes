/// @description set timers

//global.timer: 33minutes until enemies arrive
//global.nextWaveTimer: once enemies arrive, how long until they spawn a wave



global.timer = 1980000; //33minutes in milliseconds. 33*60 * 1000 = 1980
global.nextWaveTimer = 10; //spawn next wave in {nextWaveTimer} seconds. 10seconds for fast testing
global.enemySmallWakeup = 5; //number of seconds until spawned enemies wake up and track


//start timers
//global enemy arrival
alarm[0] = global.timer * room_speed;
//start waves of enemies
alarm[1] = (global.nextWaveTimer + 3) * room_speed; //actually set to 13 seconds for grace period

//end timers






//spawn player
instance_create_layer(room_width/2, room_height * .80, "Instances", obj_ship_big);
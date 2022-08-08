/// @description set timers

//global.timer: 33minutes until enemies arrive
//global.nextWaveTimer: once enemies arrive, how long until they spawn a wave



global.timer = 13; //33minutes in seconds 33m*60s  = 1980
global.nextWaveTimer = 11; //spawn next wave in {nextWaveTimer} seconds. 10seconds for fast testing; round up due to timer format
global.enemySmallWakeup = 5; //number of seconds until spawned enemies wake up and track
global.cooldownFlashTimer = 4; //

//start timers
//global enemy arrival
alarm[0] = global.timer * room_speed;
alarm[1] = global.timer * room_speed; //synchronize with enemy arrival
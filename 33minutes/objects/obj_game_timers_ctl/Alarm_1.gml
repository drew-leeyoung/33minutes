/// @description (10sec) enemy wave spawn

isWaveIncoming = true;
isNextWaveCountingDown = false;


//start cooldown before next wave countdown
alarm[2] = global.cooldownFlashTimer * room_speed; //flashing until this timer goes off

for(var i = 0; i < array_length(global.swarmShipArray); i++) {
	var tempBigEnemy = global.swarmShipArray[i];
	tempBigEnemy.alarm[0] = 0.1 * room_speed; //trigger immediately
}

//enemies should grow stronger after every wave
global.swarmSquadSize++;
global.swarmSquadCount++;
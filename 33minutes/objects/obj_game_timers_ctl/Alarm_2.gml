/// @description (3sec) cooldown for enemy wave reset
//  this allows the enemy actions to occur before a countdown starts

isWaveIncoming = false;
isNextWaveCountingDown = true;

alarm[1] = global.nextWaveTimer * room_speed;
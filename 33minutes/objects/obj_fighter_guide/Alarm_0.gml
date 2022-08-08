/// @description change targets

var len = array_length(global.playerShipArray) -1; //avoid index out of bounds
var index = irandom_range(0,len);
var newTarget = global.playerShipArray[index]
guideTarget = newTarget;
alarm[0] = global.enemyTargetSwitch * room_speed;
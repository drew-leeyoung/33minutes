/// @description spawn player etc


//spawn player and ships
repeat(5) {
	xCoord = random_range(room_width * 0.1, room_width * 0.9);
	yCoord = random_range(room_height * 0.7, room_height * 0.85);
	var newShip = instance_create_layer(xCoord, yCoord, "Instances", obj_ship_big);
	global.playerShipArray[global.playerShipCount] = newShip;
	global.playerShipCount++;
}
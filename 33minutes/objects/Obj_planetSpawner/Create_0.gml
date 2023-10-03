//Generate the planet's stats:
global.planetTemp = random(100)
global.planetAtmoDensity = random(1)
global.planetWindSpeed = random(5)
global.planetMoisture = random(100)
//determines how rough the surface is, lower numbers mean more jagged terrain (0-100)
global.planetSmoothness = irandom(100)
//determines how much ground a planet has, higher numbers mean more terrain (30-40)
global.planetSize=20

//create clouds
if(global.planetAtmoDensity>=.2){
	instance_create_layer(0,2000,"Instances",Obj_cloudSpawner)
	if(global.planetAtmoDensity>=.5){
		instance_create_layer(0,3000,"Instances",Obj_cloudSpawner)
		if(global.planetAtmoDensity>=.8){
			instance_create_layer(0,4000,"Instances",Obj_cloudSpawner)
		}
	}
}


spawn_planet_array2()

for(rows=0; rows<=30; rows++){
	for(columns=0;columns<=100; columns++){
		if(planetSurface[rows][columns]==1){
			instance_create_layer(16*columns,room_height-(16*(rows+1)),"Instances",Obj_missingGround)
	}
	if(planetSurface[rows][columns]==2){
			instance_create_layer(16*columns,room_height-(16*(rows+1)),"Instances",Obj_missingInterior)
	}
}
}
//spawn the ground tiles








	//slopeDir is the direction of the slope, 0 is left (default) and 1 is right (flipped)
////rows
//for(rows=0; rows<=30; rows++){
////columns
//	for(columns=0;columns<=100; columns++){
//	if(planetSurface[rows][columns]==1&&rows-1>=0&&columns-1>=0&&rows+1<=30&&columns+1<=100){
//		//interior
//		if(planetSurface[rows-1][columns]==1&&planetSurface[rows+1][columns]==1&&planetSurface[rows][columns-1]==1&&planetSurface[rows][columns+1]==1){
//		var tile = instance_create_layer(16*columns,room_height-(16*(rows+1)),"Instances",Obj_GroundInterior1)
//		tile.slopeDir=0
//		}
//		if(planetSurface[rows-1][columns]==1&&planetSurface[rows+1][columns]==0&&planetSurface[rows][columns-1]==1&&planetSurface[rows][columns+1]==1){
//		var tile = instance_create_layer(16*columns,room_height-(16*(rows+1)),"Instances",Obj_GroundFlat1)
//		tile.slopeDir=0
//		}
//		if(planetSurface[rows-1][columns]==1&&planetSurface[rows+1][columns]==0&&planetSurface[rows][columns-1]==0&&planetSurface[rows][columns+1]==1){
//		var tile = instance_create_layer(16*columns,room_height-(16*(rows+1)),"Instances",Obj_GroundDown1)
//		tile.slopeDir=0
//		}
//		if(planetSurface[rows-1][columns]==1&&planetSurface[rows+1][columns]==0&&planetSurface[rows][columns-1]==1&&planetSurface[rows][columns+1]==0){
//		var tile = instance_create_layer(16*columns,room_height-(16*(rows+1)),"Instances",Obj_GroundDown1)
//		tile.slopeDir=1
//		}
//		if(planetSurface[rows-1][columns]==1&&planetSurface[rows+1][columns]==1&&planetSurface[rows][columns-1]==0&&planetSurface[rows][columns+1]==0){
//		var tile = instance_create_layer(16*columns,room_height-(16*(rows+1)),"Instances",Obj_GroundColumn1)
//		tile.slopeDir=0
//		}
//		if(planetSurface[rows-1][columns]==1&&planetSurface[rows+1][columns]==0&&planetSurface[rows][columns-1]==0&&planetSurface[rows][columns+1]==0){
//		var tile = instance_create_layer(16*columns,room_height-(16*(rows+1)),"Instances",Obj_GroundTop1)
//		tile.slopeDir=0
//		}
//		if(planetSurface[rows-1][columns]==1&&planetSurface[rows+1][columns]==1&&planetSurface[rows][columns-1]==1&&planetSurface[rows][columns+1]==0){
//		var tile = instance_create_layer(16*columns,room_height-(16*(rows+1)),"Instances",Obj_GroundCliff1)
//		tile.slopeDir=1
//		}
//		if(planetSurface[rows-1][columns]==1&&planetSurface[rows+1][columns]==1&&planetSurface[rows][columns-1]==0&&planetSurface[rows][columns+1]==1){
//		var tile = instance_create_layer(16*columns,room_height-(16*(rows+1)),"Instances",Obj_GroundCliff1)
//		tile.slopeDir=0
//		}
//}else if(planetSurface[rows][columns]==1){
//		instance_create_layer(16*columns,room_height-(16*(rows+1)),"Instances",Obj_GroundInterior1)
//}
//	}
//}


show_debug_message("here's the topog: " +string(planetSurface))
//generate the starscape
//star density for testing (larger numbers means fewer stars, decimals mean more)
starDen = 2

//the alpha values for the various star layers
starLayer = .3

for(yDrift=0; yDrift<=(64/starDen); yDrift++){
for(xDrift=0; xDrift<=(16/starDen); xDrift++){
	switch(irandom(3)){
		case 0: var stars = instance_create_layer(xDrift*100*starDen,yDrift*100*starDen,"StarScape",Obj_Stars1);
		stars.starLayer = starLayer
		break;
		case 1: var stars = instance_create_layer(xDrift*100*starDen,yDrift*100*starDen,"StarScape",Obj_Stars2);
		stars.starLayer = starLayer
		break;
		case 2: var stars = instance_create_layer(xDrift*100*starDen,yDrift*100*starDen,"StarScape",Obj_Stars3);
		stars.starLayer = starLayer
		break;
		case 3: var stars = instance_create_layer(xDrift*100*starDen,yDrift*100*starDen,"StarScape",Obj_Stars4);
		stars.starLayer = starLayer
		break;
	}
}
}
starLayer = .5

for(yDrift=0; yDrift<=(64/starDen); yDrift++){
for(xDrift=0; xDrift<=(16/starDen); xDrift++){
	switch(irandom(3)){
		case 0: var stars = instance_create_layer(xDrift*100*starDen,yDrift*100*starDen,"StarScape",Obj_Stars1);
		stars.starLayer = starLayer
		break;
		case 1: var stars = instance_create_layer(xDrift*100*starDen,yDrift*100*starDen,"StarScape",Obj_Stars2);
		stars.starLayer = starLayer
		break;
		case 2: var stars = instance_create_layer(xDrift*100*starDen,yDrift*100*starDen,"StarScape",Obj_Stars3);
		stars.starLayer = starLayer
		break;
		case 3: var stars = instance_create_layer(xDrift*100*starDen,yDrift*100*starDen,"StarScape",Obj_Stars4);
		stars.starLayer = starLayer
		break;
	}
}
}
starLayer = .7
for(yDrift=0; yDrift<=(64/starDen); yDrift++){
for(xDrift=0; xDrift<=(16/starDen); xDrift++){
	switch(irandom(3)){
		case 0: var stars = instance_create_layer(xDrift*100*starDen,yDrift*100*starDen,"StarScape",Obj_Stars1);
		stars.starLayer = starLayer
		break;
		case 1: var stars = instance_create_layer(xDrift*100*starDen,yDrift*100*starDen,"StarScape",Obj_Stars2);
		stars.starLayer = starLayer
		break;
		case 2: var stars = instance_create_layer(xDrift*100*starDen,yDrift*100*starDen,"StarScape",Obj_Stars3);
		stars.starLayer = starLayer
		break;
		case 3: var stars = instance_create_layer(xDrift*100*starDen,yDrift*100*starDen,"StarScape",Obj_Stars4);
		stars.starLayer = starLayer
		break;
	}
}
}
	

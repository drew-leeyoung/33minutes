function spawn_planet_array(){
//spawn the planet's ground
//create a 2d array that maps the planet's topography
//rows
for(rows=0; rows<=50; rows++){
//columns
	for(columns=0;columns<=100; columns++){
		// neg = ground, pos = no ground. Odds of ground decrease as altitude increases
		topography=rows-(irandom(50)+5)
		//randomly choose empty space or ground
		if(topography<=0){
				planetSurface[rows][columns]=1
			//check if there's a lower line, if so, and the terrain 1 level down is empty, then this is empty too	
			if(rows-1>=0){
			if(planetSurface[rows-1][columns]==0){
				planetSurface[rows][columns]=0
			}else{
				if(columns-1>=0&&irandom(100)<=global.planetSmoothness){
					if(planetSurface[rows-1][columns-1]==0){
					planetSurface[rows][columns]=0
					}
				}
				if(columns+1<=100&&irandom(200)<=global.planetSmoothness){
					if(planetSurface[rows-1][columns+1]==0){
					planetSurface[rows][columns]=0
				}
				}
			}
			}
		}else{
				planetSurface[rows][columns]=0
			}
		
		
	}
}
}
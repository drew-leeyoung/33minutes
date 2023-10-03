function spawn_planet_array2(){
//spawn the planet's ground
//create a 2d array that maps the planet's topography
//rows
for(columns=0;columns<=100; columns++){
	for(rows=0; rows<=30; rows++){
	planetSurface[rows][columns]=0
	}
}

surfaceLine=irandom(25)+5
for(columns=0;columns<=100; columns++){
	planetSurface[surfaceLine][columns]=1
	//draw the second line layer
	secondLine=surfaceLine-(5+irandom(2))
		if(secondLine>=0){
		planetSurface[secondLine][columns]=1
		}
	//draw the third line layer
	thirdLine=secondLine-(5+irandom(2))
		if(thirdLine>=0){
		planetSurface[thirdLine][columns]=1
		}
	//draw the fourth line layer
	fourthLine=thirdLine-(5+irandom(2))
		if(fourthLine>=0){
		planetSurface[fourthLine][columns]=1
		}
	//draw the fifth line layer
	fifthLine=fourthLine-(5+irandom(2))
		if(fifthLine>=0){
		planetSurface[fifthLine][columns]=1
		}
	if(surfaceLine>=30){
	surfaceLine=29	
	}else if(surfaceLine<=0){
		surfaceLine=1
	}else{
	switch(irandom(2)){
		case 0: surfaceLine+=1;
		break;
		case 1: surfaceLine-=1;
		break;
	}
	
	
}
}
//mark the interior cells

for(columns=0;columns<=100; columns++){
interiorMark=false
	for(rows=30; rows>=0; rows--){
		if(planetSurface[rows][columns]==1){
			interiorMark=true}
		if(planetSurface[rows][columns]==0 && interiorMark==true){
	planetSurface[rows][columns]=2
		}
	}
}

}
	
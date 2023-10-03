//spawn clouds
if(random(400)<=1){
	cloudSeparation=irandom(100)-irandom(100)
}
if((irandom(1000)-global.planetMoisture)<=0){
	instance_create_layer(x-100,y+cloudSeparation,"Instances",Obj_Cirrostratus)
}



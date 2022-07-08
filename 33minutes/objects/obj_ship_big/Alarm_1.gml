/// @description shoot missile

for(var i = 1;i<missileCount+1;i++){
	//starting at 1 for nth nearest
	var tempMis = instance_create_layer(self.x,self.y,"Instances",obj_ship_missile1)
	with(tempMis){priority=i;}
}

//reset alarm
alarm[1] = interval1;
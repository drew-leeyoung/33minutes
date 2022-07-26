if(squadrank==0){
	//target = instance_nearest(x,y,obj_ship_big)
	x = mouse_x
	y = mouse_y
}else{
	x = x.target+(squadrank*5)
	y = y.target+(squadrank*5)
	
}
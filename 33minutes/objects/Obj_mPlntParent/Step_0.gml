if(irandom(10000)>9997){
	switch(irandom(1)){
	case 0: instance_create_layer(x+random(2),y+random(2),"Instances",Obj_mBomb1);
	break;
	case 1: instance_create_layer(x+random(2),y+random(2),"Instances",Obj_mBomb2);
	break;
	}
}



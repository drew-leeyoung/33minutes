
draw_self()
switch(rotation){
	case 0: image_angle =90;
	break;
	case 1: image_angle =180;
	break;
	case 2: image_angle =270;
	break;
	case 3: image_angle =360;
break;
}
if(image_index>=image_number-1) instance_destroy();

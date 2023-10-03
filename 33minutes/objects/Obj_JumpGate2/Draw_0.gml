draw_self()
switch(global.shipDataStruct[$ shipID].status){
	case 1: instance_destroy(self);
	break;
	case 4: jumpNow=true;
	break;
}

if(jumpNow==true){
	if(jumpAnim<=1){
		audio_play_sound_ext({sound: Sound_CivJump1 })
	}
	
	image_xscale=jumpAnim
	jumpAnim+=(myShip.moduleCount*2)/10
	if(jumpAnim>=myShip.moduleCount*2){
	instance_destroy(myShip)
	instance_destroy(self)
	}
}

if(image_alpha<=1){
image_alpha += charge
spinSpeed+=charge
image_speed = spinSpeed
}


if(image_alpha>=1 && readyToJump==false){
	readyToJump=true
	show_debug_message("drive Charged")
	global.shipDataStruct[$ shipID].status=3
}


draw_text(x+50,y+50,"Charged at " + string_format(image_alpha,5,5))


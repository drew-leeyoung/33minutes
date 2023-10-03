draw_self()


if(image_alpha<=1){
image_alpha += charge
spinSpeed+=charge
image_speed = spinSpeed
}


if(image_alpha>=1){
	show_debug_message("drive Charged")
	global.commJumpStatus=3
}


draw_text(x+50,y+50,"Charged at " + string_format(image_alpha,5,5))

if(selected==true){
scroll = device_mouse_y_to_gui(0)-(sprite_height/2)-mouseStartScroll
	if(mouse_check_button_pressed(mb_left)==true){
	mouseStartScroll=device_mouse_y_to_gui(0)
	scroll=device_mouse_y_to_gui(0)-(sprite_height/2)
	//show_debug_message("Clicked")
	}
}







if(mouse_check_button_released(mb_left)){
	selected=false
	//show_debug_message("LMB released")
}

if(mouseHover==true&&mouse_check_button(mb_left)){
selected=true	
	
}
x = camera_get_view_x(view_camera[0])+room_width-sprite_width
y = camera_get_view_y(view_camera[0])+scroll

//show_debug_message("scroll: " + string(scroll))
//show_debug_message("Start scroll: " + string(mouseStartScroll))

y=clamp(y,minScroll+camera_get_view_y(view_camera[0]),maxScroll+camera_get_view_y(view_camera[0]))
global.shipListScroll=y-camera_get_view_y(view_camera[0])-50
//there's an offset issue where the scroller is always 50 px off
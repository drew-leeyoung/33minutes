//Draw the resource totals
get_fleet_resources()
draw_fleet_resources()

draw_set_color(c_green)
draw_set_alpha(1)
draw_rectangle(buttonX1adj,buttonY1adj,buttonX2adj,buttonY2adj,0)


// surface test 2
//window_create(0,0,0,100,100,200,200,c_blue,.5)



//track the number of lines (applies to all tabs, needs to reset each draw step)
printLine=1
//set the base formatting:
set_base_formatting()

//miniMap
tabNumber=1
draw_text(room_width-(sideTabScale*tabNumber)+tabHeaderOffset,0+tabHeaderOffset,"Radar")
draw_set_color(global.c_miniMap)


//detect the mouse position
if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),room_width-(sideTabScale*tabNumber),0,room_width-(sideTabScale*(tabNumber-1)),sideTabScale/2)){
mouseHover=true}else{mouseHover=false}	

//highlight the tab header if the mouse is hovering over it
if(mouseHover==true || selectedTab == tabNumber){
	draw_set_alpha(selectedTabAlpha)
}else{draw_set_alpha(unselectedTabAlpha)}

//select the tab if the mouse hovers over it and the left mouse button is pressed
if(mouseHover==true && mouse_check_button_pressed(mb_left)==true){
	if(selectedTab==tabNumber){
		//open the tab if unselected, close it if it is selected
		selectedTab=0}else{selectedTab=tabNumber}
}

//draw the map tab header
var miniMapHeader = draw_rectangle(room_width-(sideTabScale*tabNumber),0,room_width-(sideTabScale*(tabNumber-1)),sideTabScale/2,0)


//draw the map tab body
if(selectedTab==tabNumber){
var miniMap = draw_rectangle(room_width-(sideTabScale*4),(sideTabScale/2)+1,room_width,room_height,0)

	
}

draw_set_alpha(1)
draw_set_color(c_white)


tabNumber=2
draw_text(room_width-(sideTabScale*tabNumber)+tabHeaderOffset,0+tabHeaderOffset,"Fleet")
draw_set_color(global.c_shipList)

//detect the mouse position
if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),room_width-(sideTabScale*tabNumber),0,room_width-(sideTabScale*(tabNumber-1)),sideTabScale/2)){
mouseHover=true}else{mouseHover=false}	

//highlight the tab header if the mouse is hovering over it
if(mouseHover==true || selectedTab == tabNumber){
	draw_set_alpha(selectedTabAlpha)
}else{draw_set_alpha(unselectedTabAlpha)}

//select the tab if the mouse hovers over it and the left mouse button is pressed
if(mouseHover==true && mouse_check_button_pressed(mb_left)==true){
	if(selectedTab==tabNumber){
		//open the tab if unselected, close it if it is selected
		selectedTab=0}else{selectedTab=tabNumber}
}

//draw the ship list tab header
draw_rectangle(room_width-(sideTabScale*tabNumber),0,room_width-(sideTabScale*(tabNumber-1)),sideTabScale/2,0)


//draw the ship list tab body
if(selectedTab==tabNumber){
var shipList = draw_rectangle(room_width-(sideTabScale*4),(sideTabScale/2)+1,room_width,room_height,0)

draw_set_color(global.c_shipList)

//print the shiplist information:
//ship list formatting
//the distance of the scroller
scrollDistance=maxScroll-minScroll
//the % change from scrolling
scrollAdjust=global.shipListScroll*(scrollDepth/scrollDistance)
//show_debug_message("scrollAdjust: " + string(scrollAdjust))
//draw_surface_part(surf_fleet_list,0,scrollAdjust,200,800,room_width-200,25);
draw_surface_part(surf_fleet_list,surfaceL,scrollAdjust,surfaceW,surfaceH,surfaceX,surfaceY);	
}

tabNumber=3
draw_text(room_width-(sideTabScale*tabNumber)+tabHeaderOffset,0+tabHeaderOffset,"Nav")
draw_set_color(global.c_surface)

//detect the mouse position
if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),room_width-(sideTabScale*tabNumber),0,room_width-(sideTabScale*(tabNumber-1)),sideTabScale/2)){
mouseHover=true}else{mouseHover=false}	

//highlight the tab header if the mouse is hovering over it
if(mouseHover==true || selectedTab == tabNumber){
	draw_set_alpha(selectedTabAlpha)
}else{draw_set_alpha(unselectedTabAlpha)}

//select the tab if the mouse hovers over it and the left mouse button is pressed
if(mouseHover==true && mouse_check_button_pressed(mb_left)==true){
	if(selectedTab==tabNumber){
		//open the tab if unselected, close it if it is selected
		selectedTab=0}else{selectedTab=tabNumber}
}

//draw the tab header
draw_rectangle(room_width-(sideTabScale*tabNumber),0,room_width-(sideTabScale*(tabNumber-1)),sideTabScale/2,0)

//draw the tab body
if(selectedTab==tabNumber){
var surface = draw_rectangle(room_width-(sideTabScale*4),(sideTabScale/2)+1,room_width,room_height,0)

	
}
draw_set_alpha(1)
draw_set_color(c_white)
tabNumber=4
draw_text(room_width-(sideTabScale*tabNumber)+tabHeaderOffset,0+tabHeaderOffset,"Comm")
draw_set_color(global.c_comms)

//detect the mouse position
if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),room_width-(sideTabScale*tabNumber),0,room_width-(sideTabScale*(tabNumber-1)),sideTabScale/2)){
mouseHover=true}else{mouseHover=false}	

//highlight the tab header if the mouse is hovering over it
if(mouseHover==true || selectedTab == tabNumber){
	draw_set_alpha(selectedTabAlpha)
}else{draw_set_alpha(unselectedTabAlpha)}

//select the tab if the mouse hovers over it and the left mouse button is pressed
if(mouseHover==true && mouse_check_button_pressed(mb_left)==true){
	if(selectedTab==tabNumber){
		//open the tab if unselected, close it if it is selected
		selectedTab=0}else{selectedTab=tabNumber}
}

//draw the tab header
draw_rectangle(room_width-(sideTabScale*tabNumber),0,room_width-(sideTabScale*(tabNumber-1)),sideTabScale/2,0)

//draw the tab body
if(selectedTab==tabNumber){
var comms = draw_rectangle(room_width-(sideTabScale*4),(sideTabScale/2)+1,room_width,room_height,0)

//draw the jump button
jumpButtonHieght=100
draw_set_alpha(.5)

//check if the mouse is over the jump button
if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),room_width-(sideTabScale*4)+tabBorder,(sideTabScale/2)+1+tabBorder,room_width-tabBorder,jumpButtonHieght)==true){
//show_debug_message("hovering over the jump button")
draw_set_alpha(.8)
if(mouse_check_button_pressed(mb_left)==true){
	switch(global.commJumpStatus){
	case 1: global.commJumpStatus = 2;
	break;
	//case 1: global.commJumpStatus = 2;
	//break;
	case 3: global.commJumpStatus = 4;
	break;
}
}
}

//check the status of the command ship jump drive
switch(global.commJumpStatus){
	case 1: 
	draw_set_color(c_grey);
	draw_rectangle(room_width-(sideTabScale*4)+tabBorder,(sideTabScale/2)+1+tabBorder,room_width-tabBorder,jumpButtonHieght,0);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(room_width-(sideTabScale*4)+tabBorder,(sideTabScale/2)+1+tabBorder,"Charge Drive");
	set_base_formatting();
	break;
	case 2: 
	draw_set_color(c_blue);
	draw_rectangle(room_width-(sideTabScale*4)+tabBorder,(sideTabScale/2)+1+tabBorder,room_width-tabBorder,jumpButtonHieght,0);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(room_width-(sideTabScale*4)+tabBorder,(sideTabScale/2)+1+tabBorder,"Drive Charging");
	set_base_formatting();
	break;
	case 3: 
	draw_set_color(c_red);
	draw_rectangle(room_width-(sideTabScale*4)+tabBorder,(sideTabScale/2)+1+tabBorder,room_width-tabBorder,jumpButtonHieght,0);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(room_width-(sideTabScale*4)+tabBorder,(sideTabScale/2)+1+tabBorder,"JUMP");
	set_base_formatting();
	break;
	case 4:
	break;
}



set_base_formatting()

}


draw_set_alpha(1)
draw_set_color(c_white)
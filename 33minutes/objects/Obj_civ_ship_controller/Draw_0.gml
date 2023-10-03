draw_self()
image_alpha=0
image_xscale=moduleCount+1
//highlight the ship when selected
if(selected==true){
draw_rectangle_colour(x+13,y-3,x+(moduleCount*16)+19,y+19,c_green,c_green,c_green,c_green,true)
}
//gives the option to dock if the mouse is hovering over the ship and another ship is selected
	if(keyboard_check(vk_alt)==true && mouseHover==true && array_contains(global.selectedShips,id)==false && array_length(global.selectedShips)>0){
		draw_set_color(c_orange)
		draw_text(mouse_x+10,mouse_y-10,"Dock")
		set_base_formatting()
	}

//determines if the ship is jumping or charging
//jumping
if(global.shipDataStruct[$ shipID].status==2 && jumping ==false){
//creating the jump aura
	jumping=true
	var myGate = instance_create_layer(x+sprite_width,y+(sprite_height/2),"Instances",Obj_JumpGate2)
	myGate.myShip = other
	myGate.shipID = shipID
}



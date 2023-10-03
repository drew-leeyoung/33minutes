


//places the movement point unless ctrl is being held down
if(selected==true&&keyboard_check(vk_control)==false){
moving=true
myxTarget=mouse_x
myyTarget=mouse_y
var target = instance_create_layer(mouse_x,mouse_y,"Instances",Obj_civ_ship_move_target)
target.myShip=other

}


//selects the ship if the mouse is in the ship's zone & if no other ships are selected
if(point_in_rectangle(mouse_x,mouse_y,x+13,y-3,x+(moduleCount*16)+19,y+19)==true&&array_length(global.selectedShips)==0){
	//selected=true
	array_insert(global.selectedShips,array_length(global.selectedShips),id)
}
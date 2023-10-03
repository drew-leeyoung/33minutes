draw_self()

//creating the jump aura
if(global.commJumpStatus==2&&jumping==false){
	jumping=true
	var myGate = instance_create_layer(x+sprite_width,y+(sprite_height/2),"Instances",Obj_JumpGate1)
	myGate.myShip = other
}




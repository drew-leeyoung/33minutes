draw_self()

if(instance_nearest(x,y,Obj_GUImanager).selectedTab==2){
if(mouseHover==false){
	image_alpha=.7}
	else{
		image_alpha=1}
}else{
	image_alpha=0
}

draw_text(x-20,y-20,string(global.shipListScroll))
		



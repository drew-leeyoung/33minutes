draw_self()

if(mousehover==true){
image_blend = make_colour_rgb(255, 255, 255);
}else{
	image_blend = make_colour_rgb(200, 200, 200)
}

draw_text(x+300,y+300,"total fighters: " + string(global.fighters))
draw_text(x+300,y+400,"total leaders: " + string(global.leaders))
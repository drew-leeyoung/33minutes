draw_self()

//sets the font
draw_set_font(fnt_digital)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//prints the name of the button in the center of the button; tweaks the position base on font size
//(still figuring out the x correction; maybe something with string length?
draw_text(x,y,buttonname)

//This dims the button when not hovered over. Button sprites should be made in their highlighted forms.
if(mousehover==true){
image_blend = make_colour_rgb(255, 255, 255);
}else{
	image_blend = make_colour_rgb(200, 200, 200)
}
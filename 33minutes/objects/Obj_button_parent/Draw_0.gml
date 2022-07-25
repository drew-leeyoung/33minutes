draw_self()
//sets the font
draw_set_font(buttonfont)
//prints the name of the button in the center of the button; tweaks the position base on font size
//(still figuring out the x correction; maybe something with string length?
draw_text(self.x+(sprite_width/2),self.y+(sprite_height/2)-(font_get_size(buttonfont)/2),buttonname)

//This dims the button when not hovered over. Button sprites should be made in their highlighted forms.
if(mousehover==true){
image_blend = make_colour_rgb(255, 255, 255);
}else{
	image_blend = make_colour_rgb(200, 200, 200)
}
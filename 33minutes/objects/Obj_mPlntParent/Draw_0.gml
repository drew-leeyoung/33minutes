draw_self()
if(hoffset>.6){
	hoffsetgrow=false}
if(hoffset<-.6){
	hoffsetgrow=true}

if(hoffsetgrow==true){
	hoffset+=.01}
else{hoffset-=.01}


if(mouseHover==true){
	draw_set_font(fnt_digital)
	draw_set_halign(fa_left)
	draw_set_valign(fa_bottom)
	draw_text_colour(x+hoffset+16,y+hoffset+16,planetname,c_lime,c_lime,c_olive,c_olive,(1-(1/(random(100)+10))))
	draw_set_font(fnt_digitalSML)
	draw_text_colour(x+hoffset+16,y+hoffset+32,"No signal.",c_red,c_red,c_maroon,c_maroon,1)
}
	
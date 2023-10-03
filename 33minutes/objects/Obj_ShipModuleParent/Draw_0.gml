draw_self()
//determine damage status
if(position==1){
	if(global.shipDataStruct[$ shipID].module.one.hp<50){
		image_index=1}else{image_index=0}
}
if(position==2){
	if(global.shipDataStruct[$ shipID].module.two.hp<50){
		image_index=1}else{image_index=0}
}
if(position==3){
	if(global.shipDataStruct[$ shipID].module.three.hp<50){
		image_index=1}else{image_index=0}
}
if(position==4){
	if(global.shipDataStruct[$ shipID].module.four.hp<50){
		image_index=1}else{image_index=0}
}
if(position==5){
	if(global.shipDataStruct[$ shipID].module.five.hp<50){
		image_index=1}else{image_index=0}
}


if(mouseHover==true){
image_blend = make_colour_rgb(255, 255, 255);

}else{
	image_blend = make_colour_rgb(220, 220, 220)
}

if(personalMouseHover==true){
//spacing per line
ycontentOffset=17
//spacing from the ship
ycontentOffsetAdd=8
//render above (-1) or below (1) ship
ycontentOffsetFlip=-1
//separation from the icon on the x axis
iconOffset=11
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_smallInfo)
draw_set_color(c_green)
//this if statement checks if A is held down and displays extra info if so
if(keyboard_check(ord("A"))==true){
image_blend = c_green
	if(position==1){
//draw contents of the module when hovered over
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+ycontentOffset)),string(global.shipDataStruct[$ shipID].module.one.hp)+"% Intg")
	draw_text(x+iconOffset,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*2))),"  "+string(global.shipDataStruct[$ shipID].module.one.civilians))
	draw_text(x+iconOffset,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*3))),"  "+string(global.shipDataStruct[$ shipID].module.one.marines))
	draw_text(x+iconOffset,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*4))),"  "+string(global.shipDataStruct[$ shipID].module.one.scientists))
	draw_text(x+iconOffset,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*5))),"  "+string(global.shipDataStruct[$ shipID].module.one.engineers))
	draw_text(x+iconOffset,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*6))),"  "+string(global.shipDataStruct[$ shipID].module.one.food))
	draw_text(x+iconOffset,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*7))),"  "+string(global.shipDataStruct[$ shipID].module.one.parts))
	draw_text(x+iconOffset,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*8))),"  "+string(global.shipDataStruct[$ shipID].module.one.water))
	draw_text(x+iconOffset,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*9))),"  "+string(global.shipDataStruct[$ shipID].module.one.medicine))
	//draw the icons
	draw_sprite(Spr_ItemIconPOPCivilian,1,x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*2))))
	draw_sprite(Spr_ItemIconPOPMarine,1,x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*3))))
	draw_sprite(Spr_ItemIconPOPScientist,1,x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*4))))
	draw_sprite(Spr_ItemIconPOPEngineer,1,x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*5))))
	draw_sprite(Spr_IconFood,1,x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*6))))
	draw_sprite(Spr_IconParts,1,x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*7))))
	draw_sprite(Spr_IconWater,1,x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*8))))
	draw_sprite(Spr_IconMeds,1,x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*9))))
	}
		if(position==2){
//draw contents of the module when hovered over
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+ycontentOffset)),"Hull %: "+string(global.shipDataStruct[$ shipID].module.two.hp))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*2))),"Civilians: "+string(global.shipDataStruct[$ shipID].module.two.civilians))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*3))),"Marines: "+string(global.shipDataStruct[$ shipID].module.two.marines))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*4))),"Scientists: "+string(global.shipDataStruct[$ shipID].module.two.scientists))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*5))),"Engineers: "+string(global.shipDataStruct[$ shipID].module.two.engineers))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*6))),"Food: "+string(global.shipDataStruct[$ shipID].module.two.food))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*7))),"Parts: "+string(global.shipDataStruct[$ shipID].module.two.parts))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*8))),"Water: "+string(global.shipDataStruct[$ shipID].module.two.water))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*9))),"Medicine: "+string(global.shipDataStruct[$ shipID].module.two.medicine))
	}
		if(position==3){
//draw contents of the module when hovered over
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+ycontentOffset)),"Hull %: "+string(global.shipDataStruct[$ shipID].module.three.hp))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*2))),"Civilians: "+string(global.shipDataStruct[$ shipID].module.three.civilians))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*3))),"Marines: "+string(global.shipDataStruct[$ shipID].module.three.marines))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*4))),"Scientists: "+string(global.shipDataStruct[$ shipID].module.three.scientists))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*5))),"Engineers: "+string(global.shipDataStruct[$ shipID].module.three.engineers))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*6))),"Food: "+string(global.shipDataStruct[$ shipID].module.three.food))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*7))),"Parts: "+string(global.shipDataStruct[$ shipID].module.three.parts))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*8))),"Water: "+string(global.shipDataStruct[$ shipID].module.three.water))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*9))),"Medicine: "+string(global.shipDataStruct[$ shipID].module.three.medicine))
	}
		if(position==4){
//draw contents of the module when hovered over
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+ycontentOffset)),"Hull %: "+string(global.shipDataStruct[$ shipID].module.four.hp))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*2))),"Civilians: "+string(global.shipDataStruct[$ shipID].module.four.civilians))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*3))),"Marines: "+string(global.shipDataStruct[$ shipID].module.four.marines))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*4))),"Scientists: "+string(global.shipDataStruct[$ shipID].module.four.scientists))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*5))),"Engineers: "+string(global.shipDataStruct[$ shipID].module.four.engineers))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*6))),"Food: "+string(global.shipDataStruct[$ shipID].module.four.food))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*7))),"Parts: "+string(global.shipDataStruct[$ shipID].module.four.parts))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*8))),"Water: "+string(global.shipDataStruct[$ shipID].module.four.water))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*9))),"Medicine: "+string(global.shipDataStruct[$ shipID].module.four.medicine))
	}
		if(position==5){
//draw contents of the module when hovered over
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+ycontentOffset)),"Hull %: "+string(global.shipDataStruct[$ shipID].module.five.hp))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*2))),"Civilians: "+string(global.shipDataStruct[$ shipID].module.five.civilians))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*3))),"Marines: "+string(global.shipDataStruct[$ shipID].module.five.marines))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*4))),"Scientists: "+string(global.shipDataStruct[$ shipID].module.five.scientists))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*5))),"Engineers: "+string(global.shipDataStruct[$ shipID].module.five.engineers))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*6))),"Food: "+string(global.shipDataStruct[$ shipID].module.five.food))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*7))),"Parts: "+string(global.shipDataStruct[$ shipID].module.five.parts))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*8))),"Water: "+string(global.shipDataStruct[$ shipID].module.five.water))
	draw_text(x,y+(ycontentOffsetFlip*(ycontentOffsetAdd+(ycontentOffset*9))),"Medicine: "+string(global.shipDataStruct[$ shipID].module.five.medicine))
	}
}
if(keyboard_check(ord("A"))==false){
	draw_text(mouse_x-30,mouse_y-30,controller.myName)
}
}
set_base_formatting()
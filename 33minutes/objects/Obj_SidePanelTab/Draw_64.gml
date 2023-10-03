draw_self()
if(myHeader.selected==true){
image_alpha=.8
//if minimap (tabposition == 0)
if(myHeader.tabPosition==0){
image_blend = global.minimapgreen	
}
//if shiplist (tabposition == 1)
if(myHeader.tabPosition==1){
image_blend = global.listbrown
textspacing=12
printLine=1
tabBorder=3
column1spacing=120
draw_set_font(fnt_digitalSML)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

for(shipNumber=1; shipNumber<=global.fleetSize; shipNumber++){

shipID=global.intToCharArray[shipNumber]
//calculate the ship's total resources
if(global.shipDataStruct[$ shipID].size==2){
m1HP=global.shipDataStruct[$ shipID].module.one.hp
m2HP=global.shipDataStruct[$ shipID].module.two.hp
shipHP=(m1HP+m2HP)/2

m1Civs=global.shipDataStruct[$ shipID].module.one.civilians
m2Civs=global.shipDataStruct[$ shipID].module.two.civilians
shipCivs=m1Civs+m2Civs

m1Mars=global.shipDataStruct[$ shipID].module.one.marines
m2Mars=global.shipDataStruct[$ shipID].module.two.marines
shipMars=m1Mars+m2Mars

m1Sci=global.shipDataStruct[$ shipID].module.one.scientists
m2Sci=global.shipDataStruct[$ shipID].module.two.scientists
shipSci=m1Sci+m2Sci

m1Eng=global.shipDataStruct[$ shipID].module.one.engineers
m2Eng=global.shipDataStruct[$ shipID].module.two.engineers
shipEng=m1Eng+m2Eng

m1Food=global.shipDataStruct[$ shipID].module.one.food
m2Food=global.shipDataStruct[$ shipID].module.two.food
shipFood=m1Food+m2Food

m1Parts=global.shipDataStruct[$ shipID].module.one.parts
m2Parts=global.shipDataStruct[$ shipID].module.two.parts
shipParts=m1Parts+m2Parts

m1Water=global.shipDataStruct[$ shipID].module.one.water
m2Water=global.shipDataStruct[$ shipID].module.two.water
shipWater=m1Water+m2Water

m1Medicine=global.shipDataStruct[$ shipID].module.one.medicine
m2Medicine=global.shipDataStruct[$ shipID].module.two.medicine
shipMedicine=m1Medicine+m2Medicine
}
if(global.shipDataStruct[$ shipID].size==3){
m1HP=global.shipDataStruct[$ shipID].module.one.hp
m2HP=global.shipDataStruct[$ shipID].module.two.hp
m3HP=global.shipDataStruct[$ shipID].module.three.hp
shipHP=(m1HP+m2HP+m3HP)/3

m1Civs=global.shipDataStruct[$ shipID].module.one.civilians
m2Civs=global.shipDataStruct[$ shipID].module.two.civilians
m3Civs=global.shipDataStruct[$ shipID].module.three.civilians
shipCivs=m1Civs+m2Civs+m3Civs

m1Mars=global.shipDataStruct[$ shipID].module.one.marines
m2Mars=global.shipDataStruct[$ shipID].module.two.marines
m3Mars=global.shipDataStruct[$ shipID].module.three.marines
shipMars=m1Mars+m2Mars+m3Mars

m1Sci=global.shipDataStruct[$ shipID].module.one.scientists
m2Sci=global.shipDataStruct[$ shipID].module.two.scientists
m3Sci=global.shipDataStruct[$ shipID].module.three.scientists
shipSci=m1Sci+m2Sci+m3Sci

m1Eng=global.shipDataStruct[$ shipID].module.one.engineers
m2Eng=global.shipDataStruct[$ shipID].module.two.engineers
m3Eng=global.shipDataStruct[$ shipID].module.three.engineers
shipEng=m1Eng+m2Eng+m3Eng

m1Food=global.shipDataStruct[$ shipID].module.one.food
m2Food=global.shipDataStruct[$ shipID].module.two.food
m3Food=global.shipDataStruct[$ shipID].module.three.food
shipFood=m1Food+m2Food+m3Food

m1Parts=global.shipDataStruct[$ shipID].module.one.parts
m2Parts=global.shipDataStruct[$ shipID].module.two.parts
m3Parts=global.shipDataStruct[$ shipID].module.three.parts
shipParts=m1Parts+m2Parts+m3Parts

m1Water=global.shipDataStruct[$ shipID].module.one.water
m2Water=global.shipDataStruct[$ shipID].module.two.water
m3Water=global.shipDataStruct[$ shipID].module.three.water
shipWater=m1Water+m2Water+m3Water

m1Medicine=global.shipDataStruct[$ shipID].module.one.medicine
m2Medicine=global.shipDataStruct[$ shipID].module.two.medicine
m3Medicine=global.shipDataStruct[$ shipID].module.three.medicine
shipMedicine=m1Medicine+m2Medicine+m3Medicine
}
if(global.shipDataStruct[$ shipID].size==4){
m1HP=global.shipDataStruct[$ shipID].module.one.hp
m2HP=global.shipDataStruct[$ shipID].module.two.hp
m3HP=global.shipDataStruct[$ shipID].module.three.hp
m4HP=global.shipDataStruct[$ shipID].module.four.hp
shipHP=(m1HP+m2HP+m3HP+m4HP)/4

m1Civs=global.shipDataStruct[$ shipID].module.one.civilians
m2Civs=global.shipDataStruct[$ shipID].module.two.civilians
m3Civs=global.shipDataStruct[$ shipID].module.three.civilians
m4Civs=global.shipDataStruct[$ shipID].module.four.civilians
shipCivs=m1Civs+m2Civs+m3Civs+m4Civs

m1Mars=global.shipDataStruct[$ shipID].module.one.marines
m2Mars=global.shipDataStruct[$ shipID].module.two.marines
m3Mars=global.shipDataStruct[$ shipID].module.three.marines
m4Mars=global.shipDataStruct[$ shipID].module.four.marines
shipMars=m1Mars+m2Mars+m3Mars+m4Mars

m1Sci=global.shipDataStruct[$ shipID].module.one.scientists
m2Sci=global.shipDataStruct[$ shipID].module.two.scientists
m3Sci=global.shipDataStruct[$ shipID].module.three.scientists
m4Sci=global.shipDataStruct[$ shipID].module.four.scientists
shipSci=m1Sci+m2Sci+m3Sci+m4Sci

m1Eng=global.shipDataStruct[$ shipID].module.one.engineers
m2Eng=global.shipDataStruct[$ shipID].module.two.engineers
m3Eng=global.shipDataStruct[$ shipID].module.three.engineers
m4Eng=global.shipDataStruct[$ shipID].module.four.engineers
shipEng=m1Eng+m2Eng+m3Eng+m4Eng

m1Food=global.shipDataStruct[$ shipID].module.one.food
m2Food=global.shipDataStruct[$ shipID].module.two.food
m3Food=global.shipDataStruct[$ shipID].module.three.food
m4Food=global.shipDataStruct[$ shipID].module.four.food
shipFood=m1Food+m2Food+m3Food+m4Food

m1Parts=global.shipDataStruct[$ shipID].module.one.parts
m2Parts=global.shipDataStruct[$ shipID].module.two.parts
m3Parts=global.shipDataStruct[$ shipID].module.three.parts
m4Parts=global.shipDataStruct[$ shipID].module.four.parts
shipParts=m1Parts+m2Parts+m3Parts+m4Parts

m1Water=global.shipDataStruct[$ shipID].module.one.water
m2Water=global.shipDataStruct[$ shipID].module.two.water
m3Water=global.shipDataStruct[$ shipID].module.three.water
m4Water=global.shipDataStruct[$ shipID].module.four.water
shipWater=m1Water+m2Water+m3Water+m4Water

m1Medicine=global.shipDataStruct[$ shipID].module.one.medicine
m2Medicine=global.shipDataStruct[$ shipID].module.two.medicine
m3Medicine=global.shipDataStruct[$ shipID].module.three.medicine
m4Medicine=global.shipDataStruct[$ shipID].module.four.medicine
shipMedicine=m1Medicine+m2Medicine+m3Medicine+m4Medicine
}
if(global.shipDataStruct[$ shipID].size==5){
m1HP=global.shipDataStruct[$ shipID].module.one.hp
m2HP=global.shipDataStruct[$ shipID].module.two.hp
m3HP=global.shipDataStruct[$ shipID].module.three.hp
m4HP=global.shipDataStruct[$ shipID].module.four.hp
m5HP=global.shipDataStruct[$ shipID].module.five.hp
shipHP=(m1HP+m2HP+m3HP+m4HP+m5HP)/5

m1Civs=global.shipDataStruct[$ shipID].module.one.civilians
m2Civs=global.shipDataStruct[$ shipID].module.two.civilians
m3Civs=global.shipDataStruct[$ shipID].module.three.civilians
m4Civs=global.shipDataStruct[$ shipID].module.four.civilians
m5Civs=global.shipDataStruct[$ shipID].module.five.civilians
shipCivs=m1Civs+m2Civs+m3Civs+m4Civs+m5Civs

m1Mars=global.shipDataStruct[$ shipID].module.one.marines
m2Mars=global.shipDataStruct[$ shipID].module.two.marines
m3Mars=global.shipDataStruct[$ shipID].module.three.marines
m4Mars=global.shipDataStruct[$ shipID].module.four.marines
m5Mars=global.shipDataStruct[$ shipID].module.five.marines
shipMars=m1Mars+m2Mars+m3Mars+m4Mars+m5Mars

m1Sci=global.shipDataStruct[$ shipID].module.one.scientists
m2Sci=global.shipDataStruct[$ shipID].module.two.scientists
m3Sci=global.shipDataStruct[$ shipID].module.three.scientists
m4Sci=global.shipDataStruct[$ shipID].module.four.scientists
m5Sci=global.shipDataStruct[$ shipID].module.five.scientists
shipSci=m1Sci+m2Sci+m3Sci+m4Sci+m5Sci

m1Eng=global.shipDataStruct[$ shipID].module.one.engineers
m2Eng=global.shipDataStruct[$ shipID].module.two.engineers
m3Eng=global.shipDataStruct[$ shipID].module.three.engineers
m4Eng=global.shipDataStruct[$ shipID].module.four.engineers
m5Eng=global.shipDataStruct[$ shipID].module.five.engineers
shipEng=m1Eng+m2Eng+m3Eng+m4Eng+m5Eng

m1Food=global.shipDataStruct[$ shipID].module.one.food
m2Food=global.shipDataStruct[$ shipID].module.two.food
m3Food=global.shipDataStruct[$ shipID].module.three.food
m4Food=global.shipDataStruct[$ shipID].module.four.food
m5Food=global.shipDataStruct[$ shipID].module.five.food
shipFood=m1Food+m2Food+m3Food+m4Food+m5Food

m1Parts=global.shipDataStruct[$ shipID].module.one.parts
m2Parts=global.shipDataStruct[$ shipID].module.two.parts
m3Parts=global.shipDataStruct[$ shipID].module.three.parts
m4Parts=global.shipDataStruct[$ shipID].module.four.parts
m5Parts=global.shipDataStruct[$ shipID].module.five.parts
shipParts=m1Parts+m2Parts+m3Parts+m4Parts+m5Parts

m1Water=global.shipDataStruct[$ shipID].module.one.water
m2Water=global.shipDataStruct[$ shipID].module.two.water
m3Water=global.shipDataStruct[$ shipID].module.three.water
m4Water=global.shipDataStruct[$ shipID].module.four.water
m5Water=global.shipDataStruct[$ shipID].module.five.water
shipWater=m1Water+m2Water+m3Water+m4Water+m5Water

m1Medicine=global.shipDataStruct[$ shipID].module.one.medicine
m2Medicine=global.shipDataStruct[$ shipID].module.two.medicine
m3Medicine=global.shipDataStruct[$ shipID].module.three.medicine
m4Medicine=global.shipDataStruct[$ shipID].module.four.medicine
m5Medicine=global.shipDataStruct[$ shipID].module.five.medicine
shipMedicine=m1Medicine+m2Medicine+m3Medicine+m4Medicine+m5Medicine
}

//print the ship's name
draw_set_color(c_white)
draw_set_font(fnt_digitalSMLheader)
draw_text(x+tabBorder,y+(textspacing*printLine),global.shipDataStruct[$ shipID].nametag)
draw_set_color(c_white)
draw_set_font(fnt_digitalSML)
printLine+=2
//print the ship's design
//the centering of the ship model
shipModelOffset=5
if(global.shipDataStruct[$ shipID].size==2){
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.one.make),0,x+tabBorder,y+(textspacing*printLine)-shipModelOffset)
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.two.make),0,x+tabBorder+16,y+(textspacing*printLine)-shipModelOffset)

}
if(global.shipDataStruct[$ shipID].size==3){
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.one.make),0,x+tabBorder,y+(textspacing*printLine)-shipModelOffset)
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.two.make),0,x+tabBorder+16,y+(textspacing*printLine)-shipModelOffset)
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.three.make),0,x+tabBorder+32,y+(textspacing*printLine)-shipModelOffset)

}
if(global.shipDataStruct[$ shipID].size==4){
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.one.make),0,x+tabBorder,y+(textspacing*printLine)-shipModelOffset)
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.two.make),0,x+tabBorder+16,y+(textspacing*printLine)-shipModelOffset)
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.three.make),0,x+tabBorder+32,y+(textspacing*printLine)-shipModelOffset)
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.four.make),0,x+tabBorder+48,y+(textspacing*printLine)-shipModelOffset)

}
if(global.shipDataStruct[$ shipID].size==5){
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.one.make),0,x+tabBorder,y+(textspacing*printLine)-shipModelOffset)
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.two.make),0,x+tabBorder+16,y+(textspacing*printLine)-shipModelOffset)
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.three.make),0,x+tabBorder+32,y+(textspacing*printLine)-shipModelOffset)
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.four.make),0,x+tabBorder+48,y+(textspacing*printLine)-shipModelOffset)
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.five.make),0,x+tabBorder+64,y+(textspacing*printLine)-shipModelOffset)
}
printLine+=1
//print the ship's HP and cargo
draw_text(x+tabBorder,y+(textspacing*printLine),"Average Integrity:")
//this color codes the health numbers
c_health=make_color_rgb(255-(shipHP*2),55+(shipHP*2),0)
draw_set_color(c_health)
draw_text(x+tabBorder+column1spacing,y+(textspacing*printLine),string(shipHP)+"%")
draw_set_color(c_white)
printLine+=1
draw_text(x+tabBorder,y+(textspacing*printLine),"Civilians: ")
draw_text(x+tabBorder+column1spacing,y+(textspacing*printLine),addCommas(shipCivs))
printLine+=1
draw_text(x+tabBorder,y+(textspacing*printLine),"Marines: ")
draw_text(x+tabBorder+column1spacing,y+(textspacing*printLine),addCommas(shipMars))
printLine+=1
draw_text(x+tabBorder,y+(textspacing*printLine),"Scientists: ")
draw_text(x+tabBorder+column1spacing,y+(textspacing*printLine),addCommas(shipSci))
printLine+=1
draw_text(x+tabBorder,y+(textspacing*printLine),"Engineers: ")
draw_text(x+tabBorder+column1spacing,y+(textspacing*printLine),addCommas(shipEng))
printLine+=1
draw_text(x+tabBorder,y+(textspacing*printLine),"Food Stores: ")
draw_text(x+tabBorder+column1spacing,y+(textspacing*printLine),addCommas(shipFood)+"kg")
printLine+=1
draw_text(x+tabBorder,y+(textspacing*printLine),"Spare Parts: ")
draw_text(x+tabBorder+column1spacing,y+(textspacing*printLine),addCommas(shipParts))
printLine+=1
draw_text(x+tabBorder,y+(textspacing*printLine),"Water Stores: ")
draw_text(x+tabBorder+column1spacing,y+(textspacing*printLine),addCommas(shipWater)+"L")
printLine+=1
draw_text(x+tabBorder,y+(textspacing*printLine),"Medicine: ")
draw_text(x+tabBorder+column1spacing,y+(textspacing*printLine),addCommas(shipMedicine))
printLine+=1
//paragraph break
printLine+=1
}
}
//if surface (tabposition == 2)
if(myHeader.tabPosition==2){
image_blend = global.dullpurple
textspacing=12
draw_set_font(fnt_digitalSML)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text(x,y,"Planet Temp: "+string(global.planetTemp)+"C")
draw_text(x,y+textspacing,"Atmo Density: "+string(global.planetAtmoDensity))
}
//if command ship (tabposition == 3)
if(myHeader.tabPosition==3){
image_blend = global.paperyellow
draw_set_color(c_red)
if(point_in_rectangle(mouse_x,mouse_y,x+50,y+600,x+150,y+700)==true){
	cmdJumpHover=true
	draw_set_color(c_red)}else{
		cmdJumpHover=false
		draw_set_color(c_dkgray)}
draw_rectangle(x+50,y+600,x+150,y+700,false)
draw_set_font(fnt_digital)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_black)
draw_text(x+100,y+650,"Jump")
draw_set_color(c_white)
}
}else{image_alpha=0}

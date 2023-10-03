//surface test
//determine how long the list of ships is
//the centering of the ship model
set_base_formatting()
shipModelOffset=5
linesPerShip=11
//the length of the ship list
scrollDepth=10+((global.fleetSize)*(textspacing+tabBorder)*linesPerShip)


if(!surface_exists(surf_fleet_list)){
surf_fleet_list=surface_create(200,scrollDepth)
}
surface_set_target(surf_fleet_list)
printLine=1

draw_clear_alpha(global.c_shipList, .5);


draw_set_color(global.c_shipList)
draw_text(50,scrollDepth,"THE END")

//print the shiplist information:
//ship list formatting


for(shipNumber=1; shipNumber<=global.fleetSize; shipNumber++){	
shipID=global.intToCharArray[shipNumber]
//print the info if the ship isn't dead or jumped
if(global.shipDataStruct[$ shipID].status==1 || global.shipDataStruct[$ shipID].status==2 || global.shipDataStruct[$ shipID].status==3){
//calculate the ship's total resources
shipHP = get_ship_resource(shipID,"hp")
shipCivs = get_ship_resource(shipID,"civilians")
shipMars = get_ship_resource(shipID,"marines")
shipEng = get_ship_resource(shipID,"engineers")
shipSci = get_ship_resource(shipID,"scientists")
shipFood = get_ship_resource(shipID,"food")
shipParts = get_ship_resource(shipID,"parts")
shipWater = get_ship_resource(shipID,"water")
shipMedicine = get_ship_resource(shipID,"medicine")

//print the ship's name
draw_set_color(c_white)
draw_set_font(fnt_digitalSMLheader)
draw_text(tabBorder,(textspacing*printLine),global.shipDataStruct[$ shipID].nametag)
//this is my super fancy formatting resetter for fonts and text spacing and such
//always call this script after you print text that used unique formatting (like the ship title right above this)
set_base_formatting()

printLine+=2
//print the ship's design


if(global.shipDataStruct[$ shipID].size==2){
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.one.make),0,tabBorder,+tabBorder+(textspacing*printLine)-shipModelOffset)
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.two.make),0,tabBorder+16,tabBorder+(textspacing*printLine)-shipModelOffset)

}
if(global.shipDataStruct[$ shipID].size==3){
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.one.make),0,tabBorder,tabBorder+(textspacing*printLine)-shipModelOffset)
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.two.make),0,tabBorder+16,tabBorder+(textspacing*printLine)-shipModelOffset)
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.three.make),0,tabBorder+32,tabBorder+(textspacing*printLine)-shipModelOffset)

}
if(global.shipDataStruct[$ shipID].size==4){
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.one.make),0,tabBorder,tabBorder+(textspacing*printLine)-shipModelOffset)
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.two.make),0,tabBorder+16,tabBorder+(textspacing*printLine)-shipModelOffset)
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.three.make),0,tabBorder+32,tabBorder+(textspacing*printLine)-shipModelOffset)
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.four.make),0,tabBorder+48,tabBorder+(textspacing*printLine)-shipModelOffset)

}
if(global.shipDataStruct[$ shipID].size==5){
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.one.make),0,tabBorder,tabBorder+(textspacing*printLine)-shipModelOffset)
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.two.make),0,tabBorder+16,tabBorder+(textspacing*printLine)-shipModelOffset)
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.three.make),0,tabBorder+32,tabBorder+(textspacing*printLine)-shipModelOffset)
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.four.make),0,tabBorder+48,tabBorder+(textspacing*printLine)-shipModelOffset)
draw_sprite(object_get_sprite(global.shipDataStruct[$ shipID].module.five.make),0,tabBorder+64,tabBorder+(textspacing*printLine)-shipModelOffset)

}
printLine+=2

//print the buttons that control the ship
//this is my greatest fucking acheivement: these variables convey the buttons' positions on the surface
//to the GUI. They reflect the position of the surface part that is drawn in the DrawGUI step
//to use:
//the basic button variables are used to draw the button's dimensions ON THE SURFACE
//the adj button variables are used to calculate whether the mouse is over the buttons
//basically, use the button vars to draw the button, then use the sdj vars to detect the mouse position
shipButtonHeight = 16
shipButtonWidth = 40

buttonX1=tabBorder
buttonX2=tabBorder+shipButtonWidth
buttonY1=(textspacing*printLine)-shipModelOffset
buttonY2=(textspacing*printLine)+shipButtonHeight-shipModelOffset

buttonX1adj=surfaceX+buttonX1
buttonX2adj=surfaceX+buttonX2
buttonY1adj=surfaceY+buttonY1-scrollAdjust
buttonY2adj=surfaceY+buttonY2-scrollAdjust

//old debugging code
if(shipNumber==1){
show_debug_message("mouseX: " + string(device_mouse_x_to_gui(0)))
show_debug_message("mouseY: " + string(device_mouse_y_to_gui(0)))
show_debug_message("rect: x1: " + string(buttonX1) + " y1: " + string(buttonY1) + " x2: " + string(buttonX2) + " y2: " + string(buttonY2))
show_debug_message("rect adjusted: x1: " + string(buttonX1adj) + " y1: " + string(buttonY1adj) + " x2: " + string(buttonX2adj) + " y2: " + string(buttonY2adj))

}
//detect if the mouse is over the button
//this comes before we draw the button so that the highlighting occurs in the right order
if(point_in_rectangle(device_mouse_x(0),device_mouse_y(0),buttonX1adj,buttonY1adj,buttonX2adj,buttonY2adj)==true){
	draw_set_color(c_red)
	show_debug_message("mouse is over a jump button")
}else{
	draw_set_color(c_orange)
}
 //draw the button
draw_rectangle(buttonX1,buttonY1,buttonX2,buttonY2,0)



set_base_formatting()
printLine+=1

//print the ship's HP and cargo

draw_text(tabBorder,(textspacing*printLine),"Average Integrity:")

//this color codes the health numbers

c_health=make_color_rgb(255-(shipHP*2),55+(shipHP*2),0)
draw_set_color(c_health)
draw_text(tabBorder+column1spacing,(textspacing*printLine),string(shipHP)+"%")
draw_set_color(c_white)

printLine+=1

draw_text(tabBorder,(textspacing*printLine),"Civilians: ")
draw_text(tabBorder+column1spacing,(textspacing*printLine),addCommas(shipCivs))

printLine+=1

draw_text(tabBorder,(textspacing*printLine),"Marines: ")
draw_text(tabBorder+column1spacing,(textspacing*printLine),addCommas(shipMars))

printLine+=1

draw_text(tabBorder,(textspacing*printLine),"Scientists: ")
draw_text(tabBorder+column1spacing,(textspacing*printLine),addCommas(shipSci))

printLine+=1

draw_text(tabBorder,(textspacing*printLine),"Engineers: ")
draw_text(tabBorder+column1spacing,(textspacing*printLine),addCommas(shipEng))

printLine+=1

draw_text(tabBorder,(textspacing*printLine),"Food Stores: ")
draw_text(tabBorder+column1spacing,(textspacing*printLine),addCommas(round(shipFood))+"kg")

printLine+=1

draw_text(tabBorder,(textspacing*printLine),"Spare Parts: ")
draw_text(tabBorder+column1spacing,(textspacing*printLine),addCommas(shipParts))

printLine+=1

draw_text(tabBorder,(textspacing*printLine),"Water Stores: ")
draw_text(tabBorder+column1spacing,(textspacing*printLine),addCommas(round(shipWater))+"L")

printLine+=1

draw_text(tabBorder,(textspacing*printLine),"Medicine: ")
draw_text(tabBorder+column1spacing,(textspacing*printLine),addCommas(shipMedicine))

printLine+=1
//paragraph break
printLine+=1
	
draw_set_alpha(1)
draw_set_color(c_white)

}
}
surface_reset_target()



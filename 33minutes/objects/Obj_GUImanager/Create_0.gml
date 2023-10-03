//make the fleet list surface
surf_fleet_list=-1

set_base_formatting()

//the dimensions for any surfaces parts drawn as tabs
surfaceX = room_width-200
surfaceY = 25
surfaceW = 200
surfaceH = 800
//surfaceT = scrollAdjust
surfaceL = 0
scrollAdjust = 0


//controls which tab is selected
selectedTab = 0
//tab coloring and alpha
selectedTabAlpha = .8
unselectedTabAlpha = .5

tabHeaderOffset=3

sideTabScale = 50

//tab window size for scrolling and such
tabWidth=room_width-(sideTabScale*4)
tabHeight=800
scrollBase=0
scrollerPos=0
scrollBarClicked=false

//create the ship list scroll controller
var shipListScroller = instance_create_layer(800,50,"GUI",Obj_scroller)


//this tracks how much the mouse has dragged since being left clicked and held down
//it resets on release
mouseDrag=0
mouseDragStart=-1


//variables for the resource totals
//separation from the icon on the x axis
iconOffset=16
//resource columns
resColumnWidth=130
resRowLength=20


//command ship jump status 0=dead, 1=not charging, 2=charging, 3=charged, 4=jumped
global.commJumpStatus=1



global.c_miniMap = make_color_rgb(150,255,50)
global.c_shipList = make_color_rgb(100,100,50)
global.c_shipListScroll = make_color_rgb(50,50,25)


global.c_surface = make_color_rgb(200,210,150)
global.c_comms = make_color_rgb(150,200,250)



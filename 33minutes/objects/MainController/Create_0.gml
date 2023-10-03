//These are functional variables that will be alterable in the options menu
//These are for resolution. Anything that has to do with the size of the window should use these. 
global.xRES=1600
global.yRES=800
//this tracks the ships that are selected
global.selectedShips=[]
//this controls when the big jump happens
global.CommandShipJump=false

// Initialise Viewports
view_enabled = true;
view_visible[0] = true;

room_width = 1600
room_height = 800

//the vertical postion of the scrolling view
scroll=0
//the speed of the scroll view
scrollspeed=70

view_camera[0] = camera_create_view(0,scroll,global.xRES,global.yRES,0,-1,-1,-1,0,0)


//menu stars
for(stars = 0; stars<=900+random(100); stars+=1){
instance_create_layer(random(global.xRES),(random(global.yRES)/2.6+random(global.yRES)/1.4),"Instances",Obj_mStar1)

}






//these are default variables for ship spawning:
	global.spawnStats = {
		hp : 150,
		civilians : 1000,
		marines : 100,
		scientists : 100,
		engineers : 100,
		food : 4000,
		parts : 4000,
		water : 8000,
		medicine : 1000
	}

//player resources with starting values:
	global.playerResources = {
		food : 0,
		parts : 0,
		water : 0,
		medicine : 0
	
}

//plays the menu music
audio_play_sound(Sound_MainMenuMusic,100,true);
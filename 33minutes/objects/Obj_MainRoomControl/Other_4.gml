// Initialise Viewports
view_enabled = true;
view_visible[0] = true;


room_width = 1600
room_height = 6400

//the vertical postion of the scrolling view
scroll=0
//the speed of the scroll view
scrollspeed=70

view_camera[0] = camera_create_view(0,scroll,global.xRES,global.yRES,0,-1,-1,-1,0,0)




//play room music
calmmusic = [Sound_Passive1,Sound_Passive2]
roomcalmmusic = calmmusic[(irandom(array_length(calmmusic)-1))]
audio_play_sound(roomcalmmusic,100,true) 
	
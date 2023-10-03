//I intend for this to be an object that allows controlling the movement of its ship
//This object will also spawn ship components and serve as a positioning target for those components

mouseHover=false
selected=false
runOnce = true
show_debug_message("made a ship")

//movement speed for the ship, passed to each module and manipulatable
engineSpeed=.2
engineAccelleration=.01

//starting speed and drift
speed=engineSpeed/2
direction=random(360)-random(360)

//whether the ship is charging it's drive
jumping=false
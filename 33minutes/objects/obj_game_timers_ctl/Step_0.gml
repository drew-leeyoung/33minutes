/// @description

//helper step function for flashing text
timerAlpha = abs(sin(get_timer()/300000));; //get_timer()/{value} can modify flash speed
if(timerAlpha>=1){
	timerAlpha-=0.1;
}
if(timerAlpha<=0){
	timerAlpha+=0.1
}
//end helper
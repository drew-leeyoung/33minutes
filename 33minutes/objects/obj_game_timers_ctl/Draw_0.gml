/// @description

//set font properties
draw_set_font(fnt_Large);
textScale = 1;
textAngle = 0;
// end font properties

//format alarms from milliseconds to readable clock or countdown
formatAlarm0 = toClock(alarm[0] / room_speed);
formatAlarm1 = floor( alarm[1] / room_speed ); //convert to seconds rounded up

//draw alarm[0]
draw_set_alpha(1); //make sure alpha is 1 for visibility
draw_set_halign(fa_center);
draw_set_valign(fa_top)

//formatAlarm0
if(alarm[0] > 0) {
	draw_text_transformed(room_width/2, 20, formatAlarm0, textScale, textScale, textAngle);
	} else {
	//flash 00:00:00
	draw_set_alpha(timerAlpha);
	draw_text_transformed(room_width/2, 20, "00:00:00.0", textScale, textScale, textAngle);
}



//drawn alarm[1]
draw_set_halign(fa_left);
draw_set_valign(fa_top)
if(formatAlarm1 < 11 && isNextWaveCountingDown){ // <11 to show countdown starting at 10seconds
	//show countdown
	draw_set_alpha(1);
	draw_text_transformed(20, 20, "NEXT WAVE IN: " + string(formatAlarm1), textScale, textScale, textAngle);
} else if(isWaveIncoming){
	//flash that new wave is incoming
	draw_set_alpha(timerAlpha); //parameter must be {timerAlpha} for flashing, see Step
	draw_text_transformed(20, 20, "ENEMIES INCOMING", textScale, textScale, textAngle);
} else {
	//default message no countdown, booleans are false
	draw_set_alpha(1);
	draw_text_transformed(20, 20, "NOTHING TO REPORT ", textScale, textScale, textAngle);
}
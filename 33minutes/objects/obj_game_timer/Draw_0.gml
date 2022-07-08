/// @description

//set font properties
draw_set_font(fnt_Large);
textScale = 1;
textAngle = 0;
;
// end font properties

//format alarms from milliseconds to readable clock or countdown
formatAlarm0 = msToClock(global.timer);
formatAlarm1 = ceil( alarm[1] / room_speed ); //convert to seconds rounded up

//draw alarm[0]
draw_set_halign(fa_center);
draw_set_valign(fa_top)
	draw_text_transformed(room_width/2, 20, formatAlarm0, textScale, textScale, textAngle);
/*
if(global.timer >= 0) {
	draw_text_transformed(20, 200, formatAlarm0, textScale, textScale, textAngle);
}
*/

//drawn alarm[1]
draw_set_halign(fa_left);
draw_set_valign(fa_top)
if(formatAlarm1 <= 10){
	draw_text_transformed(20, 20, "NEXT WAVE IN: " + string(formatAlarm1), textScale, textScale, textAngle);
} else {
	draw_text_transformed(20, 20, "NEXT WAVE IN: " + string(formatAlarm1), textScale, textScale, textAngle);
}
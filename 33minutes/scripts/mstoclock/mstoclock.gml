/// msToClock(timeInSec)
//
//  Returns a formatted string that represents seconds in "HH:MM:SS"
//
//      timeInSec         number, real
//
/// GMLscripts.com/license
function msToClock(timeInSec){

	var millis,seconds,minutes,hours;

	millis = floor((timeInSec % 1000) / 100);
	seconds = floor((timeInSec / 1000) % 60);
	minutes = floor((timeInSec / (1000 * 60)) % 60);
	hours = floor((timeInSec / (1000 * 60 * 60)) % 24);

	hours = (hours < 10) ? "0" + string(hours) : string(hours);
	minutes = (minutes < 10) ? "0" + string(minutes) : string(minutes);
	seconds = (seconds < 10) ? "0" + string(seconds) : string(seconds);

	return hours + ":" + minutes + ":" + seconds + "." + string(millis);

}
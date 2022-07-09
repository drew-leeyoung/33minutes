/// toClock(timeInSec)
//
//  Returns a formatted string that represents seconds in "HH:MM:SS:m"
//
//      timeInSec         number, real
//
/// GMLscripts.com/license
function toClock(timeInSec){
	m = timeInSec * 1000; //convert to milliseconds
	millis = floor((m % 1000) / 100);
	seconds = floor((m / 1000) % 60);
	minutes = floor((m / (1000 * 60)) % 60);
	hours = floor((m / (1000 * 60 * 60)) % 24);

	hours = (hours < 10) ? "0" + string(hours) : string(hours);
	minutes = (minutes < 10) ? "0" + string(minutes) : string(minutes);
	seconds = (seconds < 10) ? "0" + string(seconds) : string(seconds);

	return hours + ":" + minutes + ":" + seconds + "." + string(millis);
}
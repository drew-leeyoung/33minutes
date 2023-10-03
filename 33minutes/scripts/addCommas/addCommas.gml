// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function addCommas(number){
var str = string(argument0)
var len = string_length(str)

for (var i = len; i>0; i--){
	if (i mod 3 = len mod 3 && i != len){
		str = string_insert(",",str,i+1)
	}
}

return str;
}
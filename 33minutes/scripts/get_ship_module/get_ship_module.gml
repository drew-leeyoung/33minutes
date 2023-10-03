//given a make and type of module, this script will return a random module that meets those requirements
//new module categories need to be added here
function get_ship_module(make,type){
if(type=="engine"){
	switch(make){
	case "ORN": part = global.civORNshipsEngines[irandom(array_length(global.civORNshipsEngines)-1)];
	break;
	case "BLU": part = global.civBLUshipsEngines[irandom(array_length(global.civBLUshipsEngines)-1)];
	break;
	case "WH": part = global.civWHshipsEngines[irandom(array_length(global.civWHshipsEngines)-1)];
	break;
	case "CARGO": part = global.civHAUshipsEngines[irandom(array_length(global.civHAUshipsEngines)-1)]
	break;
	case "GRN": part = global.civGRNshipsEngines[irandom(array_length(global.civGRNshipsEngines)-1)]
	break;
	case "RED": part = global.civREDshipsEngines[irandom(array_length(global.civREDshipsEngines)-1)]
	break;
	case "BAN": part = global.civBANshipsEngines[irandom(array_length(global.civBANshipsEngines)-1)]
	break;
}
}

if(type=="drive"){
	switch(make){
	case "ORN": part = global.civORNshipsDrives[irandom(array_length(global.civORNshipsDrives)-1)];
	break;
	case "BLU": part = global.civBLUshipsDrives[irandom(array_length(global.civBLUshipsDrives)-1)];
	break;
	case "WH": part = global.civWHshipsDrives[irandom(array_length(global.civWHshipsDrives)-1)];
	break;
	case "CARGO": part = global.civHAUshipsDrives[irandom(array_length(global.civHAUshipsDrives)-1)]
	break;
	case "GRN": part = global.civGRNshipsDrives[irandom(array_length(global.civGRNshipsDrives)-1)]
	break;
	case "RED": part = global.civREDshipsDrives[irandom(array_length(global.civREDshipsDrives)-1)]
	break;
	case "BAN": part = global.civBANshipsDrives[irandom(array_length(global.civBANshipsDrives)-1)]
	break;

}
}

if(type=="other"){
	switch(make){
	case "ORN": part = global.civORNshipsOther[irandom(array_length(global.civORNshipsOther)-1)];
	break;
	case "BLU": part = global.civBLUshipsOther[irandom(array_length(global.civBLUshipsOther)-1)];
	break;
	case "WH": part = global.civWHshipsOther[irandom(array_length(global.civWHshipsOther)-1)];
	break;
	case "CARGO": part = global.civHAUshipsOther[irandom(array_length(global.civHAUshipsOther)-1)]
	break;
	case "GRN": part = global.civGRNshipsOther[irandom(array_length(global.civGRNshipsOther)-1)]
	break;
	case "RED": part = global.civREDshipsOther[irandom(array_length(global.civREDshipsOther)-1)]
	break;
	case "BAN": part = global.civBANshipsOther[irandom(array_length(global.civBANshipsOther)-1)]
	break;

}
}

return part;

}
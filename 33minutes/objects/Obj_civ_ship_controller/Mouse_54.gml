if(selected==true){
	arrayLength = array_length(global.selectedShips);
for (var i = 0; i < arrayLength; i++) {
    if (global.selectedShips[i] == id) {
                array_delete(global.selectedShips, i,1);
        break;
    }
}
	selected=false}



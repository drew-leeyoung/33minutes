/// @description click to add

var _pos = 0;
var _type = item;
var _sprite = sprite_index;

with(obj_inv) {
	while(_pos < 5) {
	//see if item already exists; _pos == index
		if(item_array[_pos][item_type] == _type){
			break;
		} else {
			_pos++;
		}
	}
	
	if(_pos > 4){
	//if > 4, find new spot for item;
		_pos = 0;
		while(_pos < 5){
			if(item_array[_pos][item_type] == item_none){
				break;
			} else {
				_pos++;
			}
		}
	}
	
	if(_pos < 5){
	//add to inv & destroy inst; else no room
		item_array[_pos][item_type] = _type;//type
		item_array[_pos][item_sprite] = _sprite;//sprite
		item_array[_pos][item_amount] += 1;//amount
		with(other) instance_destroy();
	}
}
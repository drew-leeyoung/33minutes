/// @description draw UI

//set font props
draw_set_alpha(1);
draw_set_font(fnt_Small);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

draw_self();

var _item_x = item_pos * 22;
var _xx = bbox_left + 13 ;
var _yy = bbox_top + 13;

draw_sprite(spr_inv_selected, item_pos_index, _xx + _item_x, _yy);

item_pos_index += 0.2;
for(var i=0;i<5;i++){
	//draw item based on type
	if(!item_array[i][item_type] == item_none){
		draw_sprite(item_array[i][item_sprite], 0,_xx,_yy);
		draw_text(_xx + 8, _yy + 9, + string(item_array[i][item_amount]));
	}
	_xx += 22;
}
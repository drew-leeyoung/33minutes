/// @description init inventory

randomize();

draw_set_font(fnt_Small);

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

item_pos = 0;
item_pos_index = 0;
//TODO: need a better way to instantiate a 2d array
item_array =	[
	[item_none, -1, 0],
	[item_none, -1, 0],
	[item_none, -1, 0],
	[item_none, -1, 0],
	[item_none, -1, 0]
				];
/// @description 

item = choose(item_baymis, item_bayhng, item_baycgo, item_baypop, item_statur, item_staart, item_staeng, item_stajmp);

switch(item){
	case item_baymis:
		sprite_index = spr_item_mod_bay_mis;
		break;
	case item_bayhng:
		sprite_index = spr_item_mod_bay_hng;
		break;
	case item_baycgo:
		sprite_index = spr_item_mod_bay_cgo;
		break;
	case item_baypop:
		sprite_index = spr_item_mod_bay_pop;
		break;
	case item_statur:
		sprite_index = spr_item_mod_sta_tur;
		break;
	case item_staart:
		sprite_index = spr_item_mod_sta_art;
		break;
	case item_staeng:
		sprite_index = spr_item_mod_sta_eng;
		break;
	case item_stajmp:
		sprite_index = spr_item_mod_sta_jmp;
		break;
}
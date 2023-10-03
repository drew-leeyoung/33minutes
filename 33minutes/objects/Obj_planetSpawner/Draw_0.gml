//sets the atmosphere color
atmoColor = make_colour_rgb(100+global.planetTemp, 100+global.planetTemp, 200-global.planetTemp)
//applies the atmosphere color
var lay_id = layer_get_id("BackgroundSky");
var back_id = layer_background_get_id(lay_id);
layer_background_blend(back_id, atmoColor);
layer_background_alpha(back_id, global.planetAtmoDensity)
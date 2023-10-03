// The surface is stored in vram, and can be purged at any time, so always
// make sure the surface exists before doing anything to it
if ! surface_exists(_surface)
    _surface = surface_create( 1, 1 )

surface_set_target(_surface)

draw_clear_alpha( windowColor, windowColorAlpha )

// Put some draw code here. NOTE: your x/y coordinates will be based on the corner of the window surface, NOT the room surface

surface_reset_target()
draw_surface_part(_surface, _surfaceX, _surfaceY, windowLength, windowHeight, x, y )
// -- Public Properties --
// x: the room x coordinate to create the window
// y: the room u coordinate to create the window
// windowLength: the length of the dialog window that will be displayed
// windowHeight: the height of the dialog window that will be displayed
// surfaceLength: the length of the scrollable area in the window. The length must be greater than or equal to the window length
// surfaceHeight: the height of the scrollable area in the window. The height must be greater than or equal to the window height
// windowColor: The color to use when clearing the window. Essentially becomes the background color of the window
// windowColorAlpha: The alpha of the color to clear the window with. Can pass 0 to make it clear

_surfaceX = 0
_surfaceY = 0
_surface = noone

// Make sure the surface is at least the size of the window
surfaceLength = max( surfaceLength, windowLength )
surfaceHeight = max( surfaceHeight, surfaceHeight )


// It is highly recommended that surface sizes are a power of 2 for wider platform compatibility
// So create a surface that is larger than or equal to the requested size, but
// restrict the scrollable area to the requested size
_internalSurfaceLength = 1
while _internalSurfaceLength < surfaceLength
{
    _internalSurfaceLength *= 2
}

_internalSurfaceHeight = 1
while _internalSurfaceHeight < surfaceHeight
{
    _internalSurfaceHeight *= 2
}
  
_surface = surface_create( _internalSurfaceLength, _internalSurfaceHeight )
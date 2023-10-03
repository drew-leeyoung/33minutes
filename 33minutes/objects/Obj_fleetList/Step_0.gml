// ( Add some scroll code that manipulates the position of  _surfaceX and _surfaceY )

// Clamp values to restrict the scrollable area to the surface size
_surfaceX = clamp( _surfaceX, 0, surfaceLength - windowLength )
_surfaceY = clamp( _surfaceY, 0, surfaceHeight - windowHeight )
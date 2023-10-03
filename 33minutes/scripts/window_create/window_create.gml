// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function window_create(xx, yy, depth, windowLength, windowHeight, surfaceLength, surfaceHeight, windowColor, windowColorAlpha){

return instance_create_depth(xx,yy,depth,Obj_fleetList,
    {
        windowLength: windowLength,
        windowHeight: windowHeight,
        surfaceLength: surfaceLength,
        surfaceHeight: surfaceHeight,
        windowColor: windowColor,
        windowColorAlpha: windowColorAlpha
    }
    )

}
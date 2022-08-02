// @description move at an arc to eventually point at target

//use the vector from point_direction(x1,y1,x2,y2) to determine if entity is facing the right way
//image_angle and direction should match
image_angle = direction;
targetVector = point_direction(x,y,targetX,targetY);


var _dir = point_direction(x, y, targetX, targetY);
var _diff = angle_difference(_dir, direction);
direction += _diff * 0.06;

//string("image angle : " + image_angle + " ; direction : " + direction + " ::: targetVector: " + targetVector));
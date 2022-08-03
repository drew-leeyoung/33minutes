/// @description move at an arc to eventually point at target

image_angle = direction; //always move where it is pointing

//direction will be an arc towards the parent obj_fighter_guide
var _dir = point_direction(x, y, targetX, targetY);
var _diff = angle_difference(_dir, direction);
direction += _diff * fighterTurnSpeed;

//update info on parent guide
//target{X/Y} stores the last step's location of its guide
targetX = guide.x + xOffset;
targetY = guide.y + yOffset;
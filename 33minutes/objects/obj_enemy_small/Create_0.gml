/// @description spin around before tracking

topSpeed = 0.75;

alarm[0] = global.enemySmallWakeup;
//get directional cone
//don't point directly at player
//somewhere between (NW,SW) OR (NE,SE)
//(135, 225) OR (45, 315) AKA (315,405)
direction = random_range(135,405);

//set instance specific variables
rotation_speed = random_range(3,8);
speed = random_range(0.5, 2);

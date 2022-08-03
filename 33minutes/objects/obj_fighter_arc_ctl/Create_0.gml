/// @description small fighter

//this object is a first effort at a squad system. 
//The idea is that ships are given a squadrank when spawned and then reference that
//variable to figure out who in their group is the leader. This way, if the leader
//gets popped, the next craft becomes the leader and adopts leader behavior. 
//This would also mean that only leader craft are tracking targets and setting courses.
//the wingmen are just following formation and shooting at anything that ends 
//up close enough and in front of them. 

var left = random_range(135,225);
var right = random_range(315,405);
spawnAngle = choose(left,right);
direction = spawnAngle;
speed = global.squadFighterSpeed; //Squad members should move towards fighter guide but never catch up
fighterTurnSpeed = 0.06;
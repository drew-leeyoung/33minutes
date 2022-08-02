//this object is a first effort at a squad system. 
//The idea is that ships are given a squadrank when spawned and then reference that
//variable to figure out who in their group is the leader. This way, if the leader
//gets popped, the next craft becomes the leader and adopts leader behavior. 
//This would also mean that only leader craft are tracking targets and setting courses.
//the wingmen are just following formation and shooting at anything that ends 
//up close enough and in front of them. 
squadrank=0;
squadnumber=5;
myid=self.id;
leaderMoveVector = 0;


//min and max offset variables for the whole squad (or all fighter guides)
offsetMin = 25;
offsetMax = 100;

//self offset variables relative to squad leader
//positive or negative horizontal offset is okay
xOffset = irandom_range(-offsetMin,offsetMax);

//since enemies will travel North to South, negative offset will keep them "above" the squad leader
yOffset = irandom_range(-offsetMin,-offsetMax);


if(instance_exists(obj_ship_big == true )){
		leaderTarget = obj_ship_big;
}

//my fighter
_inst=instance_create_layer(self.x+200,self.y+200,"Instances",obj_fighter_arc_ctl);
_inst.targetX = x;
_inst.targetY = y;
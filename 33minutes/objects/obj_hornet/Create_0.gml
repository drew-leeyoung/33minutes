
//layer 0 of the ship
ldepth=0
instance_create_depth(x,y+26,-1000-ldepth,obj_hornetSternBelly)
instance_create_depth(x-56,y+14,-1000-ldepth,obj_hornetSternEngine)

//layer 1 of the ship
ldepth=1
instance_create_depth(x,y,-1000-ldepth,obj_hornetStern)
instance_create_depth(x+64,y,-1000-ldepth,obj_hornetBow)


//layer 2 of the ship
ldepth=2
instance_create_depth(x,y,-1000-ldepth,obj_hornetSternPod)
instance_create_depth(x+64,y,-1000-ldepth,obj_hornetBowPod)

//layer 3 of the ship
ldepth=3
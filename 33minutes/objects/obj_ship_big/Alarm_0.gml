

/// @description shoot PD turret
instance_create_layer(self.x,self.y,"Instances",obj_ship_proj1)

//reset alarm
alarm[0] = interval0;

//Jacob note, adding a random variable to occasionally delay
//firing so everyone isn't shooting simultaniously
if(irandom(20)<=1){
interval0 = interval0+(interval0*.1)
}
//baseline create event, this event includes stock values
//any module that doesn't have a custom create event will use this one
//any module that deviates from these values must recreate this event code in full

//these are the module stats that are specifc to the module. They include
//storage capacity as well as any bonuses.
//maximum number of passengers
maxpassengers = 100
//maximum amount of food, water, medicine, and parts
maxsupplies = 1000
//resource and personnel biases
//the totals for each category must add up to 1; these are essentially %s
//if the total is greater than 1, errors will occur
//if the total is less than 1, the ship will spawn with fewer total people/supplies than it should
//people
civBias = .70
marBias = .1
sciBias = .1
engBias = .1

//resources
foodBias = .25
partsBias = .25
waterBias = .25
medsBias = .25

//this number increases the average starting hp for the module
//0 means the hp will be totally random, 100 or more means it will always be 100.
hpBias = 0

//resource bonuses (if applicable)
//these will generate each tick
bonusFood = 0
bonusWater = 0
bonusMeds = 0
bonusParts =0




/// @description swarm stats

draw_set_alpha(1);
draw_text(x+900,y+100,"this wave total fighters: " + string(global.swarmSquadCount + (global.swarmSquadSize * global.swarmSquadCount)))
draw_text(x+900,y+125,"this wave total squads: " + string(global.swarmSquadCount))
draw_text(x+900,y+150,"------------------------------------------")


draw_text(x+900,y+200,"current fighters: " + string(global.counterFighters))
draw_text(x+900,y+225,"current squads: " + string(global.counterSquads))
draw_text(x+900,y+250,"------------------------------------------")


draw_text(x+900,y+300,"next wave squad size: " + string(global.swarmSquadSize + 1))
draw_text(x+900,y+325,"next wave squad count: " + string(global.swarmSquadCount + 1))
draw_text(x+900,y+350,"------------------------------------------")

draw_text(x+900,y+400,"next wave total fighters: " + string((global.swarmSquadCount + 1) + ((global.swarmSquadSize + 1) * (global.swarmSquadCount + 1))))
draw_text(x+900,y+425,"next wave total count: " + string(global.swarmSquadCount + 1))
draw_text(x+900,y+450,"------------------------------------------")
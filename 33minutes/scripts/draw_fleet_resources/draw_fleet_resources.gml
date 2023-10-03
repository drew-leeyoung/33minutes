// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_fleet_resources(){
draw_set_color(c_white)
draw_set_halign(fa_left)
	//draw the icons
	draw_sprite(Spr_ItemIconPOPCivilian,1,resColumnWidth*0,0)
	draw_text((resColumnWidth*0)+iconOffset,0,addCommas(global.totalCivs))
	draw_sprite(Spr_ItemIconPOPMarine,1,resColumnWidth*1,0)
	draw_text((resColumnWidth*1)+iconOffset,0,addCommas(global.totalMar))
	draw_sprite(Spr_ItemIconPOPScientist,1,resColumnWidth*2,0)
	draw_text((resColumnWidth*2)+iconOffset,0,addCommas(global.totalSci))
	draw_sprite(Spr_ItemIconPOPEngineer,1,resColumnWidth*3,0)
	draw_text((resColumnWidth*3)+iconOffset,0,addCommas(global.totalEng))
	draw_sprite(Spr_IconFood,1,resColumnWidth*4,0)
	draw_text((resColumnWidth*4)+iconOffset,0,addCommas(round(global.totalFood)))
	draw_sprite(Spr_IconParts,1,resColumnWidth*5,0)
	//the amount of food getting eaten
		draw_set_color(c_red)
		draw_text((resColumnWidth*4)+iconOffset,resRowLength,"-"+addCommas(round(global.foodStepEat*30*60*60))+"/hour")
		//reset the food amount for this/the next step
		global.foodStepEat=0
		draw_set_color(c_white)
	
	
	draw_text((resColumnWidth*5)+iconOffset,0,addCommas(global.totalParts))
	draw_sprite(Spr_IconWater,1,resColumnWidth*6,0)
	draw_text((resColumnWidth*6)+iconOffset,0,addCommas(round(global.totalWater)))
	//the amount of water getting drank
		draw_set_color(c_red)
		draw_text((resColumnWidth*6)+iconOffset,resRowLength,"-"+addCommas(round(global.waterStepDrink*30*60*60))+"/hour")
		//reset the water amount for this/the next step
		global.waterStepDrink=0
		draw_set_color(c_white)
	draw_sprite(Spr_IconMeds,1,resColumnWidth*7,0)
	draw_text((resColumnWidth*7)+iconOffset,0,addCommas(global.totalMeds))
}
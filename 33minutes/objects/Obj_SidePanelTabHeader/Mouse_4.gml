if(tabControl.selectedTab!=tabPosition){
	tabControl.selectedTab=tabPosition
show_debug_message("selected tab is NOW " + string(tabControl.selectedTab))	
}else if(tabControl.selectedTab==tabPosition){
	tabControl.selectedTab=-1}
	
show_debug_message("selected tab is " + string(tabControl.selectedTab))


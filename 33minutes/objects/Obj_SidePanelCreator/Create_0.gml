//tracks which tab is selected. -1 is none
selectedTab=-1

taboffset = 50
tabs = 0
while(tabs<=3){	
var tab = instance_create_layer(global.xRES-(global.xRES/8)+(tabs*taboffset),0,"GUI",Obj_SidePanelTabHeader)
tab.tabControl=other
tab.mouseHover=false
tab.activeTab=false
tab.tabPosition=tabs
show_debug_message("made tab #" +string(tabs))
tabs+=1

}

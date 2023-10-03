//this script loads and essentially stores all modules that can be spawned
//new ship categories need to be added here and to the "get_ship_module" script
function load_ship_modules(){
	
	//format
//global.civ_shipsEngines = 
//global.civ_shipsDrives = 
//global.civ_shipsOther = 

global.shipMakeList=["ORN","BLU","WH","CARGO","GRN","RED","BAN"]
	
//these are arrays for the ORN line of ships. Basically loot tables for the ships of each type
global.civORNshipsEngines = [Obj_CivEngineORN1,Obj_CivEngineORN2]
global.civORNshipsDrives = [Obj_CivDriveORN1,Obj_CivDriveORN2,Obj_CivDriveORN3]
global.civORNshipsOther = [Obj_CivPopORN4,Obj_CivCargoORN1,Obj_CivCargoORN2,Obj_CivCargoORN3,Obj_CivHeartORN1,Obj_CivMindORN1,Obj_CivMissileORN1,Obj_CivPDTurORN1,Obj_CivPDTurORN2,Obj_CivPopORN1,Obj_CivPopORN2,Obj_CivPopORN3,Obj_CivSteelORN1]

//BLU
global.civBLUshipsEngines = [Obj_BluEngine1]
global.civBLUshipsDrives = [Obj_BluDrive1,Obj_BluDrive2]
global.civBLUshipsOther = [Obj_BluCargo1,Obj_BluCargo2,Obj_BluPop1,Obj_BluPop2,Obj_BluPop3]

//water Hauler
global.civWHshipsEngines = [Obj_WHEngine1]
global.civWHshipsDrives = [Obj_WHDrive1]
global.civWHshipsOther = [Obj_WHcargo1]

//cargo hauler
global.civHAUshipsEngines = [Obj_HaulerEngine1]
global.civHAUshipsDrives = [Obj_HaulerDrive1]
global.civHAUshipsOther = [Obj_HaulerCargo1,Obj_HaulerCargo2,Obj_HaulerCargo3,Obj_HaulerCargo4,Obj_HaulerCargo5,Obj_HaulerCargo6,Obj_HaulerCargo7]

//GRN
global.civGRNshipsEngines = [Obj_GRNEngine1]
global.civGRNshipsDrives = [Obj_GRNDrive1]
global.civGRNshipsOther = [Obj_GRNGun1,Obj_GRNPop1,Obj_GRNPop2,Obj_GRNPop3]

//RED
global.civREDshipsEngines = [Obj_EngineRED1]
global.civREDshipsDrives = [Obj_DriveRED1,Obj_DriveRED2,Obj_DriveRED3]
global.civREDshipsOther = [Obj_PopRED1,Obj_PopRED2,Obj_PopRED3,Obj_PopRED4,Obj_GunRED1,Obj_CargoRED1,Obj_CargoRED2]

//BAN
global.civBANshipsEngines = [Obj_EngineBAN1]
global.civBANshipsDrives = [Obj_DriveBAN1]
global.civBANshipsOther = [Obj_PopBAN1]
}
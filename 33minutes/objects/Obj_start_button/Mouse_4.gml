//loads the game
global.newgame=true

basehp = 100
basecivilians = 1000
basemarines = 100
basescientists = 100
baseengineers = 100
basefood = 400
baseparts = 100
basewater = 3000
basemedicine = 100

//total resources used by res script:
global.totalCivs = 0 
global.totalMar = 0
global.totalSci = 0
global.totalEng = 0
global.totalFood = 0
global.totalParts = 0
global.totalWater = 0
global.totalMeds = 0

//resource consumption rates
global.foodRate = 1.5/(86400*30)
global.waterRate =3/(86400*30)

//resources consumed per step (total from all ships for even consumption)
global.foodStepEat = 0
global.waterStepDrink = 0

global.intToCharArray = [ "_","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","aa","ab","ac","ad","ae","af","ag","ah","ai","aj","ak","al","am","an","ao","ap","aq","ar","as","at","au","av","aw","ax","ay","az","ba","bb","bc","bd","be","bf","bg","bh","bi","bj","bk","bl","bm","bn","bo","bp","bq","br","bs","bt","bu","bv","bw","bx","by","bz","ca","cb","cc","cd","ce","cf","cg","ch","ci","cj","ck","cl","cm","cn","co","cp","cq","cr","cs","ct","cu","cv","cw","cx","cy","cz","da","db","dc","dd","de","df","dg","dh","di","dj","dk","dl","dm","dn","do","dp","dq","dr","ds","dt","du","dv","dw","dx","dy","dz"]
global.shipNames = ["Applewood","Burning House","Maxine IV","Pell Breaker","Starlight Serenade","Crystal Dawn","Thunderwave Voyager","Moonshadow Mariner","Solaris Skiff","Nebula Nomad","Celestial Crest","Aurora Albatross","Galactic Galleon","Stellar Phoenix","Serenity Shores","Velvet Horizon","Whispering Windsail","Midnight Mirage","Enchanted Voyager","Quantum Quasar","Radiant Reefrider","Dreamweaver Destiny","Ethereal Emissary","Mystic Moonrise","Skyfire Sentinel","Crimson Voyager","Whispering Wraith","Astral Alchemy","Silver Serpent","Lunar Lullaby","Ebon Echo","Cerulean Starlight","Opal Odyssey","Mystic Meridian","Jade Javelin","Amber Aegis","Vortex Vagabond","Phoenix Plunge","Thunder Twilight","Sapphire Sovereign","Cobalt Corsair","Scarlet Skies","Ivory Illusion","Ember Enigma","Willow Whisper","River Roamer","Mossy Mirage","Blossom Breeze","Sunset Seafarer","Azure Arboreal","Pebble Path","Dewdrop Drifter","Fern Frigate","Starlit Stream","Coral Cove","Silent Summit","Bamboo Brigantine","Ocean Oasis","Lily Lake","Moonlit Meadow","Misty Marsh","Whale Watcher","Maple Mistral","Butterfly Bay","Steel Sentinel","Cog Cruiser","Rustic Raider","Forge Fury","Iron Innovator","Welded Wanderer","Gritty Galleon","Mechanical Marauder","Factory Falcon","Circuit Carrier","Steam Surge","Metallic Monarch","Rivet Rambler","Foundry Frigate","Bolted Behemoth","Gear Glider","Smog Sovereign","Piston Pirate","Molten Majesty","Synth Submarine","Amara Aquila","Kiran Kapoor","Jin Lei","Mateo Martinez","Zara Al-Abdul","Nina Okafor","Aiden Nakamura","Ella da Silva","Rohan Patel","Lila Khan","Ishaan Kim","Leila Mendoza","Omar Ng","Zahra Avila","Liam Chen","Anaya Singh","Niko Rodriguez","Mila Ibrahim","Raphael Nwachukwu","Kaya Kimura","Isabella Vasquez III","Liam Patel IX","Sophia Huang II","Noah Kowalski VI","Olivia Fernandez IV","Aiden Ng VIII","Emma Gomes XII","Ethan Ali VII","Ava Okafor XV","Mia Kim III","Liam Martinez XVIII","Amelia Rodriguez I","Sebastian Tan X","Evelyn Chong XIV","Lucas Chang XXII","Harper Singh XI","Mason Al-Abdul XIII","Ella Nakamura V","Michael da Silva XVI","Sofia Leung XIX","Voyage Scholar","Canvas Artisan","Imagined Inventor","Healer's Mercy","Visioned Architect","Trades Guardian","Diplomat Voyager","Melodic Maestro","Questing Philosopher","Starry Astronomer","Unified Chieftain","Nomad's Passage","Alchemy Haven","Trailblazer's Path","Mapped Cartographer","Chronicles Curator","Legacy Scribe","Valiant Champion","Wayfarer's Journey","Enchanted Enigma","Starlight Scholar","Crystal Navigator IX","Thunderwave Voyager","Moonshadow Artisan VI","Solaris Mercy","Nebula Guardian XV","Celestial Mariner","Aurora Maestro","Galactic Philosopher III","Stellar Horizon","Serenity Chieftain XIII","Velvet Voyager","Whispering Alchemy XI","Midnight Cartographer","Enchanted Curator X","Quantum Musician","Radiant Trailblazer","Dreamweaver Legacy","Ethereal Scribe XVII","Ocean Trader 2","Cargo Venture","Harbor Queen 7","Global Merchant","Trade Voyager 9","Container Pioneer","Maritime Enterprise 3","Freight Express 6","Port Prosperity","Shipping Ambassador 4","Logistics Triumph","Harbor Fortune 8","Marine Conquest","Commerce Quest 5","Naval Exchange 1","Cargo Dynasty","Trade Odyssey 10","Port Authority","Shipping Dynasty 11","Logistics that Endeavor","Dawn's Embrace","Whisper of Time","Echo of Dreams","Moon's Secret","Symphony of Stars","Ocean's Promise","Sun's Smile","Canvas of Clouds","River's Laughter","Island of Serenity","Wind's Whispers","Garden of Moonbeams","Mountain's Song","Earth's Embrace","Sky's Palette","Dance of Fireflies","Enigma of Shadows","Silence of Snow","Journey of Sunsets","Essence of Moments","Harbor's Echo","Whispered Melodies","Glimmer of Hope","Mist's Embrace","Tales of Twilight","Breeze's Caress","Stardust Cascade","Fields of Whispers","Charm of Moonlight","Cascade of Dreams","River's Lullaby","Glow of Horizons","Gentle Starlight","Veil of Shadows","Looming Mirage","Realm of Serenity","Traces of Time","Prelude to Dawn","Echoes of Infinity","Labyrinth of Wonders","Banana Buggy","Jellybean Jalopy","Cheese Wheelie","Toothpaste Taxi","Bubblegum Beetle","Soda Streamliner","Pizza Pickup","Pancake Pacer","Candy Cruiser","Popcorn Prancer","Noodle Navigon","Waffle Wagon","Sausage Scooter","Marshmallow Mover","Pickle Prowler","Donut Dart","Cupcake Carriage","Broccoli Bumper","Cotton Candy Convertible","Popsicle Pacer","Butterfly Bounce Bus","Banana Bliss Buggy","Pineapple Perk Pod","Grape Gumdrop Glide","Tropical Trike Trek","Rainbow Roam Runner","Sizzling Salsa Sleigh","Cheese Chew Chew","Bubblegum Bliss Beetle","Icy Iguana Incline","Spiral Scooter Spin","Maple Meander Mobile","Fluffy Flap Flurry","Crispy Crunch Cab","Lively Llama Limousine","Noodle Nutshell Nudge","Peppered Pumpernickel Parade","Chilly Chimichanga Chariot","Waffle Wanderer Wagon","Candy Carousel Cruise","Sacred Solace","Divine Dreamer","Eternal Echo","Spiritual Serenity","Celestial Compass","Harmony Hike","Benevolent Blessing","Transcendent Trek","Mystic Miracle","Cosmic Caravan","Enlightened Explorer","Soulful Sanctuary","Reverent Radiance","Sanctified Safari","Heavenly Horizon","Prayerful Pilgrimage","Devotion Drive","Ascendant Allegiance","Hallowed Horse","Zen Zephyr","Rogue Whisper","Innocent Heart","Mysterious Wanderer","Heroic Echo","Villainous Veil","Loyal Guardian","Foolish Jester","Tragic Muse","Wise Sage","Enigmatic Enchantress","Brave Knight","Hopeful Dreamer","Cunning Trickster","Melancholy Poet","Noble Lord","Caring Healer","Restless Nomad","Scheming Sorcerer","Bold Adventurer","Shy Observer","MarineTech Voyager","EcoWave Expeditions","AquaVista Cruiser","TerraSpanner 1","HorizonSail Mariner","NaturePulse Ventures","AeroLinx Transits","HarborNex Industries","EcoSphere Ventures","GlobalTraverse Expeditions","Discovery Syndicate","Landscape Nexus","PioneerLink Innovations","EarthShift Technologies","AquaDawn Navigations","OceanView Ventures","LandmarkCosmo Expeditions","EcoFusion Enterprises","NaturaBridge Ventures","Journey Puzzled","Whispering Turquoise","Monkey Globe","Seashell Swift","Whirlwind Orchid","Gentle Pineapple","Graceful Cosmic","Mystic Marsh","Radiant Twinkle","Velvet Silver","Charming Thunder","Chirping Lighthouse","Enchanted Cobalt","Wandering Sapphire","Serene Peach","Lullaby Mystery","Ethereal Ruby","Starry Lemon","Sapphire Mist","Serene Daffodil","Sparkling Willow","Echoing Strawberry","Amber Tranquil","Blossom Emerald","Crimson Bloom","Cotton Iris","Rainbow Serenity","Golden Serenade"]

load_ship_modules()
////these are arrays for the ORN line of ships. Basically loot tables for the ships of each type
//global.civORNshipsEngines = [Obj_CivEngineORN1,Obj_CivEngineORN2]
//global.civORNshipsDrives = [Obj_CivDriveORN1,Obj_CivDriveORN2,Obj_CivDriveORN3]
//global.civORNshipsOther = [Obj_CivPopORN4,Obj_CivCargoORN1,Obj_CivCargoORN2,Obj_CivCargoORN3,Obj_CivHeartORN1,Obj_CivMindORN1,Obj_CivMissileORN1,Obj_CivPDTurORN1,Obj_CivPDTurORN2,Obj_CivPopORN1,Obj_CivPopORN2,Obj_CivPopORN3,Obj_CivSteelORN1]

//initialize the ship data struct
global.shipDataStruct = {}

for(i=1; i<=(array_length(global.intToCharArray)-1); i++){
	letter = global.intToCharArray[i]
	global.shipDataStruct[$ letter]={}
}





global.fleetSize = 15
global.shipCount = 1

//this is the random ship generator
if(global.newgame==true){
global.newgame=false

for(shipNumber=1; shipNumber<=global.fleetSize; shipNumber++){
//convert the shipNumber into a string of chars	
shipID=global.intToCharArray[shipNumber]
//set the ship's status (0=dead, 1=alive, 2=drive charging, 3=drive ready, 4=jumped)
global.shipDataStruct[$ shipID].status=4
//generate name
newName = global.shipNames[irandom(array_length(global.shipNames)-1)]
global.shipDataStruct[$ shipID].nametag=newName
//generate size (add irandom(3)+ when ready)
global.shipDataStruct[$ shipID].size=irandom(3)+2
//select make
make=global.shipMakeList[irandom(array_length(global.shipMakeList)-1)]
//note that this is the first time the ship is spawning
global.shipDataStruct[$ shipID].newSpawn=true
//generate modules
//ship size 2
if(global.shipDataStruct[$ shipID].size==2){
//build the modules section of the ship's data
global.shipDataStruct[$ shipID].module = {}

//engine module (must come first)
global.shipDataStruct[$ shipID].module.one = {}
global.shipDataStruct[$ shipID].module.one.hp = 1
global.shipDataStruct[$ shipID].module.one.civilians = -1
global.shipDataStruct[$ shipID].module.one.marines = 0
global.shipDataStruct[$ shipID].module.one.scientists = 0
global.shipDataStruct[$ shipID].module.one.engineers = 0
global.shipDataStruct[$ shipID].module.one.food = 1
global.shipDataStruct[$ shipID].module.one.parts = 0
global.shipDataStruct[$ shipID].module.one.water = 1
global.shipDataStruct[$ shipID].module.one.medicine = 0

global.shipDataStruct[$ shipID].module.one.make = get_ship_module(make,"engine")




//drive module (must come last)
global.shipDataStruct[$ shipID].module.two = {}
global.shipDataStruct[$ shipID].module.two.hp = 1
global.shipDataStruct[$ shipID].module.two.civilians = 0
global.shipDataStruct[$ shipID].module.two.marines = 0
global.shipDataStruct[$ shipID].module.two.scientists = 0
global.shipDataStruct[$ shipID].module.two.engineers = 0
global.shipDataStruct[$ shipID].module.two.food = 0
global.shipDataStruct[$ shipID].module.two.parts = 0
global.shipDataStruct[$ shipID].module.two.water = 0
global.shipDataStruct[$ shipID].module.two.medicine = 0

global.shipDataStruct[$ shipID].module.two.make = get_ship_module(make,"drive")



}
//ship size 3
if(global.shipDataStruct[$ shipID].size==3){
//build the modules section of the ship's data
global.shipDataStruct[$ shipID].module = {}
//engine module
global.shipDataStruct[$ shipID].module.one = {}
global.shipDataStruct[$ shipID].module.one.hp = 1
global.shipDataStruct[$ shipID].module.one.civilians = -1
global.shipDataStruct[$ shipID].module.one.marines = 0
global.shipDataStruct[$ shipID].module.one.scientists = 0
global.shipDataStruct[$ shipID].module.one.engineers = 0
global.shipDataStruct[$ shipID].module.one.food = 1
global.shipDataStruct[$ shipID].module.one.parts = 0
global.shipDataStruct[$ shipID].module.one.water = 1
global.shipDataStruct[$ shipID].module.one.medicine = 0

global.shipDataStruct[$ shipID].module.one.make = get_ship_module(make,"engine")

//middle module
global.shipDataStruct[$ shipID].module.two = {}
global.shipDataStruct[$ shipID].module.two.hp = 1
global.shipDataStruct[$ shipID].module.two.civilians = 0
global.shipDataStruct[$ shipID].module.two.marines = 0
global.shipDataStruct[$ shipID].module.two.scientists = 0
global.shipDataStruct[$ shipID].module.two.engineers = 0
global.shipDataStruct[$ shipID].module.two.food = 0
global.shipDataStruct[$ shipID].module.two.parts = 0
global.shipDataStruct[$ shipID].module.two.water = 0
global.shipDataStruct[$ shipID].module.two.medicine = 0

global.shipDataStruct[$ shipID].module.two.make = get_ship_module(make,"other")
	

//drive module
global.shipDataStruct[$ shipID].module.three = {}
global.shipDataStruct[$ shipID].module.three.hp = 1
global.shipDataStruct[$ shipID].module.three.civilians = 0
global.shipDataStruct[$ shipID].module.three.marines = 0
global.shipDataStruct[$ shipID].module.three.scientists = 0
global.shipDataStruct[$ shipID].module.three.engineers = 0
global.shipDataStruct[$ shipID].module.three.food = 0
global.shipDataStruct[$ shipID].module.three.parts = 0
global.shipDataStruct[$ shipID].module.three.water = 0
global.shipDataStruct[$ shipID].module.three.medicine = 0

global.shipDataStruct[$ shipID].module.three.make = get_ship_module(make,"drive")

}
//ship size 4
if(global.shipDataStruct[$ shipID].size==4){
//build the modules section of the ship's data
global.shipDataStruct[$ shipID].module = {}
//engine module
global.shipDataStruct[$ shipID].module.one = {}
global.shipDataStruct[$ shipID].module.one.hp = 1
global.shipDataStruct[$ shipID].module.one.civilians = -1
global.shipDataStruct[$ shipID].module.one.marines = 0
global.shipDataStruct[$ shipID].module.one.scientists = 0
global.shipDataStruct[$ shipID].module.one.engineers = 0
global.shipDataStruct[$ shipID].module.one.food = 1
global.shipDataStruct[$ shipID].module.one.parts = 0
global.shipDataStruct[$ shipID].module.one.water = 1
global.shipDataStruct[$ shipID].module.one.medicine = 0

global.shipDataStruct[$ shipID].module.one.make = get_ship_module(make,"engine")

//middle module 1
global.shipDataStruct[$ shipID].module.two = {}
global.shipDataStruct[$ shipID].module.two.hp = 1
global.shipDataStruct[$ shipID].module.two.civilians = 0
global.shipDataStruct[$ shipID].module.two.marines = 0
global.shipDataStruct[$ shipID].module.two.scientists = 0
global.shipDataStruct[$ shipID].module.two.engineers = 0
global.shipDataStruct[$ shipID].module.two.food = 0
global.shipDataStruct[$ shipID].module.two.parts = 0
global.shipDataStruct[$ shipID].module.two.water = 0
global.shipDataStruct[$ shipID].module.two.medicine = 0

global.shipDataStruct[$ shipID].module.two.make = get_ship_module(make,"other")

//middle module 2
global.shipDataStruct[$ shipID].module.three = {}
global.shipDataStruct[$ shipID].module.three.hp = 1
global.shipDataStruct[$ shipID].module.three.civilians = 0
global.shipDataStruct[$ shipID].module.three.marines = 0
global.shipDataStruct[$ shipID].module.three.scientists = 0
global.shipDataStruct[$ shipID].module.three.engineers = 0
global.shipDataStruct[$ shipID].module.three.food = 0
global.shipDataStruct[$ shipID].module.three.parts = 0
global.shipDataStruct[$ shipID].module.three.water = 0
global.shipDataStruct[$ shipID].module.three.medicine = 0

global.shipDataStruct[$ shipID].module.three.make = get_ship_module(make,"other")

//drive module
global.shipDataStruct[$ shipID].module.four = {}
global.shipDataStruct[$ shipID].module.four.hp = 1
global.shipDataStruct[$ shipID].module.four.civilians = 0
global.shipDataStruct[$ shipID].module.four.marines = 0
global.shipDataStruct[$ shipID].module.four.scientists = 0
global.shipDataStruct[$ shipID].module.four.engineers = 0
global.shipDataStruct[$ shipID].module.four.food = 0
global.shipDataStruct[$ shipID].module.four.parts = 0
global.shipDataStruct[$ shipID].module.four.water = 0
global.shipDataStruct[$ shipID].module.four.medicine = 0

global.shipDataStruct[$ shipID].module.four.make = get_ship_module(make,"drive")

}
//ship size 5
if(global.shipDataStruct[$ shipID].size==5){
//build the modules section of the ship's data
global.shipDataStruct[$ shipID].module = {}
//engine module
global.shipDataStruct[$ shipID].module.one = {}
global.shipDataStruct[$ shipID].module.one.hp = 1
global.shipDataStruct[$ shipID].module.one.civilians = -1
global.shipDataStruct[$ shipID].module.one.marines = 0
global.shipDataStruct[$ shipID].module.one.scientists = 0
global.shipDataStruct[$ shipID].module.one.engineers = 0
global.shipDataStruct[$ shipID].module.one.food = 1
global.shipDataStruct[$ shipID].module.one.parts = 0
global.shipDataStruct[$ shipID].module.one.water = 1
global.shipDataStruct[$ shipID].module.one.medicine = 0

global.shipDataStruct[$ shipID].module.one.make = get_ship_module(make,"engine")

//middle module 1
global.shipDataStruct[$ shipID].module.two = {}
global.shipDataStruct[$ shipID].module.two.hp = 1
global.shipDataStruct[$ shipID].module.two.civilians = 0
global.shipDataStruct[$ shipID].module.two.marines = 0
global.shipDataStruct[$ shipID].module.two.scientists = 0
global.shipDataStruct[$ shipID].module.two.engineers = 0
global.shipDataStruct[$ shipID].module.two.food = 0
global.shipDataStruct[$ shipID].module.two.parts = 0
global.shipDataStruct[$ shipID].module.two.water = 0
global.shipDataStruct[$ shipID].module.two.medicine = 0

global.shipDataStruct[$ shipID].module.two.make = get_ship_module(make,"other")

//middle module 2
global.shipDataStruct[$ shipID].module.three = {}
global.shipDataStruct[$ shipID].module.three.hp = 1
global.shipDataStruct[$ shipID].module.three.civilians = 0
global.shipDataStruct[$ shipID].module.three.marines = 0
global.shipDataStruct[$ shipID].module.three.scientists = 0
global.shipDataStruct[$ shipID].module.three.engineers = 0
global.shipDataStruct[$ shipID].module.three.food = 0
global.shipDataStruct[$ shipID].module.three.parts = 0
global.shipDataStruct[$ shipID].module.three.water = 0
global.shipDataStruct[$ shipID].module.three.medicine = 0

global.shipDataStruct[$ shipID].module.three.make = get_ship_module(make,"other")

//middle module 3
global.shipDataStruct[$ shipID].module.four = {}
global.shipDataStruct[$ shipID].module.four.hp = 1
global.shipDataStruct[$ shipID].module.four.civilians = 0
global.shipDataStruct[$ shipID].module.four.marines = 0
global.shipDataStruct[$ shipID].module.four.scientists = 0
global.shipDataStruct[$ shipID].module.four.engineers = 0
global.shipDataStruct[$ shipID].module.four.food = 0
global.shipDataStruct[$ shipID].module.four.parts = 0
global.shipDataStruct[$ shipID].module.four.water = 0
global.shipDataStruct[$ shipID].module.four.medicine = 0

global.shipDataStruct[$ shipID].module.four.make = get_ship_module(make,"other")

//drive module
global.shipDataStruct[$ shipID].module.five = {}
global.shipDataStruct[$ shipID].module.five.hp = 1
global.shipDataStruct[$ shipID].module.five.civilians = 0
global.shipDataStruct[$ shipID].module.five.marines = 0
global.shipDataStruct[$ shipID].module.five.scientists = 0
global.shipDataStruct[$ shipID].module.five.engineers = 0
global.shipDataStruct[$ shipID].module.five.food = 0
global.shipDataStruct[$ shipID].module.five.parts = 0
global.shipDataStruct[$ shipID].module.five.water = 0
global.shipDataStruct[$ shipID].module.five.medicine = 0

global.shipDataStruct[$ shipID].module.five.make = get_ship_module(make,"drive")

}
}


}




room_goto(rm_scroll)


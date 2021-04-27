-- 0	vehicle has no storage
-- 1	vehicle storage in the hood
Config.VehicleStorage = {
	[`jester`]=1, 
	[`adder`]=1, 
	[`osiris`]=0, 
	[`pfister811`]=0, 
	[`penetrator`]=0, 
	[`autarch`]=0, 
	[`bullet`]=0, 
	[`cheetah`]=0, 
	[`cyclone`]=0, 
	[`voltic`]=0, 
	[`reaper`]=1, 
	[`entityxf`]=0, 
	[`t20`]=0, 
	[`taipan`]=0, 
	[`tezeract`]=0, 
	[`torero`]=1, 
	[`turismor`]=0, 
	[`fmj`]=0, 
	[`infernus `]=0, 
	[`italigtb`]=1, 
	[`italigtb2`]=1, 
	[`nero2`]=0, 
	[`vacca`]=1, 
	[`vagner`]=0, 
	[`visione`]=0, 
	[`prototipo`]=0, 
	[`zentorno`]=0
}


-- slots, maxWeight; default weight is 8000 per slot
Config.Gloveboxes = {	
	[0] = {5, 20000}, -- compact
	[1] = {5, 20000}, -- sedan
	[2] = {5, 20000}, -- suv
	[3] = {5, 20000}, -- coupe
	[4] = {5, 20000}, -- muscle
	[5] = {5, 10000}, -- sports classic
	[6] = {5, 10000}, -- sports
	[7] = {5, 10000}, -- super
	[8] = {5, 10000}, -- motorcycle
	[9] = {4, 25000}, -- offroad
	[10] = {10, 30000}, -- industrial
	[11] = {10, 30000}, -- utility
	[12] = {5, 30000}, -- van
	[14] = {10, 30000}, -- boat
	[15] = {10, 30000}, -- helicopter
	[16] = {15, 30000}, -- plane
	[17] = {12, 30000}, -- service
	[18] = {7, 30000}, -- emergency
	[19] = {11, 30000}, -- military
	[20] = {12, 30000} -- commercial (trucks)
}

Config.Trunks = {
	[0] = {10, 40000}, -- compact
	[1] = {10, 40000}, -- sedan
	[2] = {10, 40000}, -- suv
	[3] = {10, 40000}, -- coupe
	[4] = {10, 40000}, -- muscle
	[5] = {5, 20000}, -- sports classic
	[6] = {5, 20000}, -- sports
	[7] = {5, 20000}, -- super
	[8] = {10,  20000},-- motorcycle
	[9] = {25, 200000}, -- offroad
	[10] = {25, 300000}, -- industrial
	[11] = {25, 200000}, -- utility
	[12] = {25, 100000}, -- van
	--[14] -- boat
	--[15] -- helicopter 
	--[16] -- plane
	[17] = {12, 200000}, -- service
	[18] = {12, 100000}, -- emergency
	[19] = {12, 100000}, -- military
	[20] = {20, 200000} -- commercial
}

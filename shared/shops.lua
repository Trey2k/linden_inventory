Config.General = {
	blip = {
		id = 52,
		colour = 69,
		scale = 0.6
	}, inventory = {
		{ name = 'burger', price = 5 },
		{ name = 'plastic_pouch', price = 3 },
		{ name = 'water', price = 3 },
		{ name = 'cola', price = 4 },
		{ name = 'bandage', price = 8 },
	}
}

Config.Liquor = {
	blip = {
		id = 93,
		colour = 69,
		scale = 0.6
	}, inventory = {
		{ name = 'water', price = 10 },
		{ name = 'cola', price = 10 },
	}
}

Config.Burger = {
	blip = {
		id = 304,
		colour = 69,
		scale = 0.9
	}, inventory = {
		{ name = 'burger', price = 10 },
		{ name = 'water', price = 10 },
		{ name = 'cola', price = 10 },
	}
}

Config.YouTool = {
	blip = {
		id = 402,
		colour = 69,
		scale = 0.9
	}, inventory = {
		{ name = 'lockpick', price = 40 },
		{ name = 'repairkit', price = 1500 },
		{ name = 'radio', price = 150 },
		{ name = 'tongs', price = 150 },
		{ name = 'steel_pickaxe', price = 450, metadata={type= '300'} },
		{ name = 'titanium_pickaxe', price = 1450, metadata={type= '600'} },
	}
}

Config.Nail = {
	blip = {
		id = 121,
		colour = 69,
		scale = 0.9
	}, inventory = {
		{ name = 'acetone', price = 75 },
	}
}

Config.SmokeOnTheWater = {
	blip = {
		id = 469,
		colour = 69,
		scale = 0.6
	}, inventory = {
		
		{ name = 'weed', price = 9 },
		{ name = 'weed_pouch', price = 500 },
		{ name = 'weed_seed', price = 35 },
	}
}

Config.StockMarket = {
	blip = {
		
		id = 605,
		colour = 69,
		scale = 0.8
		
	}, inventory = {
		{ name = 'BTC', price = 50870 },
		{ name = 'SMP500', price = 4180 },
		{ name = 'Tesla', price = 729 },
		{ name = 'Amazon', price = 3340 },
		{ name = 'SpaceX', price = 9001 },
	}
}

Config.MirrorParkWeedShop = {
	blip = {
		id = 469,
		colour = 69,
		scale = 0.9
	}, inventory = {
		{ name = 'weed', price = 9 },
		{ name = 'weed_pouch', price = 500 },
		{ name = 'weed_seed', price = 35 },
	}
}

Config.Ammunation = {
	blip = {
		id = 110,
		colour = 69,
		scale = 0.8
	}, inventory = {
		{ name = 'ammo-9', price = 5, },
		{ name = 'WEAPON_KNIFE', price = 200 },
		{ name = 'WEAPON_BAT', price = 100 },
		{ name = 'WEAPON_PISTOL', price = 1000, metadata = { registered = true }, license = 'weapon' },
	}
}

Config.PoliceArmoury = {
	blip = {
		id = 110,
		colour = 84,
		scale = 0.8
	}, inventory = {
		{ name = 'ammo-9', price = 5, },
		{ name = 'ammo-rifle', price = 5, },
		{ name = 'repairkit', price = 1500 },
		{ name = 'WEAPON_FLASHLIGHT', price = 200 },
		{ name = 'radio', price = 150 },
		{ name = 'WEAPON_NIGHTSTICK', price = 100 },
		{ name = 'WEAPON_PISTOL', price = 500, metadata = { registered = true, serial = 'POL' }, license = 'weapon' },
		{ name = 'WEAPON_CARBINERIFLE', price = 1000, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 3 },
		{ name = 'WEAPON_STUNGUN', price = 500, metadata = { registered = true, serial = 'POL'} },
	}
}

Config.Medicine = {
	blip = {
		id = 403,
		colour = 69,
		scale = 0.8
	}, inventory = {
		{ name = 'medkit', price = 50 },
		{ name = 'bandage', price = 3 },
		{ name = 'radio', price = 120 },
		{ name = 'repairkit', price = 1000 },
		{ name = 'WEAPON_STUNGUN', price = 500, metadata = { registered = true, serial = 'EMS' } },
	}
}

 



Config.Shops = {
	{ type = Config.Ammunation, coords = vector3(-662.180, -934.961, 21.829), name = 'Ammunation', --[[currency = 'money']] }, -- can set currency like so
	{ type = Config.Ammunation, coords = vector3(810.25, -2157.60, 29.62), name = 'Ammunation', --[[currency = 'burger']] },
	{ type = Config.Ammunation, coords = vector3(1693.44, 3760.16, 34.71), name = 'Ammunation' },
	{ type = Config.Ammunation, coords = vector3(-330.24, 6083.88, 31.45), name = 'Ammunation' },
	{ type = Config.Ammunation, coords = vector3(252.63, -50.00, 69.94), name = 'Ammunation' },
	{ type = Config.Ammunation, coords = vector3(22.56, -1109.89, 29.80), name = 'Ammunation' },
	{ type = Config.Ammunation, coords = vector3(2567.69, 294.38, 108.73), name = 'Ammunation' },
	{ type = Config.Ammunation, coords = vector3(-1117.58, 2698.61, 18.55), name = 'Ammunation' },
	{ type = Config.Ammunation, coords = vector3(842.44, -1033.42, 28.19), name = 'Ammunation' },

	{ type = Config.Liquor, coords = vector3(1135.808, -982.281, 46.415), name = 'Rob\'s Liquor' },
	{ type = Config.Liquor, coords = vector3(-1222.915, -906.983,  12.326), name = 'Rob\'s Liquor' },
	{ type = Config.Liquor, coords = vector3(-1487.553, -379.107,  40.163), name = 'Rob\'s Liquor' },
	{ type = Config.Liquor, coords = vector3(-2968.243, 390.910, 15.043), name = 'Rob\'s Liquor' },
	{ type = Config.Liquor, coords = vector3(1166.024, 2708.930, 38.157), name = 'Rob\'s Liquor' },
	{ type = Config.Liquor, coords = vector3(1392.562, 3604.684, 34.980), name = 'Rob\'s Liquor' },
	{ type = Config.Liquor, coords = vector3(-1393.409, -606.624, 30.319), name = 'Rob\'s Liquor' },

	{ type = Config.YouTool, coords = vector3(45.72, -1748.88, 29.65), name = 'YouTool' },
	{ type = Config.YouTool, coords = vector3(2748.0, 3473.0, 55.67), name = 'YouTool' },
	{ type = Config.YouTool, coords = vector3(342.99, -1298.26, 32.51), name = 'YouTool' }, 


	---------------------------- OUR SHOPS ADDED ------------------------------------------------------

	{ type = Config.Nail, coords = vector3(225.12, -1544.4, 29.29), name = 'Nail Salon' },  -- the nail salon in the south side addon 
	{ type = Config.SmokeOnTheWater, coords = vector3(-1172.3, -1571.92, 4.65), name = 'Smoke on the water' }, -- smoke on the water vespuchie beach  -- has bulk weed sales in back 
	{ type = Config.MirrorParkWeedShop, coords = vector3(1175.25, -437.26, 66.90), name = 'Mirror Park dispensary' }, -- mirror park dispensary		-- has bulk weed sales in back 
	{ type = Config.StockMarket, coords = vector3(232.18, -1095, 29.29), name = 'Stock Market' }, -- stock market shop 
	{ type = Config.Burger, coords = vector3(-1193.19, -893.63, 13.9), name = 'Burger Shot' },


	------------------- gas stations and 24/7's ------------------------------------------------------------

	{ coords = vector3(-531.14, -1221.33, 18.48), name = 'Xero Gas'},
	{ coords = vector3(2557.458,  382.282, 108.622), name = '24/7'},
	{ coords = vector3(-3038.939, 585.954, 7.908), name = '24/7'},
	{ coords = vector3(-3241.927, 1001.462, 12.830), name = '24/7'},
	{ coords = vector3(547.431, 2671.710, 42.156), name = '24/7'},
	{ coords = vector3(1961.464, 3740.672, 32.343), name = '24/7'},
	{ coords = vector3(2678.916, 3280.671, 55.241), name = '24/7'},
	{ coords = vector3(1729.216, 6414.131, 35.037), name = '24/7'},
	{ coords = vector3(-48.519, -1757.514, 29.421), name = 'LTD'},
	{ coords = vector3(1163.373, -323.801, 69.205), name = 'LTD'},
	{ coords = vector3(-707.501, -914.260, 19.215), name = 'LTD'},
	{ coords = vector3(-1820.523, 792.518, 138.118), name = 'LTD'},
	{ coords = vector3(1698.388, 4924.404, 42.063), name = 'LTD'},
	{ coords = vector3(25.723, -1346.966, 29.497), name = '24/7'},
	{ coords = vector3(373.875, 325.896, 103.566), name = '24/7'},
	{ coords = vector3(-2544.092, 2316.184, 33.2), name = 'RON'},

	
	{ type = Config.PoliceArmoury, job = 'police', coords = vector3(452.56, -983.89, 30.69), name = 'Police Armoury'},
	{ type = Config.Medicine, job = 'ambulance', coords = vector3(325.17, -582.7, 43.39), name = 'Medicine Cabinet'},
}

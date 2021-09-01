Config = {}

Config.Invincible = true -- Is the ped going to be invincible?
Config.Frozen = true -- Is the ped frozen in place?
Config.Stoic = true -- Will the ped react to events around them?
Config.FadeIn = true -- Will the ped fade in and out based on the distance. (Looks a lot better.)
Config.DistanceSpawn = 20.0 -- Distance before spawning/despawning the ped. (GTA Units.)

Config.MinusOne = true -- Leave this enabled if your coordinates grabber does not -1 from the player coords.

Config.GenderNumbers = { -- No reason to touch these.
	['male'] = 4,
	['female'] = 5
}

Config.PedList = {
	-- Barber Shops
	{
		model = `s_f_m_fembarber`, -- Model name as a hash.
		coords = vector4(-34.42, -151.15, 57.09, 180.0), -- Hawick Ave (X, Y, Z, Heading)
		gender = 'female' -- The gender of the ped, used for the CreatePed native.
	},

	{
		model = `s_f_m_fembarber`,
		coords = vector4(-279.89, 6227.61, 31.71, 50.0), -- Paleto Bay
		gender = 'female'
	},

	{
		model = `s_f_m_fembarber`,
		coords = vector4(1933.71, 3730.42, 32.85, 210.0), -- Sandy Shores
		gender = 'female'
	},

	{
		model = `s_f_m_fembarber`,
		coords = vector4(-817.19, -183.30, 37.57, 130.0), -- Mad Wayne Thunder Drive
		gender = 'female'
	},

	{
		model = `s_f_m_fembarber`,
		coords = vector4(-1283.62, -1119.24, 7.00, 110.0), -- Magellan Ave
		gender = 'female'
	},

	{
		model = `s_f_m_fembarber`,
		coords = vector4(137.61, -1709.78, 29.30, 320.0), -- Carson Ave
		gender = 'female'
	},

	-- Clothing Stores
	{
		model = `s_f_y_shop_low`,
		coords = vector4(1.20, 6508.53, 31.88, 330.0), -- Paleto Bay
		gender = 'female'
	},

	{
		model = `s_f_y_shop_low`,
		coords = vector4(1695.00, 4817.49, 42.06, 360.0), -- Grapeseed
		gender = 'female'
	},

	{
		model = `s_f_y_shop_mid`,
		coords = vector4(126.91, -224.29, 54.56, 90.0), -- Hawick Ave
		gender = 'female'
	},

	{
		model = `s_f_m_shop_high`,
		coords = vector4(-709.06, -151.46, 37.42, 120.0), -- Portola Drive
		gender = 'female'
	},

	{
		model = `s_f_m_shop_high`,
		coords = vector4(-1448.41, -237.54, 49.81, 60.0), -- Cougar Ave
		gender = 'female'
	},

	{
		model = `s_f_m_shop_high`,
		coords = vector4(-165.24, -303.62, 39.73, 260.0), -- Las Lagunas Blvd
		gender = 'female'
	},

	{
		model = `s_f_y_shop_mid`,
		coords = vector4(-1194.10, -767.09, 17.32, 220.0), -- North Rockford Drive
		gender = 'female'
	},

	{
		model = `s_f_y_shop_low`,
		coords = vector4(425.88, -811.50, 29.49, 20.0), -- Sinner Street
		gender = 'female'
	},

	{
		model = `s_f_y_shop_low`,
		coords = vector4(-818.20, -1070.43, 11.33, 120.0), -- South Rockford Drive
		gender = 'female'
	},

	{
		model = `s_f_y_shop_low`,
		coords = vector4(75.20, -1387.62, 29.38, 210.0), -- Innocence Blvd
		gender = 'female'
	},

	{
		model = `s_f_y_shop_mid`,
		coords = vector4(613.04, 2762.49, 42.09, 280.0), -- Grapeseed
		gender = 'female'
	},

	{
		model = `s_f_y_shop_low`,
		coords = vector4(1201.97, 2710.80, 38.22, 100.0), -- Harmony
		gender = 'female'
	},

	{
		model = `s_f_y_shop_low`,
		coords = vector4(-1097.96, 2714.62, 19.11, 140.0), -- Route 68
		gender = 'female'
	},

	{
		model = `s_f_y_shop_low`,
		coords = vector4(-3169.38, 1043.18, 20.86, 50.0), -- Great Ocean Highway
		gender = 'female'
	},
	-- Hardware Stores --

	-- South Side
	{
		model = `mp_m_waremech_01`,
		coords = vector4(45.54233, -1748.56, 29.586, 48.71),
		gender = 'male',
		scenario = 'WORLD_HUMAN_CLIPBOARD'
	},
	-- LS Freeway
	{
		model = `mp_m_waremech_01`,
		coords = vector4(2748.02, 3473.83, 55.67, 226.21),
		gender = 'male',
		scenario = 'WORLD_HUMAN_CLIPBOARD'
	},
	-- Paleto
	{
		model = `mp_m_waremech_01`,
		coords = vector4(-421.83, 6136.09, 31.87, 205.39),
		gender = 'male',
		scenario = 'WORLD_HUMAN_CLIPBOARD'
	},
	-- 24/7 Shops --

	-- Grove Street
	{
		model = `mp_m_shopkeep_01`,
		coords = vector4(24.5, -1346.63, 29.5, 273.18),
		gender = 'male',
	},
	-- South Side
	{
		model = `mp_m_shopkeep_01`,
		coords = vector4(-46.86, -1758.22, 29.42, 45.15),
		gender = 'male'
	},
	-- Little Soul
	{
		model = `mp_m_shopkeep_01`,
		coords = vector4(-706.02, -913.9, 19.22, 86.17),
		gender = 'male'
	},
	-- Carrson Ave
	{
		model = `mp_m_shopkeep_01`,
		coords = vector4(372.6, 327.06, 103.57, 258.49),
		gender = 'male'
	},
	-- North Rockford
	{
		model = `mp_m_shopkeep_01`,
		coords = vector4(-1819.96, 794.04, 138.09, 126.36),
		gender = 'male'
	},
	-- Great Ocean South
	{
		model = `mp_m_shopkeep_01`,
		coords = vector4(-3039.89, 584.21, 7.91, 16.15),
		gender = 'male'
	},
	-- Barbareno Road
	{
		model = `mp_m_shopkeep_01`,
		coords = vector4(-3243.19, 999.94, 12.83, 352.25),
		gender = 'male'
	},
	-- Mirror Park
	{
		model = `mp_m_shopkeep_01`,
		coords = vector4(1164.72, -323.04, 69.21, 93.92),
		gender = 'male'
	},
	-- Route 68
	{
		model = `mp_m_shopkeep_01`,
		coords = vector4(549.24, 2670.37, 42.16, 94.15),
		gender = 'male'
	},
	-- Sandy
	{
		model = `mp_m_shopkeep_01`,
		coords = vector4(1959.72, 3740.68, 32.34, 297.43),
		gender = 'male'
	},
	-- Grape Seed
	{
		model = `mp_m_shopkeep_01`,
		coords = vector4(1697.8, 4923.14, 42.06, 321.33),
		gender = 'male'
	},
	-- Great Ocean North
	{
		model = `mp_m_shopkeep_01`,
		coords = vector4(1728.33, 6416.21, 35.04, 241.78),
		gender = 'male'
	},
	-- Ls Freeway
	{
		model = `mp_m_shopkeep_01`,
		coords = vector4(2677.32, 3279.69, 55.24, 323.82),
		gender = 'male'
	},
	-- Casino Shops --

	-- Chips
	{
		model = `a_m_y_smartcaspat_01`,
		coords = vector4(949.6713, 33.25741, 71.838, 55.42),
		gender = 'male',
		scenario = 'WORLD_HUMAN_GUARD_STAND_CASINO'
	},

	-- Cookies --
	-- Cashier
	{
		model = `a_f_m_beach_01`,
		coords = vector4(-931.23, -1179.74, 5.02, 116.28),
		gender = 'female',
	},
	-- Greeter
	{
		model = `a_f_m_beach_01`,
		coords = vector4(-939.2, -1186.2, 4.93, 24.63),
		gender = 'female',
	},
	-- Customer
	{
		model = `a_f_y_beach_01`,
		coords = vector4(-942.29, -1168.13, 5.01, 25.43),
		gender = 'female',
	},
	
	-- Hot Dog Stand --
	{
		model = `s_m_m_migrant_01`,
		coords = vector4(38.89, -1003.96, 29.48, 64.14),
		gender = 'male',
	},

	-- Italian Restaurant --
	-- Singer
	{
		model = `cs_gurk`,
		coords = vector4(142.23, -1046.34, 23.35, 42.32),
		gender = 'female',
	},
	-- Bartender
	{
		model = `s_f_y_bartender_01`,
		coords = vector4(131.48, -1055.06, 22.96, 341.85),
		gender = 'female',
	},
	-- Cook
	{
		model = `s_m_m_linecook`,
		coords = vector4(134.28, -1061.97, 22.96, 282.19),
		gender = 'male',
	},

	-- Vanilla Unicorn Strip Club --
	-- Cashier 1 
	{
		model = `s_f_y_bartender_01`,
		coords = vector4(131.0, -1287.28, 29.26, 117.33),
		gender = 'female',
	},
	-- Cashier 2
	{
		model = `s_f_y_bartender_01`,
		coords = vector4(128.62, -1283.28, 29.26, 114.64),
		gender = 'female',
	},
	-- Main Stripper
	{
		model = `csb_stripper_02`,
		coords = vector4(109.43, -1286.55, 28.45, 294.47),
		gender = 'female',
	},
}

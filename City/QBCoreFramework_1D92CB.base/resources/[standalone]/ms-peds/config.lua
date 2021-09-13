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
    -- Ammunations

    -- Legion Square
    {
        model = `s_m_y_ammucity_01`,
        coords = vector4(22.59, -1105.55, 29.80, 159.83),
        gender = 'male'
    },

    -- Popular Street
    {
        model = `s_m_y_ammucity_01`,
        coords = vector4(810.21, -2159.02, 29.62, 1.43),
        gender = 'male'
    },

    -- Vespucci Boulevard
    {
        model = `s_m_y_ammucity_01`,
        coords = vector4(842.42, -1035.31, 28.19, 358.67),
        gender = 'male'
    },

    -- Little Seoul
    {
        model = `s_m_y_ammucity_01`,
        coords = vector4(662.34, -933.61, 21.83, 180.99),
        gender = 'male'
    },

    -- Vinewood Hills
    {
        model = `s_m_y_ammucity_01`,
        coords = vector4(253.87, -50.58, 69.94, 67.39),
        gender = 'male'
    },

    -- Palomino Freeway
    {
        model = `s_m_y_ammucity_01`,
        coords = vector4(2567.97, 292.64, 108.73, 358.18),
        gender = 'male'
    },

    -- Sandy Shores
    {
        model = `s_m_y_ammucity_01`,
        coords = vector4(1692.21, 3760.91, 34.71, 229.39),
        gender = 'male'
    },

    -- Paleto
    {
        model = `s_m_y_ammucity_01`,
        coords = vector4(-331.61, 6084.92, 31.45, 226.57),
        gender = 'male'
    },

    -- Hayes Depot (Impound/Tow) -- 
    {
        model = `mp_m_waremech_01`,
        coords = vector4(490.28, -1319.69, 29.2, 300.6),
        gender = 'male'
    },

    -- SuperFly --
    {
        model = `u_m_y_militarybum`,
        coords = vector4(-1171.27, -1571.04, 4.66, 121.19),
        gender = 'male'
    },

    -- Pillbox Medical Center --
    {
        model = `s_f_y_scrubs_01`,
        coords = vector4(309.63, -593.85, 43.28, 8.63),
        gender = 'female'
    },
	-----------------------------
	-- START TOTAL RP MLO PEDS --
	-----------------------------

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
	-- Top Level Bartender
	{
		model = `s_f_y_bartender_01`,
		coords = vector4(125.8, -1034.99, 29.28, 81.1),
		gender = 'female',
	},
	-- Singer
	{
		model = `cs_gurk`,
		coords = vector4(142.23, -1046.34, 23.35, 42.32),
		gender = 'female',
	},
	-- Bottom Bartender
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
	
	-- Dealers --
	-- Mandarin
	{
		model = `g_m_m_chicold_01`,
		coords = vector4(388.25, -2026.7, 23.4, 64.61),
		gender = 'male',
	},
	-- Scooby
	{
		model = `a_c_pug`,
		coords = vector4(32.9, 856.05, 197.73, 42.51),
		gender = 'male',
	},
	-- Skateshop --
	-- Cashier
	{
		model = `a_f_y_yoga_01`,
		coords = vector4(-1126.59, -1439.12, 5.23, 297.66),
		gender = 'female',
	},
	-- LA Fitness --
	-- Tyrone
	{
		model = `a_m_y_beach_03`,
		coords = vector4(257.09, -271.07, 53.96, 333.47),
		gender = 'male',
	},
	-- Shawty
	{
		model = `a_f_y_yoga_01`,
		coords = vector4(259.6, -271.96, 53.96, 336.14),
		gender = 'female',
	},

	-- Go Cart Stadium
	-- Mechanic
	{
		model = `mp_m_waremech_01`,
		coords = vector4(5474.17, 254.19, 20.07, 354.22),
		gender = 'male',
	},
	-- Food Vendor
	{
		model = `a_f_y_yoga_01`,
		coords = vector4(5471.83, 254.41, 20.07, 357.32),
		gender = 'female',
	},
	-- TrapHouse --
	-- Vespucci Beach Traphouse
	-- inside 1
	{
		model = `g_m_m_chicold_01`,
		coords = vector4(-1353.53, -1163.03, -28.04, 80.98),
		gender = 'male',
	},
	-- outside 1
	{
		model = `g_m_m_chicold_01`,
		coords = vector4(-1352.47, -1163.09, 4.44, 87.2),
		gender = 'male',
	},
}

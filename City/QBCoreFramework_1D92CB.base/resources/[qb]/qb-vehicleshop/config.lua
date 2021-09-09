QB = {}
QBCustom = {}

QB.VehicleShops = {
    [1] = {
        -- Vehicle Shop options
        ["ShopName"] = "pdm", -- Name to get in the shared.lua
        ["ShopLabel"] = "Premium Deluxe Motorsport", -- Blip name
        ["Categories"] = {
            ["sports"]  = "Sports",
            ["sportsclassics"] = "Sports Classics",
            ["super"]   = "Super",
            ["sedans"]  = "Sedans",
            ["coupes"]  = "Coupes",
            ["suvs"]    = "SUVs",
            ["offroad"] = "Offroad",
            ["muscle"] = "Muscle",
            ["compacts"] = "Compacts",
            ["motorcycles"] = "Motorcycles",
            ["vans"] = "Vans",
        },
        ["TestDriveTimeLimit"] = 3, -- Time in minutes until the vehicle gets deleted
        ["Location"] = vector3(-56.71, -1096.6, 25.44), -- Blip Location
        ["ReturnLocation"] = vector3(-768.15, -233.1, 37.07), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ["VehicleSpawn"] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location when vehicle is bought
        ["OwnedJob"] = false, -- false or a job inside a string like "cardealer"
        ["ShowroomVehicles"] = {
            [1] = {
                coords = vector4(-45.65, -1093.66, 25.44, 69.5), --VECTOR4 ONLY
                defaultVehicle = 'dominator3', -- The vehicle that needs to be there on restart
                chosenVehicle = 'dominator3', -- Keep this the same as defaultvehicle
                inUse = false, -- When changing vehicle this gets set to true, don't change
                buying = false, -- When buying a vehicle from an owned job this gets set to true, don't change
            },
            [2] = {
                coords = vector4(-48.27, -1101.86, 25.44, 294.5),
                defaultVehicle = 'rmodmustang',
                chosenVehicle = 'rmodmustang',
                inUse = false,
                buying = false,
            },
            [3] = {
                coords = vector4(-39.6, -1096.01, 25.44, 66.5),
                defaultVehicle = 'rmodrs6',
                chosenVehicle = 'rmodrs6',
                inUse = false,
                buying = false,
            },
            [4] = {
                coords = vector4(-51.21, -1096.77, 25.44, 254.5),
                defaultVehicle = 'rmodsianr',
                chosenVehicle = 'rmodsianr',
                inUse = false,
                buying = false,
            },
            [5] = {
                coords = vector4(-40.18, -1104.13, 25.44, 338.5),
                defaultVehicle = 'rmodf40',
                chosenVehicle = 'rmodf40',
                inUse = false,
                buying = false,
            },
            [6] = {
                coords = vector4(-43.31, -1099.02, 25.44, 52.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati',
                inUse = false,
                buying = false,
            },
            [7] = {
                coords = vector4(-50.66, -1093.05, 25.44, 222.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati',
                inUse = false,
                buying = false,
            },
            [8] = {
                coords = vector4(-44.28, -1102.47, 25.44, 298.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati',
                inUse = false,
                buying = false,
            },
        },
        -- Non-changeable options (Don't touch these)
        ["opened"] = false,
        ["currentmenu"] = "main",
        ["lastmenu"] = nil,
        ["currentpos"] = nil,
        ["selectedbutton"] = 0,
        ["marker"] = { r = 0, g = 155, b = 255, a = 250, type = 1 },
        ["menu"] = {
            ["x"] = 0.14,
            ["y"] = 0.15,
            ["width"] = 0.12,
            ["height"] = 0.03,
            ["buttons"] = 10,
            ["from"] = 1,
            ["to"] = 10,
            ["scale"] = 0.29,
            ["font"] = 0,
            ["main"] = {
                ["title"] = "CATEGORIES",
                ["Name"] = "main",
                ["buttons"] = {
                    {name = "Categories", description = ""},
                }
            },
            ["vehicles"] = {
                ["title"] = "VEHICLES",
                ["name"] = "vehicles",
                ["buttons"] = {}
            },
        },

    },
    [2] = {
        -- Vehicle Shop options
        ["ShopName"] = "luxury", -- Name to get in the shared.lua
        ["ShopLabel"] = "Luxury Vehicle Shop", -- Blip name
        ["Categories"] = {
            ["super"]  = "Super",
            ["sports"]  = "Sports",
        },
        ["TestDriveTimeLimit"] = 3, -- Time in minutes until the vehicle gets deleted
        ["Location"] = vector3(-63.59, 68.25, 73.06), -- Blip Location
        ["ReturnLocation"] = vector3(-768.15, -233.1, 37.07), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ["VehicleSpawn"] = vector4(-67.33, 82.17, 71.13, 64.51), -- Spawn location when vehicle is bought
        ["OwnedJob"] = "cardealer", -- false or a job inside a string like "cardealer"
        ["ShowroomVehicles"] = {
            [1] = {
                coords = vector4(-75.96, 74.78, 71.27, 221.69),
                defaultVehicle = 'italirsx', -- The vehicle that needs to be there on restart
                chosenVehicle = 'italirsx', -- Keep this the same as defaultvehicle
                inUse = false, -- When changing vehicle this gets set to true, don't change
                buying = false, -- When buying a vehicle from an owned job this gets set to true, don't change
            }, 
            [2] = {
                coords = vector4(-66.52, 74.33, 71.0, 188.03),
                defaultVehicle = 'italigtb',
                chosenVehicle = 'italigtb',
                inUse = false,
                buying = false,
            }, 
            [3] = {
                coords = vector4(-71.83, 68.60, 71.12, 276.57),
                defaultVehicle = 'nero',
                chosenVehicle = 'nero',
                inUse = false,
                buying = false,
            }, 
            [4] = {
                coords = vector4(-59.95, 68.61, 71.24, 181.44),
                defaultVehicle = 'comet2',
                chosenVehicle = 'comet2',
                inUse = false,
                buying = false,
            },
        },
        -- Non-changeable options (Don't touch these)
        ["opened"] = false,
        ["currentmenu"] = "main",
        ["lastmenu"] = nil,
        ["currentpos"] = nil,
        ["selectedbutton"] = 0,
        ["marker"] = { r = 0, g = 155, b = 255, a = 250, type = 1 },
        ["menu"] = {
            ["x"] = 0.14,
            ["y"] = 0.15,
            ["width"] = 0.12,
            ["height"] = 0.03,
            ["buttons"] = 10,
            ["from"] = 1,
            ["to"] = 10,
            ["scale"] = 0.29,
            ["font"] = 0,
            ["main"] = {
                ["title"] = "CATEGORIES",
                ["Name"] = "main",
                ["buttons"] = {
                    {name = "Categories", description = ""},
                }
            },
            ["vehicles"] = {
                ["title"] = "VEHICLES",
                ["name"] = "vehicles",
                ["buttons"] = {}
            },
        },
    },
    [3] = {
        -- Vehicle Shop options
        ["ShopName"] = "gocart", -- Name to get in the shared.lua
        ["ShopLabel"] = "Go Cart Shop", -- Blip name
        ["Categories"] = {
            ["sports"]  = "Sports",
            ["offroad"] = "Offroad",
            ["motorcycles"] = "Motorcycles",
            ["cycles"] = "Cycles",
        },
        ["TestDriveTimeLimit"] = 3, -- Time in minutes until the vehicle gets deleted
        ["Location"] = vector3(5583.19, 254.6, 19.21), -- Blip Location
        ["ReturnLocation"] = vector3(5566.32, 254.7, 19.2), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ["VehicleSpawn"] = vector4(5613.06, 254.46, 19.2, 325.06), -- Spawn location when vehicle is bought
        ["OwnedJob"] = "cardealer", -- false or a job inside a string like "cardealer"
        ["ShowroomVehicles"] = {
            [1] = {
                coords = vector4(5588.74, 254.31, 19.2, 323.23),
                defaultVehicle = 'veto', -- The vehicle that needs to be there on restart
                chosenVehicle = 'veto', -- Keep this the same as defaultvehicle
                inUse = false, -- When changing vehicle this gets set to true, don't change
                buying = false, -- When buying a vehicle from an owned job this gets set to true, don't change
            }, 
            [2] = {
                coords = vector4(5593.68, 254.52, 19.2, 323.48),
                defaultVehicle = 'veto2',
                chosenVehicle = 'veto2',
                inUse = false,
                buying = false,
            }, 
        },
        -- Non-changeable options (Don't touch these)
        ["opened"] = false,
        ["currentmenu"] = "main",
        ["lastmenu"] = nil,
        ["currentpos"] = nil,
        ["selectedbutton"] = 0,
        ["marker"] = { r = 0, g = 155, b = 255, a = 250, type = 1 },
        ["menu"] = {
            ["x"] = 0.14,
            ["y"] = 0.15,
            ["width"] = 0.12,
            ["height"] = 0.03,
            ["buttons"] = 10,
            ["from"] = 1,
            ["to"] = 10,
            ["scale"] = 0.29,
            ["font"] = 0,
            ["main"] = {
                ["title"] = "CATEGORIES",
                ["Name"] = "main",
                ["buttons"] = {
                    {name = "Categories", description = ""},
                }
            },
            ["vehicles"] = {
                ["title"] = "VEHICLES",
                ["name"] = "vehicles",
                ["buttons"] = {}
            },
        },
    }, -- Add your next table under this comma
}

QB.GarageLabel = {
    ['motelgarage'] = 'Motel Garage',
    ['sapcounsel']  = 'San Andreas Parking Counsel',
}

QB.Classes = {
    [0] = 'compacts',  
    [1] = 'sedans',  
    [2] = 'suvs',  
    [3] = 'coupes',  
    [4] = 'muscle',  
    [5] = 'sportsclassics ', 
    [6] = 'sports',  
    [7] = 'super',  
    [8] = 'motorcycles',  
    [9] = 'offroad', 
    [10] = 'industrial',  
    [11] = 'utility',  
    [12] = 'vans',  
    [13] = 'cycles',  
    [14] = 'boats',  
    [15] = 'helicopters',  
    [16] = 'planes',  
    [17] = 'service',  
    [18] = 'emergency',  
    [19] = 'military',  
    [20] = 'commercial',  
    [21] = 'trains',  
}

Consumeables = {
    ["sandwich"] = math.random(35, 54),
    ["water_bottle"] = math.random(35, 54),
    ["tosti"] = math.random(40, 50),
    ["kurkakola"] = math.random(35, 54),
    ["twerks_candy"] = math.random(35, 54),
    ["snikkel_candy"] = math.random(40, 50),
    ["coffee"] = math.random(40, 50),
    ["whiskey"] = math.random(20, 30),
    ["beer"] = math.random(30, 40),
    ["vodka"] = math.random(20, 40),
}

Config = {}

Config.EnableProne = true

Config.RemoveWeaponDrops = true
Config.RemoveWeaponDropsTimer = 25

Config.JointEffectTime = 60

Config.BlacklistedScenarios = {
    ['TYPES'] = {
        "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
        "WORLD_VEHICLE_MILITARY_PLANES_BIG",
    },
    ['GROUPS'] = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`,
    }
}

Config.BlacklistedVehs = {
    [`SHAMAL`] = true,
    [`LUXOR`] = true,
    [`LUXOR2`] = true,
    [`JET`] = true,
    [`LAZER`] = true,
    [`BUZZARD`] = true,
    [`BUZZARD2`] = true,
    [`ANNIHILATOR`] = true,
    [`SAVAGE`] = true,
    [`TITAN`] = true,
    [`RHINO`] = true,
    [`FIRETRUK`] = true,
    [`MULE`] = true,
    [`MAVERICK`] = true,
    [`BLIMP`] = true,
    [`BLIMP2`] = true,
    [`AIRTUG`] = true,
    [`CAMPER`] = true, 
    [`KHANJALI`] = true, 
    [`CARGOPLANE`] = true, 
    [`MILJET`] = true, 
    [`APC`] = true, 
    [`HALFTRACK`] = true, 
    [`DUMP`] = true,
    [`CUTTER`] = true,
    [`INSURGENT`] = true,
    [`INSURGENT2`] = true,
    [`INSURGENT3`] = true,
    [`TECHNICAL`] = true,
    [`TECHNICAL2`] = true,
    [`TECHNICAL3`] = true,
    [`NIMBUS`] = true,
    [`SHAMAL`] = true,
    [`CUBAN800`] = true,
    [`HYDRA`] = true,
    [`LAZER`] = true,
    [`TUG`] = true,
    [`MINITANK`] = true,
    [`BOMBUSHKA`] = true,
    [`TRAILERSMALL2`] = true,
    [`KOSATKA`] = true,
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_f_y_cop_01`] = true,
    [`s_m_y_hwaycop_01`] = true,
}

Config.Teleports = {
    --Elevator @ labs
    [1] = {
        [1] = {
            coords = vector4(3540.74, 3675.59, 20.99, 167.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Up'
        },
        [2] = {
            coords = vector4(3540.74, 3675.59, 28.11, 172.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Down'
        },
        
    },
    --Coke Processing Enter/Exit
    [2] = {
        [1] = {
            coords = vector4(909.49, -1589.22, 30.51, 92.24),
            ["AllowVehicle"] = false, 
            drawText = '[E] Enter Coke Processing'
        },
        [2] = {
            coords = vector4(1088.81, -3187.57, -38.99, 181.7),
            ["AllowVehicle"] = false,
            drawText = '[E] Leave'
        },
    },
    -- Mafia Hotel Parking Garage Elevator
    [3] = {
        [1] = {
            coords = vector4(380.33, -15.18, 83.0, 28.42),
            ["AllowVehicle"] = false, 
            drawText = '[E] Go Up'
        },
        [2] = {
            coords = vector4(417.25, -10.67, 99.65, 230.03),
            ["AllowVehicle"] = false,
            drawText = '[E] Go Down to Parking'
        },
    },
    -- Stadium
    [4] = {
        [1] = {
            coords = vector4(-282.49, -2031.49, 30.15, 107.73),
            ["AllowVehicle"] = false, 
            drawText = '[E] Go to Arena'
        },
        [2] = {
            coords = vector4(5579.38, 254.75, 20.07, 354.4),
            ["AllowVehicle"] = false,
            drawText = '[E] Leave Arena'
        },
    },
}
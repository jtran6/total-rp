Config = Config or {}

-- Config --

Config.Bail = 250

Config.MyLevel = 1
Config.MaxReputation = 200

Config.Locations = {
    ["take"] = {
        coords = vector4(38.74, -1005.49, 29.47, 264.5),
    },
    ["spawn"] = {
        coords = vector4(38.15, -1001.65, 29.44, 342.5),
    },
}

Config.Stock = {
    ["exotic"] = {
        Current = 0,
        Max = {
            [1] = 15,
            [2] = 30,
            [3] = 45,
            [4] = 60,
        },
        Label = "Perfect (A)",
        Price = {
            [1] = {
                min = 150,
                max = 300,
            },
            [2] = {
                min = 300,
                max = 600,
            },
            [3] = {
                min = 450,
                max = 700,
            },
            [4] = {
                min = 600,
                max = 1200,
            },
        }
    },
    ["rare"] = {
        Current = 0,
        Max = {
            [1] = 15,
            [2] = 30,
            [3] = 45,
            [4] = 60,
        },
        Label = "Rare (B)",
        Price = {
            [1] = {
                min = 100,
                max = 200,
            },
            [2] = {
                min = 200,
                max = 400,
            },
            [3] = {
                min = 300,
                max = 600,
            },
            [4] = {
                min = 400,
                max = 800,
            },
        }
    },
    ["common"] = {
        Current = 0,
        Max = {
            [1] = 15,
            [2] = 30,
            [3] = 45,
            [4] = 60,
        },
        Label = "Common (C)",
        Price = {
            [1] = {
                min = 50,
                max = 100,
            },
            [2] = {
                min = 100,
                max = 200,
            },
            [3] = {
                min = 150,
                max = 300,
            },
            [4] = {
                min = 200,
                max = 400,
            },
        }
    },
}

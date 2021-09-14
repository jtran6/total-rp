# QB-CryptoMining

Mining script to mine crypto currency.

Three different rigs which yield different cyprto coins.

Make sure to add the items in shared.lua

```
	
["standard_cpu"] 			 	 	 = {["name"] = "standard_cpu", 			  			["label"] = "Standard Cpu", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "standard_cpu.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sometimes you'd want everything to burn.."},	
["e2_cpu"] 			 	 	 = {["name"] = "e2_cpu", 			  			["label"] = "E2", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "e2_cpu.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sometimes you'd want everything to burn.."},	
["quantum_cpu"] 			 	 	 = {["name"] = "quantum_cpu", 			  			["label"] = "Quantum", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "quantum_cpu.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sometimes you'd want everything to burn.."},

```

Images are in the folder.. Make sure to add it to ```qb-inventory/html/images```

Dependency - https://github.com/pushkart2/memorygame

Memory game


Use -
1. Spawn the items or change the coords in config.lua for shop anywhere and buy the items.
2. Teleport to Config.ExitCoords and go inside the crypto building and use the item. (can change the exitCoords)
3. It will start mining and depending on the cpu, it will take 60, 120 or 180 secs. (can be changed through config)

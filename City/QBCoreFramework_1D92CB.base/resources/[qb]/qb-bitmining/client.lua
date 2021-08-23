local isLoggedIn = false
local inRange = false
local prop_model = {
	["Standard CPU"] = "v_corp_servercln",
	["E2 CPU"] = "v_corp_servercln",
	["Quantum CPU"] = "v_corp_servercln2",
}
local active_machines = {}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		inRange = false
		local ped = PlayerPedId()
		local pos = GetEntityCoords(ped)

		if #(pos - Config.shop["coords"]) < 5.0 then
			inRange = true
			DrawText3Ds(Config.shop["coords"], "~g~E~w~ - Open Shop")
			if IsControlJustPressed(0, 38) then
				TriggerServerEvent("inventory:server:OpenInventory", "shop", "TestItemshop_DigitalDen", Config.ShopItems)
			end
		end

		if active_machines ~= nil then
			for k, v in pairs(active_machines) do
				if #(pos - v.coords) < 3.0 then
					inRange = true
					DrawText3Ds(v.coords, "Mining Time Left: ~r~"..v.time)
					DrawText3Ds(vector3(v.coords.x, v.coords.y, v.coords.z+0.3), "Machine: ~b~"..v.name)
				end
			end
		end

		if #(pos - Config.MiningLab["coords"]) < 3.0 then
			inRange = true
			DrawText3Ds(Config.MiningLab["coords"], "~g~E~w~ - Exit")
			if IsControlJustPressed(0, 38) then
				TeleportToLocation("out")
			end
		end

		if #(pos - vector3(Config.ExitCoords.x,Config.ExitCoords.y,Config.ExitCoords.z)) < 3.0 then
			inRange = true
			DrawText3Ds(Config.ExitCoords, "~g~E~w~ - Enter Mining Lab")
			if IsControlJustPressed(0, 38) then
				TeleportToLocation("in")
			end
		end

		if not inRange then
			Citizen.Wait(1000)
		end
	end
end)

function TeleportToLocation(location)
	if location == "out" then
		SetEntityCoords(PlayerPedId(), Config.ExitCoords)
	elseif location == "in" then
		SetEntityCoords(PlayerPedId(), Config.MiningLab["coords"])
	end
end

Citizen.CreateThread(function()				
	while true do
		if active_machines ~= nil then
			for k, v in pairs(active_machines) do
				if v.time > 0 then
					v.time = v.time - 1 
				else
					TriggerServerEvent("qb-cryptomining:server:addCryptoCoins", v.reward)
					DeleteObject(v.object)
					table.remove(active_machines, k)
				end
			end
		end
		Citizen.Wait(1000)
	end
end)

RegisterNetEvent("qb-cryptomining:client:installCPU")
AddEventHandler("qb-cryptomining:client:installCPU", function(name, reward, item)
	local ped = PlayerPedId()
	local pos = GetEntityCoords(ped)
	if #(pos - Config.MiningLab["coords"]) < 50.0 then
		exports["memorygame"]:thermiteminigame(10, 3, 3, 10,
		function() -- success
			InstallCPU(name, reward, item.name)
		end,
		function() -- failure
			QBCore.Functions.Notify("You can do better than this", "error")
   	 	end)
	else
		QBCore.Functions.Notify('Not a suitable location for installing','error')
	end
end)

function InstallCPU(name, reward, itemname)
	if #active_machines == 0 then
		local ped = PlayerPedId()
		local coords = GetOffsetFromEntityInWorldCoords(ped, 0.0, 2.0, 0.0)
		local machine = {}
		QBCore.Functions.Progressbar("cpuinstall", "Installing RIG", 10000, false, true, {
			disableMovement = false,
			disableCarMovement = false,
			disableMouse = false,
			disableCombat = true,
		}, {
			animDict = "random@train_tracks",
			anim = "idle_e",
			flags = 0,
		}, {}, {}, function() -- Done
			machine.object = CreateObject(GetHashKey(prop_model[name]),coords,true,true,false)
			machine.name = name
			machine.reward = reward
			machine.time = Config.MiningLab["mining_time"][name]
			machine.coords = coords
			table.insert(active_machines, machine)
			PlaceObjectOnGroundProperly(machine.object)
			FreezeEntityPosition(machine.object, true)
			QBCore.Functions.Notify('Installation Successfull','success')
			TriggerServerEvent("qb-cryptomining:server:RemoveItem", itemname)
		end, function() -- Cancel
			ClearPedTasks(ped)
			QBCore.Functions.Notify("Installation stopped..", "error")
		end)
	else
		QBCore.Functions.Notify("You already have a machine running", "error")
	end
end

function DrawText3Ds(coords, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(coords.x, coords.y, coords.z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end


-- Leaked By: Leaking Hub | J. Snow | leakinghub.com

local index = 0
local treeProgram = Config.program

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(500)
		index = index + 1

		if index > #treeProgram then
			index = 1
		end

		TriggerClientEvent("switchLights", -1, treeProgram[index])

		if index == 2 then
			Citizen.Wait(500)
		end

		if index == 4 then
			Citizen.Wait(1500)
		end

		if index == 5 then
			Citizen.Wait(500)
		end


		if index == #treeProgram then
			Citizen.Wait(5000)	
		end
	end
end)
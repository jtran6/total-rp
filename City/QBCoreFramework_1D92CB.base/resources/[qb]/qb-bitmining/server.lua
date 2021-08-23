RegisterServerEvent('qb-cryptomining:server:addCryptoCoins')
AddEventHandler('qb-cryptomining:server:addCryptoCoins', function(reward)
    local src = source
    local Player = QBCore.Functions.GetPlayer(source)

    if Player.Functions.AddMoney('crypto', reward) then
        TriggerClientEvent('QBCore:Notify', src, "You have mined "..reward.." crypto coins", 'success')
    else
        TriggerClientEvent('QBCore:Notify', src, "Mining Failed", 'error')
    end
end)

QBCore.Functions.CreateUseableItem("standard_cpu", function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-cryptomining:client:installCPU", source, "Standard CPU", Config.Reward["standard_cpu"], item)
end)

QBCore.Functions.CreateUseableItem("e2_cpu", function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-cryptomining:client:installCPU", source, "E2 CPU", Config.Reward["e2_cpu"], item)
end)

QBCore.Functions.CreateUseableItem("quantum_cpu", function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-cryptomining:client:installCPU", source, "Quantum CPU", Config.Reward["quantum_cpu"], item)
end)

RegisterServerEvent("qb-cryptomining:server:RemoveItem")
AddEventHandler("qb-cryptomining:server:RemoveItem", function(item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.RemoveItem(item, 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "remove")
end)

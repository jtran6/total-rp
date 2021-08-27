QBCore = nil
TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

RegisterServerEvent('QBCore:reward')
AddEventHandler('QBCore:reward', function(Weight)
    local Player = QBCore.Functions.GetPlayer(source)

    if Weight >= 1 then
        Player.Functions.AddItem('meat', 1)
    elseif Weight >= 9 then
        Player.Functions.AddItem('meat', 2)
    elseif Weight >= 15 then
        Player.Functions.AddItem('meat', 3)
    end
    Player.Functions.AddItem('leather', math.random(1, 4))        
end)

RegisterServerEvent('QBCore:sell')
AddEventHandler('QBCore:sell', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local MeatPrice = 5000
    local LeatherPrice = 1000

    local MeatQuantity = Player.Functions.GetItemByName('meat')
    local LeatherQuantity = Player.Functions.GetItemByName('leather')

    if MeatQuantity ~= nil then
        if MeatQuantity.amount > 0 then
            Player.Functions.AddMoney("cash", MeatQuantity.amount * MeatPrice, "hunting")

            Player.Functions.RemoveItem('meat', MeatQuantity.amount)
            TriggerClientEvent('QBCore:Notify', source, 'You sold ' .. MeatQuantity.label .. ' and earned $' .. MeatPrice * MeatQuantity.amount)
        else
            TriggerClientEvent('QBCore:Notify', source, 'You don\'t have any meat or leather')
        end
    end

    if LeatherQuantity ~= nil then
        if LeatherQuantity.amount > 0 then
            Player.Functions.AddMoney("cash", LeatherQuantity.amount * LeatherPrice, "hunting")
            Player.Functions.RemoveItem('leather', LeatherQuantity.amount)
            TriggerClientEvent('QBCore:Notify', source, 'You sold ' .. LeatherQuantity.label.. ' and earned $' .. LeatherPrice * LeatherQuantity.amount)
        else
            TriggerClientEvent('QBCore:Notify', source, 'You don\'t have any meat or leather')
        end
    end

end)

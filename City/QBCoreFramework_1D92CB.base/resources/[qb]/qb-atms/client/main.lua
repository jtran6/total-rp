RegisterNetEvent("hidemenu")
AddEventHandler("hidemenu", function()
    SetNuiFocus(false, false)
    SendNUIMessage({
        status = "closeATM"
    })
end)

RegisterNUICallback("NUIFocusOff", function(data, cb)
    SetNuiFocus(false, false)
    SendNUIMessage({
        status = "closeATM"
    })
    PlayATMAnimation('exit')   
end)

RegisterNUICallback("playATMAnim", function(data, cb)
    local playerPed = PlayerPedId()
    local anim = 'amb@prop_human_atm@male@idle_a'
    RequestAnimDict(anim)
    while not HasAnimDictLoaded(anim) do
        Citizen.Wait(1)
    end

    if HasAnimDictLoaded(anim) then 
        TaskPlayAnim(PlayerPedId(), anim, "idle_a", 1.0,-1.0, 3000, 1, 1, true, true, true)
    end
end)

RegisterNUICallback("doATMWithdraw", function(data, cb)
    if data ~= nil then
        TriggerServerEvent('qb-atms:server:doAccountWithdraw', data)
    end
end)

RegisterNetEvent('qb-atms:client:updateBankInformation')
AddEventHandler('qb-atms:client:updateBankInformation', function(banking)
    SendNUIMessage({
        status = "loadBankAccount",
        information = banking
    })
end)

function PlayATMAnimation(animation)
    local playerPed = PlayerPedId()
    if animation == 'enter' then
        RequestAnimDict('amb@prop_human_atm@male@enter')
        while not HasAnimDictLoaded('amb@prop_human_atm@male@enter') do
            Citizen.Wait(1)
        end
    
        if HasAnimDictLoaded('amb@prop_human_atm@male@enter') then 
            TaskPlayAnim(PlayerPedId(), 'amb@prop_human_atm@male@enter', "enter", 1.0,-1.0, 3000, 1, 1, true, true, true)
        end
    end

    if animation == 'exit' then
        RequestAnimDict('amb@prop_human_atm@male@exit')
        while not HasAnimDictLoaded('amb@prop_human_atm@male@exit') do
            Citizen.Wait(1)
        end
    
        if HasAnimDictLoaded('amb@prop_human_atm@male@exit') then 
            TaskPlayAnim(PlayerPedId(), 'amb@prop_human_atm@male@exit', "exit", 1.0,-1.0, 3000, 1, 1, true, true, true)
        end
    end
end

function tprint (t, s)
    for k, v in pairs(t) do
        local kfmt = '["' .. tostring(k) ..'"]'
        if type(k) ~= 'string' then
            kfmt = '[' .. k .. ']'
        end
        local vfmt = '"'.. tostring(v) ..'"'
        if type(v) == 'table' then
            tprint(v, (s or '')..kfmt)
        else
            if type(v) ~= 'string' then
                vfmt = tostring(v)
            end
            print(type(t)..(s or '')..kfmt..' = '..vfmt)
        end
    end
end 

RegisterNUICallback("loadBankingAccount", function(data, cb)
    QBCore.Functions.TriggerCallback('qb-atms:server:loadBankAccount', function(banking)
        if banking ~= false and type(banking) == "table" then
            SendNUIMessage({
                status = "loadBankAccount",
                information = banking
            })
        else
            SetNuiFocus(false, false)
            SendNUIMessage({
                status = "closeATM"
            })
        end
    end, data.cid, data.cardnumber)
    print(data.cid, data.cardnumber)
end)

RegisterCommand('ts', function()
    QBCore.Functions.TriggerCallback('qb-atms:server:loadBankAccount', function(banking)
        if banking ~= false and type(banking) == "table" then
            SetNuiFocus(true, true)
            SendNUIMessage({
                status = "loadBankAccount",
                information = banking
            })
        else
            SetNuiFocus(false, false)
            SendNUIMessage({
                status = "closeATM"
            })
        end
    end, 'BJF20704', '6426696777343750')
end)

RegisterNetEvent('qb-atms:client:loadATM')
AddEventHandler('qb-atms:client:loadATM', function(cards)
    if cards ~= nil and cards[1] ~= nil then
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed, true)
        for k, v in pairs(Config.ATMModels) do
            local hash = GetHashKey(v)
            local atm = IsObjectNearPoint(hash, playerCoords.x, playerCoords.y, playerCoords.z, 1.5)
            if atm then 
                local obj = GetClosestObjectOfType(playerCoords.x, playerCoords.y, playerCoords.z, 2.0, hash, false, false, false)
                local atmCoords = GetEntityCoords(obj, false)
                    PlayATMAnimation('enter')
                QBCore.Functions.Progressbar("accessing_atm", "Accessing ATM", 1500, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = false,
                }, {}, {}, {}, function() -- Done
                    SetNuiFocus(true, true)
                    SendNUIMessage({
                        status = "openATMFrontScreen",
                        cards = cards,
                    })
                end, function()
                    QBCore.Functions.Notify("Failed!", "error")
                end)
            end
        end     
    else
        QBCore.Functions.Notify("You do not have a debit card to pay with, please visit a branch to order a card. or ensure one is on your person.", "error")
    end
end)

RegisterNUICallback("removeCard", function(data, cb)
    QBCore.Functions.TriggerCallback('qb-debitcard:server:deleteCard', function(hasDeleted)
        if hasDeleted then
            SetNuiFocus(false, false)
            SendNUIMessage({
                status = "closeATM"
            })
            QBCore.Functions.Notify('Card has deleted.', 'success')
        else
            QBCore.Functions.Notify('Failed to delete card.', 'error')
        end
    end, data)
end)

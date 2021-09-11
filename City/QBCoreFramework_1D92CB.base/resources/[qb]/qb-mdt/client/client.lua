------------------------CREDITS------------------------
--------        Script made by Deltarix        --------
--   Copyright 2021 Deltarix. All rights reserved    --
-------------------------------------------------------
RegisterNetEvent('drx_mdt:openMDT')
AddEventHandler('drx_mdt:openMDT', function()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)
    if IsPedOnFoot(ped) or IsPedInAnyPoliceVehicle(ped) and not IsPedInFlyingVehicle(ped) then
        RequestAnimDict('amb@world_human_seat_wall_tablet@female@base')
        if tabletObject == nil then
            tabletObject = CreateObject(GetHashKey('prop_cs_tablet'), GetEntityCoords(ped), 1, 1, 1)
            AttachEntityToEntity(tabletObject, ped, GetPedBoneIndex(ped, 28422), 0.0, 0.0, 0.03, 0.0, 0.0, 0.0, 1, 1, 0, 1, 0, 1)
        end
        while not HasAnimDictLoaded('amb@world_human_seat_wall_tablet@female@base') do 
            Citizen.Wait(100) 
        end
        if not IsEntityPlayingAnim(ped, 'amb@world_human_seat_wall_tablet@female@base', 'base', 3) then
            TaskPlayAnim(ped, 'amb@world_human_seat_wall_tablet@female@base', 'base', 8.0, 1.0, -1, 49, 1.0, 0, 0, 0)
        end
        Open()
    end
end)

RegisterNUICallback('close', function(data)
    local ped = PlayerPedId()
    DeleteEntity(tabletObject)
    ClearPedTasks(ped)
    tabletObject = nil
    SetNuiFocus(false, false)
end)

RegisterNUICallback('messageClient', function(data)
    QBCore.Functions.Notify(data.message, data.typeMessage)
end)

-- Criminal records page
RegisterNUICallback('searchPerson', function(data)
    TriggerServerEvent('drx_mdt:searchPerson', data.searchInput)
end)

RegisterNUICallback('fetchSelectPerson', function(data)
    TriggerServerEvent('drx_mdt:fetchSelectPerson', data)
end)

RegisterNUICallback('uploadPersonImage', function(data)
    TriggerServerEvent('drx_mdt:uploadPersonImage', data.identifier, data.image)
end)

RegisterNUICallback('saveNotes', function(data)
    TriggerServerEvent('drx_mdt:saveNotes', data.identifier, data.note)
end)

RegisterNUICallback('fetchLicenses', function(data)
    TriggerServerEvent('drx_mdt:fetchLicenses', data)
end)

RegisterNUICallback('removeLicenses', function(data)
    TriggerServerEvent('drx_mdt:removeLicenses', data)
end)

RegisterNUICallback('markPersonWanted', function(data)
    TriggerServerEvent('drx_mdt:markPersonWanted', data)
end)

RegisterNUICallback('fetchCharges', function(data)
    TriggerServerEvent('drx_mdt:fetchCharges', data.identifier)
end)

RegisterNUICallback('newCharge', function(data)
    TriggerServerEvent('drx_mdt:newCharge', data)
end)

RegisterNUICallback('sentenceTarget', function(data)
    TriggerServerEvent('drx_mdt:sentenceTarget', data)
end)

RegisterNUICallback('deleteCharge', function(data)
    TriggerServerEvent('drx_mdt:deleteCharge', data)
end)

RegisterNUICallback('editCharge', function(data)
    TriggerServerEvent('drx_mdt:editCharge', data)
end)

RegisterNetEvent('drx_mdt:returnSelectPerson')
AddEventHandler('drx_mdt:returnSelectPerson', function(charname, dateofbirth, phone_number, sex, job, gang, note, image, wanted)
    SendNUIMessage({
        type = 'returnSelectPerson',
        charname = charname,
        dateofbirth = dateofbirth,
        phone_number = phone_number,
        sex = sex,
        job = job,
        gang = gang,
        note = note,
        image = image,
        wanted = wanted
    })
end)

RegisterNetEvent('drx_mdt:returnWantedStatus')
AddEventHandler('drx_mdt:returnWantedStatus', function(wanted)
    SendNUIMessage({
        type = 'returnWantedStatus',
        wanted = wanted
    })
end)

RegisterNetEvent('drx_mdt:returnSearchPerson')
AddEventHandler('drx_mdt:returnSearchPerson', function(results)
    SendNUIMessage({
        type = 'returnSearchPerson',
        searchResults = results
    })
end)

RegisterNetEvent('drx_mdt:returnLicenses')
AddEventHandler('drx_mdt:returnLicenses', function(result)
    SendNUIMessage({
        type = 'returnLicenses',
        UserLicenses = result
    })
end)

RegisterNetEvent('drx_mdt:returnCharges')
AddEventHandler('drx_mdt:returnCharges', function(ChargeResult)
    SendNUIMessage({
        type = 'returnCharges',
        selectedCharge = ChargeResult
    })
end)

-- Search vehicle
RegisterNUICallback('searchVehicle', function(data)
    TriggerServerEvent('drx_mdt:searchVehicle', data.searchVehicle)
end)

RegisterNUICallback('fetchSelectVehicle', function(data)
    TriggerServerEvent('drx_mdt:fetchSelectVehicle', data)
end)

RegisterNUICallback('changeVehicleImage', function(data, cb)
    TriggerServerEvent('drx_mdt:changeVehicleImage', data)
end)

RegisterNUICallback('markVehicleStolen', function(data)
    TriggerServerEvent('drx_mdt:markVehicleStolen', data)
end)

RegisterNetEvent('drx_mdt:returnSearchVehicle')
AddEventHandler('drx_mdt:returnSearchVehicle', function(VehicleResults)
    SendNUIMessage({
        type = 'returnSearchVehicle',
        VehicleResults = VehicleResults
    })
end)

RegisterNetEvent('drx_mdt:returnSelectVehicle') -- DONE besides stolen & image
AddEventHandler('drx_mdt:returnSelectVehicle', function(charname, modelHash, plate, type, color, stolen, image)
    for k,v in pairs(QBCore.Shared.Vehicles) do
        if v.hash == modelHash then
            model = v.brand..' '..v.name
            type = v.category
        end
    end

    SendNUIMessage({
        update = 'returnSelectVehicle',
        charname = charname,
        model = model,
        plate = plate,
        type = string.upper(type),
        color = color,
        stolen = stolen,
        image = image
    })
end)

RegisterNetEvent('drx_mdt:returnStolenStatus')
AddEventHandler('drx_mdt:returnStolenStatus', function(stolen)
    SendNUIMessage({
        type = 'returnStolenStatus',
        stolen = stolen
    })
end)

-- Profile page
RegisterNUICallback('dutyStatus', function(data)
    TriggerServerEvent('drx_mdt:changeDuty', data.duty)
    TriggerServerEvent('QBCore:ToggleDuty')
end)

RegisterNUICallback('changeImage', function(data)
    TriggerServerEvent('drx_mdt:changeImage', data.image)
end)

RegisterNUICallback('changeComitData', function(data)
    TriggerServerEvent('drx_mdt:changeComitData', data.identifierData, data.rankData, data.policegroupData, data.badgenumberData, data.imageData)
end)

RegisterNUICallback('deleteData', function(data)
    TriggerServerEvent('drx_mdt:deleteData', data.identifierData)
end)

RegisterNetEvent('drx_mdt:updateDuty')
AddEventHandler('drx_mdt:updateDuty', function(duty)
    SendNUIMessage({
        type = 'updateDuty',
        duty = duty
    })
end)

RegisterNetEvent('drx_mdt:updateDutyAll')
AddEventHandler('drx_mdt:updateDutyAll', function(drxProfiles)
    QBCore.Functions.TriggerCallback('qb-mdt:server:getmdtinfo', function(drxProfiles)
        SendNUIMessage({
            type = 'updateDutyAll',
            drxProfiles = drxProfiles
        })
    end)
end)

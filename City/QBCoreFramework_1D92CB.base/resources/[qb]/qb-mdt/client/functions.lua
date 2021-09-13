------------------------CREDITS------------------------
--------        Script made by Deltarix        --------
--   Copyright 2021 Deltarix. All rights reserved    --
-------------------------------------------------------

function DrawText3D(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

function Open()
    QBCore.Functions.TriggerCallback('qb-mdt:server:getmdtinfo', function(playerinfo)
        SetNuiFocus(true, true)
        SendNUIMessage({
            drxDispatches = drxDispatches,
            drxWarrants = drxWarrants,
            drxProfiles = playerinfo,
            vrpcharname = playerinfo[1].charname,
            phone_number = playerinfo[1].phone,
            dateofbirth = playerinfo[1].dateofbirth,
            policegroup = playerinfo[1].policegroup,
            badgenumber = playerinfo[1].badgenumber,
            duty = string.upper(playerinfo[1].duty),
            rank = playerinfo[1].rank,
            open = true,
        })
    end)
end

function Close()
    SetNuiFocus(false, false)
    SendNUIMessage({
        close = true
    })
end
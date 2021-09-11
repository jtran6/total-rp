------------------------CREDITS------------------------
--------        Script made by Deltarix        --------
--   Copyright 2021 Deltarix. All rights reserved    --
-------------------------------------------------------

RegisterCommand(Config.Command, function(source, args)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    for k,v in pairs(Config.Permission) do
        if xPlayer.PlayerData.job.name == v then
            TriggerClientEvent('drx_mdt:openMDT', src)
        end
    end
end)

--[[ RegisterCommand(Config.RegisterCommand, function(source, args) -- NOT USED ATM
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    for k,v in pairs(Config.Permission) do
        if xPlayer.PlayerData.job.name == v then
            TriggerEvent('drx_mdt:RegisterAccess', src)
        end
    end
end)

-- If police has no information, then assign it to mdt_profiles
RegisterServerEvent('drx_mdt:RegisterAccess') -- NOT USED ATM
AddEventHandler('drx_mdt:RegisterAccess', function(src)
    local src = src
    local xPlayer = QBCore.Functions.GetPlayer(src)

    for k,v in pairs(Config.Permission) do
        if xPlayer.job.name == v then
            exports.ghmattimysql:execute('SELECT * FROM mdt_profiles WHERE identifier = @identifier', {
                ['@identifier'] = xPlayer.PlayerData.citizenid
            }, function(result)
                local actualResult = result
        
                if (actualResult[1] == nil) then
                    exports.ghmattimysql:execute('SELECT * FROM users WHERE identifier = @identifier', {
                        ['@identifier'] = xPlayer.PlayerData.citizenid
                    }, function(identityResult)
    
                        TriggerClientEvent('mythic_notify:client:SendAlert', src, { type = 'inform', text = Config.Notifications.Registered, length = '5000', style = {}})
                        exports.ghmattimysql:execute('INSERT INTO mdt_profiles (identifier, rank, charname, policegroup, badgenumber, duty, image) VALUES (@identifier, @rank, @charname, @policegroup, @badgenumber, @duty, @image)', {
                            ['@identifier'] = xPlayer.PlayerData.citizenid,
                            ['@rank'] = 'user',
                            ['@charname'] = identityResult[1].firstname.. ' ' ..identityResult[1].lastname,
                            ['@policegroup'] = Config.AssignPolicegroup,
                            ['@badgenumber'] = Config.AssignBadgenumber,
                            ['@duty'] = 'Off duty',
                            ['@image'] = Config.AssignImage,
                        })
                    end)
                else
                    TriggerClientEvent('mythic_notify:client:SendAlert', src, { type = 'error', text = Config.Notifications.AlreadyRegistered, length = '5000', style = {}})
                end
            end)
        end
    end
end) ]]

-- Main Callback
QBCore.Functions.CreateCallback('qb-mdt:server:getmdtinfo', function(source, cb) -- NEW EVENT
    local src = source
    local playerInfo = {}
    local xPlayer = QBCore.Functions.GetPlayer(src)
    if xPlayer ~= nil then
        table.insert(playerInfo, {
            identifier = xPlayer.PlayerData.citizenid,
            rank = xPlayer.PlayerData.job.isboss,
            charname = xPlayer.PlayerData.charinfo.firstname.. ' '..xPlayer.PlayerData.charinfo.lastname,
            policegroup = xPlayer.PlayerData.job.grade.name,
            badgenumber = xPlayer.PlayerData.metadata.callsign,
            duty = tostring(xPlayer.PlayerData.job.onduty),
            phone = xPlayer.PlayerData.charinfo.phone,
            dateofbirth = xPlayer.PlayerData.charinfo.birthdate,
        })
        cb(playerInfo)
    end
end)

-- Fetch Dispatch

QBCore.Functions.CreateCallback('drx_mdt:fetchWarrants', function(source, cb)
    local warrants = exports.ghmattimysql:executeSync('SELECT * FROM mdt_warrants')
    cb(warrants)
end)

-- Fetch Warrants

QBCore.Functions.CreateCallback('drx_mdt:fetchDispatch', function(source, cb)
    local dispatch = exports.ghmattimysql:executeSync('SELECT * FROM mdt_dispatch')
    cb(dispatch)
end)

-- Fetching mdt_profiles
--[[ QBCore.Functions.CreateCallback('drx_mdt:profiles', function(source, cb) -- NOT USED ATM
    local drxProfiles = exports.ghmattimysql:executeSync('SELECT * FROM mdt_profiles')
    cb(drxProfiles)
end)

QBCore.Functions.CreateCallback('drx_mdt:characterProfiles', function(source, cb) -- NOT USED ATM
    local src = source
    local charProfiles = {}
    local xPlayer = QBCore.Functions.GetPlayer(src)
    if xPlayer ~= nil then
        table.insert(charProfiles, {
            identifier = xPlayer.PlayerData.citizenid,
            rank = xPlayer.PlayerData.job.grade.name,
            charname = xPlayer.PlayerData.charinfo.firstname.. ' '..xPlayer.PlayerData.charinfo.lastname,
            policegroup = xPlayer.PlayerData.job.grade.name,
            badgenumber = xPlayer.PlayerData.metadata.callsign,
            duty = xPlayer.PlayerData.job.onduty,
            image = '',
        })
        cb(charProfiles)
    end
end)

-- Fetching users
QBCore.Functions.CreateCallback('drx_mdt:characterInfo', function(source, cb) -- NOT USED ATM
    local src = source
    local playerInfo = {}
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local result = exports.ghmattimysql:executeSync('SELECT charinfo FROM players WHERE citizenid=@citizenid', {['@citizenid'] = xPlayer.PlayerData.citizenid})
    if (result[1] ~= nil) then
        for k,v in pairs(result) do
            if v.charinfo ~= nil then
                local data = json.decode(v.charinfo)
                table.insert(playerInfo, data)
            end
        end
        cb(playerInfo)
    end
end) ]]

--## CRIMINAL RECORDS PAGE ##--
RegisterServerEvent('drx_mdt:searchPerson') -- DONE
AddEventHandler('drx_mdt:searchPerson', function(searchInput)
    local src = source
    local searchResults = {}
    local result = exports.ghmattimysql:executeSync('SELECT * FROM players WHERE charinfo LIKE @query', {['@query'] = string.lower('%'..searchInput..'%')})
    for k,v in pairs(result) do
        if v.charinfo then
            local player = json.decode(v.charinfo)
            v.charname = player.firstname.. ' ' ..player.lastname
            table.insert(searchResults, v)
        end
    end
    TriggerClientEvent('drx_mdt:returnSearchPerson', src, searchResults)
end)

RegisterServerEvent('drx_mdt:fetchSelectPerson') -- DONE
AddEventHandler('drx_mdt:fetchSelectPerson', function(data)
    local src = source
    local gender = 'm'
    local result = exports.ghmattimysql:executeSync('SELECT * FROM players WHERE citizenid=@citizenid', {['@citizenid'] = data.identifier})
    for k,v in pairs(result) do
        if v.charinfo then
            local player = json.decode(v.charinfo)
            local charname = player.firstname.. ' ' ..player.lastname
            local job = json.decode(v.job)
            local gang = json.decode(v.gang)
            if player.gender ~= 0 then
                gender = 'f'
            end
            TriggerClientEvent('drx_mdt:returnSelectPerson', src, charname, player.birthdate, player.phone, gender, job.label, gang.label, '', '', '')
        end
    end
end)

--[[ RegisterServerEvent('drx_mdt:uploadPersonImage') -- NOT USED ATM
AddEventHandler('drx_mdt:uploadPersonImage', function(identifier, image)
    exports.ghmattimysql:execute('UPDATE users SET image = @image WHERE identifier = @identifier', {
        ['@identifier'] = identifier,
        ['@image'] = image
    })
end) ]]

--[[ RegisterServerEvent('drx_mdt:saveNotes') -- NOT USED ATM
AddEventHandler('drx_mdt:saveNotes', function(identifier, note)
    exports.ghmattimysql:execute('UPDATE users SET note = @note WHERE identifier = @identifier', {
        ['@identifier'] = identifier,
        ['@note'] = note
    })
end) ]]

RegisterServerEvent('drx_mdt:fetchLicenses') -- WIP TO DISPLAY ALL
AddEventHandler('drx_mdt:fetchLicenses', function(data)
    local src = source
    local result = exports.ghmattimysql:executeSync('SELECT metadata FROM players WHERE citizenid=@citizenid', {['@citizenid'] = data.identifier})
    for k,v in pairs(result) do
        if v.metadata then
            local metadata = json.decode(v.metadata)
            TriggerClientEvent('drx_mdt:returnLicenses', src, metadata.licences)
        end
    end
end)

RegisterServerEvent('drx_mdt:removeLicenses') -- DONE
AddEventHandler('drx_mdt:removeLicenses', function(data)
    local src = source
    local result = exports.ghmattimysql:executeSync('SELECT metadata FROM players WHERE citizenid=@citizenid', {['@citizenid'] = data.identifier})
    for k,v in pairs(result) do
        if v.metadata then
            local metadata = json.decode(v.metadata)
            if metadata.licences[data.licenseType] == true then
                metadata.licences[data.licenseType] = false
                exports.ghmattimysql:execute('UPDATE players SET metadata=@metadata', {['@metadata'] = json.encode(metadata)})
            end
        end
    end
end)

--[[ RegisterServerEvent('drx_mdt:markPersonWanted') -- NOT USED ATM
AddEventHandler('drx_mdt:markPersonWanted', function(data)
    local src = source
    if data.wanted == 'No' then
        exports.ghmattimysql:execute('UPDATE users SET wanted = @wanted WHERE identifier = @identifier', {
            ['@identifier'] = data.identifier,
            ['@wanted'] = 'Yes'
        })
    elseif data.wanted == 'Yes' then
        exports.ghmattimysql:execute('UPDATE users SET wanted = @wanted WHERE identifier = @identifier', {
            ['@identifier'] = data.identifier,
            ['@wanted'] = 'No'
        })
    end
    Wait(20)
    exports.ghmattimysql:execute('SELECT * FROM users WHERE identifier = @identifier', {
        ['@identifier'] = data.identifier,
    }, function(v)
        TriggerClientEvent('drx_mdt:returnWantedStatus', src, v[1].wanted)
    end)
end) ]]

RegisterServerEvent('drx_mdt:newCharge') -- DONE
AddEventHandler('drx_mdt:newCharge', function(data)
    local src = source
    data.jailTime = tonumber(data.jailTime)
    exports.ghmattimysql:execute('INSERT INTO mdt_charges (identifier, title, incident, victim, author, charges, fine, jailTime, date) VALUES (@identifier, @title, @incident, @victim, @author, @charges, @fine, @jailTime, @date)', {
        ['@identifier'] = data.identifier,
		['@title'] = data.title,
        ['@incident'] = data.incident,
		['@victim'] = data.victim,
		['@author'] = data.author,
		['@charges'] = json.encode(data.charges),
		['@date'] = os.date('%m-%d-%Y %H:%M:%S', os.time()),
		['@fine'] = data.fine,
		['@jailTime'] = data.jailTime,
    })
end)

RegisterServerEvent('drx_mdt:fetchCharges') -- DONE
AddEventHandler('drx_mdt:fetchCharges', function(identifier)
    local src = source
    
	exports.ghmattimysql:execute('SELECT * FROM mdt_charges WHERE identifier = @identifier', {
        ['@identifier'] = identifier
	}, function(result)
        
        local ChargeResult = {}
		for k,v in pairs(result) do
			v.charges = json.decode(v.charges)
			table.insert(ChargeResult, v)
		end
        
		TriggerClientEvent('drx_mdt:returnCharges', src, ChargeResult)
	end)
end)

--[[ RegisterServerEvent('drx_mdt:sentenceTarget') -- WIP
AddEventHandler('drx_mdt:sentenceTarget', function(data)
    local src = source
    if QBCore.Functions.GetPlayerentifier(data.identifier) then
        local target = QBCore.Functions.GetPlayerentifier(data.identifier)
        exports.ghmattimysql:execute('UPDATE mdt_charges SET sentenced = @sentenced WHERE id = @id AND identifier = @identifier', {
            ['@id'] = data.id,
            ['@identifier'] = data.identifier,
            ['@sentenced'] = 'Yes'
        })
        data.fine = tonumber(data.fine)
        if data.fine > 0 then
            if Config.Billing then
                TriggerEvent('esx_billing:sendBill', target.source, 'society_police', 'Police', data.fine)
            else
                local bankBalance = target.getAccounts('bank').bank
                newBalance = bankBalance - data.fine
                target.setAccountMoney('bank', newBalance)
            end
            TriggerClientEvent('mythic_notify:client:SendAlert', target.source, { type = 'inform', text = Config.Notifications.Fined.. '' ..data.fine, length = '5000', style = {}})
        end
        
        data.jailTime = tonumber(data.jailTime)
        if data.jailTime > 0 then
            -- TriggerEvent('drx_jail:jailTarget', target.source, data.jailTime)
            TriggerEvent('esx-qalle-jail:jailPlayer', target.source, data.jailTime)
            TriggerClientEvent('mythic_notify:client:SendAlert', target.source, { type = 'inform', text = Config.Notifications.Jailed.. ' ' ..data.jailTime.. ' ' ..Config.Notifications.Jailed2, length = '5000', style = {}})
        end
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', src, { type = 'error', text = Config.Notifications.NotOnline, length = '5000', style = {}})
    end
end) ]]

RegisterServerEvent('drx_mdt:deleteCharge') -- DONE?
AddEventHandler('drx_mdt:deleteCharge', function(data)
    local src = source
    data.id = tonumber(data.id)
    exports.ghmattimysql:execute('DELETE FROM mdt_charges WHERE id = @id', {
        ['@id'] = data.id
    })
    TriggerClientEvent('mythic_notify:client:SendAlert', src, { type = 'success', text = Config.Notifications.ChargeDeleted, length = '5000', style = {}})
end)

RegisterServerEvent('drx_mdt:editCharge') -- DONE
AddEventHandler('drx_mdt:editCharge', function(data)
    local src = source
    data.id = tonumber(data.id)
    exports.ghmattimysql:execute('UPDATE mdt_charges SET title = @title, incident = @incident, fine = @fine, jailTime = @jailTime WHERE id = @id', {
        ['@id'] = data.id,
        ['@title'] = data.title,
        ['@incident'] = data.details,
        ['@fine'] = data.fine,
        ['@jailTime'] = data.jailTime
    })
end)
--## CRIMINAL RECORDS PAGE ##--

--## SEARCH VEHICLE PAGE ##--
RegisterServerEvent('drx_mdt:searchVehicle') -- DONE
AddEventHandler('drx_mdt:searchVehicle', function(searchVehicle)
    local src = source
    exports.ghmattimysql:execute('SELECT * FROM player_vehicles WHERE LOWER(plate) LIKE @searchVehicle', {
		['@searchVehicle'] = string.lower('%'..searchVehicle..'%')
	}, function(result)
        local VehicleResults = {}
        for k,v in ipairs(result) do
            table.insert(VehicleResults, v)
        end

        TriggerClientEvent('drx_mdt:returnSearchVehicle', src, VehicleResults)
    end)
end)

RegisterServerEvent('drx_mdt:fetchSelectVehicle')
AddEventHandler('drx_mdt:fetchSelectVehicle', function(data)
    local src = source
    local result = exports.ghmattimysql:executeSync('SELECT charinfo FROM players WHERE citizenid=@citizenid', {['@citizenid'] = data.owner})
    for k,v in pairs(result) do
        if v.charinfo then
            local charinfo = json.decode(v.charinfo)
            charname = charinfo.firstname.. ' ' ..charinfo.lastname
        end
    end

    local vehicleData = exports.ghmattimysql:executeSync('SELECT * FROM player_vehicles WHERE citizenid=@citizenid AND plate=@plate', {['@citizenid'] = data.owner, ['@plate'] = data.plate})
    for k,v in pairs(vehicleData) do
        local Colors = Config.Colors
        local data = json.decode(vehicleData[1].mods)
        modelHash = GetHashKey(vehicleData[1].vehicle)
        if data.color1 then
            color = Colors[tostring(data.color1)]
            if Colors[tostring(data.color2)] then
                color = Colors[tostring(data.color2)] .. ' on ' .. Colors[tostring(data.color1)]
            end
        end
    end
    TriggerClientEvent('drx_mdt:returnSelectVehicle', src, charname, modelHash, vehicleData[1].plate, 'Vehicle', color, '', '')
end)

RegisterServerEvent('drx_mdt:changeVehicleImage')
AddEventHandler('drx_mdt:changeVehicleImage', function(data)
    local src = source
    if data.image > Config.ImageChangeLink then
        exports.ghmattimysql:execute('UPDATE owned_vehicles SET image = @image WHERE owner = @owner AND plate = @plate', {
            ['@owner'] = data.owner,
            ['@plate'] = data.plate,
            ['@image'] = data.image
        })
        TriggerClientEvent('mythic_notify:client:SendAlert', src, { type = 'success', text = Config.Notifications.VehImageSaved, length = '5000', style = {}})
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', src, { type = 'error', text = Config.Notifications.NotImgur, length = '5000', style = {}})
    end
end)

RegisterServerEvent('drx_mdt:markVehicleStolen')
AddEventHandler('drx_mdt:markVehicleStolen', function(data)
    local src = source
    if data.stolen == 'No' then
        exports.ghmattimysql:execute('UPDATE owned_vehicles SET stolen = @stolen WHERE owner = @owner AND plate = @plate', {
            ['@owner'] = data.owner,
            ['@plate'] = data.plate,
            ['@stolen'] = 'Yes'
        })
    elseif data.stolen == 'Yes' then
        exports.ghmattimysql:execute('UPDATE owned_vehicles SET stolen = @stolen WHERE owner = @owner AND plate = @plate', {
            ['@owner'] = data.owner,
            ['@plate'] = data.plate,
            ['@stolen'] = 'No'
        })
    end
    Wait(20)
    exports.ghmattimysql:execute('SELECT * FROM owned_vehicles WHERE owner = @owner AND plate = @plate', {
        ['@owner'] = data.owner,
        ['@plate'] = data.plate
    }, function(veh)
        TriggerClientEvent('drx_mdt:returnStolenStatus', src, veh[1].stolen)
    end)
end)
--## SEARCH VEHICLE PAGE ##--

--## PROFILE PAGE ##--
-- Change duty on self at mdt_profiles
RegisterServerEvent('drx_mdt:changeDuty') -- DONE ?
AddEventHandler('drx_mdt:changeDuty', function(duty)
    local src = source
    if duty == 'TRUE' then
        TriggerClientEvent('drx_mdt:updateDutyAll', src)
        TriggerClientEvent('drx_mdt:updateDuty', src, 'FALSE')
    else
        TriggerClientEvent('drx_mdt:updateDutyAll', src)
        TriggerClientEvent('drx_mdt:updateDuty', src, 'TRUE')
    end
end)

-- Change image on self at mdt_profiles
--[[ RegisterServerEvent('drx_mdt:changeImage') -- NOT USED ATM
AddEventHandler('drx_mdt:changeImage', function(image)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    if image >= Config.ImageChangeLink then
        exports.ghmattimysql:execute('UPDATE mdt_profiles SET image = @image WHERE identifier = @identifier', {
            ['@identifier'] = xPlayer.PlayerData.citizenid,
            ['@image'] = image
        })
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', src, { type = 'error', text = Config.Notifications.NoLink, length = '5000', style = {}})
    end
end) ]]


-- Admin comit data to another user into mdt_profiles
--[[ RegisterServerEvent('drx_mdt:changeComitData') -- NOT USED ATM
AddEventHandler('drx_mdt:changeComitData', function(identifierData, rankData, policegroupData, badgenumberData, imageData)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    exports.ghmattimysql:execute('SELECT * FROM mdt_profiles WHERE identifier = @identifier', {
        ['@identifier'] = xPlayer.PlayerData.citizenid
    }, function(result)

        if result[1] ~= nil then
            if result[1].identifier == xPlayer.PlayerData.citizenid and result[1].rank == 'admin' then
                exports.ghmattimysql:execute('UPDATE mdt_profiles SET policegroup = @policegroup, badgenumber = @badgenumber, image = @image WHERE identifier = @identifier', {
                    ['@identifier'] = identifierData,
                    ['@policegroup'] = policegroupData,
                    ['@badgenumber'] = badgenumberData,
                    ['@image'] = imageData
                })
                TriggerClientEvent('drx_mdt:updateDutyAll', src)
                TriggerClientEvent('mythic_notify:client:SendAlert', src, { type = 'inform', text = Config.Notifications.DataComited, length = '5000', style = {}})
            end
        end
    end)
end) ]]


-- Admin delete user from database
--[[ RegisterServerEvent('drx_mdt:deleteData') -- NOT USED ATM
AddEventHandler('drx_mdt:deleteData', function(identifierData)
    local src = source
    xPlayer = tonumber(identifierData)

    exports.ghmattimysql:execute('DELETE FROM mdt_profiles WHERE identifier = @identifier', {
        ['@identifier'] = xPlayer
    })
    TriggerClientEvent('drx_mdt:updateDutyAll', src)
    TriggerClientEvent('mythic_notify:client:SendAlert', src, { type = 'inform', text = Config.Notifications.DataDeleted, length = '5000', style = {}})
end) ]]
--## PROFILE PAGE ##--


local pos = Config.position

local vehicleName = GetHashKey("ProTree")
local range = 0.3
local intensity = 300.0
local currentProgram = nil

RegisterNetEvent("switchLights")
AddEventHandler("switchLights", function(i) currentProgram = i end)

Citizen.CreateThread(function()

    -- Spawn local vehicle for everyone
    if not IsModelInCdimage(vehicleName) or not IsModelAVehicle(vehicleName) then
        print("Model is not in CD image or model is not a vehicle")
        return
    end

    RequestModel(vehicleName)
    RequestCollisionAtCoord(pos[1], pos[2], pos[3])
    while not HasModelLoaded(vehicleName) do
        Citizen.Wait(1000)
        print("Model")
    end

    local vehicle = CreateVehicle(vehicleName, pos[1], pos[2], pos[3], pos[4],
                                  false, true)

    while not HasCollisionLoadedAroundEntity(vehicle) do
        print("Collision")
        RequestCollisionAtCoord(pos[1], pos[2], pos[3])
        Citizen.Wait(1000)
    end

    SetVehicleEngineOn(vehicle, false, true, false)
    SetVehicleOnGroundProperly(vehicle)
    SetEntityInvincible(vehicle, true)
    SetVehicleNumberPlateText(vehicle, "DRAG TREE")
    SetVehicleNeedsToBeHotwired(vehicle, false)
    SetVehRadioStation(vehicle, "OFF")
    SetVehicleHasBeenOwnedByPlayer(vehicle, false)
    SetModelAsNoLongerNeeded(vehicleName)
    FreezeEntityPosition(vehicle, true)

    SetEntityCollision(vehicle, false, false)

    Citizen.CreateThread(function()
        while true do
            --	    vehicle = GetVehiclePedIsIn(PlayerPedId(), true)
            if DoesEntityExist(vehicle) then
                SetVehicleDoorsLockedForAllPlayers(vehicle, true)
                local _, forwardVector, _, position = GetEntityMatrix(vehicle)
                local x, y, z, w = GetEntityQuaternion(vehicle)

                -- get coords of left foot and right foot bones
                local i_lr = GetWorldPositionOfEntityBone(vehicle,
                                                          GetEntityBoneIndexByName(
                                                              vehicle,
                                                              'indicator_lf'))
                local i_rr = GetWorldPositionOfEntityBone(vehicle,
                                                          GetEntityBoneIndexByName(
                                                              vehicle,
                                                              'indicator_rf'))
                local b_r = GetWorldPositionOfEntityBone(vehicle,
                                                         GetEntityBoneIndexByName(
                                                             vehicle,
                                                             'brakelight_r'))

                -- green1, green2

                local fw = forwardVector
                local angle = 90
                x = math.cos(angle) * fw.x - math.sin(angle) * fw.y
                y = math.sin(angle) * fw.x + math.cos(angle) * fw.y
                fw = vector3(x, y, fw.z)

                if currentProgram then
                    for k, v in ipairs(currentProgram) do
                        if v == 1 then
                            DrawLightWithRange(
                                (i_lr + fw * 0.2) + vector3(0, 0, 2), 255, 255,
                                0, range, intensity)
                        elseif v == 2 then
                            DrawLightWithRange(
                                (i_rr + fw * 0.2) + vector3(0, 0, 2), 255, 255,
                                0, range, intensity)
                        elseif v == 3 then
                            DrawLightWithRange(
                                (i_lr + fw * 0.2) + vector3(0, 0, 1.5), 255,
                                255, 0, range, intensity)
                        elseif v == 4 then
                            DrawLightWithRange(
                                (i_rr + fw * 0.2) + vector3(0, 0, 1.5), 255,
                                255, 0, range, intensity)
                        elseif v == 5 then
                            DrawLightWithRange(
                                (i_rr + fw * 0.2) + vector3(0, 0, 1), 255, 255,
                                0, range, intensity)
                        elseif v == 6 then
                            DrawLightWithRange(
                                (i_lr + fw * 0.2) + vector3(0, 0, 1), 255, 255,
                                0, range, intensity)
                        elseif v == 7 then
                            DrawLightWithRange(
                                (i_lr + fw * 0.2) + vector3(0, 0, 0.5), 0, 255,
                                0, range, intensity)
                        elseif v == 8 then
                            DrawLightWithRange(
                                (i_rr + fw * 0.2) + vector3(0, 0, 0.5), 0, 255,
                                0, range, intensity)
                        elseif v == 9 then
                            DrawLightWithRange(i_lr + fw * 0.2, 255, 0, 0,
                                               range * 1.1, intensity)
                        elseif v == 10 then
                            DrawLightWithRange(i_rr + fw * 0.2, 255, 0, 0,
                                               range * 1.1, intensity)
                        end
                    end
                end

                -- red

                -- green               

            end
            Wait(0)
        end
    end)
end)

-- Citizen.CreateThread(function() SetClockTime(00, 00, 00) end)
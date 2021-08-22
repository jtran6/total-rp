function DrawText3Ds(x, y, z, text)
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
local counter = 0 
Citizen.CreateThread(function()
    while true do
        local InRange = false
        local PlayerPed = PlayerPedId()
        local PlayerPos = GetEntityCoords(PlayerPed)

        for shop, _ in pairs(Config.Locations) do
            local position = Config.Locations[shop]["coords"]
            for _, loc in pairs(position) do
                local dist = #(PlayerPos - vector3(loc["x"], loc["y"], loc["z"]))
                if dist < 10 then
                     --CREATE PEDS
                    if(counter == 0) then
                        --COOKIES
                        local cookiesHash = GetHashKey("a_f_m_beach_01")
                        while not HasModelLoaded(cookiesHash) do
                            RequestModel(cookiesHash)
                            Wait(20)
                        end
                        local cookiesCashier = CreatePed(1, cookiesHash, -931.31, -1179.81, 5.02, 120.00, true, true)
                        SetBlockingOfNonTemporaryEvents(cookiesCashier, true)
                        SetPedCombatAttributes(cookiesCashier, 46, true)
                        SetPedFleeAttributes(cookiesCashier, 0, 0)
                        local cookiesGirl0 = CreatePed(1, cookiesHash, -939.24, -1186.22, 4.93, 25.00, true, true)
                        SetBlockingOfNonTemporaryEvents(cookiesGirl0, true)
                        SetPedCombatAttributes(cookiesGirl0, 46, true)
                        SetPedFleeAttributes(cookiesGirl0, 0, 0)
                        local cookiesGirl1 = CreatePed(1, cookiesHash, -940.48, -1179.76, 4.96, 180.00, true, true)
                        SetBlockingOfNonTemporaryEvents(cookiesGirl1, true)
                        SetPedCombatAttributes(cookiesGirl1, 46, true)
                        SetPedFleeAttributes(cookiesGirl1, 0, 0)
                        local cookiesGirl2 = CreatePed(1, cookiesHash, -937.75, -1171.3, 5.02, 180.00, true, true)
                        SetBlockingOfNonTemporaryEvents(cookiesGirl2, true)
                        SetPedCombatAttributes(cookiesGirl2, 46, true)
                        SetPedFleeAttributes(cookiesGirl2, 0, 0)
                        local cookiesGirl3 = CreatePed(1, cookiesHash, -945.62, -1172.15, 4.97, 270.00, true, true)
                        SetBlockingOfNonTemporaryEvents(cookiesGirl3, true)
                        SetPedCombatAttributes(cookiesGirl3, 46, true)
                        SetPedFleeAttributes(cookiesGirl3, 0, 0)
                        local cookiesGirl4 = CreatePed(1, cookiesHash, -942.56, -1167.84, 5.01, 30.00, true, true)
                        SetBlockingOfNonTemporaryEvents(cookiesGirl4, true)
                        SetPedCombatAttributes(cookiesGirl4, 46, true)
                        SetPedFleeAttributes(cookiesGirl4, 0, 0)
                        local cyberHash = GetHashKey("a_f_y_smartcaspat_01")
                        while not HasModelLoaded(cyberHash) do
                            RequestModel(cyberHash)
                            Wait(20)
                        end
                        local cyberCashier = CreatePed(1, cyberHash, 337.66, -908.5, 29.26, -80.00, true, true)
                        SetBlockingOfNonTemporaryEvents(cyberCashier, true)
                        SetPedCombatAttributes(cyberCashier, 46, true)
                        SetPedFleeAttributes(cyberCashier, 0, 0)
                        counter = counter + 1
                    end
                    InRange = true
                    DrawMarker(2, loc["x"], loc["y"], loc["z"], 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 255, 255, 255, 155, 0, 0, 0, 1, 0, 0, 0)
                    if dist < 1 then
                        DrawText3Ds(loc["x"], loc["y"], loc["z"] + 0.15, '~g~E~w~ - Shop')
                        if IsControlJustPressed(0, 38) then -- E
                            local ShopItems = {}
                            ShopItems.items = {}
                            QBCore.Functions.TriggerCallback('qb-shops:server:getLicenseStatus', function(result)
                                ShopItems.label = Config.Locations[shop]["label"]
                                if Config.Locations[shop].type == "weapon" then
                                    if result then
                                        ShopItems.items = Config.Locations[shop]["products"]
                                    else
                                        for i = 1, #Config.Locations[shop]["products"] do
                                            if not Config.Locations[shop]["products"][i].requiresLicense then
                                                table.insert(ShopItems.items, Config.Locations[shop]["products"][i])
                                            end
                                        end
                                    end
                                else
                                    ShopItems.items = Config.Locations[shop]["products"]
                                end
                                ShopItems.slots = 30
                                TriggerServerEvent("inventory:server:OpenInventory", "shop", "Itemshop_"..shop, ShopItems)
                            end)
                        end
                    end
                end
            end
        end

        if not InRange then
            Citizen.Wait(5000)
        end
        Citizen.Wait(5)
    end
end)

RegisterNetEvent('qb-shops:client:UpdateShop')
AddEventHandler('qb-shops:client:UpdateShop', function(shop, itemData, amount)
    TriggerServerEvent('qb-shops:server:UpdateShopItems', shop, itemData, amount)
end)

RegisterNetEvent('qb-shops:client:SetShopItems')
AddEventHandler('qb-shops:client:SetShopItems', function(shop, shopProducts)
    Config.Locations[shop]["products"] = shopProducts
end)

RegisterNetEvent('qb-shops:client:RestockShopItems')
AddEventHandler('qb-shops:client:RestockShopItems', function(shop, amount)
    if Config.Locations[shop]["products"] ~= nil then 
        for k, v in pairs(Config.Locations[shop]["products"]) do 
            Config.Locations[shop]["products"][k].amount = Config.Locations[shop]["products"][k].amount + amount
        end
    end
end)

Citizen.CreateThread(function()
    for store,_ in pairs(Config.Locations) do
	if Config.Locations[store]["showblip"] then
	    StoreBlip = AddBlipForCoord(Config.Locations[store]["coords"][1]["x"], Config.Locations[store]["coords"][1]["y"], Config.Locations[store]["coords"][1]["z"])
	    SetBlipColour(StoreBlip, 0)

	    if Config.Locations[store]["products"] == Config.Products["normal"] then
	        SetBlipSprite(StoreBlip, 52)
	        SetBlipScale(StoreBlip, 0.6)
	    elseif Config.Locations[store]["products"] == Config.Products["coffeeplace"] then
	        SetBlipSprite(StoreBlip, 52)
	        SetBlipScale(StoreBlip, 0.6)
	    elseif Config.Locations[store]["products"] == Config.Products["gearshop"] then
	        SetBlipSprite(StoreBlip, 52)
	        SetBlipScale(StoreBlip, 0.6)
	    elseif Config.Locations[store]["products"] == Config.Products["hardware"] then
	        SetBlipSprite(StoreBlip, 402)
	        SetBlipScale(StoreBlip, 0.8)
	    elseif Config.Locations[store]["products"] == Config.Products["weapons"] then
	        SetBlipSprite(StoreBlip, 110)
	        SetBlipScale(StoreBlip, 0.85)
	    elseif Config.Locations[store]["products"] == Config.Products["leisureshop"] then
	        SetBlipSprite(StoreBlip, 52)
	        SetBlipScale(StoreBlip, 0.6)
	        SetBlipColour(StoreBlip, 3)           
	    elseif Config.Locations[store]["products"] == Config.Products["mustapha"] then
	        SetBlipSprite(StoreBlip, 225)
	        SetBlipScale(StoreBlip, 0.6)
	        SetBlipColour(StoreBlip, 3)              
	    elseif Config.Locations[store]["products"] == Config.Products["coffeeshop"] then
	        SetBlipSprite(StoreBlip, 140)
	        SetBlipScale(StoreBlip, 0.55)
	    elseif Config.Locations[store]["products"] == Config.Products["casino"] then
	        SetBlipSprite(StoreBlip, 617)
	        SetBlipScale(StoreBlip, 0.70)
	    end

	    SetBlipDisplay(StoreBlip, 4)
	    SetBlipAsShortRange(StoreBlip, true)


	    BeginTextCommandSetBlipName("STRING")
	    AddTextComponentSubstringPlayerName(Config.Locations[store]["label"])
	    EndTextCommandSetBlipName(StoreBlip)

       
	end
    end
end)

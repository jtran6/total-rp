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
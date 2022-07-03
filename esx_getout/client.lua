ESX = nil 
CreateThread(function() while ESX == nil do TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) Wait(0) end end)
local PlayerData = {}
jotkuvammat = {
    "police",
    "fib"
"Ajoneuvot tähän"
}

CreateThread(function()
    while true do
        Wait(500)
        local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
        local p = GetPlayerPed(-1)
        PlayerData = ESX.GetPlayerData()
        for k, v in pairs(jotkuvammat) do
            if IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), false), GetHashKey(v)) and GetPedInVehicleSeat(vehicle, -1) == GetPlayerPed(-1) then
                if PlayerData.job.name ~= 'police' and PlayerData.job.name ~= 'ambulance' then
                    TriggerEvent('esx:showNotification', "~r~Sinulla ei ole oikeutta ajaa virka ajoneuvolla")
                    TaskLeaveVehicle(p,vehicle,1)
                end
            end
        end
    end
end)

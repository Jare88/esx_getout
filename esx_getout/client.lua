ESX                    = nil
local PlayerData    = {}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(500)
        local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
        local ped = GetPlayerPed(-1)
        PlayerData = ESX.GetPlayerData()
        
        if IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), false), GetHashKey('fibx')) and GetPedInVehicleSeat(vehicle, -1) == GetPlayerPed(-1) then
            if PlayerData.job.name ~= 'police' and PlayerData.job.name ~= 'ambulance' and PlayerData.job.name ~= 'mechanic' and PlayerData.job.name ~= 'bennys' and PlayerData.job.name ~= 'autopaja' then
                TriggerEvent('esx:showNotification', "~r~Sinulla ei ole oikeutta ajaa virka ajoneuvolla")
                TaskLeaveVehicle(ped,vehicle,1)
            end
		elseif IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), false), GetHashKey('policeb')) and GetPedInVehicleSeat(vehicle, -1) == GetPlayerPed(-1) then
                if PlayerData.job.name ~= 'police' and PlayerData.job.name ~= 'ambulance' and PlayerData.job.name ~= 'mechanic' and PlayerData.job.name ~= 'bennys' and PlayerData.job.name ~= 'autopaja' then
                TriggerEvent('esx:showNotification', "~r~Sinulla ei ole oikeutta ajaa virka ajoneuvolla")
                TaskLeaveVehicle(ped,vehicle,0)
            end
        elseif IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), false), GetHashKey('polmav')) and GetPedInVehicleSeat(vehicle, -1) == GetPlayerPed(-1) then
            if PlayerData.job.name ~= 'police' and PlayerData.job.name ~= 'ambulance' then
                TriggerEvent('esx:showNotification', "~r~Sinulla ei ole oikeutta ajaa virka ajoneuvolla")
                TaskLeaveVehicle(ped,vehicle,0)
            end
        elseif IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), false), GetHashKey('2015polstang')) and GetPedInVehicleSeat(vehicle, -1) == GetPlayerPed(-1) then
			if PlayerData.job.name ~= 'police' and PlayerData.job.name ~= 'ambulance' and PlayerData.job.name ~= 'mechanic' and PlayerData.job.name ~= 'bennys' and PlayerData.job.name ~= 'autopaja' then
				TriggerEvent('esx:showNotification', "~r~Sinulla ei ole oikeutta ajaa virka ajoneuvolla.")
				TaskLeaveVehicle(ped,vehicle,0)
			end
        elseif IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), false), GetHashKey('fibj')) and GetPedInVehicleSeat(vehicle, -1) == GetPlayerPed(-1) then
            if PlayerData.job.name ~= 'police' and PlayerData.job.name ~= 'ambulance' and PlayerData.job.name ~= 'mechanic' and PlayerData.job.name ~= 'bennys' and PlayerData.job.name ~= 'autopaja' then
                TriggerEvent('esx:showNotification', "~r~Sinulla ei ole oikeutta ajaa virka ajoneuvolla")
                TaskLeaveVehicle(ped,vehicle,0)
            end
        elseif IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), false), GetHashKey('fibd2')) and GetPedInVehicleSeat(vehicle, -1) == GetPlayerPed(-1) then
            if PlayerData.job.name ~= 'police' and PlayerData.job.name ~= 'ambulance' and PlayerData.job.name ~= 'mechanic' and PlayerData.job.name ~= 'bennys' and PlayerData.job.name ~= 'autopaja' then
                TriggerEvent('esx:showNotification', "~r~Sinulla ei ole oikeutta ajaa virka ajoneuvolla")
                TaskLeaveVehicle(ped,vehicle,0)
            end
        elseif IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), false), GetHashKey('polschafter3')) and GetPedInVehicleSeat(vehicle, -1) == GetPlayerPed(-1) then
            if PlayerData.job.name ~= 'police' and PlayerData.job.name ~= 'ambulance' and PlayerData.job.name ~= 'mechanic' and PlayerData.job.name ~= 'bennys' and PlayerData.job.name ~= 'autopaja' then
                TriggerEvent('esx:showNotification', "~r~Sinulla ei ole oikeutta ajaa virka ajoneuvolla")
                TaskLeaveVehicle(ped,vehicle,0)
            end
		end
	end
end)
end)

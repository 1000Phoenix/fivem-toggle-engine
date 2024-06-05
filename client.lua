RegisterCommand('engine', function()
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed, false) then
        local vehicle = GetVehiclePedIsIn(playerPed, false)
        local engineStatus = GetIsVehicleEngineRunning(vehicle)

        if engineStatus then
            SetVehicleEngineOn(vehicle, false, false, true)
            TriggerEvent('chat:addMessage', {args = {'^1Engine ^7turned ^1off'}})
        else
            SetVehicleEngineOn(vehicle, true, false, true)
            TriggerEvent('chat:addMessage', {args = {'^2Engine ^7turned ^2on'}})
        end
    else
        TriggerEvent('chat:addMessage', {args = {'^1You are not in a vehicle!'}})
    end
end, false)

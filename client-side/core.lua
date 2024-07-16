local gameBuild = GetGameBuildNumber()

RegisterNetEvent('chamaleon:apply', function(paint)
    local ped = PlayerPedId()
    local pedCoords = GetEntityCoords(ped)
    local vehicle = GetVehiclePedIsIn(ped)
    SetVehicleModKit(vehicle, 0)
    SetVehicleColours(vehicle, paint.paint, paint.paint)
end)

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- COMANDOS DO MENU CAMALEÃO
----------------------------------------------------------------------------------------------------------------------------------------------------------------

RegisterCommand('menucamaleao',function()
    registeredMenu = {
        id = 'event_menu',
        title = 'Pintura Camaleão',
        options = {}
    }
    if gameBuild == 2699 or gameBuild == 2802 then 
        for i=177,242 do
            l = i
            registeredMenu.options[#registeredMenu.options + 1] = {
                title = 'Pintura #'..i - 177,
                event = 'chamaleon:apply',
                args = {
                    paint = l,
                },
            }
        end
    end
    if gameBuild == 2545 then 
        for i=161,167 do
            l = i
            registeredMenu.options[#registeredMenu.options + 1] = {
                title = 'Paint #'..i - 161,
                event = 'chamaleon:apply',
                args = {
                    paint = l,
                },
            }
        end
    end
    exports['ox_lib']:registerContext(registeredMenu)
   
    exports['ox_lib']:showContext('event_menu')
end)

RegisterCommand('camaleao',function(source,arg)
    if gameBuild == 2699 or gameBuild == 2802 then 
        local paint = arg[1] + 177
        local ped = PlayerPedId()
        local pedCoords = GetEntityCoords(ped)
        local vehicle = GetVehiclePedIsIn(ped)
        SetVehicleModKit(vehicle, 0)
        SetVehicleColours(vehicle, paint, paint)
    end
    if gameBuild == 2545 then 
        local paint = arg[1] + 167
        local ped = PlayerPedId()
        local pedCoords = GetEntityCoords(ped)
        local vehicle = GetVehiclePedIsIn(ped)
        SetVehicleModKit(vehicle, 0)
        SetVehicleColours(vehicle, paint, paint)
    end
end)

RegisterCommand('camaleaoloop',function()
    if gameBuild == 2699 or gameBuild == 2802 then 
        for i=177,242 do
            Wait(1000)
            local ped = PlayerPedId()
            local pedCoords = GetEntityCoords(ped)
            local vehicle = GetVehiclePedIsIn(ped)
            SetVehicleModKit(vehicle, 0)
            SetVehicleColours(vehicle, i, i)
        end
    end
    if gameBuild == 2545 then 
        for i=161,167 do
            Wait(1000)
            local ped = PlayerPedId()
            local pedCoords = GetEntityCoords(ped)
            local vehicle = GetVehiclePedIsIn(ped)
            SetVehicleModKit(vehicle, 0)
            SetVehicleColours(vehicle, i, i)
        end
    end
end)
local result = nil

exports('Minigame', function()
    result = nil -- reset
    print("Starting minigame") -- Oyunun başladığını görmek için
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = 'start'
    }) 
    while result == nil do 
        Wait(100)
    end
    SetNuiFocus(false, false)
    return result
end)

RegisterNUICallback('GetResult', function(data, cb)
    result = data
    cb()
end)

RegisterNUICallback('lockpickClose', function(_, cb)
    if not result then 
        result = false
    end
    SetNuiFocus(false, false)
    cb('ok')
end)
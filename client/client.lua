ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('esx:playerLoaded', function()
    
    local playerId = GetPlayerServerId(PlayerId())
    print(playerId)
    
    SendNUIMessage({
        type = "setPlayerID",
        id = playerId
    })
    print("Messaggio NUI inviato")
    
   
end)
Citizen.CreateThread(function()
    Citizen.Wait(200)
    local playerId = GetPlayerServerId(PlayerId())
   
   
    SendNUIMessage({
        type = "setPlayerID",
        id = playerId
    })
end)





RegisterNetEvent('vorp:teleportWayPoint')
AddEventHandler('vorp:teleportWayPoint', function()
    TriggerEvent("tpz_core:teleportToWayPoint")
end)

RegisterNetEvent('vorp_core:Client:OnPlayerHeal')
AddEventHandler('vorp_core:Client:OnPlayerHeal', function()
    TriggerEvent("tpz_core:healPlayer")

    -- tpz_metabolism.
    TriggerEvent("tpz_metabolism:setMetabolismValue", "HUNGER", "add", 100)
    TriggerEvent("tpz_metabolism:setMetabolismValue", "THIRST", "add", 100)

    TriggerEvent("tpz_metabolism:setMetabolismValue", "STRESS", "remove", 100)
    TriggerEvent("tpz_metabolism:setMetabolismValue", "ALCOHOL", "remove", 100)
            
end)

RegisterNetEvent('vorp_core:Client:OnPlayerRespawn')
AddEventHandler('vorp_core:Client:OnPlayerRespawn', function()
    TriggerEvent("tpz_core:resurrectPlayer", false)
end)

RegisterNetEvent('vorp_core:Client:OnPlayerRevive')
AddEventHandler('vorp_core:Client:OnPlayerRevive'; function() 
    TriggerEvent("tpz_core:resurrectPlayer", true)
end)

RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function()
    TriggerEvent("tpz_core:isPlayerReady")
end)

---@deprecated
RegisterNetEvent("vorp:Heal", function()
    print("^3 vorp:Heal is deprecated, use vorp_core:Client:OnPlayerHeal instead^7")
end)

RegisterNetEvent("vorp_core:respawnPlayer", function()
    print("^3 vorp_core:respawnPlayer is deprecated, use vorp_core:Client:OnPlayerRespawn instead^7")
end)

RegisterNetEvent('vorp:resurrectPlayer', function(just)
    print("^3 vorp:resurrectPlayer is deprecated, use vorp_core:Client:OnPlayerRevive instead^7")
end)

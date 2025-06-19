
AddEventHandler('vorp:teleportWayPoint')
RegisterNetEvent('vorp:teleportWayPoint', function()
    TriggerEvent("tpz_core:teleportToWayPoint")
end)

AddEventHandler('vorp_core:Client:OnPlayerHeal')
RegisterNetEvent('vorp_core:Client:OnPlayerHeal', function()

end)

AddEventHandler('vorp_core:Client:OnPlayerRevive')
RegisterNetEvent('vorp_core:Client:OnPlayerRespawn', function(param)
    CoreAction.Player.RespawnPlayer(param)
end)

AddEventHandler('vorp_core:Client:OnPlayerRevive')
RegisterNetEvent('vorp_core:Client:OnPlayerRevive', function(bool)
    bool = bool or true
    CoreAction.Player.ResurrectPlayer(false, nil, bool)
end)

AddEventHandler("vorp:SelectedCharacter")
RegisterNetEvent("vorp:SelectedCharacter", function()
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

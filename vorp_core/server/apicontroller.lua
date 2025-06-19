CoreFunctions = {}

CoreFunctions.maxCharacters = function(source)
    return GetMaxCharactersAllowed(source)
end

CoreFunctions.getUsers = function()
    return _users
end

CoreFunctions.getUser = function(source)
    if not source then return nil end

    local TPZ = exports["tpz_core"]:getCoreAPI()

    if TPZ.GetPlayer[source].loaded() then
        return nil
    end

    local xPlayer = TPZ.GetPlayer[source]

    local data = {

        getUsedCharacter = {

            identifier = xPlayer.getIdentifier(),

        },

    }

    return { getUsedCharacter = data }

end

CoreFunctions.getUserByCharId = function(charid)
    if charid == nil then return nil end
    for k, v in pairs(_users) do
        if v.usedCharacterId ~= -1 and tonumber(v.usedCharacterId) == tonumber(charid) then
            return v.GetUser()
        end
    end
    return nil
end

CoreFunctions.NotifyTip = function(source, text, duration)
    TriggerClientEvent('vorp:Tip', source, text, duration)
end

CoreFunctions.NotifyLeft = function(source, title, subtitle, dict, icon, duration, colors)
    TriggerClientEvent('vorp:NotifyLeft', source, title, subtitle, dict, icon, duration, colors)
end

CoreFunctions.NotifyRightTip = function(source, text, duration)
    TriggerClientEvent('vorp:TipRight', source, text, duration)
end

CoreFunctions.NotifyObjective = function(source, text, duration)
    TriggerClientEvent('vorp:TipBottom', source, text, duration)
end

CoreFunctions.NotifyTop = function(source, text, location, duration)
    TriggerClientEvent('vorp:NotifyTop', source, text, location, duration)
end

CoreFunctions.NotifySimpleTop = function(source, text, subtitle, duration)
    TriggerClientEvent('vorp:ShowTopNotification', source, text, subtitle, duration)
end

CoreFunctions.NotifyAvanced = function(source, text, dict, icon, text_color, duration, quality, showquality)
    TriggerClientEvent('vorp:ShowAdvancedRightNotification', source, text, dict, icon, text_color, duration, quality, showquality)
end

CoreFunctions.NotifyCenter = function(source, text, duration, color)
    TriggerClientEvent('vorp:ShowSimpleCenterText', source, text, duration, color)
end

CoreFunctions.NotifyBottomRight = function(source, text, duration)
    TriggerClientEvent('vorp:ShowBottomRight', source, text, duration)
end

CoreFunctions.NotifyFail = function(source, text, subtitle, duration)
    TriggerClientEvent('vorp:failmissioNotifY', source, text, subtitle, duration)
end

CoreFunctions.NotifyDead = function(source, title, audioRef, audioName, duration)
    TriggerClientEvent('vorp:deadplayerNotifY', source, title, audioRef, audioName, duration)
end

CoreFunctions.NotifyUpdate = function(source, title, subtitle, duration)
    TriggerClientEvent('vorp:updatemissioNotify', source, title, subtitle, duration)
end

CoreFunctions.NotifyBasicTop = function(source, title, duration)
    TriggerClientEvent('vorp:ShowBasicTopNotification', source, title, duration)
end

CoreFunctions.NotifyWarning = function(source, title, msg, audioRef, audioName, duration)
    TriggerClientEvent('vorp:warningNotify', source, title, msg, audioRef, audioName, duration)
end
CoreFunctions.NotifyLeftRank = function(source, title, subtitle, dict, icon, duration, color)
    TriggerClientEvent('vorp:LeftRank', source, title, subtitle, dict, icon, duration, color)
end

CoreFunctions.dbUpdateAddTables = function(tbl)
    dbupdaterAPI.addTables(tbl)
end

CoreFunctions.dbUpdateAddUpdates = function(updt)
    dbupdaterAPI.addUpdates(updt)
end

CoreFunctions.AddWebhook = function(title, webhook, description, color, name, logo, footerlogo, avatar)
    TriggerEvent('vorp_core:addWebhook', title, webhook, description, color, name, logo, footerlogo, avatar)
end

CoreFunctions.Callback = {

    Register = function(name, callback)
        ServerRPC.Callback.Register(name, callback)
    end,
    TriggerAsync = function(name, source, callback, ...)
        ServerRPC.Callback.TriggerAsync(name, source, callback, ...)
    end,
    TriggerAwait = function(name, source, ...)
        return ServerRPC.Callback.TriggerAwait(name, source, ...)
    end
}

CoreFunctions.Whitelist = {

    getEntry = function(identifier)
        return nil
    end,

    whitelistUser = function(steam)
        return false
    end,

    unWhitelistUser = function(steam)
        return false
    end,
}

CoreFunctions.Player = {
    Heal = function(source)
        if not source then return end
        TriggerEvent("vorp_core:Server:OnPlayerHeal", source)
        TriggerClientEvent("vorp_core:Client:OnPlayerHeal", source)
    end,
    Revive = function(source, param)
        if not source then return end
        TriggerEvent("vorp_core:Server:OnPlayerRevive", source, param)
        TriggerClientEvent("vorp_core:Client:OnPlayerRevive", source, param)
    end,
    Respawn = function(source, param)
        if not source then return end
        TriggerEvent("vorp_core:Server:OnPlayerRespawn", source, param)
        TriggerClientEvent("vorp_core:Client:OnPlayerRespawn", source, param)
    end,
}

exports('GetCore', function()
    return CoreFunctions
end)

-----------------------------------------------------------------------------
--- use exports
---@deprecated
AddEventHandler('getCore', function(cb)
    cb(CoreFunctions)
end)

--- use exports
---@deprecated
AddEventHandler('getWhitelistTables', function(cb)
    cb(CoreFunctions.Whitelist)
end)

--- use Core object
---@deprecated
CoreFunctions.addRpcCallback = function(name, callback)
    ServerRPC.Callback.Register(name, callback)
end

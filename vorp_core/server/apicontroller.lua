CoreFunctions = {}

CoreFunctions.maxCharacters = function(source)
    return 3
end

CoreFunctions.getUsers = function()
    return nil
end

CoreFunctions.getUser = function(source)
    local _source = source
    if not _source then return nil end

    local TPZ = exports["tpz_core"]:getCoreAPI()

    if TPZ.GetPlayer[_source].loaded() then
        return nil
    end

    local xPlayer = TPZ.GetPlayer[_source]

    local userData = {}

    userData.source = _source
    userData.getGroup = xPlayer.getGroup()

    userData.getUsedCharacter = {
        source = _source, 
        identifier = xPlayer.getIdentifier(),
        charIdentifier‎ = xPlayer.getCharacterIdentifier(),
        job = xPlayer.getJob(),
        jobgrade = xPlayer.getJobGrade(),
        group = xPlayer.getGroup(),
        firstname = xPlayer.getFirstName(),
        lastname = xPlayer.getLastName(),
        money = xPlayer.getAccount(0),
        gold = xPlayer.getAccount(1),
        gender = xPlayer.getGender(),
        steamname = GetPlayerName(_source),
        nickname = xPlayer.getFirtName() .. " " .. xPlayer.getLastName(),
        dob = xPlayer.getDob(),
        skin = xPlayer.getOutfitComponents(),
        comps = xPlayer.getOutfitComponents(),
        isdead = xPlayer.isDead(),

    }

    userData.getUserCharacters = 3 -- must finish it

    userData.getIdentifier = function()
        return xPlayer.getIdentifier()
    end

    userData.getPlayerwarnings = function()
        return TPZ.GetUserData(_source).warnings
    end

    userData.setPlayerWarnings = function(warnings)
        xPlayer.setWarnings(warnings)
    end

    userData.setGroup = function(group)
        xPlayer.setGroup(group)
    end

    userData.setCharperm = function(char)
        
    end

    userData.getNumOfCharacters = function()
        return xPlayer.getTotalCharactersNum()
    end

    userData.addCharacter = function(data)
        
    end

    userData.removeCharacter = function(charid)
        
    end

    userData.setUsedCharacter = function(charid)
        
    end

    return userData

end

CoreFunctions.getUserByCharId = function(charid)
    return nil
end

CoreFunctions.NotifyTip = function(source, text, duration)
    TriggerClientEvent('tpz_core:sendTipNotification', source, text, duration)
end

CoreFunctions.NotifyLeft = function(source, title, subtitle, dict, icon, duration, colors)
    TriggerClientEvent('tpz_core:sendLeftNotification', source, title, subtitle, dict, icon, duration, colors)
end

CoreFunctions.NotifyRightTip = function(source, text, duration)
    TriggerClientEvent('tpz_core:sendRightTipNotification', source, text, duration)
end

CoreFunctions.NotifyObjective = function(source, text, duration)
    TriggerClientEvent('tpz_core:sendBottomTipNotification', source, text, duration)
end

CoreFunctions.NotifyTop = function(source, text, location, duration)
    TriggerClientEvent('tpz_core:sendTopNotification', source, text, location, duration)
end

CoreFunctions.NotifySimpleTop = function(source, text, subtitle, duration)
    TriggerClientEvent('tpz_core:sendSimpleTopNotification', source, text, subtitle, duration)
end

CoreFunctions.NotifyAvanced = function(source, text, dict, icon, text_color, duration, quality, showquality)
    TriggerClientEvent('tpz_core:sendAdvancedRightNotification', source, text, dict, icon, text_color, duration, quality, showquality)
end

CoreFunctions.NotifyCenter = function(source, text, duration, color)
    TriggerClientEvent('tpz_core:sendSimpleCenterNotification', source, text, duration, color)
end

CoreFunctions.NotifyBottomRight = function(source, text, duration)
    TriggerClientEvent('tpz_core:sendBottomRightNotification', source, text, duration)
end

CoreFunctions.NotifyFail = function(source, text, subtitle, duration)
    TriggerClientEvent('tpz_core:sendFailMissionNotification', source, text, subtitle, duration)
end

CoreFunctions.NotifyDead = function(source, title, audioRef, audioName, duration)
    TriggerClientEvent('tpz_core:sendDeadPlayerNotification', source, title, audioRef, audioName, duration)
end

CoreFunctions.NotifyUpdate = function(source, title, subtitle, duration)
    TriggerClientEvent('tpz_core:sendMissionUpdateNotification', source, title, subtitle, duration)
end

CoreFunctions.NotifyBasicTop = function(source, title, duration)
    TriggerClientEvent('tpz_core:sendBasicTopNotification', source, title, duration)
end

CoreFunctions.NotifyWarning = function(source, title, msg, audioRef, audioName, duration)
    TriggerClientEvent('tpz_core:sendWarningNotification', source, title, msg, audioRef, audioName, duration)
end
CoreFunctions.NotifyLeftRank = function(source, title, subtitle, dict, icon, duration, color)
    TriggerClientEvent('tpz_core:sendLeftRankNotification', source, title, subtitle, dict, icon, duration, color)
end

CoreFunctions.dbUpdateAddTables = function(tbl)
    -- nothing
end

CoreFunctions.dbUpdateAddUpdates = function(updt)
    -- nothing
end

CoreFunctions.AddWebhook = function(title, webhook, description, color, name, logo, footerlogo, avatar)
    local TPZ = exports["tpz_core"]:getCoreAPI()
    TPZ.SendToDiscord(webhook, title, description, color)
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

local ScreenResolution = nil
local CoreFunctions = {}

CoreFunctions.RpcCall = function(name, callback, ...)
    ClientRPC.Callback.TriggerAsync(name, callback, ...)
end

CoreFunctions.instancePlayers = function(set)
    TriggerServerEvent("tpz_core:instanceplayers", set)
end

CoreFunctions.AddWebhook = function(title, webhook, description, color, name, logo, footerlogo, avatar)
    --TriggerServerEvent('vorp_core:addWebhook', title, webhook, description, color, name, logo, footerlogo, avatar)
end

CoreFunctions.NotifyTip = function(text, duration)
    VorpNotification:NotifyTip(tostring(text), tonumber(duration))
end

CoreFunctions.NotifyLeft = function(title, subtitle, dict, icon, duration, color)
    VorpNotification:NotifyLeft(tostring(title), tostring(subtitle), tostring(dict), tostring(icon), tonumber(duration), tostring(color or "COLOR_WHITE"))
end

CoreFunctions.NotifyRightTip = function(text, duration)
    exports.tpz_core:getCoreAPI().NotifyRightTip(tostring(text), tonumber(duration))
end

CoreFunctions.NotifyObjective = function(text, duration)
    exports.tpz_core:getCoreAPI().NotifyObjective(tostring(text), tonumber(duration))
end

CoreFunctions.NotifyTop = function(text, location, duration)
    exports.tpz_core:getCoreAPI().NotifyTop(tostring(text), tostring(location), tonumber(duration))
end

CoreFunctions.NotifySimpleTop = function(text, subtitle, duration)
    exports.tpz_core:getCoreAPI().NotifySimpleTop(tostring(text), tostring(subtitle), tonumber(duration))
end

CoreFunctions.NotifyAvanced = function(text, dict, icon, text_color, duration, quality, showquality)
    exports.tpz_core:getCoreAPI().NotifyAvanced(tostring(text), tostring(dict), tostring(icon), tostring(text_color), tonumber(duration), quality, showquality)
end

CoreFunctions.NotifyBasicTop = function(text, duration)
    exports.tpz_core:getCoreAPI().NotifyBasicTop(tostring(text), tonumber(duration))
end

CoreFunctions.NotifyCenter = function(text, duration, text_color)
    exports.tpz_core:getCoreAPI().NotifyCenter(tostring(text), tonumber(duration), tostring(text_color))
end

CoreFunctions.NotifyBottomRight = function(text, duration)
    exports.tpz_core:getCoreAPI().NotifyBottomRight(tostring(text), tonumber(duration))
end

CoreFunctions.NotifyFail = function(text, subtitle, duration)
    exports.tpz_core:getCoreAPI().NotifyFail(tostring(text), tostring(subtitle), tonumber(duration))
end

CoreFunctions.NotifyDead = function(title, audioRef, audioName, duration)
    exports.tpz_core:getCoreAPI().NotifyDead(tostring(title), tostring(audioRef), tostring(audioName), tonumber(duration))
end

CoreFunctions.NotifyUpdate = function(title, subtitle, duration)
    exports.tpz_core:getCoreAPI().NotifyUpdate(tostring(title), tostring(subtitle), tonumber(duration))
end

CoreFunctions.NotifyWarning = function(title, msg, audioRef, audioName, duration)
    exports.tpz_core:getCoreAPI().NotifyWarning(tostring(title), tostring(msg), tostring(audioRef), tostring(audioName), tonumber(duration))
end

CoreFunctions.NotifyLeftRank = function(title, subtitle, dict, icon, duration, color)
    exports.tpz_core:getCoreAPI().NotifyLeftRank(tostring(title), tostring(subtitle), tostring(dict), tostring(icon), tonumber(duration), tostring(color or "COLOR_WHITE"))
end


CoreFunctions.Graphics = {
    ScreenResolution = function()
        local width, height = GetCurrentScreenResolution()
        return { width = width, height = height }
    end
}

CoreFunctions.Callback = {

    Register = function(name, callback)
        ClientRPC.Callback.Register(name, callback)
    end,
    TriggerAsync = function(name, callback, ...)
        ClientRPC.Callback.TriggerAsync(name, callback, ...)
    end,
    TriggerAwait = function(name, ...)
        return ClientRPC.Callback.TriggerAwait(name, ...)
    end
}

exports('GetCore', function()
    return CoreFunctions
end)

--- use exports
---@deprecated
AddEventHandler('getCore', function(cb)
    return cb(CoreFunctions)
end)


-- NOTIFICATIONS
RegisterNetEvent('vorp:NotifyLeft')
RegisterNetEvent('vorp:Tip')
RegisterNetEvent('vorp:NotifyTop')
RegisterNetEvent('vorp:TipRight')
RegisterNetEvent('vorp:TipBottom')
RegisterNetEvent('vorp:ShowTopNotification')
RegisterNetEvent('vorp:ShowAdvancedRightNotification')
RegisterNetEvent('vorp:ShowBasicTopNotification')
RegisterNetEvent('vorp:ShowSimpleCenterText')
RegisterNetEvent('vorp:ShowBottomRight')
RegisterNetEvent('vorp:failmissioNotifY')
RegisterNetEvent('vorp:deadplayerNotifY')
RegisterNetEvent('vorp:updatemissioNotify')
RegisterNetEvent('vorp:warningNotify')
RegisterNetEvent('vorp:LeftRank')


AddEventHandler('vorp:NotifyLeft', function(firsttext, secondtext, dict, icon, duration, color)
    exports.tpz_core:getCoreAPI().NotifyLeft(tostring(firsttext), tostring(secondtext), tostring(dict), tostring(icon), tonumber(duration), (tostring(color) or "COLOR_WHITE"))
end)

AddEventHandler('vorp:Tip', function(text, duration)
    exports.tpz_core:getCoreAPI().NotifyTip(tostring(text), tonumber(duration))
end)

AddEventHandler('vorp:NotifyTop', function(text, location, duration)
    exports.tpz_core:getCoreAPI().NotifyTop(tostring(text), tostring(location), tonumber(duration))
end)

AddEventHandler('vorp:TipRight', function(text, duration)
    exports.tpz_core:getCoreAPI().NotifyRightTip(tostring(text), tonumber(duration))
end)

AddEventHandler('vorp:TipBottom', function(text, duration)
    exports.tpz_core:getCoreAPI().NotifyObjective(tostring(text), tonumber(duration))
end)

AddEventHandler('vorp:ShowTopNotification', function(tittle, subtitle, duration)
    exports.tpz_core:getCoreAPI().NotifySimpleTop(tostring(tittle), tostring(subtitle), tonumber(duration))
end)

AddEventHandler('vorp:ShowAdvancedRightNotification', function(text, dict, icon, text_color, duration, quality)
    exports.tpz_core:getCoreAPI().NotifyAvanced(tostring(text), tostring(dict), tostring(icon),
        tostring(text_color), tonumber(duration), quality)
end)

AddEventHandler('vorp:ShowBasicTopNotification', function(text, duration)
    exports.tpz_core:getCoreAPI().NotifyBasicTop(tostring(text), tonumber(duration))
end)

AddEventHandler('vorp:ShowSimpleCenterText', function(text, duration)
    exports.tpz_core:getCoreAPI().NotifyCenter(tostring(text), tonumber(duration))
end)

AddEventHandler('vorp:ShowBottomRight', function(text, duration)
    exports.tpz_core:getCoreAPI().NotifyBottomRight(tostring(text), tonumber(duration))
end)

AddEventHandler('vorp:failmissioNotifY', function(title, subtitle, duration)
    exports.tpz_core:getCoreAPI().NotifyFail(tostring(title), tostring(subtitle), tonumber(duration))
end)

AddEventHandler('vorp:deadplayerNotifY', function(title, audioRef, audioName, duration)
    exports.tpz_core:getCoreAPI().NotifyDead(tostring(title), tostring(audioRef), tostring(audioName), tonumber(duration))
end)

AddEventHandler('vorp:updatemissioNotify', function(utitle, umsg, duration)
    exports.tpz_core:getCoreAPI().NotifyUpdate(tostring(utitle), tostring(umsg), tonumber(duration))
end)

AddEventHandler('vorp:warningNotify', function(title, msg, audioRef, audioName, duration)
    exports.tpz_core:getCoreAPI().NotifyWarning(tostring(title), tostring(msg), tostring(audioRef), tostring(audioName),
        tonumber(duration))
end)

AddEventHandler('vorp:LeftRank', function(title, subtitle, dict, icon, duration, color)
    exports.tpz_core:getCoreAPI().NotifyLeftRank(tostring(title), tostring(subtitle), tostring(dict), tostring(icon), tonumber(duration), (tostring(color)))
end)

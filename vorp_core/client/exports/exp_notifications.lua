--============================= NOTIFICATION EXPORTS ==========================================--

exports("DisplayTip", function(text, duration)
  exports.tpz_core:getCoreAPI().NotifyTip(tostring(text), tonumber(duration))
end)

exports("DisplayLeftNotification", function(title, subTitle, dict, icon, duration, color)
  exports.tpz_core:getCoreAPI().NotifyLeft(tostring(title), tostring(subTitle), tostring(dict), tostring(icon), tonumber(duration),
    (tostring(color) or "COLOR_WHITE"))
end) 

exports("DisplayTopCenterNotification", function(text, location, duration)
  exports.tpz_core:getCoreAPI().NotifyTop(tostring(text), tostring(location), tonumber(duration))
end)

exports("DisplayTipRight", function(text, duration)
  exports.tpz_core:getCoreAPI().NotifyRightTip(tostring(text), tonumber(duration))
end)

exports("DisplayObjective", function(text, duration)
  exports.tpz_core:getCoreAPI().NotifyObjective(tostring(text), tonumber(duration))
end)

exports("ShowTopNotification", function(title, subtext, duration)
  exports.tpz_core:getCoreAPI().NotifySimpleTop(tostring(title), tostring(subtext), tonumber(duration))
end)

exports("ShowAdvancedRightNotification", function(_text, _dict, icon, text_color, duration, quality, showquality)
  exports.tpz_core:getCoreAPI().NotifyAvanced(tostring(_text), tostring(_dict), tostring(icon), tostring(text_color),
    tonumber(duration), quality, showquality)
end)

exports("ShowBasicTopNotification", function(text, duration)
  exports.tpz_core:getCoreAPI().NotifyBasicTop(tostring(text), tonumber(duration))
end)
 
exports("ShowSimpleCenterText", function(text, duration, text_color)
  exports.tpz_core:getCoreAPI().NotifyCenter(tostring(text), tonumber(duration), tostring(text_color))
end)

exports("showBottomRight", function(text, duration)
  exports.tpz_core:getCoreAPI().NotifyBottomRight(tostring(text), tonumber(duration))
end)

exports("failmissioNotifY", function(title, subTitle, duration)
  exports.tpz_core:getCoreAPI().NotifyFail(tostring(title), tostring(subTitle), tonumber(duration))
end)

exports("deadplayerNotifY", function(title, _audioRef, _audioName, duration)
  exports.tpz_core:getCoreAPI().NotifyDead(tostring(title), tostring(_audioRef), tostring(_audioName), tonumber(duration))
end)

exports("updatemissioNotify", function(utitle, umsg, duration)
  exports.tpz_core:getCoreAPI().NotifyUpdate(tostring(utitle), tostring(umsg), tonumber(duration))
end)

exports("warningNotify", function(title, msg, _audioRef, _audioName, duration)
  exports.tpz_core:getCoreAPI().NotifyWarning(tostring(title), tostring(msg), tostring(_audioRef), tostring(_audioName),
    tonumber(duration))
end)

exports("LeftRank", function(title, subTitle, dict, icon, duration, color)
  exports.tpz_core:getCoreAPI().NotifyLeftRank(tostring(title), tostring(subTitle), tostring(dict), tostring(icon), tonumber(duration),
    (tostring(color)))
end)
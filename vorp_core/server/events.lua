RegisterServerEvent('vorp:playerJobChange')
AddEventHandler("vorp:playerJobChange", function(source, newjob, oldjob)
    local _source = source
    TriggerClientEvent("tpz_core:getPlayerJob", _source, { job = newjob } )
end)
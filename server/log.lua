---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Dragonir.
--- DateTime: 04/11/2021 17:45
---
function sendToDiscord (name,message)
    local DiscordWebHook = "https://discord.com/api/webhooks/787050908911403110/rjS-zTgUfBJLlY79PSiwIRYHFk5Mj3230iKpN3yXwY5XFsZy1mwPsyIoD5xfFq6SgLhh"

    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({username = name, content = message}), { ['Content-Type'] = 'application/json' })
end
function sendToDiscordmodo (name,message)
    local DiscordWebHook = "https://discord.com/api/webhooks/853244708007444480/6iislXcbv-L0UTuuxz3EQGZ9rVS_3QfVJ4k8iz1f9KUKcCsdJWZJ9n8FSTsPz-qEXkz7"

    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({username = name, content = message}), { ['Content-Type'] = 'application/json' })
end
function sendToDiscordJob (name,message)
    local DiscordWebHook = "https://discord.com/api/webhooks/797278625405337620/AT-4OARGP-yzQjRRzciXXc1uS7erKM83r2116YcNSt4HRotKqWr47E2ngfmLgiru1S10"

    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({username = name, content = message}), { ['Content-Type'] = 'application/json' })
end
function sendToDiscordItem (name,message)
    local DiscordWebHook = "https://discord.com/api/webhooks/785887622483804161/eBYnfMfrORvSwc8U0lldGW3JrFUN7Wkq0t-h4JJCGefj_FLFqliK_0r45BIxBRRxhgHf"

    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({username = name, content = message}), { ['Content-Type'] = 'application/json' })
end

RegisterServerEvent('Drago_menuperso:staffMode')
AddEventHandler('Drago_menuperso:staffMode', function(bool)
    if bool then
        --sendToDiscordmodo('Prise de service', ("``` Le staff %s (ID : %s) est passé en modération```"):format(GetPlayerName(source), source))
    else
        --sendToDiscordmodo('Prise de service', ("``` Le staff %s (ID : %s) n'est plus en modération```"):format(GetPlayerName(source), source))
    end
end)

RegisterServerEvent('Drago_menuperso:giveAccount')
AddEventHandler('Drago_menuperso:giveAccount', function(account, amount)
    if account == 'money' then
        --sendToDiscord('Argent cash', ("``` Le joueur %s (ID : %s) s'est donnée %s$```"):format(GetPlayerName(source), source, amount))
    elseif account == 'bank' then
        --sendToDiscord('Argent banque', ("``` Le joueur %s (ID : %s) s'est donnée %s$```"):format(GetPlayerName(source), source, amount))
    elseif account == 'dirt' then
        --sendToDiscord('Argent Sale', ("``` Le joueur %s (ID : %s) s'est donnée %s$```"):format(GetPlayerName(source), source, amount))
    end
end)

RegisterServerEvent('Drago_menuperso:setJobLog')
AddEventHandler('Drago_menuperso:setJobLog', function(cat, job, grade)
    local xPlayer = ESX.GetPlayerFromId(source)
    if cat == 'job' then
        --sendToDiscordJob('SetJob', ("```%s s'est setjob %s %s```"):format(xPlayer.name, job, grade))
    elseif cat == 'job2' then
        --sendToDiscordJob('SetJob2', ("```%s s'est setjob2 %s %s```"):format(xPlayer.name, job, grade))
    elseif cat == 'org' then
        --sendToDiscordJob('SetOrg', ("```%s s'est setorg %s %s```"):format(xPlayer.name, job, grade))
    end
end)

RegisterServerEvent('Drago_menuperso:giveItem')
AddEventHandler('Drago_menuperso:giveItem', function(item, qty)
    --sendToDiscordItem("Item", ("```%s (ID : %s) s'est donnée x%s de %s```"):format(GetPlayerName(source), source, qty, item))
end)

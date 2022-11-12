


exports.cb_lf:RegisterServerCallback("testcallback_S", function(src,...) -- ...  ----> https://www.lua.org/pil/5.2.html
    print("source: ",src,"args: ",...)
    return "ok | return"
end)


RegisterCommand("testcallback_c", function(src,args)
    local data = exports.cb_belli:TriggerClientCallback(tonumber(args[1]), "testcallback_C","sono un argomento","ecc","ecc","ecc")
    print("Callback Result: ",data)
end)
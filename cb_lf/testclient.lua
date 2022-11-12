



exports.cb_lf:RegisterClientCallback("testcallback_C", function(...) -- ...  ----> https://www.lua.org/pil/5.2.html
    print("ARGS: ",...)
    return "ok | return"
end)


RegisterCommand("testcbs", function(s, args)
    local data = exports.cb:TriggerServerCallback("testcallback_S","0","1","2","3","4","5")
    print("Callback Result: ",data)
end)



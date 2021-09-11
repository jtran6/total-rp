Config = {}
Config["UseCommands"] = true --- Ability to use commands like /spawnchair1 for everyone
Config["UseTriggers"] = true -- I recommend having this on it allows for you to use the documentation below to customize this and use it anyway you would like.
Config["ClientTrigger1"] = "khaoz-chairs:Chair1"
Config["ClientTrigger2"] = "khaoz-chairs:Chair2"
Config["Chair1Command"] = "spawnchair1"
Config["Chair2Command"] = "spawnchair2"
--[[
    Khaoz Chairs Documentation
    ____________________________________
    If you would like to incorperate this into any custom script of your own choice, like usable items ect.. you can do so.
    You will just need to trigger the specified triggers you setup and make sure they are named the exact you'd like for example
    ____________________________________
    CLIENT SIDE EVENT TRIGGERS
    ____________________________________
    TriggerEvent('khaoz-chairs:Chair1')
    TriggerEvent('khaoz-chairs:Chair2')
    ____________________________________
    These are clientside triggers incase you'd like a server event to trigger them simply just do 
    ____________________________________
    SERVER SIDE EVENT TRIGGERS
    ____________________________________
    TriggerClientEvent('khaoz-chairs:Chair1', source)
    TriggerClientEvent('khaoz-chairs:Chair2', source)


Created by: ItsKhaoz
]]
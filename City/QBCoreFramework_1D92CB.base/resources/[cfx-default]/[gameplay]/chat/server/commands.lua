-- StarBlazt Chat
TriggerEvent('QB:getSharedObject', function(obj) QB = obj end)

function getIdentity(source)
    local license = GetPlayerIdentifiers(source)[1]
    local result = local result = exports.oxmysql:fetchSync('SELECT * FROM players WHERE license = ?', {license})
    --local result = exports.ghmattimysql:executeSync('SELECT * FROM players  WHERE license=@license', {['@license'] = license})
    if result[1] ~= nil then
    	local charInfo = json.decode(result[1]['charinfo'])
    	return {
    		identifier = charInfo['license'],
    		firstname = charInfo['firstname'],
    		lastname = charInfo['lastname']
    	}
    else
    	return nil
    end
end

--[[ COMMANDS ]] --

RegisterCommand('clear', function(source, args, rawCommand)
    TriggerClientEvent('chat:client:ClearChat', source)
end, false)

RegisterCommand('ooc', function(source, args, rawCommand)
    local msg = rawCommand:sub(4)
    local name = getIdentity(source)
    fal = name.firstname .. "  " .. name.lastname
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class="chat-message"><b>OOC {0}:</b> {1}</div>',
        args = {fal, msg}
    })
end, false)


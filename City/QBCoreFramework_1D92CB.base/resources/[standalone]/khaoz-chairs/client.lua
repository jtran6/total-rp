attachedProp = 0
attachedProp2 = 0

function attachAProp2(attachModelSent,boneNumberSent,x,y,z,xR,yR,zR)
	removeAttachedProp2()
	attachModel = GetHashKey(attachModelSent)
	boneNumber = boneNumberSent
	local bone = GetPedBoneIndex(PlayerPedId(), boneNumberSent)
	RequestModel(attachModel)
	while not HasModelLoaded(attachModel) do
		Citizen.Wait(100)
	end
	attachedProp2 = CreateObject(attachModel, 1.0, 1.0, 1.0, 1, 1, 0)
	AttachEntityToEntity(attachedProp2, PlayerPedId(), bone, x, y, z, xR, yR, zR, 1, 1, 0, 0, 2, 1)
	SetModelAsNoLongerNeeded(attachModel)
end

function attachAProp(attachModelSent,boneNumberSent,x,y,z,xR,yR,zR)
	removeAttachedProp()
	attachModel = GetHashKey(attachModelSent)
	boneNumber = boneNumberSent 
	local bone = GetPedBoneIndex(PlayerPedId(), boneNumberSent)
	RequestModel(attachModel)
	while not HasModelLoaded(attachModel) do
		Citizen.Wait(100)
	end
	attachedProp = CreateObject(attachModel, 1.0, 1.0, 1.0, 1, 1, 0)
	AttachEntityToEntity(attachedProp, PlayerPedId(), bone, x, y, z, xR, yR, zR, 1, 1, 0, 0, 2, 1)
	SetModelAsNoLongerNeeded(attachModel)
end

function removeAttachedProp()
	DeleteEntity(attachedProp)
	attachedProp = 0
end

function loadModel(modelName)
    RequestModel(GetHashKey(modelName))
    while not HasModelLoaded(GetHashKey(modelName)) do
        RequestModel(GetHashKey(modelName))
        Citizen.Wait(1)
    end
end
 
function removeAttachedProp2()
	DeleteEntity(attachedProp2)
	attachedProp2 = 0
end
function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(5)
    end
end

function startcommands()
if Config["UseCommands"] then
	RegisterCommand(Config["Chair1Command"], function(source)
		greenchair()
	end)
	
	RegisterCommand(Config["Chair2Command"], function(source)
		pladchair()
	end)
end
end

function startTriggers()
if Config["UseTriggers"] then
	RegisterNetEvent(Config["ClientTrigger1"])
	AddEventHandler(Config["ClientTrigger1"], function()
		greenchair()
	end)
	RegisterNetEvent(Config["ClientTrigger2"])
	AddEventHandler(Config["ClientTrigger2"], function()
		pladchair()
	end)
end
end



function greenchair()
	if not haschairalready then
		haschairalready = true
	local coords = GetEntityCoords(GetPlayerPed(-1))
	local animDict = "timetable@ron@ig_3_couch"
	local animation = "base"
--	SetEntityCoords(PlayerPedId(),coords.x,coords.y,coords.z - 0.68) -- Temporary Freezing Entity for proper placement of chair (Not Required)
--	FreezeEntityPosition(PlayerPedId(),true) -- Entity Froze (Secondary Check)
	attachAProp("prop_skid_chair_01", 0, 0, 0.0, -0.22, 3.4, 0.4, 180.0, 0.0, false, false, false, false, 2, true)
	loadAnimDict(animDict)
	local animLength = GetAnimDuration(animDict, animation)
	TaskPlayAnim(PlayerPedId(), animDict, animation, 1.0, 4.0, animLength, 1, 0, 0, 0, 0)
	else
		haschairalready = falsew
		FreezeEntityPosition(PlayerPedId(),false)
		removeAttachedProp()
		removeAttachedProp2()
		ClearPedTasks(PlayerPedId())
	end
end

function pladchair()
	if not haschairalready then
		haschairalready = true
	local coords = GetEntityCoords(GetPlayerPed(-1))
	local animDict = "timetable@ron@ig_3_couch"
	local animation = "base"
--	SetEntityCoords(PlayerPedId(),coords.x,coords.y,coords.z - 0.68) -- Temporary Freezing Entity for proper placement of chair (Not Required)
--	FreezeEntityPosition(PlayerPedId(),true) -- Entity Froze (Secondary Check)
	attachAProp("hei_prop_hei_skid_chair", 0, 0, 0.0, -0.22, 3.4, 0.4, 180.0, 0.0, false, false, false, false, 2, true)
	loadAnimDict(animDict)
	local animLength = GetAnimDuration(animDict, animation)
	TaskPlayAnim(PlayerPedId(), animDict, animation, 1.0, 4.0, animLength, 1, 0, 0, 0, 0)
	else
		haschairalready = falsew
		FreezeEntityPosition(PlayerPedId(),false)
		removeAttachedProp()
		removeAttachedProp2()
		ClearPedTasks(PlayerPedId())
	end
end

RegisterCommand('clearprop', function()
	FreezeEntityPosition(PlayerPedId(),false)
	removeAttachedProp()
	removeAttachedProp2()
end)

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() == resourceName) then
		startTriggers()
		startcommands()
    end
end)
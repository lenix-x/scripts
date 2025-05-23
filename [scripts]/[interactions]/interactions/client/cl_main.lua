Citizen.CreateThread(function()
    while not HasStreamedTextureDictLoaded("np_interaction") do
        Wait(10)
        RequestStreamedTextureDict("np_interaction", true)
    end

    while true do
        Citizen.Wait(0)
        
        for k, v in pairs(Shared.Entries) do
            SetDrawOrigin(v.coords.x, v.coords.y, v.coords.z, 0)

            local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.coords.x, v.coords.y, v.coords.z, true)

            if distance > v.distance and distance < Shared.ShowingInteractDistance then
                DrawSprite("np_interaction", "point", 0, 0, 0.015, 0.030, 0, 255, 255, 255, 200)
            end

            if distance < v.distance and not IsPedInAnyVehicle(PlayerPedId()) then
                DrawSprite("np_interaction", v.key, 0, 0, 0.018, 0.030, 0, 255, 255, 255, 255)
                if v.text then
                    DrawSprite("np_interaction", v.text, 0.044, 0, 0.06, 0.028, 0, 255, 255, 255, 255)
                end

                if IsControlJustPressed(0, 38) then
                    if v.type == "client" then
                        TriggerEvent(v.event, v.parameters)
                    elseif v.type == "server" then
                        TriggerServerEvent(v.event, v.parameters)
                    end
                end
            end
        end

    end
end)

function showInteraction(pKey, pText)
    local key

    if pKey ~= nil or pKey ~= '' then
        key = pKey
    else
        key = nil
    end

    SendNUIMessage({
        action = "show",
        key = key,
        text = pText
    })
end
exports("showInteraction", showInteraction)

function hideInteraction()
    SendNUIMessage({
        action = "hide",
    })
end
exports("hideInteraction", hideInteraction)

--[[

    - How to use exports:
    exports["yrnm-interactions"]:showInteraction('KEY', 'TEXT')

    - Also, u can make an export, without the key like this:
    exports["yrnm-interactions"]:showInteraction('', 'TEXT')

    - or

    exports["yrnm-interactions"]:showInteraction(nil, 'TEXT')

    - Hiding interaction:
    exports["yrnm-interactions"]:hideInteraction()

]]--
local plants = {}
local processingTables = {}
local dealers = {}
local restLoop = false

--- Get the closest plant to the given coords
---@param coords vector3: The coords to check from
---@return table | nil, integer: The closest plant and the distance to it
local function getClosestPlant(coords)

    local closestPlant = nil
    local closestDistance = 20

    for k, v in pairs(plants) do
        local distance = #(coords - v.coords)
        if distance < closestDistance then
            closestDistance = distance
            closestPlant = v
        end
    end

    return closestPlant, closestDistance
end

local function getClosestProcessingTable(coords)

    local closestTable = nil
    local closestDistance = 20

    for k, v in pairs(processingTables) do
        local distance = #(coords - v.coords)
        if distance < closestDistance then
            closestDistance = distance
            closestTable = v
        end
    end

    return closestTable, closestDistance
end

local function getClosestDealer(coords)

    local closestDealer = nil
    local closestDistance = 20

    for k, v in pairs(dealers) do
        local vec3 = vector3(v.position.x, v.position.y, v.position.z)
        local distance = #(coords - vec3)
        if distance < closestDistance then
            closestDistance = distance
            closestDealer = v
        end
    end

    return closestDealer, closestDistance
end

RegisterNetEvent('drugs:client:syncRestLoop', function(status)
    restLoop = status
end)

RegisterNetEvent('drugs:client:syncPlants', function(plantList)
    if Config.Debug then lib.print.info('Syncing plants', plantList) end
    plants = plantList
end)

RegisterNetEvent('drugs:client:syncTables', function(tableList)
    if Config.Debug then lib.print.info('Syncing tables', tableList) end
    processingTables = tableList
end)

if Config.Target then return end
CreateThread(function()

    plants = lib.callback.await('drugs:server:getPlants', false)
    processingTables = lib.callback.await('drugs:server:getTables', false)
    dealers = lib.callback.await('drugs:server:getDealers', false)

    while true do
        if not restLoop then

            local coords = GetEntityCoords(PlayerPedId())
            local closestPlant, plantDistance = getClosestPlant(coords)
            local closestTable, tableDistance = getClosestProcessingTable(coords)
            local closestDealer, dealerDistance = getClosestDealer(coords)

            if closestDealer and dealerDistance <= 2.0 then
                it.DrawText3D(closestDealer.position.x, closestDealer.position.y, closestDealer.position.z + 0.5, 'Press ~g~E~w~ to interact with dealer')
                if IsControlJustPressed(0, 38) then
                    TriggerEvent('drugs:client:showDealerActionMenu', closestDealer.id)
                end
            else
                if plantDistance > tableDistance then
                    if closestTable and tableDistance <= 2.0 then
                        it.DrawText3D(closestTable.coords.x, closestTable.coords.y, closestTable.coords.z + 0.5, 'Press ~g~E~w~ to interact with table')
                        if IsControlJustPressed(0, 38) then
                            TriggerEvent('drugs:client:showRecipesMenu', {tableId = closestTable.id})
                        end
                    end
                elseif closestPlant and plantDistance <= 2.0 then
                    it.DrawText3D(closestPlant.coords.x, closestPlant.coords.y, closestPlant.coords.z + 0.5, 'Press ~g~E~w~ to interact with plant')
                    if IsControlJustPressed(0, 38) then
                        TriggerEvent('drugs:client:showPlantMenu', closestPlant)
                    end
                end
            end
        end
        Wait(0)
    end
end)

CreateThread(function()
    while true do
        Wait(10000)  -- Wait 10 Seconds for refresh Press E and refresh info

        local newPlants = lib.callback.await('drugs:server:getPlants', false)
        if newPlants then
            plants = newPlants
        end

        local newProcessingTables = lib.callback.await('drugs:server:getTables', false)
        if newProcessingTables then
            processingTables = newProcessingTables 
        end
            
    end
end)

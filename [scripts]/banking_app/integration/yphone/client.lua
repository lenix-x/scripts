if not GetResourceState("yphone"):find('start') then return end
lib.checkDependency('yphone', '0.99.5', true)

local function AddApp()
    local dataLoaded = exports.yphone:GetDataLoaded()
    while not dataLoaded do
        Wait(1000)
        dataLoaded = exports.yphone:GetDataLoaded()
    end

    local added, errorMessage = exports.yphone:AddCustomApp({
        key = "banking",
        name = "Banking",
        defaultApp = true,
        icon = {
            yos = ("https://cfx-nui-%s/web/dist/bank_app.png"):format(GetCurrentResourceName()),
            humanoid = ("https://cfx-nui-%s/web/dist/bank_app.png"):format(GetCurrentResourceName()),
        },
        ui = ("https://cfx-nui-%s/web/dist/index.html"):format(GetCurrentResourceName()),
    })

    if not added then
        lib.print.debug('Could not add app:', errorMessage)
        return
    end

    lib.print.debug('Banking app added.')
end

CreateThread(function()
    while GetResourceState("yphone") ~= "started" do
        Wait(500)
    end

    while GetResourceState("banking") ~= "started" do
        Wait(500)
    end

    AddApp()
end)

AddEventHandler("banking:client:notification", function(text, type)
    TriggerServerEvent("banking:server:notification", text, type)
end)

function SendData(data)
    exports.yphone:SendAppMessage('banking', data)
end

local visible = false
local Core = exports['cs_lib']:GetLib()

CreateThread(function()
    Citizen.Wait(2500)
    while true do
        Citizen.Wait(0)
        if IsPedSwimmingUnderWater(PlayerPedId()) then
            --SetPedMaxTimeUnderwater(PlayerPedId(), 10.0)
            if not visible then
                visible = true
                SendNUIMessage({
                    action = "show"
                })
            end
        else
            if visible then
                visible = false
                SendNUIMessage({
                    action = "hide"
                })
            end
            Citizen.Wait(500)
        end

        if visible then
            local oxygen = math.ceil(GetPlayerUnderwaterTimeRemaining(PlayerId()) * 10)
            if oxygen >= 0 then
                SendNUIMessage({
                    action = "update", 
                    percentage = oxygen
                })
            end
        end
    end
end)

Core.VersionCheck("https://raw.githubusercontent.com/CScripts-Network/cs_o2bar/main/version", 'cs_o2bar')
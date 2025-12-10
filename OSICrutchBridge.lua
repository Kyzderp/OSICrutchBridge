OSICrutchBridge = {
    name = "OdySupportIcons-CrutchAlerts Bridge"
    OSI = {}
}
local OCB = OSICrutchBridge

if (OSI) then
    d("You already have OdySupportIcons! ... or another OSI spoofer. No bridge allowed.")
    return
end


---------------------------------------------------------------------
-- On load
local function OnAddOnLoaded(_, addonName)
    if addonName == OCB.name then
        EVENT_MANAGER:UnregisterForEvent(Crutch.name, EVENT_ADD_ON_LOADED)
        Initialize()
    end
end
 
EVENT_MANAGER:RegisterForEvent(Crutch.name, EVENT_ADD_ON_LOADED, OnAddOnLoaded)


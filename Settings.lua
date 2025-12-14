local OCB = OSICrutchBridge

local function CreateSettingsMenu()
    local LAM = LibAddonMenu2
    local panelData = {
        type = "panel",
        name = "|c08BD1DOSI-Crutch Bridge|r",
        author = "Kyzeragon",
        version = OCB.version,
        registerForRefresh = true,
        registerForDefaults = true,
    }

    local optionsData = {
        {
            type = "slider",
            name = "Spoofed icon size",
            tooltip = "Some trial-specific addons set icons based on OSI's icon size, e.g. 2x the size. This setting affects only those icons, or the default size if it is not specified.",
            min = 32,
            max = 256,
            step = 4,
            default = 128,
            width = "full",
            getFunc = function() return OCB.savedOptions.size end,
            setFunc = function(value)
                OCB.savedOptions.size = value
            end,
        },
    }
end
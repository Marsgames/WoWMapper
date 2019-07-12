local L = LibStub("AceLocale-3.0"):GetLocale("WoWMapper")

local function AddonLoaded(_, _, name)
    if name ~= "WoWMapper" then
        do
            return
        end
    end
end

WoWMapper:RegisterEvent("ADDON_LOADED", AddonLoaded, ...)

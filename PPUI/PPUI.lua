local f = CreateFrame("Frame", nil, UIParent)
f:RegisterEvent("VARIABLES_LOADED")
f:RegisterEvent("UI_SCALE_CHANGED")
local scale = 768/string.match(({GetScreenResolutions()})[GetCurrentResolution()], "%d+x(%d+)")
print("Setting UI scale to", scale)
f:SetScript("OnEvent", function(self, event)
	UIParent:SetScale(scale)
end)

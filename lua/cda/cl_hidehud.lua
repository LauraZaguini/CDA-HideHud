local hide = {
	["CHudHealth"] = true,
	["CHudBattery"] = true,
}
hook.Add("HUDShouldDraw", "MyAddonHUDPaint", function(name)
	if hide[name] and IsValid(LocalPlayer()) and LocalPlayer():Health() >= 100 then
		return false
	end
end)
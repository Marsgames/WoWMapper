local slashCmd = {
	help = function()
		WoWMapper:SlashDisplayHelp()
	end
}

WoWMapper:RegisterChatCommand("WoWMapper", "MySlashCommand")
-- WoWMapper:RegisterChatCommand("wm", "MySlashCommand") -- doesn't work. Maybe another addon use this

function WoWMapper:MySlashCommand(input)
	for cmd, action in pairs(slashCmd) do
		if input:lower() == cmd:lower() then
			action()
			do
				return
			end
		end
	end

	if input == "" then
		-- 	InterfaceOptionsFrame:Show()
		-- 	InterfaceOptionsFrame_OpenToCategory(GearHelper.cwFrame)
		-- 	InterfaceOptionsFrame_OpenToCategory(GearHelper.optionsFrame)
		slashCmd["help"]()
	else
		slashCmd["help"]()
	end
end

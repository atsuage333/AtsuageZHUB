local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion')))()
local Window = OrionLib:MakeWindow({Name = "顔から逃げるゲーム", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local HomeTab = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

HomeTab:AddToggle({
	Name = "Anti AFK",
	Default = false,
	Callback = function(Value)
		local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
	end    
})

HomeTab:AddButton({
	Name = "Destroy Gui",
	Callback = function()
	      OrionLib:Destroy()
  	end    
})

HomeTab:AddButton({
	Name = "Game's ID [ "..game.PlaceId.." ]",
	Callback = function(Value)
    local gameId = game.PlaceId
		setclipboard(gameId)
	end    
})

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

MainTab:AddButton({
	Name = "level2",
	Callback = function(Value)
    game:GetService("TeleportService"):Teleport(6364881161)
	end    
})

MainTab:AddButton({
	Name = "level3",
	Callback = function(Value)
    game:GetService("TeleportService"):Teleport(6364881161)
	end    
})

MainTab:AddButton({
	Name = "level4",
	Callback = function(Value)
    game:GetService("TeleportService"):Teleport(6391540653)
	end    
})

MainTab:AddButton({
	Name = "level5",
	Callback = function(Value)
    game:GetService("TeleportService"):Teleport(6391642302)
	end    
})

MainTab:AddButton({
	Name = "level6",
	Callback = function(Value)
    game:GetService("TeleportService"):Teleport(6463986562)
	end    
})

MainTab:AddButton({
	Name = "level7",
	Callback = function(Value)
    game:GetService("TeleportService"):Teleport(6481131111)
	end    
})

MainTab:AddButton({
	Name = "level8",
	Callback = function(Value)
    game:GetService("TeleportService"):Teleport(6507405695)
	end    
})

MainTab:AddButton({
	Name = "level9",
	Callback = function(Value)
    game:GetService("TeleportService"):Teleport(6815760584)
	end    
})

MainTab:AddButton({
	Name = "level10",
	Callback = function(Value)
    game:GetService("TeleportService"):Teleport(8709253565)
	end    
})

MainTab:AddButton({
	Name = "level11",
	Callback = function(Value)
    game:GetService("TeleportService"):Teleport(15720304364)
	end    
})

MainTab:AddButton({
	Name = "level12",
	Callback = function(Value)
    game:GetService("TeleportService"):Teleport(16328151955)
	end    
})

MainTab:AddButton({
	Name = "Final Stage",
	Callback = function(Value)
    game:GetService("TeleportService"):Teleport(6413499953)
	end    
})

OrionLib:Init()

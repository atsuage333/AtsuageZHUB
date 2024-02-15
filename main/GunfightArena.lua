local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion')))()
local Window = OrionLib:MakeWindow({Name = "AtsuageZHUB", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local HomeTab = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

HomeTab:AddButton({
	Name = "infinite yield",
	Callback = function(Value)
		loadstring(game:HttpGet(("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source")))()
	end    
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

local CombatTab = Window:MakeTab({
	Name = "Combat",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

HomeTab:AddToggle({
	Name = "Hitbox",
	Default = false,
	Callback = function(Value)
		_G.HeadSize = 40

		_G.Disabled = true
		
		 
		
		game:GetService('RunService').RenderStepped:connect(function()
		
		if _G.Disabled then
		
		for i,v in next, game:GetService('Players'):GetPlayers() do
		
		if v.Name ~= game:GetService('Players').LocalPlayer.Name then
		
		pcall(function()
		
		v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
		
		v.Character.HumanoidRootPart.Transparency = 0.7
		
		v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
		
		v.Character.HumanoidRootPart.Material = "Neon"
		
		v.Character.HumanoidRootPart.CanCollide = false
		
		end)
		
		end
		
		end
		
		end
		
		end	
	end    
})

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

PlayerTab:AddSlider({
	Name = "Walkspeed",
	Min = 20,
	Max = 1000,
	Default = 20,
	Color = Color3.fromRGB(140, 185, 255),
	Increment = 1,
	ValueName = "WS",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
Walkspeed = Value
	end    
})

PlayerTab:AddToggle({
	Name = "Keep Walkspeed",
	Default = false,
	Callback = function(Value)
KeepWalkspeed = Value
            while KeepWalkspeed do
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= Walkspeed then
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Walkspeed
                end
task.wait()
            end
	end    
})

PlayerTab:AddSlider({
	Name = "Jumppower",
	Min = 50,
	Max = 1000,
	Default = 50,
	Color = Color3.fromRGB(255, 185, 140),
	Increment = 1,
	ValueName = "JP",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
Jumppower = Value
	end    
})

PlayerTab:AddToggle({
	Name = "Keep Jumppower",
	Default = false,
	Callback = function(Value)
KeepJumppower = Value
            while KeepJumppower do
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= Jumppower then
                    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jumppower
                end
task.wait()
            end
	end    
})

OrionLib:Init()

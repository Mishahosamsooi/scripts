-- By Mishah#4444 from FE Building
-- https://discord.gg/Gf3jJym

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local btn1 = Instance.new("TextButton")
local UIPadding = Instance.new("UIPadding")
local btn2 = Instance.new("TextButton")
local UIPadding_2 = Instance.new("UIPadding")
local btn3 = Instance.new("TextButton")
local UIPadding_3 = Instance.new("UIPadding")
local TextLabel = Instance.new("TextLabel")
local UIPadding_4 = Instance.new("UIPadding")
local btn4 = Instance.new("TextButton")
local UIPadding_5 = Instance.new("UIPadding")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 5, 0.5, 0)
Frame.Size = UDim2.new(0, 150, 0, 200)

btn1.Name = "btn1"
btn1.Parent = Frame
btn1.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
btn1.BorderSizePixel = 0
btn1.Size = UDim2.new(1, 0, 0.200000003, 0)
btn1.Font = Enum.Font.SourceSansSemibold
btn1.Text = "Kill all"
btn1.TextColor3 = Color3.fromRGB(255, 255, 255)
btn1.TextSize = 18.000
btn1.TextXAlignment = Enum.TextXAlignment.Left

UIPadding.Parent = btn1
UIPadding.PaddingLeft = UDim.new(0, 15)

btn2.Name = "btn2"
btn2.Parent = Frame
btn2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
btn2.BorderSizePixel = 0
btn2.Position = UDim2.new(0, 0, 0.200000003, 0)
btn2.Size = UDim2.new(1, 0, 0.200000003, 0)
btn2.Font = Enum.Font.SourceSansSemibold
btn2.Text = "Kill others"
btn2.TextColor3 = Color3.fromRGB(255, 255, 255)
btn2.TextSize = 18.000
btn2.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_2.Parent = btn2
UIPadding_2.PaddingLeft = UDim.new(0, 15)

btn3.Name = "btn3"
btn3.Parent = Frame
btn3.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
btn3.BorderSizePixel = 0
btn3.Position = UDim2.new(0, 0, 0.400000006, 0)
btn3.Size = UDim2.new(1, 0, 0.200000003, 0)
btn3.Font = Enum.Font.SourceSansSemibold
btn3.Text = "Loop kill others"
btn3.TextColor3 = Color3.fromRGB(255, 255, 255)
btn3.TextSize = 18.000
btn3.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_3.Parent = btn3
UIPadding_3.PaddingLeft = UDim.new(0, 15)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 1, -40)
TextLabel.Size = UDim2.new(1, 0, 0.200000003, 0)
TextLabel.Font = Enum.Font.SourceSansItalic
TextLabel.Text = "(Equip handgun first)"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 18.000
TextLabel.TextWrapped = true

UIPadding_4.Parent = TextLabel
UIPadding_4.PaddingBottom = UDim.new(0, 5)
UIPadding_4.PaddingLeft = UDim.new(0, 5)
UIPadding_4.PaddingRight = UDim.new(0, 5)
UIPadding_4.PaddingTop = UDim.new(0, 5)

btn4.Name = "btn4"
btn4.Parent = Frame
btn4.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
btn4.BorderSizePixel = 0
btn4.Position = UDim2.new(0, 0, 0.600000024, 0)
btn4.Size = UDim2.new(1, 0, 0.200000003, 0)
btn4.Font = Enum.Font.SourceSansSemibold
btn4.Text = "Dmg others (10)"
btn4.TextColor3 = Color3.fromRGB(255, 255, 255)
btn4.TextSize = 18.000
btn4.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_5.Parent = btn4
UIPadding_5.PaddingLeft = UDim.new(0, 15)

-- Scripts:

local function LQNXMJ_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local plr = game:GetService("Players").LocalPlayer
	function killall(dmg)
		for i, v in pairs(game.Players:GetChildren()) do
			local args = {
				[1] = v.Character.Humanoid,
				[2] = v.Character.Torso,
				[3] = dmg,
				[4] = Vector3.new(-0.59524911642075, -0.070020511746407, -0.80048477649689),
				[5] = 0,
				[6] = 0,
				[7] = false
			}
			game:GetService("Players").LocalPlayer.Character.Handgun.GunScript_Server.InflictTarget:FireServer(unpack(args))
		end
	end
	function killothers(dmg)
		for i, v in pairs(game.Players:GetChildren()) do
			if v ~= game.Players.LocalPlayer then
				local args = {
					[1] = v.Character.Humanoid,
					[2] = v.Character.Torso,
					[3] = dmg,
					[4] = Vector3.new(-0.59524911642075, -0.070020511746407, -0.80048477649689),
					[5] = 0,
					[6] = 0,
					[7] = false
				}
				game:GetService("Players").LocalPlayer.Character.Handgun.GunScript_Server.InflictTarget:FireServer(unpack(args))
			end
		end
	end
	
	script.Parent.btn1.MouseButton1Click:Connect(function()
		killall(100)
	end)
	script.Parent.btn2.MouseButton1Click:Connect(function()
		killothers(100)
	end)
	script.Parent.btn3.MouseButton1Click:Connect(function()
		while wait(5) do
			killothers(100)
		end
	end)
	script.Parent.btn4.MouseButton1Click:Connect(function()
		killothers(10)
	end)
end
coroutine.wrap(LQNXMJ_fake_script)()

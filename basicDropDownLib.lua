local cansee = true
local ScreenGui = Instance.new("ScreenGui")
local DaTopbar = Instance.new("Frame")
local SoScrollWorks = Instance.new("Frame")
local nyoooooom = Instance.new("ScrollingFrame")
local Freak = Instance.new("UIListLayout")
local TITLE = Instance.new("TextLabel")
local goupdown = Instance.new("ImageButton")

ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "fortanitedeyapubagjee"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

DaTopbar.Name = "DaTopbar"
DaTopbar.Parent = ScreenGui
DaTopbar.Active = true
DaTopbar.BackgroundColor3 = Color3.fromRGB(100, 225, 35)
DaTopbar.BorderSizePixel = 0
DaTopbar.Position = UDim2.new(0.129220009, 0, 0.247264758, 0)
DaTopbar.Size = UDim2.new(0, 210, 0, 30)

SoScrollWorks.Name = "SoScrollWorks"
SoScrollWorks.Parent = DaTopbar
SoScrollWorks.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
SoScrollWorks.BorderSizePixel = 0
SoScrollWorks.Position = UDim2.new(0, 0, 1, 0)
SoScrollWorks.Size = UDim2.new(0, 210, 0, 253)
SoScrollWorks.ClipsDescendants = true

nyoooooom.Name = "nyoooooom"
nyoooooom.Parent = SoScrollWorks
nyoooooom.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
nyoooooom.BorderSizePixel = 0
nyoooooom.Position = UDim2.new(0, 0, 0, 7)
nyoooooom.Selectable = false
nyoooooom.Size = UDim2.new(0, 210, 0, 245)
nyoooooom.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
nyoooooom.ScrollBarThickness = 2

Freak.Name = "Freak"
Freak.Parent = nyoooooom
Freak.HorizontalAlignment = Enum.HorizontalAlignment.Center
Freak.SortOrder = Enum.SortOrder.LayoutOrder
Freak.Padding = UDim.new(0.00800000038, 0)


TITLE.Name = "TITLE"
TITLE.Active = false
TITLE.Parent = DaTopbar
TITLE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TITLE.BackgroundTransparency = 1.000
TITLE.BorderSizePixel = 0
TITLE.Position = UDim2.new(0, 0, 2.54313164e-07, 0)
TITLE.Size = UDim2.new(0, 150, 0, 30)
TITLE.Font = Enum.Font.SourceSans
TITLE.Text = " "
TITLE.TextColor3 = Color3.fromRGB(255, 255, 255)
TITLE.TextScaled = true
TITLE.TextSize = 14.000
TITLE.TextWrapped = true

goupdown.Name = "goupdown"
goupdown.Parent = DaTopbar
goupdown.Active = false
goupdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
goupdown.BackgroundTransparency = 1.000
goupdown.Position = UDim2.new(0.850000024, 0, 0.333332986, 0)
goupdown.Selectable = false
goupdown.Size = UDim2.new(0, 14, 0, 9)
goupdown.Image = "rbxassetid://10711007885"
goupdown.ScaleType = Enum.ScaleType.Fit

local lib = {}
function lib:BasicSettings(T,R,G,B)
    TITLE.Text = T
    DaTopbar.BackgroundColor3 = Color3.fromRGB(R,G,B)
end

function lib:MakeButton(text,call)
	local Butin = Instance.new("TextButton")
	local cornr = Instance.new("UICorner")
	Butin.Name = "Butin"
	Butin.Parent = nyoooooom
	Butin.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Butin.Position = UDim2.new(0.0476190485, 0, 0, 0)
	Butin.Size = UDim2.new(0, 200, 0, 50)
	Butin.Font = Enum.Font.SourceSansLight
	Butin.Text = text
	Butin.TextColor3 = Color3.fromRGB(255, 255, 255)
	Butin.TextScaled = true
	Butin.TextSize = 14.000
	Butin.TextWrapped = true
	Butin.MouseButton1Click:Connect(function()
		pcall(call)
	end)
	cornr.CornerRadius = UDim.new(0, 2)
	cornr.Name = "cornr"
	cornr.Parent = Butin
end
function lib:MakeToggle(text,cellbeck)
	local buttonhaha = Instance.new("TextLabel")
	local odp = Instance.new("UICorner")
	local youllseethistext = Instance.new("TextLabel")
	local des = Instance.new("UICorner")
	local somebodycallthedocta = Instance.new("TextButton")
	local ohyeacorner = Instance.new("UICorner")
	local off = Instance.new("UIGradient")
	local on = Instance.new("UIGradient")
	buttonhaha.Name = "buttonhaha"
	buttonhaha.Parent = nyoooooom
	buttonhaha.Active = true
	buttonhaha.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	buttonhaha.Position = UDim2.new(0.0476190485, 0, 0, 0)
	buttonhaha.Selectable = true
	buttonhaha.Size = UDim2.new(0, 200, 0, 50)
	buttonhaha.ZIndex = 2
	buttonhaha.Font = Enum.Font.SourceSansLight
	buttonhaha.Text = " "
	buttonhaha.TextColor3 = Color3.fromRGB(255, 255, 255)
	buttonhaha.TextSize = 40.000
	buttonhaha.TextWrapped = true
	buttonhaha.TextXAlignment = Enum.TextXAlignment.Left

	odp.CornerRadius = UDim.new(0, 2)
	odp.Name = "odp"
	odp.Parent = buttonhaha

	youllseethistext.Name = "youllseethistext"
	youllseethistext.Parent = buttonhaha
	youllseethistext.Active = true
	youllseethistext.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	youllseethistext.Selectable = true
	youllseethistext.Size = UDim2.new(0, 167, 0, 50)
	youllseethistext.Font = Enum.Font.SourceSansLight
	youllseethistext.Text = text
	youllseethistext.TextColor3 = Color3.fromRGB(255, 255, 255)
	youllseethistext.TextScaled = true
	youllseethistext.TextSize = 40.000
	youllseethistext.TextWrapped = true
	youllseethistext.TextXAlignment = Enum.TextXAlignment.Left

	des.CornerRadius = UDim.new(0, 2)
	des.Name = "des"
	des.Parent = youllseethistext

	somebodycallthedocta.Name = "somebodycallthedocta"
	somebodycallthedocta.Parent = youllseethistext
	somebodycallthedocta.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	somebodycallthedocta.BorderSizePixel = 0
	somebodycallthedocta.Position = UDim2.new(0.999000013, 0, 0.25, 0)
	somebodycallthedocta.Size = UDim2.new(0, 25, 0, 25)
	somebodycallthedocta.ZIndex = 4
	somebodycallthedocta.Font = Enum.Font.SourceSans
	somebodycallthedocta.Text = ""
	somebodycallthedocta.TextColor3 = Color3.fromRGB(0, 0, 0)
	somebodycallthedocta.TextSize = 14.000

	ohyeacorner.CornerRadius = UDim.new(0, 2)
	ohyeacorner.Name = "ohyeacorner"
	ohyeacorner.Parent = somebodycallthedocta
	off.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(110, 10, 10))}
	off.Rotation = 90
	off.Name = "off"
	off.Parent = somebodycallthedocta
	off.Enabled = not default
	on.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(153, 255, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(29, 110, 6))}
	on.Rotation = 90
	on.Name = "on"
	on.Parent = somebodycallthedocta
	
	local enabled = false
	function Fire()
	  enabled = not enabled
	  if enabled then
	      on.Enabled = true
	      off.Enabled = false
	  end
      if not enabled then
          on.Enabled = false
          off.Enabled = true
      end
      pcall(cellbeck,enabled)
	end
	somebodycallthedocta.MouseButton1Click:Connect(Fire)
end

local function QLPEVC_fake_script() -- DaTopbar.LocalScript 
	local script = Instance.new('LocalScript', DaTopbar)

	local UIS = game:GetService("UserInputService")
	local todrag = script.Parent
	local dragtoggle = nil
	local dragspeed = 0
	local dragstart = nil
	local startpos = nil
	local function updateinp(input)
		local dlt = input.Position - dragstart
		local pos = UDim2.new(startpos.X.Scale, startpos.X.Offset + dlt.X, startpos.Y.Scale, startpos.Y.Offset + dlt.Y)
		game:GetService("TweenService"):Create(
		todrag,
		TweenInfo.new(dragspeed),
		{
			Position = pos
		}
		):Play()
	end
	todrag.InputBegan:Connect(
		function(input2)
			if input2.UserInputType == Enum.UserInputType.MouseButton1 then
				dragtoggle = true
				dragstart = input2.Position
				startpos = todrag.Position
				input2.Changed:Connect(
					function()
						if input2.UserInputState == Enum.UserInputState.End then
							dragtoggle = false
							local userInputService = game:GetService("UserInputService")
							userInputService.MouseIconEnabled = true
							game.Players.LocalPlayer:GetMouse().Icon = ""
						end
					end
				)
			end
		end
	)
	UIS.InputChanged:Connect(
		function(input3)
			if input3.UserInputType == Enum.UserInputType.MouseMovement then
				if dragtoggle then
					updateinp(input3)
				end
			end
		end
	)
	
end
coroutine.wrap(QLPEVC_fake_script)()
DaTopbar.MouseEnter:Connect(function()
	game.Players.LocalPlayer:GetMouse().Icon = "rbxassetid://10710857703"		
end)
DaTopbar.MouseLeave:Connect(function()
	game.Players.LocalPlayer:GetMouse().Icon = ""		
end)
local ts = game:GetService("TweenService")
local objec = goupdown
local infomat = TweenInfo.new(.5,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut)
local TWE = ts:Create(objec,infomat,{Rotation = 180})
local NOTON = ts:Create(objec,infomat,{Rotation = 0})
goupdown.MouseButton1Down:Connect(function()
	if cansee == true then
		TWE:Play()
		SoScrollWorks:TweenSize(UDim2.new(0,210,0,0),Enum.EasingDirection.InOut,Enum.EasingStyle.Sine,.7,true)
		cansee = false
	elseif cansee == false then
		NOTON:Play()
		SoScrollWorks:TweenSize(UDim2.new(0,210,0,253),Enum.EasingDirection.InOut,Enum.EasingStyle.Sine,.7,true)
		cansee = true
	end
end)
return lib;

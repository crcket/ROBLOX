local ScreenGui = Instance.new("ScreenGui")
local mainBypass = Instance.new("Frame")
local topBar = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextLabel")

ScreenGui.Parent = gethui()
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainBypass.Name = "mainBypass"
mainBypass.Parent = ScreenGui
mainBypass.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainBypass.BackgroundTransparency = 1.000
mainBypass.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainBypass.BorderSizePixel = 0
mainBypass.Position = UDim2.new(0, 352, 0, 76)
mainBypass.Size = UDim2.new(0, 235, 0, 200)

topBar.Name = "topBar"
topBar.Parent = mainBypass
topBar.Active = true
topBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
topBar.BackgroundTransparency = 0.100
topBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
topBar.BorderSizePixel = 0
topBar.Size = UDim2.new(0, 235, 0, 25)
topBar.ZIndex = 5

ScrollingFrame.Parent = mainBypass
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ScrollingFrame.BackgroundTransparency = 0.100
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0, 25)
ScrollingFrame.Size = UDim2.new(0, 235, 0, 175)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.ScrollBarThickness = 5

TextLabel.Parent = ScrollingFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.RichText = true
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000
TextLabel.TextStrokeTransparency = 0.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextYAlignment = Enum.TextYAlignment.Top
local function makeDraggable(frame)
	local dragging = false
	local dragInput
	local startPos
	local startMousePos
	local userInputService = game:GetService("UserInputService")
	local function onDragStart(input)
		dragging = true
		startPos = frame.Position
		startMousePos = input.Position
	end
	local function onDragMove(input)
		if dragging then
			local delta = input.Position - startMousePos
			frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end
	local function onDragEnd()
		dragging = false
	end
	frame.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			onDragStart(input)
		end
	end)
	userInputService.InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			onDragMove(input)
		end
	end)
	frame.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			onDragEnd()
		end
	end)
end
makeDraggable(mainBypass)
local console = {}
function console.Send(Message, messageType)
	local color = "#FFFFFF"
	if messageType == "ITEM_PICKUP" then 
		color = "#B3FFB3"
	elseif messageType == "ITEM_TIMEOUT" then 
		color = "#FFFFB3" 
	end
	local formattedMsg = `<font color="{color}">> {Message}</font>`
	if TextLabel.Text == "" then
		TextLabel.Text = formattedMsg
	else
		TextLabel.Text = TextLabel.Text.."\n"..formattedMsg
	end
	task.wait()
	ScrollingFrame.CanvasSize = UDim2.fromOffset(0, TextLabel.TextBounds.Y)
end

return console

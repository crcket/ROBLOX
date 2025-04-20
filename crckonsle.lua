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
	ScrollingFrame.CanvasSize = UDim2.fromOffset(0,TextLabel.AbsoluteSize.Y)
end

return console

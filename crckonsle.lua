local screenGui = Instance.new("ScreenGui")
local mainFrame = Instance.new("Frame")
local scrollingFrameHolder = Instance.new("Frame")
local scrollingFrame = Instance.new("ScrollingFrame")
local textLabel = Instance.new("TextLabel")
local textSizeConstraint = Instance.new("UITextSizeConstraint")
local pattern = Instance.new("ImageLabel")
local runCodePadding = Instance.new("TextBox")
local codeImage = Instance.new("ImageLabel")
local uiAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local textSizeConstraint1 = Instance.new("UITextSizeConstraint")
local runCodeLine = Instance.new("TextBox")
local textSizeConstraint2 = Instance.new("UITextSizeConstraint")
local topBar = Instance.new("Frame")
local trashCan = Instance.new("ImageButton")
local uiAspectRatioConstraint1 = Instance.new("UIAspectRatioConstraint")
local scrollDownBtn = Instance.new("ImageButton")
local uiAspectRatioConstraint2 = Instance.new("UIAspectRatioConstraint")
local localScript = Instance.new("LocalScript")
local console = {}
screenGui.Parent = game:GetService("CoreGui")

mainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainFrame.Active = true
mainFrame.Interactable = true
mainFrame.BackgroundTransparency = 1
mainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.BorderSizePixel = 0
mainFrame.Position = UDim2.new(0.193173826, 0, 0.146166131, 0)
mainFrame.Size = UDim2.new(0.425404668, 0, 0.577476025, 0)
mainFrame.ZIndex = 2
mainFrame.Name = "MainThingyIdkBypass"
mainFrame.Parent = screenGui

scrollingFrameHolder.BackgroundColor3 = Color3.fromRGB(38.0000015348196, 38.0000015348196, 38.0000015348196)
scrollingFrameHolder.BackgroundTransparency = 0.20000000298023224
scrollingFrameHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
scrollingFrameHolder.BorderSizePixel = 0
scrollingFrameHolder.Position = UDim2.new(0, 0, 0.112033196, 0)
scrollingFrameHolder.Size = UDim2.new(1, 0, 0.829875529, 0)
scrollingFrameHolder.Name = "ScrollingFrameHolder"
scrollingFrameHolder.Parent = mainFrame

scrollingFrame.ScrollBarThickness = 2
scrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrollingFrame.BackgroundTransparency = 1
scrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
scrollingFrame.BorderSizePixel = 0
scrollingFrame.Size = UDim2.new(1, 0, 1, 0)
scrollingFrame.Parent = scrollingFrameHolder

textLabel.Font = Enum.Font.SourceSans
textLabel.RichText = true
textLabel.Text = ""
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextScaled = true
textLabel.TextSize = 14
textLabel.TextStrokeTransparency = 0
textLabel.TextWrapped = true
textLabel.TextXAlignment = Enum.TextXAlignment.Left
textLabel.TextYAlignment = Enum.TextYAlignment.Top
textLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textLabel.BackgroundTransparency = 1
textLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
textLabel.BorderSizePixel = 0
textLabel.Size = UDim2.new(1, 0, 9e9, 0)
textLabel.Parent = scrollingFrame

textSizeConstraint.MaxTextSize = 14
textSizeConstraint.Parent = textLabel

pattern.Image = "rbxassetid://2151741365"
pattern.ImageTransparency = 0.6000000238418579
pattern.ScaleType = Enum.ScaleType.Tile
pattern.TileSize = UDim2.new(0, 250, 0, 250)
pattern.BackgroundTransparency = 1
pattern.Interactable = false
pattern.Position = UDim2.new(0, 0, -0.125, 0)
pattern.Size = UDim2.new(1, 0, 0.125, 0)
pattern.ZIndex = -1
pattern.Name = "Pattern"
pattern.Parent = scrollingFrameHolder

runCodePadding.ClearTextOnFocus = false
runCodePadding.CursorPosition = -1
runCodePadding.Font = Enum.Font.SourceSans
runCodePadding.Text = ""
runCodePadding.TextColor3 = Color3.fromRGB(0, 0, 0)
runCodePadding.TextEditable = false
runCodePadding.TextScaled = true
runCodePadding.TextSize = 14
runCodePadding.TextWrapped = true
runCodePadding.TextXAlignment = Enum.TextXAlignment.Left
runCodePadding.TextYAlignment = Enum.TextYAlignment.Top
runCodePadding.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
runCodePadding.BackgroundTransparency = 0.20000000298023224
runCodePadding.BorderColor3 = Color3.fromRGB(0, 0, 0)
runCodePadding.BorderSizePixel = 0
runCodePadding.Position = UDim2.new(0, 0, 1, 0)
runCodePadding.Size = UDim2.new(1, 0, 0.075000003, 0)
runCodePadding.Name = "runCodePadding"
runCodePadding.Parent = scrollingFrameHolder

codeImage.Image = "rbxassetid://8445470984"
codeImage.ImageRectOffset = Vector2.new(204, 304)
codeImage.ImageRectSize = Vector2.new(96, 96)
codeImage.BackgroundTransparency = 1
codeImage.Size = UDim2.new(0.0413533822, 0, 1, 0)
codeImage.Name = "Code"
codeImage.Parent = runCodePadding

uiAspectRatioConstraint.Parent = codeImage

textSizeConstraint1.MaxTextSize = 14
textSizeConstraint1.Parent = runCodePadding

runCodeLine.ClearTextOnFocus = false
runCodeLine.CursorPosition = -1
runCodeLine.Font = Enum.Font.SourceSans
runCodeLine.PlaceholderText = "Run your code here"
runCodeLine.Text = ""
runCodeLine.TextColor3 = Color3.fromRGB(255, 255, 255)
runCodeLine.TextScaled = true
runCodeLine.TextSize = 14
runCodeLine.TextStrokeTransparency = 0
runCodeLine.TextWrapped = true
runCodeLine.TextXAlignment = Enum.TextXAlignment.Left
runCodeLine.TextYAlignment = Enum.TextYAlignment.Center
runCodeLine.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
runCodeLine.BackgroundTransparency = 1
runCodeLine.BorderColor3 = Color3.fromRGB(0, 0, 0)
runCodeLine.BorderSizePixel = 0
runCodeLine.Position = UDim2.new(0.0488721803, 0, 1, 0)
runCodeLine.Size = UDim2.new(0.947368562, 0, 0.075000003, 0)
runCodeLine.Name = "runCodeLine"
runCodeLine.Parent = scrollingFrameHolder

textSizeConstraint2.MaxTextSize = 14
textSizeConstraint2.Parent = runCodeLine

topBar.BackgroundColor3 = Color3.fromRGB(10.000000353902578, 10.000000353902578, 10.000000353902578)
topBar.BackgroundTransparency = 0.10000000149011612
topBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
topBar.BorderSizePixel = 0
topBar.Interactable = true
topBar.Position = UDim2.new(4.43569448e-08, 0, -0.129999965, 0)
topBar.Size = UDim2.new(0.99999994, 0, 0.129999936, 0)
topBar.Name = "TopBar"
topBar.Parent = scrollingFrameHolder

trashCan.HoverImage = "http://www.roblox.com/asset/?id=87749257790195"
trashCan.Image = "http://www.roblox.com/asset/?id=84936537586958"
trashCan.Active = true
trashCan.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
trashCan.BackgroundTransparency = 1
trashCan.Selectable = true
trashCan.Size = UDim2.new(0.0651398078, 0, 1, 0)
trashCan.Name = "Trashcan"
trashCan.Parent = topBar

uiAspectRatioConstraint1.Parent = trashCan

scrollDownBtn.Image = "http://www.roblox.com/asset/?id=135925897177724"
scrollDownBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
scrollDownBtn.BackgroundTransparency = 1
scrollDownBtn.Position = UDim2.new(0.0683967993, 0, 0, 0)
scrollDownBtn.Selectable = true
scrollDownBtn.Active = true
scrollDownBtn.Size = UDim2.new(0.0651398078, 0, 1, 0)
scrollDownBtn.Name = "ScrollDownBTN"
scrollDownBtn.Parent = topBar

uiAspectRatioConstraint2.Parent = scrollDownBtn

local logService = game:GetService("LogService")
local UserInputService = game:GetService("UserInputService")

local codeInputTextBox = runCodeLine
local consoleOutputLabel = textLabel

makeDraggable(mainFrame)

codeInputTextBox.FocusLost:Connect(function(enterPressed:boolean)
	if enterPressed and codeInputTextBox.Text ~= "" then
        local codeToRun = codeInputTextBox.Text
		codeInputTextBox.Text = ""
		local success, result = pcall(function() return loadstring(codeToRun)() end)
        if not success then warn("Error:", result) elseif result ~= nil then print("Result:", result) end
	end
end)

console.send = function(msg, messageType)
	local shouldAutoScroll = isNearBottom() 
	local color = "#FFFFFF"
	if messageType == "ITEM_TIMEOUT" then color = "#A2C2FF"
	elseif messageType == "ITEM_PICKUP" then color = "#B3FFB3"
	local formattedMsg = `<font color="{color}">> {msg}</font>`

	if consoleOutputLabel.Text == "" then
		consoleOutputLabel.Text = formattedMsg
	else
		consoleOutputLabel.Text = consoleOutputLabel.Text .. "\n" .. formattedMsg
	end

	task.wait()
	local newCanvasY = consoleOutputLabel.TextBounds.Y
	local padding = 5 
	scrollingFrame.CanvasSize = UDim2.fromOffset(0, newCanvasY + padding)
end

return console

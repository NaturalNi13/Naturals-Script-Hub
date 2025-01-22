-- Important
local player = game:GetService("Players").LocalPlayer

-- Prevent duplicate hubs
if player:WaitForChild("PlayerGui"):FindFirstChild("Nat's Hub") then
    player:WaitForChild("PlayerGui"):FindFirstChild("Nat's Hub"):Destroy()
end

-- Make the gui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "Nat's Hub"
screenGui.Parent = player:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false

-- Make the toggle button
local toggleButton = Instance.new("TextButton")
toggleButton.Parent = screenGui
toggleButton.Size = UDim2.new(0,50,0,50)
toggleButton.BackgroundTransparency = 1
toggleButton.BorderSizePixel = 0
toggleButton.TextColor3 = Color3.fromRGB(255,255,255)
toggleButton.TextStrokeTransparency = 0
toggleButton.Text = "X"
toggleButton.TextScaled = true
toggleButton.Position = UDim2.new(0.95,0,0.3,0)

-- Main frame
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Parent = screenGui
mainFrame.Size = UDim2.new(0.5, 0, 0.7, 0)
mainFrame.Position = UDim2.new(0.25, 0, 0.15, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
mainFrame.BorderSizePixel = 6
mainFrame.BorderColor3 = Color3.fromRGB(60,60,60)
mainFrame.Active = true

-- Tab List Setup
local tabList = Instance.new("ScrollingFrame")
tabList.Parent = mainFrame
tabList.Size = UDim2.new(0.25,0,0.9,0)
tabList.Position = UDim2.new(0,0,0.1,0)
tabList.BackgroundTransparency = 1
tabList.Visible = false
tabList.ScrollingDirection = "Y"
tabList.ScrollBarThickness = 0
local tabLayout = Instance.new("UIListLayout")
tabLayout.Parent = tabList
tabLayout.FillDirection = "Vertical"

-- Mods list setup
local toolsList = Instance.new("ScrollingFrame")
toolsList.Parent = mainFrame
toolsList.Size = UDim2.new(0.75,0,0.9,0)
toolsList.Position = UDim2.new(0.25,0,0.1,0)
toolsList.BackgroundTransparency = 1
toolsList.Visible = false
toolsList.ScrollingDirection = "Y"
toolsList.ScrollBarThickness = 0

local toolsLayout = Instance.new("UIListLayout")
toolsLayout.Parent = toolsList
toolsLayout.FillDirection = "Vertical"

-- Separate mods and tabs list
local seperator = Instance.new("Frame")
seperator.Parent = mainFrame
seperator.Size = UDim2.new(0,0,0.9,0)
seperator.BorderColor3 = Color3.fromRGB(60,60,60)
seperator.BorderSizePixel = 3
seperator.Position = UDim2.new(0.25,0,0.1,0)
seperator.Visible = false
seperator.ZIndex = 9

-- Draggable functionality
local dragArea = Instance.new("TextLabel")
dragArea.Parent = mainFrame
dragArea.Size = UDim2.new(1,0,0.1,0)
dragArea.BorderSizePixel = 0
dragArea.Text = "Nat's Hub"
dragArea.TextScaled = true
dragArea.TextXAlignment = "Left"
dragArea.BackgroundColor3 = Color3.fromRGB(60,60,60)
dragArea.TextStrokeTransparency = 0
dragArea.TextColor3 = Color3.fromRGB(255,255,255)

-- Key stuff
local keyLabel = Instance.new("TextLabel")
keyLabel.BackgroundColor3 = Color3.fromRGB(40,40,40)
keyLabel.BorderColor3 = Color3.fromRGB(60,60,60)
keyLabel.BorderSizePixel = 0
keyLabel.Position = UDim2.new(0,0,0.3,0)
keyLabel.Size = UDim2.new(1,0,0.1,0)
keyLabel.Text = "VERIFYING USER..."
keyLabel.TextColor3 = Color3.fromRGB(255,255,255)
keyLabel.TextStrokeTransparency = 0
keyLabel.Parent = mainFrame


local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    mainFrame.Position = UDim2.new(
        startPos.X.Scale,
        startPos.X.Offset + delta.X,
        startPos.Y.Scale,
        startPos.Y.Offset + delta.Y
    )
end

mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

mainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local verified = loadstring(game:HttpGet("https://raw.githubusercontent.com/NaturalNi13/Nats-Hub/refs/heads/main/verify.lua"))()



if verified then
    print("USER VERIFIED")
    keyLabel.Text = "WELCOME " .. player.Name .. "! LOADING HUB..."
    task.wait(1)
    tabList.Visible = true
    seperator.Visible = true
    toolsList.Visible = true
    keyLabel.Visible = false
    
    -- Setup Tabs
    local tabs = {
	    Universal = {"Universal", "rbxassetid://N/A", " 1", {"Dex V6", "loadstring(game:HttpGet('https://raw.githubusercontent.com/NaturalNi13/Essential-Scripts/refs/heads/main/InfDexMobile.lua'))()"}},
	    TD13 = {"Sonic.exe TD 1.3", "rbxassetid://N/A", "2",  {"Custom Abilities", "loadstring(game:HttpGet('https://raw.githubusercontent.com/NaturalNi13/Custom-Abilities/refs/heads/main/customabilitie.lua'))()"}, {" ESP", "loadstring(game:HttpGet('https://raw.githubusercontent.com/NaturalNi13/Nats-Hub/refs/heads/main/td1.3esp.lua'))()"}},
    Community = {"Community Scripts", "rbxassetid://N/A", "0"}
}
    local allTabs = {}
    for i, tab in pairs(tabs) do
        local tabScreen = toolsList:Clone()
        tabScreen.Parent = mainFrame
        tabScreen.Visible = false
        tabScreen.Name = tab[1]
        table.insert(allTabs, tabScreen)
        local tabButton = Instance.new("TextButton")
        tabButton.Parent = tabList
        tabButton.BorderSizePixel = 0
        tabButton.BackgroundTransparency = 1
        tabButton.Size = UDim2.new(1,0,0,40)
        tabButton.Text = tab[1]
        tabButton.TextScaled = true
        tabButton.TextColor3 = Color3.fromRGB(255,255,255)
        
        for i = 1, tonumber(tab[3]) do
            local toolButton = Instance.new("TextButton")
            toolButton.Size = UDim2.new(1,0,0, 30)
            toolButton.TextScaled = true
            toolButton.TextColor3 = Color3.fromRGB(255,255,255)
            toolButton.TextStrokeTransparency = 0
            toolButton.BackgroundColor3 = Color3.fromRGB(40,40,40)
            toolButton.BorderColor3 = Color3.fromRGB(60,60,60)
            toolButton.BorderSizePixel = 3
            toolButton.Parent = tabScreen
            
            toolButton.Text = tab[i + 3][1]
            toolButton.Activated:Connect(function()
    local func, err = loadstring(tab[i + 3][2])
    if func then
        func() 
    else
        warn("Error in loadstring: " .. tostring(err)) 
    end
end)
        end
        
        tabButton.Activated:Connect(function()
            for i, tabRef in ipairs(allTabs) do
                if tabRef.Name == tabButton.Text then
                    tabRef.Visible = true
                else
                    tabRef.Visible = false
                end
            end
        end)
    end
    allTabs[1].Visible = true
    toggleButton.Activated:Connect(function()
        mainFrame.Visible = not mainFrame.Visible
    end)
else
    warn("User isn't white listed!")
    keyLabel.Text = "YOU AREN'T WHITELISTED! JOIN MY DISCORD FOR FURTHER HELP!"
    task.wait(5)
    screenGui:Destroy()
end

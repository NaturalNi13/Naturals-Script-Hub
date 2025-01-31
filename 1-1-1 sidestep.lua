local tool = Instance.new("Tool") -- Create the tool
tool.Name = "1-1-1 Sidestand" -- Name it
tool.RequiresHandle = false -- No need for a physical handle
tool.Parent = game.Players.LocalPlayer:FindFirstChild("Backpack") -- Add it to the player's inventory

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

local function getNearestPlayer()
    local closestPlayer = nil
    local shortestDistance = math.huge
    local rootPart = Character:FindFirstChild("HumanoidRootPart")
    
    if not rootPart then return nil end
    
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            local targetHead = player.Character:FindFirstChild("Head")
            if targetHead then
                local distance = (rootPart.Position - targetHead.Position).Magnitude
                if distance < shortestDistance then
                    shortestDistance = distance
                    closestPlayer = player.Character
                end
            end
        end
    end
    return closestPlayer, shortestDistance
end

local function teleportSidewaysOnFace(targetCharacter)
    local targetHead = targetCharacter:FindFirstChild("Head")
    local targetRoot = targetCharacter:FindFirstChild("HumanoidRootPart")
    local rootPart = Character:FindFirstChild("HumanoidRootPart")
    
    if not targetHead or not targetRoot or not rootPart then return end
    
    local forwardDirection = targetRoot.CFrame.LookVector -- Get the direction they are facing
    local rightDirection = targetRoot.CFrame.RightVector -- Get the right-side direction

    local offset = forwardDirection * 2.6 -- Move in front of their face
    local lift = targetHead.CFrame.UpVector * 0.1 -- Move up to align with their head

    -- Calculate the correct rotation so you are sideways with feet on their forehead
    local sidewaysRotation = CFrame.fromMatrix(
        Vector3.zero,
        -rightDirection, -- Make sure you're rotated sideways based on their right direction
        forwardDirection -- Ensure your "feet" are facing their forehead
    )

    local duration = 5
    local elapsedTime = 0

    local connection
    connection = RunService.Heartbeat:Connect(function(dt)
        -- Update position dynamically in case they move
        local newTargetPosition = targetHead.Position + lift + offset
        rootPart.CFrame = CFrame.new(newTargetPosition) * sidewaysRotation

        elapsedTime = elapsedTime + dt

        -- Push them backward
        targetRoot.CFrame = targetRoot.CFrame * CFrame.new(0, 0, 0.1)

        if elapsedTime >= duration then
            LocalPlayer.Character.Humanoid.Health = 0
            connection:Disconnect()
        end
    end)
end

tool.Equipped:Connect(function()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if not character then return end

    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local rootPart = character:FindFirstChild("HumanoidRootPart") -- Get the main body part

    if humanoid and rootPart then
        -- Get the player's facing direction
        local forwardDirection = rootPart.CFrame.LookVector * Vector3.new(1, 0, 1) -- Ignore Y movement
        forwardDirection = forwardDirection.Unit -- Normalize the vector
        local targetPosition = rootPart.Position + (forwardDirection * 150) -- Move 150 studs forward

        local moving = true

        local connection
        connection = RunService.Heartbeat:Connect(function()
            if not moving then
                connection:Disconnect()
                return
            end

            -- Get the nearest player
            local target, distance = getNearestPlayer()

            -- If within 5 studs, execute the sidestand and stop moving
            if target and distance <= 5 then
                moving = false
                teleportSidewaysOnFace(target)
                humanoid:Move(Vector3.new(0, 0, 0)) -- Stop movement
                connection:Disconnect()
            end
        end)

        -- Move the player
        humanoid:MoveTo(targetPosition)

        -- Stop moving after reaching the destination
        humanoid.MoveToFinished:Connect(function()
            moving = false
            connection:Disconnect()
        end)

        -- Unequip the tool
        task.wait()
        tool.Parent = player.Backpack
    end
end)

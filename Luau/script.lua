-- This is a comment in Luau
--[[
    This is a multi line comment
    Read import.lua for the base lua code!
]]

local Players = game:GetService("Players") -- This is how you fetch a Roblox Service in Luau. "Players" is the service to manage player instances

local function onHumanoidDied(player)
    print(player.Name .. "'s humanoid died!")
end

local function onCharacterAdded(player, character)
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.Died:Connect(function()
        onHumanoidDied(player)
    end)
end

local function onPlayerAdded(player)
    print("Player Joined: " .. player.Name)
    player.CharacterAdded:Connect(function(char)
        onCharacterAdded(player, char)
    end)
end

Players.PlayerAdded:Connect(onPlayerAdded)

print("Luau demo script loaded (server)!")

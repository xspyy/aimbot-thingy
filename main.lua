-- xspy > nano, dont get rune/vision
-- nano is a retard xspy is smarter :P
-- xspy on top, https://discord.gg/zgGJJCqfwx

-- Near (Raven B4) was here :3

local part = "Head"
local activator = false
local AimbotMouseDown = false
local player = nil
local lowest
local LocalPlayer = game.Players.LocalPlayer
local UIS = game.UserInputService

UIS.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Q then
        activator = not activator
    end
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        AimbotMouseDown = true
    end
end)
UIS.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        AimbotMouseDown = false
    end
end)
local function whereclosetplayer() --done a function since it looks better + it can be used for other modules with this
    lowest = math.huge
    for i, v in pairs(game.Players:GetChildren()) do
        local mag = (LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
        if mag < lowest and v ~= LocalPlayer then
            lowest = mag
            player = v
        end
    end
end
while wait() do -- repeat would be much cleaner since it can be stopped but alr
    if AimbotMouseDown and activator then
        player = whereclosetplayer()
        if player ~= nil then
            workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, player.Character[part].Position)
        end
    end
end

-- xspy > nano, dont get rune/vision
-- nano is a retard xspy is smarter :P

-- xspy on top, https://discord.gg/zgGJJCqfwx
local key = Enum.KeyCode.Q -- litteraly not used
part = "Head"
activator = false
locker = false
game.UserInputService.InputBegan:Connect(
    function(input)
        if input.KeyCode == Enum.KeyCode.Q then
            if activator then
                activator = false
            else
                activator = true
            end
        end
    end
)
game.Players.LocalPlayer:GetMouse().Button2Down:Connect(
    function()
        locker = true
    end
)
game.Players.LocalPlayer:GetMouse().Button2Up:Connect(
    function()
        locker = false
    end
)
while wait() do
    if locker and activator then
        lowest = math.huge
        for i, v in pairs(game.Players:GetChildren()) do
            if
                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                    v.Character.HumanoidRootPart.Position).magnitude < lowest and
                    v ~= game.Players.LocalPlayer
             then
                lowest =
                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                    v.Character.HumanoidRootPart.Position).magnitude
                player = v
            end
        end
        workspace.CurrentCamera.CFrame =
            CFrame.new(workspace.CurrentCamera.CFrame.Position, player.Character[part].Position)
    end
end
-- xspy on top, https://discord.gg/zgGJJCqfwx

-- xspy > nano, dont get rune/vision
-- nano is a retard xspy is smarter :P

local times = 0

local thing = game:GetService("RunService").RenderStepped:Connect(function()
    game.Players.LocalPlayer.Character.Humanoid:SetAttribute("BaseSpeed", 100)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
end)

game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
    times += 1
    if times = 2 then
        thing:Disconnect()
    end
end)

game.Players.LocalPlayer.Character.Humanoid.Destroying:Connect(function()
    times += 1
    if times = 2 then
        thing:Disconnect()
    end
end)

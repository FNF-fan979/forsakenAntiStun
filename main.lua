local thing = game:GetService("RunService").RenderStepped:Connect(function()
    game.Players.LocalPlayer.Character.Humanoid:SetAttribute("BaseSpeed", 100)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
end)

game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
    thing:Disconnect()
end)

game.Players.LocalPlayer.Character.Humanoid.Destroying:Connect(function()
    thing:Disconnect()
end)

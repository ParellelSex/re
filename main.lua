local plr  = game:GetService('Players').LocalPlayer
plr.Chatted:Connect(function(msg)
    if msg == '.re' then
        local char = plr.Character
        local http = game:GetService("HttpService")
        local sc = [[
            game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()
            repeat wait() until game.Players.LocalPlayer
            repeat wait() until game.Players.LocalPlayer.Character
            repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            .CFrame = CFrame.new(%s)
        ]]
        scs = string.format(sc,tostring(plr.Character['HumanoidRootPart'].CFrame))
        writefile('sc.lua',scs)
        syn.queue_on_teleport(scs)
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end)

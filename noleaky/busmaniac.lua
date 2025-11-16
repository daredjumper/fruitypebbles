-- dont leak
-- made by bobby (dareddd_ on discord) aka me
RunAdonisCommand(":notify me Bus Maniac by bobby | :notify me Z to shoot bus | :notify me 'endbus' to exit")
RunAdonisCommand(":animation me 33796059 true 100 0.095|:setanim me idle 0|:setanim me idlefidget 0|:setanim me walk 0")
local user = localplr
local char = user.Character
local hum = char:WaitForChild("Humanoid")
local hrp = char:WaitForChild("HumanoidRootPart")

hum.WalkSpeed = 60
hum.DisplayName = "BUS MANIAC"

local music = Instance.new("Sound", hrp, {
    SoundId = "rbxassetid://94558192667320",
    Volume = 4,
    Playing = true,
    PlaybackSpeed = 0.85,
    Looped = true
})

local aura = Instance.new("Part", workspace, {
    Anchored = true,
    CFrame = CFrame.new(char.Torso.Position.X, 20.125, char.Torso.Position.Y) * CFrame.Angles(0,0,math.rad(-90)),
    Material = Enum.Material.DiamondPlate,
    CanCollide = false,
    Size = Vector3.new(0.023, 5,5),
    Massless = true,
    Shape = Enum.PartType.Cylinder,
    Name = "aura",
    Color = Color3.fromRGB(255,255,0)
})
Instance.new("Weld", aura, {Part0 = aura, Part1 = hrp, C0 = CFrame.new(2.95,0,0) * CFrame.Angles(0,0,math.rad(-90))})
aura.Anchored = false
Tween.Create(aura, TweenInfo.new(4, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1, true), {Size = Vector3.new(0.023, 20,20)}).Play()
Tween.Create(aura, TweenInfo.new(4, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1, true), {Color = Color3.fromRGB(255,128,0)}).Play()

var busZ = BindingService.BindPress(Enum.KeyCode.Z, function()
    task.spawn(function()
        local mouse = localplr:GetMouse().Hit
        local target = localplr:GetMouse().Target
        print(target)
        local bus = Instance.new("Part", workspace, {
            CFrame = mouse * CFrame.new(0,7,200),
            Anchored = true,
        })
        Instance.new("SpecialMesh", bus, {
            MeshId = "rbxassetid://5286661576",
            Scale = Vector3.new(2, 2, 2),
            TextureId = "rbxassetid://5286662075"
        })
        Instance.new("Sound", bus, {
            SoundId = "rbxassetid://15213603088"
            Volume = 3,
            Playing = true
        })
        Tween.Create(bus, TweenInfo.new(1.5), {CFrame = bus.CFrame * CFrame.new(0,0,-400)}).Play()
        task.wait(0.3)
        pcall(function()
            if target then
                if target.Parent:IsA("Accessory") then
                    if target.Parent.Parent:FindFirstChild("Humanoid") then
                        target.Parent.Parent:WaitForChild("Humanoid").Health = 0
                    end
                else
                    if target.Parent:FindFirstChild("Humanoid") then
                        target.Parent:WaitForChild("Humanoid").Health = 0
                    end
                end
            end
        end)
        task.wait(1.35)
        bus:Destroy()
    end)
end, 0.1)

var busChat = localplr.Chatted:Connect(function(msg)
    if msg == "endbus" then
        busZ.Unbind()
        aura:Destroy()
        busChat:Disconnect()
        user:LoadCharacter()
    end
end)

-- dont leak
-- made by FeatureTheCreature (goobersandz on discord)
local sound = Instance.new("Sound", LocalPlayer.Character)
sound.SoundId = "rbxassetid://139565146102238"
sound.Volume = 1
sound.Looped = true
sound.TimePosition = 147
sound:Play()

local sound = Instance.new("Sound", LocalPlayer.Character)
sound.SoundId = "rbxassetid://111022323196285"
sound.Volume = 2
sound.Looped = false
sound:Play()

local keybind

keybind = BindingService.BindPress(Enum.KeyCode.Z, function()
    local character = LocalPlayer.Character
    local root = character:FindFirstChild("HumanoidRootPart")

    if root then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.Died:Connect(function()
                if keybind then
                    keybind:Unbind()
                end
            end)
        end

        local mouse = LocalPlayer:GetMouse()

        local offsetX = math.random(-5, 5)
        local offsetY = math.random(1, 5)
        local offsetZ = math.random(-5, 5)

        local gun = Instance.new("Part", Workspace, {
            Size = Vector3.new(1, 1, 1),
            Position = root.Position + Vector3.new(offsetX, offsetY, offsetZ),
            Anchored = true,
            Color = Color3.new(0, 0, 0)
        })

        local mesh = Instance.new("SpecialMesh", gun, {
            MeshId = "rbxassetid://4372594"
        })

        local targetPos = mouse.Hit.Position
        local lookCF = CFrame.new(gun.Position, targetPos)

        if Tween and Tween.Create then
            local aimTween = Tween.Create(gun, TweenInfo.new(0.45, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                CFrame = lookCF
            })
            aimTween.Play()
            task.wait(0.45)
        else
            gun.CFrame = lookCF
        end

        targetPos = mouse.Hit.Position
        local start = gun.Position + Vector3.new(0, 0.2, 0) + gun.CFrame.LookVector * 1
        local direction = targetPos - start
        local distance = direction.Magnitude

        local sound = Instance.new("Sound", gun, {
            SoundId = "rbxassetid://138084889",
            Volume = 1
        })
        sound:Play()

        local sphere = Instance.new("Part", Workspace, {
            Shape = "Ball",
            Size = Vector3.new(1, 1, 1),
            Position = gun.Position,
            Anchored = true,
            CanCollide = false,
            Color = Color3.new(1, 1, 0),
            Material = "Neon",
            Transparency = 0.5
        })

        local flashTween = Tween.Create(sphere, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = Vector3.new(10, 10, 10),
            Transparency = 1
        })
        flashTween.Play()

        task.spawn(function()
            task.wait(0.6)
            sphere:Destroy()
        end)

        local laserSound = Instance.new("Sound", gun, {
            SoundId = "rbxassetid://801217802",
            Volume = 1
        })
        laserSound:Play()

        local laser = Instance.new("Part", Workspace, {
            Anchored = true,
            CanCollide = false,
            Material = "Neon",
            Color = Color3.new(1, 1, 0),
            Transparency = 0,
            Size = Vector3.new(0.3, 0.3, 0.1),
            CFrame = CFrame.new(start, targetPos) * CFrame.new(0, 0, -0.05)
        })

        laser.Touched:Connect(function(hit)
            local hum = hit.Parent:FindFirstChild("Humanoid")
            if hum then
                hum.Health = hum.Health - 20
            end
        end)

        local hitSquare = Instance.new("Part", Workspace, {
            Anchored = true,
            CanCollide = false,
            Material = "Neon",
            Color = laser.Color,
            Transparency = 0,
            Size = Vector3.new(1, 1, 1),
            CFrame = CFrame.new(targetPos)
        })

        local randomX = math.random(-360, 360)
        local randomY = math.random(-360, 360)
        local randomZ = math.random(-360, 360)

        local spinTween = Tween.Create(hitSquare, TweenInfo.new(0.6, Enum.EasingStyle.Linear), {
            Orientation = Vector3.new(randomX, randomY, randomZ)
        })

        local hitTween = Tween.Create(hitSquare, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = Vector3.new(5, 5, 5),
            Transparency = 1
        })

        spinTween.Play()
        hitTween.Play()

        task.spawn(function()
            task.wait(0.6)
            hitSquare:Destroy()
        end)

        local grow = Tween.Create(laser, TweenInfo.new(0.15), {
            Size = Vector3.new(0.3, 0.3, distance),
            CFrame = CFrame.new(start, targetPos) * CFrame.new(0, 0, -distance / 2)
        })

        local fade = Tween.Create(laser, TweenInfo.new(0.4), {
            Transparency = 1
        })

        grow.Play()

        task.spawn(function()
            task.wait(0.15)
            fade.Play()
            task.wait(0.4)
            laser:Destroy()
        end)

        gun.Anchored = false

        task.spawn(function()
            task.wait(4)
            local gunFade = Tween.Create(gun, TweenInfo.new(1), {
                Transparency = 1
            })
            gunFade.Play()
            task.wait(1)
            gun:Destroy()
        end)
    end
end)

RunAdonisCommand(":anim me 105302687256180")

local char = MyPlayer.Character
local torso = char:FindFirstChild("Torso")
local humanoid = char:FindFirstChild("Humanoid")

if torso ~= nil and humanoid ~= nil then
    local left = torso:FindFirstChild("Left Shoulder")
    local right = torso:FindFirstChild("Right Shoulder")

    if left ~= nil and right ~= nil then
        local info = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
        local defaultLeft = left.C0
        local defaultRight = right.C0

        local crossedLeft = CFrame.new(-1, 0.6, -0.3) * CFrame.Angles(math.rad(-5), 3, math.rad(-65))
        local crossedRight = CFrame.new(1, 0.6, -0.3) * CFrame.Angles(math.rad(-5), 3, math.rad(65))

        local walking = false
        local tweening = false

        local function playTween(joint, target)
            local tween = Tween.Create(joint, info, { C0 = target })
            tween.Play()
        end

        local function startWalking()
            if tweening then return end
            walking = true
            tweening = true

            task.spawn(function()
                while walking and humanoid.Health > 0 do
                    playTween(left, defaultLeft * CFrame.Angles(0, 0, math.rad(40)))
                    playTween(right, defaultRight * CFrame.Angles(0, 0, math.rad(40)))
                    task.wait(0.5)
                    if not walking then break end

                    playTween(left, defaultLeft * CFrame.Angles(0, 0, math.rad(-40)))
                    playTween(right, defaultRight * CFrame.Angles(0, 0, math.rad(-40)))
                    task.wait(0.5)
                end

                playTween(left, crossedLeft)
                playTween(right, crossedRight)
                tweening = false
            end)
        end

        humanoid.Running:Connect(function(speed)
            if speed > 1 then
                if not walking then
                    startWalking()
                end
            else
                walking = false
            end
        end)

        playTween(left, crossedLeft)
        playTween(right, crossedRight)
    end
end

local char = MyPlayer.Character
local torso = char:FindFirstChild("Torso")
local humanoid = char:FindFirstChild("Humanoid")

if torso ~= nil and humanoid ~= nil then
    local right = torso:FindFirstChild("Right Hip")
    local left = torso:FindFirstChild("Left Hip")

    if right ~= nil and left ~= nil then
        local info = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
        local defaultRight = right.C0
        local defaultLeft = left.C0
        local walking = false
        local tweening = false

        local function playTween(joint, targetC0)
            local tween = Tween.Create(joint, info, { C0 = targetC0 })
            tween.Play()
        end

        local function startWalking()
            if tweening then return end
            walking = true
            tweening = true

            task.spawn(function()
                while walking and humanoid.Health > 0 do
                    playTween(right, defaultRight * CFrame.Angles(0, 0, math.rad(-40)))
                    playTween(left, defaultLeft * CFrame.Angles(0, 0, math.rad(-40)))
                    task.wait(0.5)
                    if not walking then break end

                    playTween(right, defaultRight * CFrame.Angles(0, 0, math.rad(40)))
                    playTween(left, defaultLeft * CFrame.Angles(0, 0, math.rad(40)))
                    task.wait(0.5)
                end
                playTween(right, defaultRight)
                playTween(left, defaultLeft)
                tweening = false
            end)
        end

        humanoid.Running:Connect(function(speed)
            if speed > 0 then
                if not walking then
                    startWalking()
                end
            else
                walking = false
            end
        end)
    end
end

local binding = nil

local function spawnTurret()
    local char = LocalPlayer.Character
    if not char then return end

    local root = char:FindFirstChild("HumanoidRootPart")
    if not root then return end

    local angle = math.random() * 2 * math.pi
    local radius = math.random(1, 10)
    local height = math.random(5, 10)

    local offsetX = math.cos(angle) * radius
    local offsetZ = math.sin(angle) * radius

    local spawnPos = Vector3.new(
        math.add(root.Position.X, offsetX),
        math.add(root.Position.Y, height),
        math.add(root.Position.Z, offsetZ)
    )

    local p = Instance.new("Part", Workspace, {
        Size = Vector3.new(1, 1, 1),
        Anchored = true,
        Position = spawnPos,
        Color = Color3.new(1, 0, 0)
    })

    Instance.new("SpecialMesh", p, {
        MeshId = "http://www.roblox.com/asset/?id=3824749",
        TextureId = "http://www.roblox.com/asset/?id=159740858",
        Scale = Vector3.new(1.6, 1.4, 1.6),
        Offset = Vector3.new(0, -0.5, 2.3)
    })

    local sound = Instance.new("Sound", p, {
        SoundId = "http://www.roblox.com/asset/?id=127129150663217",
        Volume = 1
    })
    sound:Play()

    local effect = Instance.new("Part", Workspace, {
        Shape = Enum.PartType.Ball,
        Size = Vector3.new(1, 1, 1),
        Anchored = true,
        Position = spawnPos,
        Material = Enum.Material.Neon,
        Color = Color3.new(1, 1, 0),
        Transparency = 0
    })

    task.spawn(function()
        for i = 1, 10 do
            effect.Size = Vector3.new(i, i, i)
            effect.Transparency = i / 10
            task.wait(0.05)
        end
        effect:Destroy()
    end)

    local mouse = LocalPlayer:GetMouse()
    task.spawn(function()
        local t = 0
        while t < 0.5 do
            local targetPos = mouse.Hit.Position
            local from = p.Position
            p.CFrame = CFrame.new(from, targetPos)

            local direction = Vector3.new(
                math.subtract(targetPos.X, from.X),
                math.subtract(targetPos.Y, from.Y),
                math.subtract(targetPos.Z, from.Z)
            )
            local distance = math.sqrt(math.add(math.add(math.pow(direction.X, 2), math.pow(direction.Y, 2)), math.pow(direction.Z, 2)))

            local beam = Instance.new("Part", Workspace, {
                Anchored = true,
                CanCollide = false,
                Size = Vector3.new(0.2, 0.2, 0.2),
                Material = Enum.Material.Neon,
                Color = Color3.new(1, 1, 0),
                Transparency = 0,
                CFrame = CFrame.new(from, targetPos) * CFrame.new(0, 0, -0.1)
            })

            local connection
            connection = beam.Touched:Connect(function(hit)
                local hum = hit.Parent and hit.Parent:FindFirstChild("Humanoid")
                if hum then
                    hum:TakeDamage(25)
                    connection:Disconnect()
                end
            end)

            task.spawn(function()
                local steps = 5
                for i = 1, steps do
                    local scaleZ = distance * (i / steps)
                    beam.Size = Vector3.new(0.2, 0.2, scaleZ)
                    beam.CFrame = CFrame.new(from, targetPos) * CFrame.new(0, 0, -scaleZ / 2)
                    task.wait(0.02)
                end
            end)

            local beamsound = Instance.new("Sound", beam, {
                SoundId = "http://www.roblox.com/asset/?id=2476570846",
                Volume = 1
            })
            beamsound:Play()

            task.spawn(function()
                for i = 1, 10 do
                    beam.Transparency = i / 10
                    task.wait(0.03)
                end
                beam:Destroy()
            end)

            local square = Instance.new("Part", Workspace, {
                Size = Vector3.new(1, 1, 1),
                Anchored = true,
                CanCollide = false,
                Position = targetPos,
                Material = Enum.Material.Neon,
                Color = Color3.new(1, 1, 0),
                Transparency = 0
            })

            square.Orientation = Vector3.new(
                math.random(-180, 180),
                math.random(-180, 180),
                math.random(-180, 180)
            )

            task.spawn(function()
                for i = 1, 10 do
                    local scale = math.add(1, i * 0.3)
                    square.Size = Vector3.new(scale, scale, scale)
                    square.Transparency = i / 10
                    square.Orientation = Vector3.new(
                        math.add(square.Orientation.X, math.random(-25, 25)),
                        math.add(square.Orientation.Y, math.random(-25, 25)),
                        math.add(square.Orientation.Z, math.random(-25, 25))
                    )
                    task.wait(0.03)
                end
                square:Destroy()
            end)
            task.wait(0.1)
            t = math.add(t, 0.1)
        end
        p.Anchored = false
        task.spawn(function()
            task.wait(4)
            for i = 1, 10 do
                p.Transparency = i / 10
                task.wait(0.1)
            end
            p:Destroy()
        end)
    end)
end

binding = BindingService.BindPress(Enum.KeyCode.X, spawnTurret)

local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")
if hum then
    hum.Died:Connect(function()
        if binding then
            binding:Unbind()
        end
    end)
end

local character = LocalPlayer.Character
local torso = character:FindFirstChild("Torso")
if not torso then return end

local soundIds = table.new(
    "80536636486386",
    "132286486716951",
    "102865601694284",
    "125493911693344",
    "8105751144",
    "70446689892860",
    "92354295944985",
    "86599499033096"
)

local bind = BindingService.BindPress(Enum.KeyCode.V, function()
    local chosenId = soundIds[math.random(1, table.len(soundIds))]
    local sound = Instance.new("Sound", torso, {
        SoundId = "rbxassetid://"..chosenId,
        Volume = 10
    })
    sound:Play()
end)

character.Humanoid.Died:Connect(function()
    bind.Unbind()
end)

-- Bind C to run your script and unbind on death
local keybind = BindingService.BindPress(Enum.KeyCode.C, function()
    local myChar = LocalPlayer.Character
    if myChar == nil then return end

    local hrp = myChar:FindFirstChild("HumanoidRootPart")
    if hrp == nil then return end

    local offsetX = math.random(-10, 10)
    local offsetZ = math.random(-10, 10)
    if math.abs(offsetX) < 5 then
        offsetX = offsetX > 0 and 5 or -5
    end
    if math.abs(offsetZ) < 5 then
        offsetZ = offsetZ > 0 and -5 or -5
    end

    local height = math.random(5, 10)
    local spawnPos = hrp.Position + Vector3.new(offsetX, height, offsetZ)

    local p = Instance.new("Part", Workspace, {
        Size = Vector3.new(1, 1, 1),
        Position = spawnPos,
        Anchored = true,
        Color = Color3.new(0.137, 0.204, 0.137),
        CanCollide = false,
        Massless = false
    })

    local mesh = Instance.new("SpecialMesh", p, {
        MeshId = "rbxassetid://94690054",
        MeshType = Enum.MeshType.FileMesh,
        Scale = Vector3.new(2, 2, 2)
    })

    local sound1 = Instance.new("Sound", p, {
        SoundId = "rbxassetid://526686369",
        Volume = 1,
        Looped = false
    })
    sound1:Play()

    local fireSound = Instance.new("Sound", p, {
        SoundId = "rbxassetid://153230666",
        Volume = 1,
        Looped = false
    })
    fireSound:Play()

    local effect = Instance.new("Part", Workspace, {
        Shape = Enum.PartType.Ball,
        Size = Vector3.new(2, 2, 2),
        Position = spawnPos,
        Anchored = true,
        CanCollide = false,
        Material = Enum.Material.Neon,
        Color = Color3.new(1, 1, 0),
        Transparency = 0
    })

    task.spawn(function()
        for i = 1, 10 do
            effect.Size = effect.Size + Vector3.new(1, 1, 1)
            effect.Transparency = effect.Transparency + 0.1
            task.wait(0.05)
        end
        effect:Destroy()
    end)

    local mouse = LocalPlayer:GetMouse()
    local lookPos = mouse.Hit.Position
    p.CFrame = CFrame.lookAt(spawnPos, lookPos)

    task.wait(0.5)

    local function fadeAndDestroy(inst, fadeTime)
        if inst == nil or inst.Parent == nil then return end
        local steps = 30
        local stepTime = fadeTime / steps
        for i = 1, steps do
            local alpha = i / steps
            if inst and inst.Parent and inst:IsA("Part") then
                inst.Transparency = math.clamp(alpha, 0, 1)
            end
            if inst and inst.Parent then
                for i, desc in inst:GetDescendants() do
                    if desc and desc.Parent then
                        if desc:IsA("Decal") or desc:IsA("Texture") then
                            desc.Transparency = math.clamp(alpha, 0, 1)
                        elseif desc:IsA("ImageLabel") or desc:IsA("ImageButton") then
                            if desc.Parent:IsA("SurfaceGui") or desc.Parent:IsA("BillboardGui") then
                                desc.ImageTransparency = math.clamp(alpha, 0, 1)
                            end
                        end
                    end
                end
            end
            task.wait(stepTime)
        end
        if inst and inst.Parent then
            inst:Destroy()
        end
    end

    local startPos = p.Position
    local endPos = lookPos

    local projectile = Instance.new("Part", Workspace, {
        Size = Vector3.new(1, 1, 1),
        Anchored = true,
        CanCollide = true,
        Transparency = 0,
        CFrame = CFrame.lookAt(startPos, endPos)
    })

    Instance.new("SpecialMesh", projectile, {
        MeshId = "rbxassetid://103970395",
        TextureId = "rbxassetid://103967643",
        MeshType = Enum.MeshType.FileMesh,
        Scale = Vector3.new(2, 2, 2)
    })

    local steps = 10
    task.spawn(function()
        for i = 1, steps do
            local alpha = i / steps
            projectile.Position = Vector3.new(
                math.lerp(startPos.X, endPos.X, alpha),
                math.lerp(startPos.Y, endPos.Y, alpha),
                math.lerp(startPos.Z, endPos.Z, alpha)
            )
            task.wait(0.002)
        end

        task.spawn(function()
            if p and p.Parent then
                p.Anchored = false
                p.CanCollide = true
                p.AssemblyLinearVelocity = -p.CFrame.LookVector * 6
                p.AssemblyAngularVelocity = Vector3.new(
                    math.random(-10, 10),
                    math.random(-10, 10),
                    math.random(-10, 10)
                )
                task.wait(3)
                fadeAndDestroy(p, 1)
            end
        end)

        local blast = Instance.new("Explosion", Workspace)
        blast.Position = endPos
        blast.BlastRadius = 20
        blast.BlastPressure = 20

        local boom = Instance.new("Part", Workspace, {
            Shape = Enum.PartType.Ball,
            Size = Vector3.new(15, 15, 15),
            Position = endPos,
            Anchored = true,
            CanCollide = false,
            Material = Enum.Material.Neon,
            Color = Color3.new(1, 0.4, 0),
            Transparency = 0
        })

        local boomSound = Instance.new("Sound", boom, {
            SoundId = "rbxassetid://7157159568",
            Volume = 1,
            Looped = false
        })
        boomSound:Play()

        task.spawn(function()
            for i = 1, 10 do
                boom.Size = boom.Size + Vector3.new(5, 5, 5)
                boom.Transparency = boom.Transparency + 0.1
                task.wait(0.03)
            end
            boom:Destroy()
        end)

        for i = 1, 5 do
            local dir = Vector3.new(math.random(-1,1), math.random(-1,1), math.random(-1,1)).Unit
            local spinX = math.random(-10, 10)
            local spinY = math.random(-10, 10)
            local spinZ = math.random(-10, 10)

            local cube = Instance.new("Part", Workspace, {
                Size = Vector3.new(20, 20, 20),
                Position = endPos,
                Anchored = true,
                CanCollide = false,
                Material = Enum.Material.Neon,
                Color = Color3.new(1, 0.4, 0),
                Transparency = 0
            })

            task.spawn(function()
                for t = 1, 20 do
                    cube.Position = cube.Position + dir * 2
                    cube.CFrame = cube.CFrame * CFrame.Angles(
                        math.rad(spinX),
                        math.rad(spinY),
                        math.rad(spinZ)
                    )
                    cube.Transparency = cube.Transparency + 0.05
                    task.wait(0.03)
                end
                cube:Destroy()
            end)
        end

        projectile:Destroy()
    end)
end)

local function tryUnbind()
    if keybind and keybind.Unbind then
        keybind:Unbind()
    elseif keybind and keybind.Active ~= nil then
        keybind.Active = false
    end
end

local char = LocalPlayer.Character
if char then
    local humanoid = char:FindFirstChild("Humanoid")
    if humanoid then
        humanoid.Died:Connect(function()
            tryUnbind()
        end)
    end
end

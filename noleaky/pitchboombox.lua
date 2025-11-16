-- on assetlibrary
-- made by bobby (dareddd_ on discord) aka me
local boombox = Instance.new("Tool", workspace, {
	Grip = CFrame.fromMatrix(Vector3.new(1, -1.25, 0), Vector3.new(0, 0, 1), Vector3.new(0, 1, 0), Vector3.new(-1, 0, 0)),
	TextureId = "http://www.roblox.com/asset/?id=108763708507908",
	WorldPivot = CFrame.fromMatrix(Vector3.new(50.25, 24.800010681152344, 0.749969482421875), Vector3.new(1, 0, 0), Vector3.new(0, 1, 0), Vector3.new(0, 0, 1)),
	Name = "Pitch Boombox"
})

local handle = Instance.new("Part", boombox, {
	BottomSurface = Enum.SurfaceType.Smooth,
	CFrame = localplr.Character.HumanoidRootPart.CFrame,
	Size = Vector3.new(3.200000047683716, 1.600000023841858, 1.2000000476837158),
	TopSurface = Enum.SurfaceType.Smooth,
	Name = "Handle"
})

local mesh = Instance.new("SpecialMesh", handle, {
	MeshType = Enum.MeshType.FileMesh,
	MeshId = "http://www.roblox.com/asset/?id=212302951",
	TextureId = "http://www.roblox.com/asset/?id=117714176788001",
	Scale = Vector3.new(4, 4, 4)
})

local sound = Instance.new("Sound", handle, {
	Looped = true,
	Volume = 3.5
})

local choose_song_gui = Instance.new("ScreenGui", localplr.PlayerGui, {
	IgnoreGuiInset = false,
	ResetOnSpawn = true,
	ZIndexBehavior = Enum.ZIndexBehavior.Global,
	Name = "ChooseSongGui"
})

local frame = Instance.new("Frame", choose_song_gui, {
	Style = Enum.FrameStyle.RobloxRound,
	Position = UDim2.new(0.375, 0, 0.375, 0),
	Size = UDim2.new(0.25, 0, 0.25, 0),
	Visible = false
})

local text_label = Instance.new("TextLabel", frame, {
	Text = "Pitch Boombox Premium by bobby",
	TextColor3 = Color3.new(1, 1, 1),
	TextScaled = true,
	TextStrokeTransparency = 0,
	TextWrapped = true,
	BackgroundTransparency = 1,
	Position = UDim2.new(0.0286738351, 0, 0.0400001518, 0),
	Size = UDim2.new(0.942652345, 0, 0.241999954, 0),
	Visible = true
})

local text_box = Instance.new("TextBox", frame, {
	CursorPosition = -1,
	PlaceholderText = "Pitch..",
	Text = "",
	TextColor3 = Color3.new(1, 1, 1),
	TextScaled = true,
	TextWrapped = true,
	BackgroundColor3 = Color3.new(0, 0, 0),
	BackgroundTransparency = 0.5,
	BorderColor3 = Color3.new(1, 1, 1),
	Position = UDim2.new(0, 0, 0.600000024, 0),
	Size = UDim2.new(1, 0, 0.200000003, 0),
	Visible = true
})

local text_button = Instance.new("TextButton", frame, {
	Text = "Play!",
	TextColor3 = Color3.new(1, 1, 1),
	TextScaled = true,
	TextStrokeTransparency = 0,
	TextWrapped = true,
	Style = Enum.ButtonStyle.RobloxButton,
	Position = UDim2.new(0.125, 0, 0.800000012, 0),
	Size = UDim2.new(0.75, 0, 0.200000003, 0),
	Visible = true
})

local text_box_2 = Instance.new("TextBox", frame, {
	CursorPosition = -1,
	PlaceholderText = "Audio ID..",
	Text = "",
	TextColor3 = Color3.new(1, 1, 1),
	TextScaled = true,
	TextWrapped = true,
	BackgroundColor3 = Color3.new(0, 0, 0),
	BackgroundTransparency = 0.5,
	BorderColor3 = Color3.new(1, 1, 1),
	Position = UDim2.new(0, 0, 0.336999983, 0),
	Size = UDim2.new(1, 0, 0.200000003, 0),
	Visible = true
})

text_button.MouseButton1Click:Connect(function()
	sound.TimePosition = 0
	local specifiedPitch = text_box:GetText()
	local specifiedID = text_box_2:GetText()
	local newId = string.format("%X", tonumber(specifiedID))
	sound.SoundId = "http://www.roblox.com/asset/?id=0x"..newId
	if specifiedPitch == "" then
		sound.PlaybackSpeed = 1
	else
		sound.PlaybackSpeed = specifiedPitch
	end
	sound.Playing = true
	frame.Visible = false
end)

boombox.Activated:Connect(function()
	frame.Visible = true
end)

boombox.Unequipped:Connect(function()
	frame.Visible = false
	text_box_2:SetText("")
	text_box:SetText("")
	sound.Playing = false
	sound.SoundId = ""
	sound.TimePosition = 0
end)

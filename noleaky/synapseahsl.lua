-- dont leak
-- made by bobby (dareddd_ on discord) aka me
RunAdonisCommand("!print [Synapse AHSL] Loading.. may take a few moments.")
RunAdonisCommand("!print If this is being ran without being saved as a mod, File system will NOT work!")
local action = "none"
local minimized = false
var synapse = Instance.new("ScreenGui", localplr.PlayerGui, {
	IgnoreGuiInset = false,
	ResetOnSpawn = true,
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	Name = "Hello",
})

var topbar = Instance.new("Frame", synapse, {
	BackgroundColor3 = Color3.new(0.239216, 0.231373, 0.227451),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.17568627, 0, 0.283582091, 0),
	Size = UDim2.new(0, 678, 0, 308),
	Name = "topbar",
	Visible = false,
	ZIndex = 5555
})

Instance.new("UIDragDetector", topbar)

local main = Instance.new("Frame", topbar, {
	BackgroundColor3 = Color3.new(0.2, 0.2, 0.2),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0, 0, 0.100649349, 0),
	Size = UDim2.new(0, 678, 0, 274),
	Visible = true,
	Name = "main"
})


local numberline = Instance.new("Frame", main, {
	BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.00884955749, 0, 0.0912408754, 0),
	Size = UDim2.new(0, 24, 0, 211),
	Visible = true,
	Name = "numberline",
})


local scriptsbar = Instance.new("Frame", main, {
	BackgroundColor3 = Color3.new(0.239216, 0.231373, 0.227451),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.861356914, 0, 0.0218978096, 0),
	Size = UDim2.new(0, 87, 0, 230),
	Visible = true,
	Name = "scriptsbar"
})


local text_label = Instance.new("TextLabel", scriptsbar, {
	Font = Enum.Font.SourceSans,
	Text = "made by bobby",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 14,
	TextXAlignment = Enum.TextXAlignment.Left,
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.0344827585, 0, 0, 0),
	Size = UDim2.new(0, 81, 0, 19),
	Visible = true
})


local newtab1 = Instance.new("Frame", main, {
	BackgroundColor3 = Color3.new(0.588235, 0.588235, 0.588235),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.00899999961, 0, 0.00899999961, 0),
	Size = UDim2.new(0, 74, 0, 21),
	Visible = true,
	Name = "newtab1"
})


local text = Instance.new("TextLabel", newtab1, {
	Font = Enum.Font.SourceSans,
	Text = "New Tab 1  x",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 15,
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.0945945978, 0, 0, 0),
	Size = UDim2.new(0, 60, 0, 19),
	Visible = true,
	Name = "text"
})


local add = Instance.new("Frame", main, {
	BackgroundColor3 = Color3.new(0.568627, 0.568627, 0.568627),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.126994088, 0, 0.00900001265, 0),
	Size = UDim2.new(0, 21, 0, 21),
	Visible = true,
	Name = "add"
})


local plus = Instance.new("TextLabel", add, {
	Font = Enum.Font.SourceSans,
	Text = "+",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 15,
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0, 0, 0.142857149, 0),
	Size = UDim2.new(0, 21, 0, 19),
	Visible = true,
	Name = "+"
})


local execute = Instance.new("TextButton", main, {
	Font = Enum.Font.SourceSans,
	Text = "Execute",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 17,
	TextWrapped = true,
	BackgroundColor3 = Color3.new(0.247059, 0.239216, 0.235294),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.00899999961, 0, 0.875, 0),
	Size = UDim2.new(0, 80, 0, 31),
	Visible = true,
	Name = "execute"
})


local clear = Instance.new("TextButton", main, {
	Font = Enum.Font.SourceSans,
	Text = "Clear",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 17,
	TextWrapped = true,
	BackgroundColor3 = Color3.new(0.247059, 0.239216, 0.235294),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.13584365, 0, 0.875, 0),
	Size = UDim2.new(0, 80, 0, 31),
	Visible = true,
	Name = "clear"
})

local openfile = Instance.new("TextButton", main, {
	Font = Enum.Font.SourceSans,
	Text = "Open File",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 17,
	TextWrapped = true,
	BackgroundColor3 = Color3.new(0.247059, 0.239216, 0.235294),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.262687296, 0, 0.875, 0),
	Size = UDim2.new(0, 80, 0, 31),
	Visible = true,
	Name = "openfile"
})


local executefile = Instance.new("TextButton", main, {
	Font = Enum.Font.SourceSans,
	Text = "Execute File",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 17,
	TextWrapped = true,
	BackgroundColor3 = Color3.new(0.247059, 0.239216, 0.235294),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.38805604, 0, 0.875, 0),
	Size = UDim2.new(0, 80, 0, 31),
	Visible = true,
	Name = "executefile"
})


local savefile = Instance.new("TextButton", main, {
	Font = Enum.Font.SourceSans,
	Text = "Save File",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 17,
	TextWrapped = true,
	BackgroundColor3 = Color3.new(0.247059, 0.239216, 0.235294),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.514899671, 0, 0.875, 0),
	Size = UDim2.new(0, 80, 0, 31),
	Visible = true,
	Name = "savefile"
})


local title = Instance.new("TextLabel", topbar, {
	Font = Enum.Font.SourceSans,
	Text = "Synapse AHSL - v1",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 17,
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.352507383, 0, 0, 0),
	Size = UDim2.new(0, 200, 0, 31),
	Visible = true
})


local icon = Instance.new("ImageLabel", topbar, {
	Image = "http://www.roblox.com/asset/?id=136419260747478",
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.00884955749, 0, 0.00324675324, 0),
	Size = UDim2.new(0, 30, 0, 30),
	Visible = true
})

local startup = Instance.new("Frame", synapse, {
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Size = UDim2.new(1, 0, 1, 0),
	Visible = true,
	Name = "startup"
})

local logostartup = Instance.new("ImageLabel", startup, {
	Image = "rbxassetid://9524079125",
	AnchorPoint = Vector2.new(0.5, 0.5),
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.5, 0, 0.5, 0),
	Size = UDim2.new(0, 217, 0, 217),
	Visible = true,
	ImageTransparency = 1,
	Name = "logostartup"
})


local close = Instance.new("TextButton", topbar, {
	Font = Enum.Font.SourceSans,
	Text = "X",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 18,
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.957227111, 0, 0.012987013, 0),
	Size = UDim2.new(0, 22, 0, 22),
	Visible = true,
	Name = "close"
})

local minimize = Instance.new("TextButton", topbar, {
	Font = Enum.Font.SourceSans,
	Text = "-",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 18,
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.912979364, 0, 0.012987013, 0),
	Size = UDim2.new(0, 22, 0, 22),
	Visible = true,
	Name = "minimize"
})


local scrolling_frame = Instance.new("ScrollingFrame", main, {
	CanvasSize = UDim2.new(0, 0, 0, 0),
	ScrollBarImageColor3 = Color3.new(0, 0, 0),
	AutomaticCanvasSize = Enum.AutomaticSize.XY,
	ScrollBarThickness = 6,
	Active = true,
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.0442477874, 0, 0.0912408754, 0),
	Size = UDim2.new(0, 547, 0, 210),
	Visible = true
})

var editor = Instance.new("TextBox", scrolling_frame, {
	Font = Enum.Font.Code,
	Text = "",
	PlaceholderText = "...",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 15,
	TextXAlignment = Enum.TextXAlignment.Left,
	TextYAlignment = Enum.TextYAlignment.Top,
	BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0, 0, 0, 0),
	Size = UDim2.new(1, 0, 1, 0),
	Visible = true,
	Name = "editor",
	MultiLine = true,
	ClearTextOnFocus = false,
	AutomaticSize = Enum.AutomaticSize.XY
})

local file = Instance.new("Frame", synapse, {
	BackgroundColor3 = Color3.new(0.239216, 0.231373, 0.227451),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.0561797768, 0, 0.12313433, 0),
	Size = UDim2.new(0, 352, 0, 188),
	Visible = false,
	Name = "file"
})

local filemain = Instance.new("Frame", file, {
	BackgroundColor3 = Color3.new(0.2, 0.2, 0.2),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0, 0, 0.164893612, 0),
	Size = UDim2.new(0, 352, 0, 157),
	Visible = true,
	Name = "filemain"
})


local filebox = Instance.new("TextBox", filemain, {
	CursorPosition = -1,
	Font = Enum.Font.Code,
	PlaceholderText = "File Name...",
	Text = "",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 14,
	TextXAlignment = Enum.TextXAlignment.Left,
	BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.0855541229, 0, 0.233263344, 0),
	Size = UDim2.new(0, 289, 0, 34),
	Visible = true,
	Name = "filebox"
})

local actionfilebutton = Instance.new("TextButton", filemain, {
	Font = Enum.Font.SourceSans,
	Text = "Action File",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 25,
	BackgroundColor3 = Color3.new(0.247059, 0.239216, 0.231373),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.09375, 0, 0.554140151, 0),
	Size = UDim2.new(0, 286, 0, 50),
	Visible = true
})

local actionfile = Instance.new("TextLabel", file, {
	Font = Enum.Font.SourceSans,
	Text = "Action File",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 17,
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.213302791, 0, 0, 0),
	Size = UDim2.new(0, 200, 0, 31),
	Visible = true,
	Name = "actionfile"
})

local fileclose = Instance.new("TextButton", file, {
	Font = Enum.Font.SourceSans,
	Text = "X",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 18,
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.920295298, 0, 0.0236253124, 0),
	Size = UDim2.new(0, 22, 0, 22),
	Visible = true,
	Name = "fileclose"
})

local actionfilelogo = Instance.new("ImageLabel", file, {
	Image = "http://www.roblox.com/asset/?id=136419260747478",
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.00884955749, 0, 0.00324675324, 0),
	Size = UDim2.new(0, 30, 0, 30),
	Visible = true,
	Name = "actionfilelogo"
})

close.MouseButton1Click:Connect(function()
	synapse:Destroy()
end)

minimize.MouseButton1Click:Connect(function()
	if minimized == false then
		main.Visible = false
		minimize.Text = "+"
		Tween.Create(topbar, TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 678, 0, 30)}).Play()
		minimized = true
	else
		main.Visible = true
		minimize.Text = "-"
		Tween.Create(topbar, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 678, 0, 308)}).Play()
		minimized = false
	end
end)

execute.MouseButton1Click:Connect(function()
	loadstring(editor:GetText())
end)

clear.MouseButton1Click:Connect(function()
	editor:SetText("")
end)

openfile.MouseButton1Click:Connect(function()
	actionfile.Text = "Open File"
	actionfilebutton.Text = "Open File"
	action = "open"
	file.Visible = true
end)

savefile.MouseButton1Click:Connect(function()
	actionfile.Text = "Save File"
	actionfilebutton.Text = "Save File"
	action = "save"
	file.Visible = true
end)

executefile.MouseButton1Click:Connect(function()
	actionfile.Text = "Execute File"
	actionfilebutton.Text = "Execute File"
	action = "execute"
	file.Visible = true
end)

actionfilebutton.MouseButton1Click:Connect(function()
	if action == "open" then
		action = "none"
		file.Visible = false
		if LoadVariable("synapse-"..filebox:GetText()) ~= nil then
			editor:SetText(LoadVariable("synapse-"..filebox:GetText()))
		end
	elseif action == "save" then
		action = "none"
		file.Visible = false
		SaveVariable("synapse-"..filebox:GetText(), editor:GetText())
	elseif action == "execute" then
		action = "none"
		file.Visible = false
		if LoadVariable("synapse-"..filebox:GetText()) ~= nil then
			loadstring(LoadVariable("synapse-"..filebox:GetText()))
		end
	end
end)

fileclose.MouseButton1Click:Connect(function()
	action = "none"
	file.Visible = false
end)

task.wait(1)
Tween.Create(logostartup, TweenInfo.new(0.65, Enum.EasingStyle.Quad), {ImageTransparency = 0}).Play()
task.wait(1)
Tween.Create(logostartup, TweenInfo.new(0.65, Enum.EasingStyle.Quad), {ImageTransparency = 1}).Play()
task.wait(0.75)
topbar.Visible = true


--!startup

-- do not share
-- made by bobby (dareddd_ on discord) aka me
local fileMode = "load"
local eclipse = Instance.new("ScreenGui", localplr.PlayerGui, {
	IgnoreGuiInset = true,
	ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets,
	ResetOnSpawn = false,
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	Name = "eclipse",
})

local loading = Instance.new("TextLabel", eclipse, {
	Font = Enum.Font.Code,
	Text = "Loading Eclipse...",
	TextColor3 = Color3.new(1, 1, 1),
	TextScaled = true,
	TextSize = 14,
	TextStrokeTransparency = 0,
	TextWrapped = true,
	TextXAlignment = Enum.TextXAlignment.Left,
	AnchorPoint = Vector2.new(0, 1),
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0, 0, 1, 0),
	Size = UDim2.new(0, 402, 0, 50),
	Visible = true
})

local exec = Instance.new("Frame", eclipse, {
	BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726),
	BackgroundTransparency = 0.1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.0838174298, 0, 0.376249999, 0),
	Size = UDim2.new(0, 429, 0, 261),
	Visible = false,
	Name = "exec",
})

Instance.new("UIDragDetector", exec)

Instance.new("UICorner", exec, {
	CornerRadius = UDim.new(0, 10),
})

local execGradient = Instance.new("UIGradient", exec, {
	Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.new(0.184314, 0.184314, 0.184314)),
		ColorSequenceKeypoint.new(1, Color3.new(0.439216, 0.439216, 0.439216)),
	}),
	Rotation = -90,
})

local linetop = Instance.new("Frame", exec, {
	BackgroundColor3 = Color3.new(0.305882, 0.313726, 0.333333),
	BackgroundTransparency = 0.5,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0, 0, 0.15891473, 0),
	Size = UDim2.new(0, 429, 0, 2),
	Visible = true,
	Name = "linetop",
})

local execStroke = Instance.new("UIStroke", exec, {
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
	Color = Color3.new(0.305882, 0.313726, 0.333333),
	Thickness = 1.5,
})

local title = Instance.new("TextLabel", exec, {
	Font = Enum.Font.Gotham,
	RichText = true,
	Text = "Eclipse - 1.1.2",
	TextColor3 = Color3.new(0.866667, 0.866667, 0.866667),
	TextSize = 17,
	TextXAlignment = Enum.TextXAlignment.Left,
	BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.0846486837, 0, -0.00383141753, 0),
	Size = UDim2.new(0, 62, 0, 41),
	Visible = true,
	Name = "title",
})

local logo = Instance.new("ImageLabel", exec, {
	Image = "rbxassetid://10709807111",
	-- ImageContent property from original is unsupported; omitted.
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.0279720277, 0, 0.042145595, 0),
	Size = UDim2.new(0, 18, 0, 18),
	Visible = true,
	Name = "logo",
})

local close = Instance.new("ImageButton", exec, {
	Image = "rbxassetid://10747384394",
	ImageColor3 = Color3.new(0.862745, 0.862745, 0.862745),
	-- ImageContent property from original is unsupported; omitted.
	ScaleType = Enum.ScaleType.Fit,
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.93473196, 0, 0.042145595, 0),
	Size = UDim2.new(0, 18, 0, 18),
	Visible = true,
	Name = "close",
})

local linebot = Instance.new("Frame", exec, {
	BackgroundColor3 = Color3.new(0.305882, 0.313726, 0.333333),
	BackgroundTransparency = 0.5,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0, 0, 0.837075651, 0),
	Size = UDim2.new(0, 429, 0, 2),
	Visible = true,
	Name = "linebot",
})

local scrolling_frame = Instance.new("ScrollingFrame", exec, {
	AutomaticCanvasSize = Enum.AutomaticSize.XY,
	CanvasSize = UDim2.new(0, 0, 0, 0),
	ScrollBarImageColor3 = Color3.new(0, 0, 0),
	ScrollBarImageTransparency = 0.5,
	ScrollBarThickness = 5,
	Active = true,
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0, 0, 0.164750963, 0),
	Size = UDim2.new(0, 429, 0, 175),
	Visible = true,
	Name = "scrolling_frame",
})

local editor = Instance.new("TextBox", scrolling_frame, {
	Font = Enum.Font.Code,
	MultiLine = true,
	PlaceholderText = "-- Made by bobby :)",
	RichText = true,
	Text = "",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 15,
	TextXAlignment = Enum.TextXAlignment.Left,
	TextYAlignment = Enum.TextYAlignment.Top,
	AutomaticSize = Enum.AutomaticSize.XY,
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	ClearTextOnFocus = false,
	Size = UDim2.new(1, 0, 1, 0),
	Visible = true,
	Name = "editor",
})

local execute = Instance.new("TextButton", exec, {
	Font = Enum.Font.Gotham,
	Text = "Execute",
	TextColor3 = Color3.new(0.890196, 0.890196, 0.890196),
	TextSize = 14,
	BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
    AutoButtonColor = false,
	Position = UDim2.new(0.0279720277, 0, 0.869731784, 0),
	Size = UDim2.new(0.200466201, 0, 0.107279696, 0),
	Visible = true,
	Name = "execute",
})

local executeStroke = Instance.new("UIStroke", execute, {
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
	Color = Color3.new(0.301961, 0.301961, 0.301961),
	Thickness = 1.25,
})

Instance.new("UICorner", execute, {
	CornerRadius = UDim.new(0, 4),
})

Instance.new("UIPadding", execute, {
	PaddingLeft = UDim.new(0, 15),
})

Instance.new("ImageLabel", execute, {
	Image = "rbxassetid://10734923549",
	-- ImageContent property from original is unsupported; omitted.
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(-0.0784183592, 0, 0.25, 0),
	Size = UDim2.new(0.162790701, 0, 0.5, 0),
	Visible = true,
})

local clear = Instance.new("TextButton", exec, {
	Font = Enum.Font.Gotham,
	Text = "Clear",
	TextColor3 = Color3.new(0.890196, 0.890196, 0.890196),
	TextSize = 14,
	BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
    AutoButtonColor = false,
	Position = UDim2.new(0.265734255, 0, 0.869731784, 0),
	Size = UDim2.new(0.200466201, 0, 0.107279696, 0),
	Visible = true,
	Name = "clear",
})

local clearStroke = Instance.new("UIStroke", clear, {
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
	Color = Color3.new(0.301961, 0.301961, 0.301961),
	Thickness = 1.25,
})

Instance.new("UICorner", clear, {
	CornerRadius = UDim.new(0, 4),
})

Instance.new("UIPadding", clear, {
	PaddingLeft = UDim.new(0, 15),
})

Instance.new("ImageLabel", clear, {
	Image = "rbxassetid://10747362241",
	-- ImageContent property from original is unsupported; omitted.
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(-0.0784183592, 0, 0.25, 0),
	Size = UDim2.new(0.162790701, 0, 0.5, 0),
	Visible = true,
})

local refresh = Instance.new("TextButton", exec, {
	Font = Enum.Font.Gotham,
	Text = "",
	TextColor3 = Color3.new(0.890196, 0.890196, 0.890196),
	TextSize = 14,
	AutoButtonColor = false,
	BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.909090936, 0, 0.869731784, 0),
	Size = UDim2.new(0, 28, 0, 28),
	Visible = true,
	Name = "refresh"
})

local refreshStroke = Instance.new("UIStroke", refresh, {
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
	Color = Color3.new(0.301961, 0.301961, 0.301961),
	Thickness = 1.25
})

Instance.new("UICorner", refresh, {
	CornerRadius = UDim.new(0, 4)
})

Instance.new("ImageLabel", refresh, {
	Image = "rbxassetid://10734933222",
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.25, 0, 0.25, 0),
	Size = UDim2.new(0.5, 0, 0.5, 0),
	Visible = true
})

local save = Instance.new("TextButton", exec, {
	Font = Enum.Font.Gotham,
	Text = "",
	TextColor3 = Color3.new(0.890196, 0.890196, 0.890196),
	TextSize = 14,
	AutoButtonColor = false,
	BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.819090936, 0, 0.869731784, 0),
	Size = UDim2.new(0, 28, 0, 28),
	Visible = true,
	Name = "save"
})

local saveStroke = Instance.new("UIStroke", save, {
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
	Color = Color3.new(0.301961, 0.301961, 0.301961),
	Thickness = 1.25
})

Instance.new("UICorner", save, {
	CornerRadius = UDim.new(0, 4)
})

Instance.new("ImageLabel", save, {
	Image = "rbxassetid://10734941499",
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.25, 0, 0.25, 0),
	Size = UDim2.new(0.5, 0, 0.5, 0),
	Visible = true
})

local loadd = Instance.new("TextButton", exec, {
	Font = Enum.Font.Gotham,
	Text = "",
	TextColor3 = Color3.new(0.890196, 0.890196, 0.890196),
	TextSize = 14,
	AutoButtonColor = false,
	BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.729090936, 0, 0.869731784, 0),
	Size = UDim2.new(0, 28, 0, 28),
	Visible = true,
	Name = "load"
})

local loadStroke = Instance.new("UIStroke", loadd, {
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
	Color = Color3.new(0.301961, 0.301961, 0.301961),
	Thickness = 1.25
})

Instance.new("UICorner", loadd, {
	CornerRadius = UDim.new(0, 4)
})

Instance.new("ImageLabel", loadd, {
	Image = "rbxassetid://10747366434",
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.25, 0, 0.25, 0),
	Size = UDim2.new(0.5, 0, 0.5, 0),
	Visible = true
})

local saveload = Instance.new("Frame", eclipse, {
	BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726),
	BackgroundTransparency = 0.11500000208616257,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.268084705, 0, 0.271793187, 0),
	Size = UDim2.new(0, 287, 0, 153),
	Visible = false,
	Name = "saveload"
})

Instance.new("UIDragDetector", saveload)

Instance.new("UICorner", saveload, {
	CornerRadius = UDim.new(0, 10)
})

Instance.new("UIGradient", saveload, {
	Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.184314, 0.184314, 0.184314)), ColorSequenceKeypoint.new(1, Color3.new(0.380392, 0.380392, 0.380392))}),
	Rotation = -90
})

local saveloadlinetop = Instance.new("Frame", saveload, {
	BackgroundColor3 = Color3.new(0.305882, 0.313726, 0.333333),
	BackgroundTransparency = 0.5,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0, 0, 0.250417978, 0),
	Size = UDim2.new(0, 287, 0, 2),
	Visible = true,
	Name = "saveloadlinetop"
})

local uistroke = Instance.new("UIStroke", saveload, {
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
	Color = Color3.new(0.305882, 0.313726, 0.333333),
	Thickness = 1.5
})

local saveloadtitle = Instance.new("TextLabel", saveload, {
	Font = Enum.Font.Gotham,
	RichText = true,
	Text = "Load Script",
	TextColor3 = Color3.new(0.866667, 0.866667, 0.866667),
	TextSize = 17,
	TextXAlignment = Enum.TextXAlignment.Left,
	BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.116007522, 0, -0.0103674, 0),
	Size = UDim2.new(0, 62, 0, 41),
	Visible = true,
	Name = "saveloadtitle"
})

local saveloadlogo = Instance.new("ImageLabel", saveload, {
	Image = "rbxassetid://10734941499",
	ImageColor3 = Color3.new(0.862745, 0.862745, 0.862745),
	ImageContent = --[[ This property isn't supported! Please report this as a bug. ]],
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.0314563923, 0, 0.0682893619, 0),
	Size = UDim2.new(0, 18, 0, 18),
	Visible = true,
	Name = "saveloadlogo"
})

local saveloadclose = Instance.new("ImageButton", saveload, {
	Image = "rbxassetid://10747384394",
	ImageColor3 = Color3.new(0.862745, 0.862745, 0.862745),
	ImageContent = --[[ This property isn't supported! Please report this as a bug. ]],
	ScaleType = Enum.ScaleType.Fit,
	BackgroundColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.91034168, 0, 0.0617534146, 0),
	Size = UDim2.new(0, 18, 0, 18),
	Visible = true,
	Name = "saveloadclose"
})

local saveloadname = Instance.new("TextBox", saveload, {
	CursorPosition = -1,
	Font = Enum.Font.Code,
	ClearTextOnFocus = false,
	PlaceholderColor3 = Color3.new(0.352941, 0.352941, 0.352941),
	PlaceholderText = "Script Name..",
	Text = "",
	TextColor3 = Color3.new(1, 1, 1),
	TextSize = 17,
	TextWrapped = true,
	BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.149825782, 0, 0.372549027, 0),
	Size = UDim2.new(0, 200, 0, 39),
	Visible = true,
	Name = "saveloadname"
})

Instance.new("UICorner", saveloadname, {
	CornerRadius = UDim.new(0, 10)
})

Instance.new("UIStroke", saveloadname, {
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
	Color = Color3.new(0.305882, 0.313726, 0.333333),
	Thickness = 1.5
})

local saveloadaction = Instance.new("TextButton", saveload, {
	Font = Enum.Font.Gotham,
	Text = "Load",
	TextColor3 = Color3.new(0.890196, 0.890196, 0.890196),
	TextSize = 14,
	BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863),
	BorderColor3 = Color3.new(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.345045358, 0, 0.712869287, 0),
	Size = UDim2.new(0.304995865, 0, 0.192247078, 0),
	Visible = true,
	Name = "saveloadaction"
})

Instance.new("UIStroke", saveloadaction, {
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
	Color = Color3.new(0.301961, 0.301961, 0.301961),
	Thickness = 1.25
})

Instance.new("UICorner", saveloadaction, {
	CornerRadius = UDim.new(0, 4)
})

-----------------------------
-- CUSTOM ECLIPSE COMMANDS --
-----------------------------

local allCommands = {
	":al - Alias for Assetlibrary.",
	":ind - Alias for Index Tool.",
	":p - Create part without index.",
	":ecmds - See all eclipse commands.",
	":im [index] - Index entire model based off of one part."
	":newi [instance] - Creates a new instance into workspace.",
	":parent [inst1] [inst2] - Parents instance 1 to instance 2",
	":np [index] [name] - Names all parts with index.",
	":property [inst1] [prop] [value] - Changes a property of an instance.",
	":getscripts - Lists all scripts saved in eclipse.",
	":rss [Script] - Runs a saved script via command.",
	":lss [Script] - Loads a saved script into the editor via command."
	":delscript [Script] - Deletes a script.",
	":nip [index] [partname (optional)] - Creates an indexed part with a specified name.",
	":console - Shows AHSL console.",
	":disc [variable] - Disconnects the connection of a variable (ex: .Chatted, .Touched)",
	":unbind [variable] - Unbinds the Keybind associated with a variable.",
	":tptopart [instance] - Teleports your character to specified instance."
}
local allCommandsRaw = {
	"ecmds"
	"al",
	"ind",
	"p",
	"im",
	"newi",
	"parent"
	"np",
	"property",
	"getscripts",
	"rss",
	"delscript",
	"nip",
	"console",
	"disc",
	"unbind",
	"lss",
	"tptopart"
}

local function listCommand(cmdstuff)
	RunAdonisCommand(":chatnotifyc me 255,255,255 "..cmdstuff)
end

RegisterAdonisCommand("ecmds", 0, function()
	RunAdonisCommand(":ahsl")
	local mymods = localplr.PlayerGui:WaitForChild("MyMods")
	local MainFrame = mymods:WaitForChild("MainFrame")
	local tabs = MainFrame:WaitForChild("Tabs")
	local mods = tabs:WaitForChild("Mods")
	local console = tabs:WaitForChild("Console")
	mods.Visible = false
	mods.Position = UDim2.new(-1,0,0,0)
	console.Visible = true
	console.Position = UDim2.new(0,0,0,0)
	task.wait(0.1)
	print("")
	print("Eclipse v1.1.2 Commands")
	print("")
	for _, cmd in allCommands do
		print(cmd)
	end
end)

RegisterAdonisCommand("al", 0, function()
	RunAdonisCommand(":assetlibrary")
end)

RegisterAdonisCommand("ind", 0, function()
	RunAdonisCommand(":give me index")
end)

RegisterAdonisCommand("p", 0, function()
	local pos = localplr.Character.HumanoidRootPart.Position
	local newPart = Instance.new("Part", workspace, {Position = pos, Anchored = true})
	RunAdonisCommand("!print Created Part!")
end)

RegisterAdonisCommand("im", 1, function(modelpartIndex)
	local specifiedIndex = tonumber(modelpartIndex)
	local gotTotalParent = false
	local currentTarget = PartIndexing.GetPartsWithIndex(specifiedIndex)[1]
	while gotTotalParent == false do
		task.wait(0.1)
		if currentTarget.Parent ~= workspace then
			currentTarget = currentTarget.Parent
		else
			gotTotalParent = true
			break
		end
	end
	
	for _, v in currentTarget:GetDescendants do
		if v:IsA("BasePart") then
			PartIndexing.IndexPart(v, specifiedIndex)
		end
	end
	RunAdonisCommand("!print Indexed all parts in model to "..modelpartIndex.."!")
end)

RegisterAdonisCommand("newi", 1, function(inst)
	local check = pcall(function()
		Instance.new(inst, workspace)
	end)
	if check[1] == false then
		RunAdonisCommand("!error Instance '"..inst.."' cannot be created in AHSL.")
	end
end)

RegisterAdonisCommand("parent", 2, function(inst1, inst2)
	loadstring(inst1..".Parent = "..inst2)
end)

RegisterAdonisCommand("np", 2, function(ind, specifiedName)
	for _, v in PartIndexing.GetPartsWithIndex(tonumber(ind)) do
		v.Name = specifiedName
	end
end)

RegisterAdonisCommand("property", 3, function(inst1, prop, val)
	loadstring("var tempthing = "..inst1)
	loadstring("tempthing."..prop.." = "..val)
end)

RegisterAdonisCommand("getscripts", 0, function()
	local rawscripts = LoadVariable("eclipse-GetScripts")
	local myscripts = string.split(rawscripts, "|")
	RunAdonisCommand(":ahsl")
	local mymods = localplr.PlayerGui:WaitForChild("MyMods")
	local MainFrame = mymods:WaitForChild("MainFrame")
	local tabs = MainFrame:WaitForChild("Tabs")
	local mods = tabs:WaitForChild("Mods")
	local console = tabs:WaitForChild("Console")
	mods.Visible = false
	mods.Position = UDim2.new(-1,0,0,0)
	console.Visible = true
	console.Position = UDim2.new(0,0,0,0)
	task.wait(0.1)
	print("")
	print(" -- Saved Scripts --")
	for i, script in myscripts do
		print(script)
	end
end)

RegisterAdonisCommand("console", 0, function()
	RunAdonisCommand(":ahsl")
	local mymods = localplr.PlayerGui:WaitForChild("MyMods")
	local MainFrame = mymods:WaitForChild("MainFrame")
	local tabs = MainFrame:WaitForChild("Tabs")
	local mods = tabs:WaitForChild("Mods")
	local console = tabs:WaitForChild("Console")
	mods.Visible = false
	mods.Position = UDim2.new(-1,0,0,0)
	console.Visible = true
	console.Position = UDim2.new(0,0,0,0)
	task.wait(0.1)
end)

RegisterAdonisCommand("delscript", 1, function(scriptname)
	if LoadVariable("script-"..scriptname) == nil then
		RunAdonisCommand("!error Script '"..scriptname.."' not found.")
	else
		SaveVariable("script-"..scriptname, nil)
		local newDb = string.gsub(LoadVariable("eclipse-GetScripts"), scriptname.."|", "")
		SaveVariable("eclipse-GetScripts", newDb)
		RunAdonisCommand("!print Deleted script '"..scriptname.."' successfully!")
	end
end)

RegisterAdonisCommand("rss", 1, function(scriptname)
	if LoadVariable("script-"..scriptname) == nil then
		RunAdonisCommand("!error Script '"..scriptname.."' not found.")
	else
		loadstring(LoadVariable("script-"..scriptname))
		RunAdonisCommand("!print Ran Eclipse Script '"..scriptname"' succesfully!")
	end
end)

RegisterAdonisCommand("nip", 3, function(index, partname)
	if partname == nil then
		local pos = localplr.Character.HumanoidRootPart.Position
		local newPart = Instance.new("Part", workspace, {Position = pos, Anchored = true})
		PartIndexing.IndexPart(newPart, tonumber(index))
		RunAdonisCommand("!print Created Part with index "..index)
	else
		local pos = localplr.Character.HumanoidRootPart.Position
		local newPart = Instance.new("Part", workspace, {Position = pos, Anchored = true})
		PartIndexing.IndexPart(newPart, tonumber(index))
		newPart.Name = partname
		RunAdonisCommand("!print Created Part with index "..index.." and name "..partname)
	end
end)

RegisterAdonisCommand("disc", 1, function(variableToDisconnect)
	loadstring(variableToDisconnect..":Disconnect()")
	RunAdonisCommand("!print Disconnected Variable '"..variableToDisconnect.."'!")
end)
RegisterAdonisCommand("unbind", 1, function(variabletounbind)
	loadstring(variabletounbind..":Unbind()")
	RunAdonisCommand("!print Unbinded Keybind Variable '"..variabletounbind.."'!")
end)

RegisterAdonisCommand("lss", 1, function(scriptname)
	if LoadVariable("script-"..scriptname) == nil then
		RunAdonisCommand("!error Script '"..scriptname.."' not found.")
	else
		editor:SetText(LoadVariable("script-"..scriptname))
		RunAdonisCommand("!print Loaded Eclipse Script '"..scriptname"' succesfully!")
	end
end)

RegisterAdonisCommand("tptopart", 1, function(instyee)
	loadstring("pcall(function() var tptopartinstance = "..instyee.." end)")
	if tptopartinstance then
		RunAdonisCommand(":tp me "..tptopartinstance.Position.X..","..tptopartinstance.Position.Y..","..tptopartinstance.Position.Z)
	end
end)

--------------------------
-- Button Functionality --
--------------------------

local function openFileSystem()
	if fileMode == "load" then
		saveloadtitle.Text = "Load Script"
		saveloadaction.Text = "Load"
		saveload.Visible = true
	else
		saveloadtitle.Text = "Save Script"
		saveloadaction.Text = "Save"
		saveload.Visible = true
	end
end

execute.MouseButton1Down:Connect(function()
    execute.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
    Tween.Create(execute, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)}).Play()
	loadstring(editor:GetText())
end)

clear.MouseButton1Down:Connect(function()
    clear.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
    Tween.Create(clear, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)}).Play()
    editor:SetText("")
end)

refresh.MouseButton1Down:Connect(function()
	refresh.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
	Tween.Create(refresh, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)}).Play()
    localplr:LoadCharacter()
end)

save.MouseButton1Down:Connect(function()
	save.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
	Tween.Create(save, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)}).Play()
	fileMode = "save"
	openFileSystem()
end)

loadd.MouseButton1Down:Connect(function()
	loadd.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
	Tween.Create(loadd, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)}).Play()
	fileMode = "load"
	openFileSystem()
end)

close.MouseButton1Click:Connect(function()
    eclipse:Destroy()
	for i, cmd in allCommandsRaw do -- Removing Commands
		RegisterAdonisCommand(cmd, 0, function()
			return
		end)
	end
end)

saveloadaction.MouseButton1Down:Connect(function()
	if fileMode == "load" then
		if LoadVariable("script-"..saveloadname:GetText()) == nil then
			local oldNameBeforeDeletion = saveloadname:GetText()
			saveloadname:SetText("")
			saveloadname.PlaceholderText = "Script '"..oldNameBeforeDeletion.."' not found."
			saveloadname.PlaceholderColor3 = Color3.fromRGB(255,0,0)
			task.wait(1.5)
			saveloadname.PlaceholderText = "Script Name..."
			saveloadname.PlaceholderColor3 = Color3.new(0.352941, 0.352941, 0.352941)
		else
			editor:SetText(LoadVariable("script-"..saveloadname:GetText()))
			saveload.Visible = false
		end

	else
		if string.find(saveloadname:GetText(), "|") then
			saveloadname:SetText("")
			saveloadname.PlaceholderText = "Script name cannot contain character '|'"
			saveloadname.PlaceholderColor3 = Color3.fromRGB(255,0,0)
			task.wait(1.5)
			saveloadname.PlaceholderText = "Script Name..."
			saveloadname.PlaceholderColor3 = Color3.new(0.352941, 0.352941, 0.352941)
		else
			SaveVariable("script-"..saveloadname:GetText(), editor:GetText())
			if LoadVariable("eclipse-GetScripts") == nil then
				SaveVariable("eclipse-GetScripts", saveloadname:GetText().."|")
			else
				SaveVariable("eclipse-GetScripts", LoadVariable("eclipse-GetScripts")..saveloadname:GetText().."|")
			end	
			saveload.Visible = false
		end
		
	end
end)

saveloadclose.MouseButton1Click:Connect(function()
	saveload.Visible = false
end)

-----------------------------
-- Button Stroke Highlight --
-----------------------------

execute.MouseEnter:Connect(function()
	Tween.Create(executeStroke, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {Color = Color3.new(0.501961, 0.501961, 0.501961)}).Play()
end)

execute.MouseLeave:Connect(function()
	Tween.Create(executeStroke, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {Color = Color3.new(0.301961, 0.301961, 0.301961)}).Play()
end)

clear.MouseEnter:Connect(function()
	Tween.Create(clearStroke, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {Color = Color3.new(0.501961, 0.501961, 0.501961)}).Play()
end)

clear.MouseLeave:Connect(function()
	Tween.Create(clearStroke, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {Color = Color3.new(0.301961, 0.301961, 0.301961)}).Play()
end)

refresh.MouseEnter:Connect(function()
	Tween.Create(refreshStroke, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {Color = Color3.new(0.8, 0, 0)}).Play()
end)

refresh.MouseLeave:Connect(function()
	Tween.Create(refreshStroke, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {Color = Color3.new(0.301961, 0.301961, 0.301961)}).Play()
end)

save.MouseEnter:Connect(function()
	Tween.Create(saveStroke, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {Color = Color3.new(0.501961, 0.501961, 0.501961)}).Play()
end)

save.MouseLeave:Connect(function()
	Tween.Create(saveStroke, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {Color = Color3.new(0.301961, 0.301961, 0.301961)}).Play()
end)

loadd.MouseEnter:Connect(function()
	Tween.Create(loadStroke, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {Color = Color3.new(0.501961, 0.501961, 0.501961)}).Play()
end)

loadd.MouseLeave:Connect(function()
	Tween.Create(loadStroke, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {Color = Color3.new(0.301961, 0.301961, 0.301961)}).Play()
end)

------------
-- ONLOAD --
------------

exec.Visible = true
loading.Text = "Done!"
loading.TextColor3 = Color3.fromRGB(0, 255, 0)
task.wait(0.5)
Tween.Create(loading, TweenInfo.new(3, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {TextTransparency = 1}).Play()
task.wait(3)
loading:Destroy()

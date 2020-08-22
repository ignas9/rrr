spawn(function()
local ShouxLib = loadstring(game:HttpGetAsync("https://pastebin.com/raw/aWJeXMN3"))()
local autobat = false
local clickkill = false
local clickheal = false
local clickbat = false
local loopheal = false
game:GetService('RunService').RenderStepped:Connect(function()
    if not loopheal then return end
    local A_1 = -9999
    local A_2 = game.Players.LocalPlayer.Character
    local A_3 = 
    {
    game.Players.LocalPlayer
    }
    local A_4 = 
    {
        ["nightTimeMin"] = 0, 
        ["stealRange"] = 0, 
        ["percentageDamage"] = 0, 
        ["animFrames"] = 0, 
        ["nightTimeMax"] = 0, 
        ["defaultBubbleRadius"] = 0, 
        ["veloTime"] = 0, 
        ["veloSpeed"] = 0, 
        ["healRange"] = 0, 
        ["percentageHeal"] = 0, 
        ["cooldowns"] = 
    {
        ["E"] = 0, 
        ["G"] =0, 
        ["F"] = 0
    }
    }
    local Event = game:GetService("ReplicatedStorage").RemoteFunctions.HealBall
    Event:FireServer(A_1,A_2,A_3,A_4)
end)

local Mouse = game.Players.LocalPlayer:GetMouse()
Mouse.Button1Down:connect(function()
if clickbat then
local A_1 = Mouse.Target.Parent
local A_2 = 
{
	["nightTimeMin"] = 20, 
	["stealRange"] = 40, 
	["percentageDamage"] = 0.35, 
	["animFrames"] = 24, 
	["nightTimeMax"] = 8, 
	["defaultBubbleRadius"] = 12, 
	["veloTime"] = 0.35, 
	["veloSpeed"] = 60, 
	["healRange"] = 12, 
	["percentageHeal"] = 0.5, 
	["cooldowns"] = 
{
	["E"] = 1.5, 
	["G"] = 1.5, 
	["F"] = 1.5
}
}
local Event = game:GetService("ReplicatedStorage").RemoteFunctions.BatBlink
Event:FireServer(A_1, A_2)
end
end)
    Mouse.Button1Down:connect(function()
        if clickheal == true then
    local target = Mouse.Target.Parent
    local A_1 = -9999
    local A_2 = Mouse.Target.Parent
    local A_3 = 
    {
    game.Players.LocalPlayer
    }
    local A_4 = 
    {
        ["nightTimeMin"] = 0, 
        ["stealRange"] = 0, 
        ["percentageDamage"] = 0, 
        ["animFrames"] = 0, 
        ["nightTimeMax"] = 0, 
        ["defaultBubbleRadius"] = 0, 
        ["veloTime"] = 0, 
        ["veloSpeed"] = 0, 
        ["healRange"] = 0, 
        ["percentageHeal"] = 0, 
        ["cooldowns"] = 
    {
        ["E"] = 0, 
        ["G"] =0, 
        ["F"] = 0
    }
    }
    local Event = game:GetService("ReplicatedStorage").RemoteFunctions.HealBall
    Event:FireServer(A_1, A_2, A_3, A_4)
    end
    end)
Mouse.Button1Down:connect(function()
    if clickkill == true then
local target = Mouse.Target.Parent
local A_1 = 9999
local A_2 = Mouse.Target.Parent
local A_3 = 
{
game.Players.LocalPlayer
}
local A_4 = 
{
	["nightTimeMin"] = 0, 
	["stealRange"] = 0, 
	["percentageDamage"] = 0, 
	["animFrames"] = 0, 
	["nightTimeMax"] = 0, 
	["defaultBubbleRadius"] = 0, 
	["veloTime"] = 0, 
	["veloSpeed"] = 0, 
	["healRange"] = 0, 
	["percentageHeal"] = 0, 
	["cooldowns"] = 
{
	["E"] = 0, 
	["G"] =0, 
	["F"] = 0
}
}
local Event = game:GetService("ReplicatedStorage").RemoteFunctions.HealBall
Event:FireServer(A_1, A_2, A_3, A_4)
end
end)
Mouse.KeyDown:connect(function(key)
if key == "e" then
if autobat == true then
local A_1 = game.Players.LocalPlayer.Character
local A_2 = 
{
	["nightTimeMin"] = 20, 
	["stealRange"] = 40, 
	["percentageDamage"] = 0.35, 
	["animFrames"] = 24, 
	["nightTimeMax"] = 8, 
	["defaultBubbleRadius"] = 12, 
	["veloTime"] = 0.35, 
	["veloSpeed"] = 60, 
	["healRange"] = 12, 
	["percentageHeal"] = 0.5, 
	["cooldowns"] = 
{
	["E"] = 1.5, 
	["G"] = 1.5, 
	["F"] = 1.5
}
}
local Event = game:GetService("ReplicatedStorage").RemoteFunctions.BatBlink
Event:FireServer(A_1, A_2)
end
end
end)

local gunmod = ShouxLib:new("Gunmod", Color3.fromRGB(25, 25, 25), Color3.fromRGB(255, 255, 255));
local misc = ShouxLib:new("Misc", Color3.fromRGB(25, 25, 25), Color3.fromRGB(255, 255, 255));
local settings = ShouxLib:new("Settings", Color3.fromRGB(25, 25, 25), Color3.fromRGB(255, 255, 255))
settings:newBind("Hide Gui", function() game:GetService("CoreGui").ShouxLibGui.Enabled = not game:GetService("CoreGui").ShouxLibGui.Enabled; end, Enum.KeyCode.P);
settings:newBtn("E for Bat",function(enabled)
autobat = enabled
end);
misc:newBtn("Click to kill",function(enabled)
clickkill = enabled
end);
misc:newBtn("Click to heal",function(enabled)
clickheal = enabled
end);
misc:newBtn("Click to bat",function(enabled)
clickbat = enabled
end);
misc:newSlider("WalkSpeed", function(value) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value; end, 16, 500, 0);
misc:newSlider("JumpPower", function(value) game.Players.LocalPlayer.Character.Humanoid.JumpPower = value; end, 50, 500, 0);
gunmod:newBtn("AutoGun", function(enabled)
for _,v in pairs(getgc(true)) do
if type(v)=="table" and rawget(v,"FireRate") then
v.Auto = enabled
end
end
 end);
 misc:newBtn("Heal",function()
    
       local A_1 = -9999
    local A_2 = game.Players.LocalPlayer.Character
    local A_3 = 
    {
    game.Players.LocalPlayer
    }
    local A_4 = 
    {
        ["nightTimeMin"] = 0, 
        ["stealRange"] = 0, 
        ["percentageDamage"] = 0, 
        ["animFrames"] = 0, 
        ["nightTimeMax"] = 0, 
        ["defaultBubbleRadius"] = 0, 
        ["veloTime"] = 0, 
        ["veloSpeed"] = 0, 
        ["healRange"] = 0, 
        ["percentageHeal"] = 0, 
        ["cooldowns"] = 
    {
        ["E"] = 0, 
        ["G"] =0, 
        ["F"] = 0
    }
    }
    local Event = game:GetService("ReplicatedStorage").RemoteFunctions.HealBall
    Event:FireServer(A_1,A_2,A_3,A_4)
 end, true)
 misc:newBtn("LoopHeal",function(enabled)
 	loopheal = enabled
 end)
gunmod:newBtn("No Recoil",function() print("Enabled No Recoil")
for _,v in pairs(getgc(true)) do
if type(v)=="table" and rawget(v,"FireRate") then
v.CameraShakingEnabled = false
v.Recoil = 0
v.AngleX = 0
v.AngleY = 0
v.RecoilRedution = 0
v.RecoilSpeed = 0.01
end
end
; end, true)
gunmod:newBtn("No Spread",function() print("Enabled No Spread")
    for _,v in pairs(getgc(true)) do
    if type(v)=="table" and rawget(v,"FireRate") then
v.Spread = 0
    end
    end
    ; end, true)
    gunmod:newBtn("Fast Reload",function() print("Enabled Fast Reload")
        for _,v in pairs(getgc(true)) do
        if type(v)=="table" and rawget(v,"FireRate") then
    v.ReloadTime = 0
        end
        end
        ; end, true)
    gunmod:newBtn("Instant Damage",function() print("Enabled Instant Damage")
        for _,v in pairs(getgc(true)) do
        if type(v)=="table" and rawget(v,"FireRate") then
    v.BaseDamage = math.huge
        end
        end
        ; end, true)
        gunmod:newBtn("Inf Ammo",function() print("Enabled Inf Ammo")
            for _,v in pairs(getgc(true)) do
            if type(v)=="table" and rawget(v,"FireRate") then
        v.AmmoPerMag = math.huge
            end
            end
            ; end, true)
            gunmod:newBtn("Fast Firerate",function() print("Enabled Fast Firerate")
                for _,v in pairs(getgc(true)) do
                if type(v)=="table" and rawget(v,"FireRate") then
            v.FireRate = 00.00
                end
                end
                ; end, true)
                gunmod:newBtn("Rapid Fire",function() print("Enabled Rapid Fire")
                    for _,v in pairs(getgc(true)) do
                    if type(v)=="table" and rawget(v,"FireRate") then
                v.FireRate = 00.00
                v.Auto = true
                    end
                    end
                    ; end, true)
gunmod:newBtn("Gunmod", function() print("Enabled Gunmod") 
    for i,v in pairs(getgc(true)) do
        if type(v)=="table" and rawget(v,"MaxAmmo") then
v.MaxAmmo = math.huge
v.Ammo = math.huge
v.AmmoPerMag = math.huge
v.Auto = true
 v.Spread = 0
v.LightBrightness = 99999999999999
 v.Range = 99999999999999
 v.LightRange = 99999999999999
 v.VisibleTime = 999999
 v.LightColor = Color3.fromRGB(255,255,255)
 v.LightShadows = false
v.Lifesteal = math.huge
v.Recoil = 0
 v.WhizSoundEnabled = true
 v.FireRate = 0
v.ShellSize = Vector3.new(1,1,1)
v.AngleY = 0
v.AngleX = 0
v.CameraShakingEnabled = 0
v.WhizSoundVolume = 100
v.FlamingBullet = true
v.AllowCollide = true
v.Piercing = 10
v.BaseDamage = math.huge
v.ReloadTime = 0
end
end
; end, true);

ShouxLib:SetCategory(gunmod);
end)
spawn(function()
--//Scripted by dot666isgud
--//DM okscript#6903 for Help or questions

local blacklisted = {}

local autobat = true

for i,v in pairs(blacklisted) do

v:Kick("You are blacklisted in this script!")

end


local ScreenGui = Instance.new("ScreenGui")
local CmdBar = Instance.new("Frame")
local Line = Instance.new("Frame")
local UICreator = Instance.new("TextLabel")
local Prefix = Instance.new("TextLabel")
local Command = Instance.new("TextBox")
local Cmds = Instance.new("Frame")
local Cmd = Instance.new("TextLabel")
local Cmd0 = Instance.new("TextLabel")
local Cmd1 = Instance.new("TextLabel")
local UIListLayout = Instance.new("UIListLayout")
local Cmd_2 = Instance.new("TextLabel")
local Cmd_3 = Instance.new("TextLabel")
local Cmd_4 = Instance.new("TextLabel")
local Cmd_5 = Instance.new("TextLabel")
local Cmd_6 = Instance.new("TextLabel")
local Coomands = Instance.new("Frame")
local okbuster = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local UIListLayout1 = Instance.new("UIListLayout")
local e = Instance.new("TextLabel")
local e8 = Instance.new("TextLabel")
local e9 = Instance.new("TextLabel")
local e000 = Instance.new("TextLabel")
local e_2 = Instance.new("TextLabel")
local e1 = Instance.new("TextLabel")
local e_3 = Instance.new("TextLabel")
local e_4 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

local Teeams = Instance.new("Frame")
local okbuster1 = Instance.new("TextLabel")
local a = Instance.new("Frame")
local UIListLayout2 = Instance.new("UIListLayout")
local b = Instance.new("TextLabel")
local b_2 = Instance.new("TextLabel")
local b_3 = Instance.new("TextLabel")
local b_4 = Instance.new("TextLabel")
local b_5 = Instance.new("TextLabel")
local b_6 = Instance.new("TextLabel")
local c = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

CmdBar.Name = "CmdBar"
CmdBar.Parent = ScreenGui
CmdBar.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
CmdBar.BorderSizePixel = 0
CmdBar.Position = UDim2.new(0.0540000014, 0, 1.5, 0)
CmdBar.Size = UDim2.new(0, 684, 0, 33)

Line.Name = "Line"
Line.Parent = CmdBar
Line.BackgroundColor3 = Color3.new(0.572549, 1, 0.305882)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0, 0, 1, 0)
Line.Size = UDim2.new(0, 684, 0, 2)

UICreator.Name = "UICreator"
UICreator.Parent = CmdBar
UICreator.BackgroundColor3 = Color3.new(1, 1, 1)
UICreator.BackgroundTransparency = 1
UICreator.BorderSizePixel = 0
UICreator.Position = UDim2.new(0, 0, -0.636363626, 0)
UICreator.Size = UDim2.new(0, 200, 0, 15)
UICreator.Font = Enum.Font.SourceSans
UICreator.Text = "UI Made by dot666isgud"
UICreator.TextColor3 = Color3.new(1, 1, 1)
UICreator.TextSize = 21
UICreator.TextWrapped = true

Prefix.Name = "Prefix"
Prefix.Parent = CmdBar
Prefix.BackgroundColor3 = Color3.new(1, 1, 1)
Prefix.BackgroundTransparency = 1
Prefix.BorderSizePixel = 0
Prefix.Position = UDim2.new(0, 0, 0.0909090936, 0)
Prefix.Size = UDim2.new(-0.0248538014, 48, 0.787878811, 0)
Prefix.Font = Enum.Font.SourceSans
Prefix.Text = ";"
Prefix.TextColor3 = Color3.new(0.709804, 0.709804, 0.709804)
Prefix.TextScaled = true
Prefix.TextSize = 14
Prefix.TextWrapped = true

Command.Name = "Command"
Command.Parent = CmdBar
Command.BackgroundColor3 = Color3.new(1, 1, 1)
Command.BackgroundTransparency = 1
Command.BorderSizePixel = 0
Command.Position = UDim2.new(0.0350877196, 0, 0, 0)
Command.Size = UDim2.new(0.672514617, 200, 1, 0)
Command.Font = Enum.Font.SourceSans
Command.PlaceholderText = "Enter a command here"
Command.Text = ""
Command.TextColor3 = Color3.new(1, 1, 1)
Command.TextScaled = true
Command.TextSize = 14
Command.TextWrapped = true
Command.TextXAlignment = Enum.TextXAlignment.Left

Cmds.Name = "Cmds"
Cmds.Parent = CmdBar
Cmds.BackgroundColor3 = Color3.new(1, 1, 1)
Cmds.BackgroundTransparency = 1
Cmds.BorderSizePixel = 0
Cmds.Position = UDim2.new(0.141812861, 0, -5.909091, 0)
Cmds.Size = UDim2.new(0, 479, 0, 174)

Cmd.Name = "Cmd"
Cmd.Parent = Cmds
Cmd.BackgroundColor3 = Color3.new(1, 1, 1)
Cmd.BackgroundTransparency = 1
Cmd.Position = UDim2.new(0.0208768267, 0, 0.649425328, 0)
Cmd.Size = UDim2.new(0, 447, 0, 20)
Cmd.Font = Enum.Font.SourceSans
Cmd.Text = "LoopKill [Target] - LoopKills a player - ALPHA"
Cmd.TextColor3 = Color3.new(1, 1, 1)
Cmd.TextScaled = true
Cmd.TextSize = 14
Cmd.TextWrapped = true
Cmd.TextXAlignment = Enum.TextXAlignment.Left

Cmd1.Name = "Cmd"
Cmd1.Parent = Cmds
Cmd1.BackgroundColor3 = Color3.new(1, 1, 1)
Cmd1.BackgroundTransparency = 1
Cmd1.Position = UDim2.new(0.0208768267, 0, 0.649425328, 0)
Cmd1.Size = UDim2.new(0, 447, 0, 20)
Cmd1.Font = Enum.Font.SourceSans
Cmd1.Text = "Cmds - Shows extra Commands"
Cmd1.TextColor3 = Color3.new(1, 1, 1)
Cmd1.TextScaled = true
Cmd1.TextSize = 14
Cmd1.TextWrapped = true
Cmd1.TextXAlignment = Enum.TextXAlignment.Left

Cmd0.Name = "Cmd"
Cmd0.Parent = Cmds
Cmd0.BackgroundColor3 = Color3.new(1, 1, 1)
Cmd0.BackgroundTransparency = 1
Cmd0.Position = UDim2.new(0.0208768267, 0, 0.649425328, 0)
Cmd0.Size = UDim2.new(0, 447, 0, 20)
Cmd0.Font = Enum.Font.SourceSans
Cmd0.Text = "Bat [Target] - Makes a user turn in a bat for a couple seconds - BETA"
Cmd0.TextColor3 = Color3.new(1, 1, 1)
Cmd0.TextScaled = true
Cmd0.TextSize = 14
Cmd0.TextWrapped = true
Cmd0.TextXAlignment = Enum.TextXAlignment.Left

UIListLayout.Parent = Cmds
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom

Cmd_2.Name = "Cmd"
Cmd_2.Parent = Cmds
Cmd_2.BackgroundColor3 = Color3.new(1, 1, 1)
Cmd_2.BackgroundTransparency = 1
Cmd_2.Position = UDim2.new(0.0208768267, 0, 0.764367878, 0)
Cmd_2.Size = UDim2.new(0, 447, 0, 20)
Cmd_2.Font = Enum.Font.SourceSans
Cmd_2.Text = "Kill [Target] - Kills a player - BETA"
Cmd_2.TextColor3 = Color3.new(1, 1, 1)
Cmd_2.TextScaled = true
Cmd_2.TextSize = 14
Cmd_2.TextWrapped = true
Cmd_2.TextXAlignment = Enum.TextXAlignment.Left

Cmd_3.Name = "Cmd"
Cmd_3.Parent = Cmds
Cmd_3.BackgroundColor3 = Color3.new(1, 1, 1)
Cmd_3.BackgroundTransparency = 1
Cmd_3.Position = UDim2.new(0.0208768267, 0, 0.649425328, 0)
Cmd_3.Size = UDim2.new(0, 447, 0, 20)
Cmd_3.Font = Enum.Font.SourceSans
Cmd_3.Text = "WS [Amount] - Sets your Speed To the amount"
Cmd_3.TextColor3 = Color3.new(1, 1, 1)
Cmd_3.TextScaled = true
Cmd_3.TextSize = 14
Cmd_3.TextWrapped = true
Cmd_3.TextXAlignment = Enum.TextXAlignment.Left

Cmd_4.Name = "Cmd"
Cmd_4.Parent = Cmds
Cmd_4.BackgroundColor3 = Color3.new(1, 1, 1)
Cmd_4.BackgroundTransparency = 1
Cmd_4.Position = UDim2.new(0.0208768267, 0, 0.649425328, 0)
Cmd_4.Size = UDim2.new(0, 447, 0, 20)
Cmd_4.Font = Enum.Font.SourceSans
Cmd_4.Text = "Fly - Makes your character fly"
Cmd_4.TextColor3 = Color3.new(1, 1, 1)
Cmd_4.TextScaled = true
Cmd_4.TextSize = 14
Cmd_4.TextWrapped = true
Cmd_4.TextXAlignment = Enum.TextXAlignment.Left

Cmd_5.Name = "Cmd"
Cmd_5.Parent = Cmds
Cmd_5.BackgroundColor3 = Color3.new(1, 1, 1)
Cmd_5.BackgroundTransparency = 1
Cmd_5.Position = UDim2.new(0.0208768267, 0, 0.649425328, 0)
Cmd_5.Size = UDim2.new(0, 447, 0, 20)
Cmd_5.Font = Enum.Font.SourceSans
Cmd_5.Text = "Gunmod - Mods evry weapon that you have - BETA"
Cmd_5.TextColor3 = Color3.new(1, 1, 1)
Cmd_5.TextScaled = true
Cmd_5.TextSize = 14
Cmd_5.TextWrapped = true
Cmd_5.TextXAlignment = Enum.TextXAlignment.Left

Cmd_6.Name = "Cmd"
Cmd_6.Parent = Cmds
Cmd_6.BackgroundColor3 = Color3.new(1, 1, 1)
Cmd_6.BackgroundTransparency = 1
Cmd_6.Position = UDim2.new(0.0208768267, 0, 0.649425328, 0)
Cmd_6.Size = UDim2.new(0, 447, 0, 20)
Cmd_6.Font = Enum.Font.SourceSans
Cmd_6.Text = "Goto [Target] - Teleports you to a target"
Cmd_6.TextColor3 = Color3.new(1, 1, 1)
Cmd_6.TextScaled = true
Cmd_6.TextSize = 14
Cmd_6.TextWrapped = true
Cmd_6.TextXAlignment = Enum.TextXAlignment.Left



function Tween(O,T,S)
if O then
game:GetService("TweenService"):Create(O,TweenInfo.new(T),S):Play()
end
end
local Mouse = game.Players.LocalPlayer:GetMouse()
local CommandBar = script.Parent
Mouse.KeyDown:connect(function(key)
if key == "e" then
if autobat == true then
local A_1 = game.Players.LocalPlayer.Character
local A_2 = 
{
	["nightTimeMin"] = 20, 
	["stealRange"] = 40, 
	["percentageDamage"] = 0.35, 
	["animFrames"] = 24, 
	["nightTimeMax"] = 8, 
	["defaultBubbleRadius"] = 12, 
	["veloTime"] = 0.35, 
	["veloSpeed"] = 60, 
	["healRange"] = 12, 
	["percentageHeal"] = 0.5, 
	["cooldowns"] = 
{
	["E"] = 1.5, 
	["G"] = 1.5, 
	["F"] = 1.5
}
}
local Event = game:GetService("ReplicatedStorage").RemoteFunctions.BatBlink
Event:FireServer(A_1, A_2)
end
end
end)
Mouse.KeyDown:connect(function(Key)
if Key == [[;]] then
Tween(CmdBar,0.5,{Position = UDim2.new(0.054, 0,0.916, 0)})
Command:CaptureFocus()
wait(0.01)
Command.Text = ""
end
end)
Command.FocusLost:connect(function(Enter)
Tween(CmdBar,1.5,{Position = UDim2.new(0.054, 0,2, 0)})
if Enter then
if string.sub(Command.Text,1,5)=="kill " then
if string.sub(Command.Text, 6) == "me" then
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
if string.sub(Command.Text,6)=="all" then
for _,e in pairs(game.Players:GetChildren()) do
local A_1 = 9999
local A_2 = e.Character
local A_3 = 
{
game.Players.LocalPlayer
}
local A_4 = 
{
	["nightTimeMin"] = 0, 
	["stealRange"] = 0, 
	["percentageDamage"] = 0, 
	["animFrames"] = 0, 
	["nightTimeMax"] = 0, 
	["defaultBubbleRadius"] = 0, 
	["veloTime"] = 0, 
	["veloSpeed"] = 0, 
	["healRange"] = 0, 
	["percentageHeal"] = 0, 
	["cooldowns"] = 
{
	["E"] = 0, 
	["G"] =0, 
	["F"] = 0
}
}
local Event = game:GetService("ReplicatedStorage").RemoteFunctions.HealBall
Event:FireServer(A_1, A_2, A_3, A_4)
end
end
if string.sub(Command.Text,6)=="others" then
for _,e in pairs(game.Players:GetChildren()) do
if e ~= game.Players.LocalPlayer then
local A_1 = 9999
local A_2 = e.Character
local A_3 = 
{
game.Players.LocalPlayer
}
local A_4 = 
{
	["nightTimeMin"] = 0, 
	["stealRange"] = 0, 
	["percentageDamage"] = 0, 
	["animFrames"] = 0, 
	["nightTimeMax"] = 0, 
	["defaultBubbleRadius"] = 0, 
	["veloTime"] = 0, 
	["veloSpeed"] = 0, 
	["healRange"] = 0, 
	["percentageHeal"] = 0, 
	["cooldowns"] = 
{
	["E"] = 0, 
	["G"] =0, 
	["F"] = 0
}
}
local Event = game:GetService("ReplicatedStorage").RemoteFunctions.HealBall
Event:FireServer(A_1, A_2, A_3, A_4)
end
end
end
local Target = string.sub(Command.Text,6)
local A_1 = 9999
local A_2 = game.Players[Target].Character
local A_3 = 
{
game.Players.LocalPlayer
}
local A_4 = 
{
	["nightTimeMin"] = 0, 
	["stealRange"] = 0, 
	["percentageDamage"] = 0, 
	["animFrames"] = 0, 
	["nightTimeMax"] = 0, 
	["defaultBubbleRadius"] = 0, 
	["veloTime"] = 0, 
	["veloSpeed"] = 0, 
	["healRange"] = 0, 
	["percentageHeal"] = 0, 
	["cooldowns"] = 
{
	["E"] = 0, 
	["G"] =0, 
	["F"] = 0
}
}
local Event = game:GetService("ReplicatedStorage").RemoteFunctions.HealBall
Event:FireServer(A_1, A_2, A_3, A_4)
end

if string.sub(Command.Text,1,9)=="loopheal " then
local Target = string.sub(Command.Text,10)
while wait(0.001) do
local A_1 = -9999999
local A_2 = game.Players[Target].Character
local A_3 = 
{
game.Players.LocalPlayer
}
local A_4 = 
{
	["nightTimeMin"] = 0, 
	["stealRange"] = 0, 
	["percentageDamage"] = 0, 
	["animFrames"] = 0, 
	["nightTimeMax"] = 0, 
	["defaultBubbleRadius"] = 0, 
	["veloTime"] = 0, 
	["veloSpeed"] = 0, 
	["healRange"] = 0, 
	["percentageHeal"] = 0, 
	["cooldowns"] = 
{
	["E"] = 0, 
	["G"] =0, 
	["F"] = 0
}
}
local Event = game:GetService("ReplicatedStorage").RemoteFunctions.HealBall
Event:FireServer(A_1, A_2, A_3, A_4)

end
end

if string.sub(Command.Text,1,5)=="heal " then
local Target = string.sub(Command.Text,6)

if string.sub(Command.Text,6) == "others" then
for i,v in pairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer then
local A_1 = -9999999
local A_2 = v.Character
local A_3 = 
{
game.Players.LocalPlayer
}
local A_4 = 
{
	["nightTimeMin"] = 0, 
	["stealRange"] = 0, 
	["percentageDamage"] = 0, 
	["animFrames"] = 0, 
	["nightTimeMax"] = 0, 
	["defaultBubbleRadius"] = 0, 
	["veloTime"] = 0, 
	["veloSpeed"] = 0, 
	["healRange"] = 0, 
	["percentageHeal"] = 0, 
	["cooldowns"] = 
{
	["E"] = 0, 
	["G"] =0, 
	["F"] = 0
}
}
local Event = game:GetService("ReplicatedStorage").RemoteFunctions.HealBall
Event:FireServer(A_1, A_2, A_3, A_4)
end
end
end

if string.sub(Command.Text,6) == "all" then
for i,v in pairs(game.Players:GetChildren()) do
local A_1 = -9999999
local A_2 = v.Character
local A_3 = 
{
game.Players.LocalPlayer
}
local A_4 = 
{
	["nightTimeMin"] = 0, 
	["stealRange"] = 0, 
	["percentageDamage"] = 0, 
	["animFrames"] = 0, 
	["nightTimeMax"] = 0, 
	["defaultBubbleRadius"] = 0, 
	["veloTime"] = 0, 
	["veloSpeed"] = 0, 
	["healRange"] = 0, 
	["percentageHeal"] = 0, 
	["cooldowns"] = 
{
	["E"] = 0, 
	["G"] =0, 
	["F"] = 0
}
}
local Event = game:GetService("ReplicatedStorage").RemoteFunctions.HealBall
Event:FireServer(A_1, A_2, A_3, A_4)
end
end


if string.sub(Command.Text,6) == "me" then
local A_1 = -9999999
local A_2 = game.Players.LocalPlayer.Character
local A_3 = 
{
game.Players.LocalPlayer
}
local A_4 = 
{
	["nightTimeMin"] = 0, 
	["stealRange"] = 0, 
	["percentageDamage"] = 0, 
	["animFrames"] = 0, 
	["nightTimeMax"] = 0, 
	["defaultBubbleRadius"] = 0, 
	["veloTime"] = 0, 
	["veloSpeed"] = 0, 
	["healRange"] = 0, 
	["percentageHeal"] = 0, 
	["cooldowns"] = 
{
	["E"] = 0, 
	["G"] =0, 
	["F"] = 0
}
}
local Event = game:GetService("ReplicatedStorage").RemoteFunctions.HealBall
Event:FireServer(A_1, A_2, A_3, A_4)
end

local A_1 = -9999999
local A_2 = game.Players[Target].Character
local A_3 = 
{
game.Players.LocalPlayer
}
local A_4 = 
{
	["nightTimeMin"] = 0, 
	["stealRange"] = 0, 
	["percentageDamage"] = 0, 
	["animFrames"] = 0, 
	["nightTimeMax"] = 0, 
	["defaultBubbleRadius"] = 0, 
	["veloTime"] = 0, 
	["veloSpeed"] = 0, 
	["healRange"] = 0, 
	["percentageHeal"] = 0, 
	["cooldowns"] = 
{
	["E"] = 0, 
	["G"] =0, 
	["F"] = 0
}
}
local Event = game:GetService("ReplicatedStorage").RemoteFunctions.HealBall
Event:FireServer(A_1, A_2, A_3, A_4)
end
local loopedk = {}
if string.sub(Command.Text,1,9)=="loopkill " then
local Target = string.sub(Command.Text,10)
loopedk[Target] = true

while loopedk[Target] do
    wait()
    local A_1 = 9999
    local A_2 = game.Players:WaitForChild(Target).Character
    local A_3 = 
    {
    game.Players.LocalPlayer
    }
    local A_4 = 
    {
        ["nightTimeMin"] = 0, 
        ["stealRange"] = 0, 
        ["percentageDamage"] = 0, 
        ["animFrames"] = 0, 
        ["nightTimeMax"] = 0, 
        ["defaultBubbleRadius"] = 0, 
        ["veloTime"] = 0, 
        ["veloSpeed"] = 0, 
        ["healRange"] = 0, 
        ["percentageHeal"] = 0, 
        ["cooldowns"] = 
    {
        ["E"] = 0, 
        ["G"] =0, 
        ["F"] = 0
    }
    }
    local Event = game:GetService("ReplicatedStorage").RemoteFunctions.HealBall
    Event:FireServer(A_1, A_2, A_3, A_4)
end
end

if string.sub(Command.Text,1,11)=="unloopkill " then
    local Target = string.sub(Command.Text,12)
    loopedk[Target] = false
    
    while loopedk[Target] do
        local A_1 = 9999
        local A_2 = game.Players:WaitForChild(Target).Character
        local A_3 = 
        {
        game.Players.LocalPlayer
        }
        local A_4 = 
        {
            ["nightTimeMin"] = 0, 
            ["stealRange"] = 0, 
            ["percentageDamage"] = 0, 
            ["animFrames"] = 0, 
            ["nightTimeMax"] = 0, 
            ["defaultBubbleRadius"] = 0, 
            ["veloTime"] = 0, 
            ["veloSpeed"] = 0, 
            ["healRange"] = 0, 
            ["percentageHeal"] = 0, 
            ["cooldowns"] = 
        {
            ["E"] = 0, 
            ["G"] =0, 
            ["F"] = 0
        }
        }
        local Event = game:GetService("ReplicatedStorage").RemoteFunctions.HealBall
        Event:FireServer(A_1, A_2, A_3, A_4)
    end
    end

if string.sub(Command.Text,1,5)=="goto " then
local Target = string.sub(Command.Text,6)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character.HumanoidRootPart.CFrame
end

if string.sub(Command.Text,1,3)=="ws " then
local Amount = string.sub(Command.Text,4)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(Amount) or 0
end

if string.sub(Command.Text,1,7)=="gunmod" then
for i,v in next, getgc(true) do
if type(v) == "table" and rawget(v,"FireRate") then
v.Spread = 0
v.AmmoPerMag = 9999
v.FireRate= 00.00
v.BaseDamage = math.huge
v.Auto = true
v.ReloadTime = 0
v.CameraShakingEnabled = true
v.Recoil = 0
v.AngleX = 0
v.AngleY = 0
v.Spread = 0
v.RecoilRedution = 0
v.RecoilSpeed = 0.01
end
end
end

if string.sub(Command.Text,1,3)=="fly" then
repeat wait()
    until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 100
local speed = 100
 
function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "e" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
Fly()
end

if string.sub(Command.Text,1,8)=="loopbat " then
local Target = string.sub(Command.Text,9)
while wait(0.05) do
local A_1 = game.Players[Target].Character
local A_2 = 
{
	["nightTimeMin"] = 20, 
	["stealRange"] = 40, 
	["percentageDamage"] = 0.35, 
	["animFrames"] = 24, 
	["nightTimeMax"] = 8, 
	["defaultBubbleRadius"] = 12, 
	["veloTime"] = 0.35, 
	["veloSpeed"] = 60, 
	["healRange"] = 12, 
	["percentageHeal"] = 0.5, 
	["cooldowns"] = 
{
	["E"] = 1.5, 
	["G"] = 1.5, 
	["F"] = 1.5
}
}
local Event = game:GetService("ReplicatedStorage").RemoteFunctions.BatBlink
Event:FireServer(A_1, A_2)
end
end

if string.sub(Command.Text,1,4)=="bat " then
local Target = string.sub(Command.Text,5)

if Target == "all" then
for i,v in pairs(game.Players:GetChildren()) do
local A_1 = v.Character
local A_2 = 
{
	["nightTimeMin"] = 20, 
	["stealRange"] = 40, 
	["percentageDamage"] = 0.35, 
	["animFrames"] = 24, 
	["nightTimeMax"] = 8, 
	["defaultBubbleRadius"] = 12, 
	["veloTime"] = 0.35, 
	["veloSpeed"] = 60, 
	["healRange"] = 12, 
	["percentageHeal"] = 0.5, 
	["cooldowns"] = 
{
	["E"] = 1.5, 
	["G"] = 1.5, 
	["F"] = 1.5
}
}
local Event = game:GetService("ReplicatedStorage").RemoteFunctions.BatBlink
Event:FireServer(A_1, A_2)
end
end

if Target == "others" then
for i,v in pairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer then
local A_1 = v.Character
local A_2 = 
{
	["nightTimeMin"] = 20, 
	["stealRange"] = 40, 
	["percentageDamage"] = 0.35, 
	["animFrames"] = 24, 
	["nightTimeMax"] = 8, 
	["defaultBubbleRadius"] = 12, 
	["veloTime"] = 0.35, 
	["veloSpeed"] = 60, 
	["healRange"] = 12, 
	["percentageHeal"] = 0.5, 
	["cooldowns"] = 
{
	["E"] = 1.5, 
	["G"] = 1.5, 
	["F"] = 1.5
}
}
local Event = game:GetService("ReplicatedStorage").RemoteFunctions.BatBlink
Event:FireServer(A_1, A_2)
end
end
end

local A_1 = game.Players[Target].Character
local A_2 = 
{
	["nightTimeMin"] = 20, 
	["stealRange"] = 40, 
	["percentageDamage"] = 0.35, 
	["animFrames"] = 24, 
	["nightTimeMax"] = 8, 
	["defaultBubbleRadius"] = 12, 
	["veloTime"] = 0.35, 
	["veloSpeed"] = 60, 
	["healRange"] = 12, 
	["percentageHeal"] = 0.5, 
	["cooldowns"] = 
{
	["E"] = 1.5, 
	["G"] = 1.5, 
	["F"] = 1.5
}
}
local Event = game:GetService("ReplicatedStorage").RemoteFunctions.BatBlink
Event:FireServer(A_1, A_2)
end

if string.sub(Command.Text,1,4)=="cmds" then
Coomands.Visible = true
end

if string.sub(Command.Text,1,7)=="respawn" then
game.ReplicatedStorage.Remote.changeTeam:InvokeServer(game.Players.LocalPlayer.TeamColor)
end

if string.sub(Command.Text,1,5)=="team " then
local team = string.sub(Command.Text,6)
if team == "criminal" then
game.ReplicatedStorage.Remote.changeTeam:InvokeServer(game.Teams.Criminals.TeamColor)
end
if team == "civilian" then
game.ReplicatedStorage.Remote.changeTeam:InvokeServer(game.Teams.Citizen.TeamColor)
end
if team == "cop" then
game.ReplicatedStorage.Remote.changeTeam:InvokeServer(game.Teams["Police Officers"].TeamColor)
end
if team == "hitman" then
game.ReplicatedStorage.Remote.changeTeam:InvokeServer(game.Teams["Hitman (VIP)"].TeamColor)
end
if team == "deathbringer" then
game.ReplicatedStorage.Remote.changeTeam:InvokeServer(game.Teams["DeathBringer"].TeamColor)
end
if team == "vip" then
game.ReplicatedStorage.Remote.changeTeam:InvokeServer(game.Teams["VIP"].TeamColor)
end
end

if string.sub(Command.Text,1,5)=="view " then
local Target = string.sub(Command.Text,6)

workspace.CurrentCamera.CameraSubject = game.Players[Target].Character
end

if string.sub(Command.Text,1,5)=="teams" then
Teeams.Visible = true
end
end
end)

Command:GetPropertyChangedSignal("Text"):Connect(function()
local text = string.lower(Command.Text)
for i,v in pairs(Cmds:GetChildren()) do
if v:IsA("TextLabel") then
v.Visible = true
local ftext = string.lower(v.Text)
if not string.match(ftext, text) then
v.Visible = false
end
end
end
end)

Coomands.Name = "Coomands"
Coomands.Visible = false
Coomands.Parent = ScreenGui
Coomands.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Coomands.BorderColor3 = Color3.new(0.419608, 1, 0.376471)
Coomands.BorderSizePixel = 2
Coomands.Position = UDim2.new(0.252980143, 0, 0.315112531, 0)
Coomands.Size = UDim2.new(0, 196, 0, 258)

okbuster.Name = "okbuster"
okbuster.Parent = Coomands
okbuster.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
okbuster.BorderSizePixel = 0
okbuster.Size = UDim2.new(1, 0, -0.00387596898, 17)
okbuster.Font = Enum.Font.SourceSans
okbuster.Text = "Extra Commands"
okbuster.TextColor3 = Color3.new(1, 1, 1)
okbuster.TextScaled = true
okbuster.TextSize = 14
okbuster.TextWrapped = true

Frame.Parent = Coomands
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BackgroundTransparency = 1
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 0.108527131, 0)
Frame.Size = UDim2.new(1, 0, -0.20542635, 258)

UIListLayout1.Parent = Frame
UIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout1.Padding = UDim.new(0, 4)

e.Name = "e"
e.Parent = Frame
e.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
e.BorderSizePixel = 0
e.Position = UDim2.new(0, 0, 0.108527131, 0)
e.Size = UDim2.new(1, 0, -0.00387596898, 17)
e.Font = Enum.Font.SourceSans
e.Text = "View [Target] - Lets you spy the user"
e.TextColor3 = Color3.new(1, 1, 1)
e.TextScaled = true
e.TextSize = 21
e.TextWrapped = true
e.TextXAlignment = Enum.TextXAlignment.Left

e8.Name = "e"
e8.Parent = Frame
e8.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
e8.BorderSizePixel = 0
e8.Position = UDim2.new(0, 0, 0.108527131, 0)
e8.Size = UDim2.new(1, 0, -0.00387596898, 17)
e8.Font = Enum.Font.SourceSans
e8.Text = "NukeGun- Makes evry gun in your inventory turn into NUKES!"
e8.TextColor3 = Color3.new(1, 1, 1)
e8.TextScaled = true
e8.TextSize = 21
e8.TextWrapped = true
e8.TextXAlignment = Enum.TextXAlignment.Left

e_2.Name = "e"
e_2.Parent = Frame
e_2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
e_2.BorderSizePixel = 0
e_2.Position = UDim2.new(0, 0, 0.108527131, 0)
e_2.Size = UDim2.new(1, 0, -0.00387596898, 17)
e_2.Font = Enum.Font.SourceSans
e_2.Text = "Team [TeamName] - Lets you switch Teams - BETA"
e_2.TextColor3 = Color3.new(1, 1, 1)
e_2.TextScaled = true
e_2.TextSize = 21
e_2.TextWrapped = true
e_2.TextXAlignment = Enum.TextXAlignment.Left

e_3.Name = "e"
e_3.Parent = Frame
e_3.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
e_3.BorderSizePixel = 0
e_3.Position = UDim2.new(0, 0, 0.108527131, 0)
e_3.Size = UDim2.new(1, 0, -0.00387596898, 17)
e_3.Font = Enum.Font.SourceSans
e_3.Text = "Respawn - Respawns you"
e_3.TextColor3 = Color3.new(1, 1, 1)
e_3.TextScaled = true
e_3.TextSize = 21
e_3.TextWrapped = true
e_3.TextXAlignment = Enum.TextXAlignment.Left

e_4.Name = "e"
e_4.Parent = Frame
e_4.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
e_4.BorderSizePixel = 0
e_4.Position = UDim2.new(0, 0, 0.108527131, 0)
e_4.Size = UDim2.new(1, 0, -0.00387596898, 17)
e_4.Font = Enum.Font.SourceSans
e_4.Text = "Teams - Shows a list of teams"
e_4.TextColor3 = Color3.new(1, 1, 1)
e_4.TextScaled = true
e_4.TextSize = 21
e_4.TextWrapped = true
e_4.TextXAlignment = Enum.TextXAlignment.Left

e000.Name = "e"
e000.Parent = Frame
e000.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
e000.BorderSizePixel = 0
e000.Position = UDim2.new(0, 0, 0.108527131, 0)
e000.Size = UDim2.new(1, 0, -0.00387596898, 17)
e000.Font = Enum.Font.SourceSans
e000.Text	= "Heal - Heals a user"
e000.TextColor3 = Color3.new(1, 1, 1)
e000.TextScaled = true
e000.TextSize = 21
e000.TextWrapped = true
e000.TextXAlignment = Enum.TextXAlignment.Left

e1.Name = "e"
e1.Parent = Frame
e1.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
e1.BorderSizePixel = 0
e1.Position = UDim2.new(0, 0, 0.108527131, 0)
e1.Size = UDim2.new(1, 0, -0.00387596898, 17)
e1.Font = Enum.Font.SourceSans
e1.Text = "Loopbat - Loops a user using the bat - Alpha"
e1.TextColor3 = Color3.new(1, 1, 1)
e1.TextScaled = true
e1.TextSize = 21
e1.TextWrapped = true
e1.TextXAlignment = Enum.TextXAlignment.Left

TextButton.Parent = Coomands
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.BackgroundTransparency = 1
TextButton.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextButton.Position = UDim2.new(0, 0, 0.918604672, 0)
TextButton.Size = UDim2.new(1, 0, 0, 21)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Close"
TextButton.TextColor3 = Color3.new(1, 0.160784, 0.160784)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true
TextButton.MouseButton1Click:connect(function()
Coomands.Visible = false
end)

Teeams.Name = "Teeams"
Teeams.Visible = false
Teeams.Parent = ScreenGui
Teeams.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Teeams.BorderColor3 = Color3.new(0.419608, 1, 0.376471)
Teeams.BorderSizePixel = 2
Teeams.Position = UDim2.new(0.252980143, 0, 0.315112531, 0)
Teeams.Size = UDim2.new(0, 196, 0, 258)

okbuster1.Name = "okbuster1"
okbuster1.Parent = Teeams
okbuster1.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
okbuster1.BorderSizePixel = 0
okbuster1.Size = UDim2.new(1, 0, -0.00387596898, 17)
okbuster1.Font = Enum.Font.SourceSans
okbuster1.Text = "Teams"
okbuster1.TextColor3 = Color3.new(1, 1, 1)
okbuster1.TextScaled = true
okbuster1.TextSize = 14
okbuster1.TextWrapped = true

a.Name = "a"
a.Parent = Teeams
a.BackgroundColor3 = Color3.new(1, 1, 1)
a.BackgroundTransparency = 1
a.BorderSizePixel = 0
a.Position = UDim2.new(0, 0, 0.108527131, 0)
a.Size = UDim2.new(1, 0, -0.20542635, 258)

UIListLayout2.Parent = a
UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout2.Padding = UDim.new(0, 4)

b.Name = "b"
b.Parent = a
b.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
b.BorderSizePixel = 0
b.Position = UDim2.new(0, 0, 0.108527131, 0)
b.Size = UDim2.new(1, 0, -0.00387596898, 17)
b.Font = Enum.Font.SourceSans
b.Text = "criminal"
b.TextColor3 = Color3.new(1, 1, 1)
b.TextScaled = true
b.TextSize = 21
b.TextWrapped = true
b.TextXAlignment = Enum.TextXAlignment.Left

b_2.Name = "b"
b_2.Parent = a
b_2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
b_2.BorderSizePixel = 0
b_2.Position = UDim2.new(0, 0, 0.108527131, 0)
b_2.Size = UDim2.new(1, 0, -0.00387596898, 17)
b_2.Font = Enum.Font.SourceSans
b_2.Text = "vip"
b_2.TextColor3 = Color3.new(1, 1, 1)
b_2.TextScaled = true
b_2.TextSize = 21
b_2.TextWrapped = true
b_2.TextXAlignment = Enum.TextXAlignment.Left

b_3.Name = "b"
b_3.Parent = a
b_3.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
b_3.BorderSizePixel = 0
b_3.Position = UDim2.new(0, 0, 0.108527131, 0)
b_3.Size = UDim2.new(1, 0, -0.00387596898, 17)
b_3.Font = Enum.Font.SourceSans
b_3.Text = "deathbringer"
b_3.TextColor3 = Color3.new(1, 1, 1)
b_3.TextScaled = true
b_3.TextSize = 21
b_3.TextWrapped = true
b_3.TextXAlignment = Enum.TextXAlignment.Left

b_4.Name = "b"
b_4.Parent = a
b_4.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
b_4.BorderSizePixel = 0
b_4.Position = UDim2.new(0, 0, 0.108527131, 0)
b_4.Size = UDim2.new(1, 0, -0.00387596898, 17)
b_4.Font = Enum.Font.SourceSans
b_4.Text = "hitman"
b_4.TextColor3 = Color3.new(1, 1, 1)
b_4.TextScaled = true
b_4.TextSize = 21
b_4.TextWrapped = true
b_4.TextXAlignment = Enum.TextXAlignment.Left

b_5.Name = "b"
b_5.Parent = a
b_5.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
b_5.BorderSizePixel = 0
b_5.Position = UDim2.new(0, 0, 0.108527131, 0)
b_5.Size = UDim2.new(1, 0, -0.00387596898, 17)
b_5.Font = Enum.Font.SourceSans
b_5.Text = "cop"
b_5.TextColor3 = Color3.new(1, 1, 1)
b_5.TextScaled = true
b_5.TextSize = 21
b_5.TextWrapped = true
b_5.TextXAlignment = Enum.TextXAlignment.Left

b_6.Name = "b"
b_6.Parent = a
b_6.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
b_6.BorderSizePixel = 0
b_6.Position = UDim2.new(0, 0, 0.108527131, 0)
b_6.Size = UDim2.new(1, 0, -0.00387596898, 17)
b_6.Font = Enum.Font.SourceSans
b_6.Text = "civilian"
b_6.TextColor3 = Color3.new(1, 1, 1)
b_6.TextScaled = true
b_6.TextSize = 21
b_6.TextWrapped = true
b_6.TextXAlignment = Enum.TextXAlignment.Left

c.Name = "c"
c.Parent = Teeams
c.BackgroundColor3 = Color3.new(1, 1, 1)
c.BackgroundTransparency = 1
c.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
c.Position = UDim2.new(0, 0, 0.918604672, 0)
c.Size = UDim2.new(1, 0, 0, 21)
c.Font = Enum.Font.SourceSans
c.Text = "Close"
c.TextColor3 = Color3.new(1, 0.160784, 0.160784)
c.TextScaled = true
c.TextSize = 14
c.TextWrapped = true
c.MouseButton1Click:connect(function() Teeams.Visible = false end)
end)
spawn(function()
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiwi-i/wallys-ui-fork/master/lib.lua", true))()
library.options.underlinecolor = "rainbow"
local t =  library:CreateWindow("Misc")
local speed = t:Slider("Speed", {min = 16,max = 250},function(current) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = current end)
local jump = t:Slider("JumpPower", {min = 50,max = 350},function(current) game.Players.LocalPlayer.Character.Humanoid.JumpPower = current end)
local vamp = t:Button("FreeVamp",function() if game.Players.LocalPlayer.Team == "Team Selection" then game.Players.LocalPlayer.UserId = game.CreatorId else game.Players.LocalPlayer.UserId = game.CreatorId game.Players.LocalPlayer.Character.Humanoid.Health = 0 end end)
t:Bind("Toggle Key",
{flag = "Toggle", owo = true},
function()
library.toggled = not library.toggled;
for i, data in next, library.queue do
local pos = (library.toggled and data.p or UDim2.new(-1, 0, -0.5,0))
data.w:TweenPosition(pos, (library.toggled and 'Out' or 'In'), 'Quad', 0.15, true)
wait();
end
end)
local gunmodding = library:CreateWindow("GunMods")
local normall = gunmodding:Button("ModGun",function()
local mod2 = require(game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Setting)

mod2.BaseDamage = 999
mod2.AmmoPerMag = math.huge
mod2.ReloadTime = 0
mod2.Auto = true
mod2.ShotgunEnabled = true
mod2.Range = 99999999
mod2.Bullets = 500
mod2.FireRate = 0
mod2.CameraShakingEnabled = true
mod2.Recoil = 0
mod2.AngleX = 0
mod2.AngleY = 0
mod2.RecoilRedution = 0
mod2.RecoilSpeed = 0.01
mod2.IronsightEnabled = false
mod2.ExplosiveEnabled = false
mod2.Radius = math.huge
mod2.Lifesteal = math.huge
mod2.SniperEnabled = true end)
local nuke = gunmodding:Button("NukeGun",function()
local mod2 = require(game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Setting)

mod2.BaseDamage = 999
mod2.AmmoPerMag = math.huge
mod2.ReloadTime = 0
mod2.Auto = true
mod2.ShotgunEnabled = true
mod2.Range = 99999999
mod2.Bullets = 500
mod2.FireRate = 0
mod2.CameraShakingEnabled = true
mod2.Recoil = 0
mod2.AngleX = 0
mod2.AngleY = 0
mod2.RecoilRedution = 0
mod2.RecoilSpeed = 0.01
mod2.IronsightEnabled = false
mod2.ExplosiveEnabled = true
mod2.Radius = math.huge
mod2.Lifesteal = math.huge
mod2.SniperEnabled = true end)

local teams = library:CreateWindow("TeamChaging")
local civilain = teams:Button("Citizen",function() game.ReplicatedStorage.Remote.changeTeam:InvokeServer(BrickColor.new("New yeller")) end)
local crim = teams:Button("Criminal",function() game.ReplicatedStorage.Remote.changeTeam:InvokeServer(BrickColor.new("Really red")) end)
local db = teams:Button("DeathBringer",function() game.ReplicatedStorage.Remote.changeTeam:InvokeServer(BrickColor.new("Black")) end)
local hitman = teams:Button("Hitman",function() game.ReplicatedStorage.Remote.changeTeam:InvokeServer(BrickColor.new("Really black")) end)
local mafia = teams:Button("Mafia",function() game.ReplicatedStorage.Remote.changeTeam:InvokeServer(BrickColor.new("Bright violet")) end)
local vip = teams:Button("Vip",function() game.ReplicatedStorage.Remote.changeTeam:InvokeServer(BrickColor.new("Light orange")) end)
local swat = teams:Button("Swat",function() game.ReplicatedStorage.Remote.changeTeam:InvokeServer(BrickColor.new("Camo")) end)
local cop = teams:Button("Police",function() game.ReplicatedStorage.Remote.changeTeam:InvokeServer(BrickColor.new("Bright blue")) end)
local fast = teams:Button("Fast food Workers",function() game.ReplicatedStorage.Remote.changeTeam:InvokeServer(BrickColor.new("Bright orange")) end)
local jail = teams:Button("Jailed Criminals",function() game.ReplicatedStorage.Remote.changeTeam:InvokeServer(BrickColor.new("Sand red")) end)
local priest = teams:Button("Priest",function() game.ReplicatedStorage.Remote.changeTeam:InvokeServer(BrickColor.new("Brown")) end)
end)
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
	if k == 'q' then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(332.182587, 444.439758, -401.146729)
	end
end)

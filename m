repeat
    wait()
until game:IsLoaded()
loadstring(game:HttpGet("https://raw.githubusercontent.com/lel69/ligma/main/lol"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/lel69/ligma/main/is%3F"))()
if getgenv().StratMaintance == true then
    repeat
        wait()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lel69/ligma/main/is%3F"))()
        getgenv().status = "Script in maintenance, waiting..."
        wait(1)
    until getgenv().StratMaintance == false or getgenv().SkipStratMaintance == true
end
getgenv().status = "Loading"
getgenv().count = 0
if game.PlaceId == 5591597781 then
    game:GetService("Workspace").Towers.ChildAdded:Connect(
        function(a)
            getgenv().count = getgenv().count + 1
        end
    )
end
if not isfile("TDS_AutoStrat/UseCount.txt") then
    writefile("TDS_AutoStrat/UseCount.txt", "1")
else
    local a = readfile("TDS_AutoStrat/UseCount.txt")
    a = tonumber(a) + 1
    writefile("TDS_AutoStrat/UseCount.txt", tostring(a))
end
local K = {}
local H = nil
local N = game:WaitForChild("ReplicatedStorage")
local L = N:WaitForChild("RemoteFunction")
local m = N:WaitForChild("RemoteEvent")
function M()
    if game.PlaceId == 5591597781 then
        return true
    else
        return false
    end
end
if not M() then
    wait(1)
    if not isfolder("TDS_AutoStrat") then
        makefolder("TDS_AutoStrat")
    end
    if not isfile("TDS_AutoStrat/Troll.txt") then
        local a = game:GetService("Players").LocalPlayer.PlayerGui.LobbyGui.Prompt.Containers.Message.Notice
        local b = game:GetService("Players").LocalPlayer.PlayerGui.LobbyGui
        a.Message.Text =
            "We are sorry to announce this to you, your account has been detected using one of the following cheats/scripts : AutoFarm, AutoStrat, Equipper, TDS Recorder. Your account has been reseted and you got disqualified from this event and every upcoming one."
        a.Visible = true
        b.Menu.Buttons.Achievements:Remove()
        for a, a in pairs(game:GetService("Players").LocalPlayer.PlayerGui.LobbyGui.Hotbar.Troops:GetDescendants()) do
            if a.Name == "Hint" or a.Name == "Icon" or a.Name == "Label" then
                a:Remove()
            end
        end
        b.Hotbar.Level.Label.Text = "Level 0 [0/100]"
        b.Hotbar.Level.Bar:Remove()
        b.Hotbar.Stats.Triumphs.Amount.Text = "0"
        b.Hotbar.Stats.Wins.Amount.Text = "0"
        b.Menu.Containers.Shop:Remove()
        for a, a in pairs(b.Menu.Containers.Inventory.Content.Pages.Troops.Display:GetDescendants()) do
            a:Remove()
        end
        for a, a in pairs(b.Menu.Containers.Inventory.Content.Pages.Troops.Holder.Troops:GetDescendants()) do
            a:Remove()
        end
        for a, a in pairs(b.Menu.Containers.Inventory.Content.Pages.Emotes.Display:GetDescendants()) do
            a:Remove()
        end
        for a, a in pairs(b.Menu.Containers.Inventory.Content.Pages.Emotes.Holder:GetDescendants()) do
            a:Remove()
        end
        for a, a in pairs(b.Menu.Containers.Inventory.Content.Pages.Crates.Display:GetDescendants()) do
            a:Remove()
        end
        for a, a in pairs(b.Menu.Containers.Inventory.Content.Pages.Crates.Holder:GetDescendants()) do
            a:Remove()
        end
        writefile(
            "TDS_AutoStrat/Troll.txt",
            "ctnC+5tLWhjjJZccUxSTG8casrMsCITT/za/3ELcQSVzz/Wm0xpJ2Ksf11a/ZZkDcuZ4fLp3SCz23g2zeiAnVaygF1HK6IgZvZqibdDKAgqz20JoMIZhJ4OofcXh+hspdYxF2WAJXsd1Ixx9FXwOSg=="
        )
        writefile("xdieee.txt", "KxjhVghCJH")
    else
        local a = game:GetService("Players").LocalPlayer.PlayerGui.LobbyGui.Prompt.Containers.Message.Notice
        a.Message.Text = "Thing with data wipe was a joke lol, have a nice day!"
        a.Visible = true
    end
end
if M() and getgenv().PotatoPC then
    spawn(
        function()
            wait(3)
            for a, a in pairs(game.Workspace.Map:GetChildren()) do
                if a.Name ~= "Paths" then
                    a:Remove()
                end
            end
            local a = game.Workspace.Terrain
            a.Transparency = 0
            a.WaterReflectance = 0
            a.WaterTransparency = 0
            a.WaterWaveSize = 0
            a.WaterWaveSpeed = 0
        end
    )
end
if M() then
    spawn(
        function()
            wait(3)
            for a, a in pairs(game:GetService("Lighting"):GetChildren()) do
                if a.Name ~= "Sky" then
                    a:Remove()
                end
            end
            game.Lighting.FogStart = 10000000
            game.Lighting.FogEnd = 10000000
            game.Lighting.Brightness = 1
            local d
            if getgenv().CameraSys == true then
                d = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 50, 0)
            else
                d = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 20, 0)
            end
            local g = Instance.new("Part")
            g.Transparency = 1
            g.Anchored = true
            g.CanCollide = true
            g.Parent = game.Workspace
            g.CFrame = d
            if getgenv().CameraSys == true then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 55, 0)
            else
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 25, 0)
            end
            if game.CoreGui:FindFirstChild("AutoStratsLogger") then
                game.CoreGui:FindFirstChild("AutoStratsLogger"):Remove()
            end
            local d = Instance.new("ScreenGui")
            local m = Instance.new("Frame")
            local n = Instance.new("ImageLabel")
            local g = Instance.new("Frame")
            local l = Instance.new("TextLabel")
            local B = Instance.new("ScrollingFrame")
            d.Name = "AutoStratsLogger"
            d.Parent = game:WaitForChild("CoreGui")
            d.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            m.Name = "Main"
            m.Parent = d
            m.BackgroundColor3 = Color3.fromRGB(23, 21, 30)
            m.BorderSizePixel = 0
            m.Position = UDim2.new(0.544935644, 0, 0.355803162, 0)
            m.Size = UDim2.new(0, 500, 0, 400)
            n.Name = "Glow"
            n.Parent = m
            n.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            n.BackgroundTransparency = 1.000
            n.BorderSizePixel = 0
            n.Position = UDim2.new(0, -15, 0, -15)
            n.Size = UDim2.new(1, 30, 1, 30)
            n.ZIndex = 0
            n.Image = "rbxassetid://4996891970"
            n.ImageColor3 = Color3.fromRGB(15, 15, 15)
            n.ScaleType = Enum.ScaleType.Slice
            n.SliceCenter = Rect.new(20, 20, 280, 280)
            g.Name = "Top_Container"
            g.Parent = m
            g.AnchorPoint = Vector2.new(0.5, 0)
            g.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            g.BackgroundTransparency = 1.000
            g.Position = UDim2.new(0.5, 0, 0, 18)
            g.Size = UDim2.new(1, -40, 0, 20)
            l.Name = "Title"
            l.Parent = g
            l.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            l.BackgroundTransparency = 1.000
            l.Position = UDim2.new(0.00764120743, 0, -0.400000006, 0)
            l.Size = UDim2.new(0.981785059, 0, 1.45000005, 0)
            l.Font = Enum.Font.GothamBlack
            l.Text = "AUTOSTRATS LOGGER"
            l.TextColor3 = Color3.fromRGB(255, 255, 255)
            l.TextSize = 30.000
            l.TextXAlignment = Enum.TextXAlignment.Left
            B.Name = "Scroll"
            B.Parent = m
            B.Active = true
            B.AnchorPoint = Vector2.new(0.5, 0)
            B.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            B.BackgroundTransparency = 1.000
            B.BorderSizePixel = 0
            B.Position = UDim2.new(0.5, 4, 0, 59)
            B.Size = UDim2.new(1, -20, 1, -67)
            B.BottomImage = "rbxassetid://5234388158"
            B.CanvasSize = UDim2.new(200, 0, 100, 0)
            B.MidImage = "rbxassetid://5234388158"
            B.ScrollBarThickness = 8
            B.TopImage = "rbxassetid://5234388158"
            B.VerticalScrollBarInset = Enum.ScrollBarInset.Always
            local function d()
                local a = Instance.new("LocalScript", m)
                a.Name = "Dragify"
                local b = game:GetService("UserInputService")
                function k(c)
                    u = nil
                    r = nil
                    q = nil
                    local a = nil
                    function j(a)
                        local a = a.Position - q
                        local a = UDim2.new(A.X.Scale, A.X.Offset + a.X, A.Y.Scale, A.Y.Offset + a.Y)
                        game:GetService("TweenService"):Create(c, TweenInfo.new(0.1), {Position = a}):Play()
                    end
                    c.InputBegan:Connect(
                        function(a)
                            if
                                (a.UserInputType == Enum.UserInputType.MouseButton1 or
                                    a.UserInputType == Enum.UserInputType.Touch) and
                                    b:GetFocusedTextBox() == nil
                             then
                                u = true
                                q = a.Position
                                A = c.Position
                                a.Changed:Connect(
                                    function()
                                        if a.UserInputState == Enum.UserInputState.End then
                                            u = false
                                        end
                                    end
                                )
                            end
                        end
                    )
                    c.InputChanged:Connect(
                        function(a)
                            if
                                a.UserInputType == Enum.UserInputType.MouseMovement or
                                    a.UserInputType == Enum.UserInputType.Touch
                             then
                                r = a
                            end
                        end
                    )
                    game:GetService("UserInputService").InputChanged:Connect(
                        function(a)
                            if a == r and u then
                                j(a)
                            end
                        end
                    )
                end
                k(a.Parent)
            end
            d()
            local function d()
                local a = Instance.new("LocalScript", m)
                a.Name = "Positioning"
                a.Parent:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), "Out", "Quad", 1)
                a.Parent.Draggable = true
            end
            d()
            local g = -0.0073
            writefile("TDS_AutoStrat/LastLog.txt", "--[START OF LOG]--")
            function E(a)
                if a <= 9 then
                    local a = "0" .. a
                    return a
                else
                    return a
                end
            end
            function H(c)
                local d = os.date("*t")["hour"]
                local b = os.date("*t")["min"]
                local e = os.date("*t")["sec"]
                local a = Color3.fromRGB(255, 255, 255)
                local f = Instance.new("TextLabel", B)
                f.Text = "[" .. E(d) .. ":" .. E(b) .. ":" .. E(e) .. "] " .. c
                appendfile("TDS_AutoStrat/LastLog.txt", "\n[" .. E(d) .. ":" .. E(b) .. ":" .. E(e) .. "] " .. c)
                f.Size = UDim2.new(0.005, 0, 0.001, 0)
                f.Position = UDim2.new(0, 0, .007 + g, 0)
                f.Font = Enum.Font.SourceSansSemibold
                f.TextColor3 = a
                f.TextStrokeTransparency = 0
                f.BackgroundTransparency = 1
                f.BackgroundColor3 = Color3.new(0, 0, 0)
                f.BorderSizePixel = 0
                f.BorderColor3 = Color3.new(0, 0, 0)
                f.FontSize = "Size14"
                f.TextXAlignment = Enum.TextXAlignment.Left
                f.ClipsDescendants = true
                g = g + 0.0005
            end
            spawn(
                function()
                    local d = false
                    d = not d
                    game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                    s = Enum.KeyCode.LeftShift
                    h = game.Players.LocalPlayer
                    I = game.Workspace.CurrentCamera
                    G = h:GetMouse()
                    D = game:GetService("UserInputService")
                    C = Vector2.new(0, 0)
                    c = Vector3.new(0, 0, 0)
                    x = C
                    t = Vector2.new(0, 0)
                    v = false
                    y = 70
                    w = false
                    i = 3
                    z = {}
                    p = {
                        [Enum.KeyCode.D] = Vector3.new(1, 0, 0),
                        [Enum.KeyCode.A] = Vector3.new(-1, 0, 0),
                        [Enum.KeyCode.S] = Vector3.new(0, 0, 1),
                        [Enum.KeyCode.W] = Vector3.new(0, 0, -1),
                        [Enum.KeyCode.E] = Vector3.new(0, 1, 0),
                        [Enum.KeyCode.Q] = Vector3.new(0, -1, 0)
                    }
                    f = function(a, b, c)
                        if c == 1 then
                            return b
                        else
                            if tonumber(a) then
                                return a * (1 - c) + (b * c)
                            else
                                return a:Lerp(b, c)
                            end
                        end
                    end
                    a = function(b, c, a)
                        return Vector3.new(
                            math.clamp(b.X, c.X, a.X),
                            math.clamp(b.Y, c.Y, a.Y),
                            math.clamp(b.Z, c.Z, a.Z)
                        )
                    end
                    D.InputChanged:connect(
                        function(a)
                            if a.UserInputType == Enum.UserInputType.MouseMovement then
                                C = C + Vector2.new(a.Delta.x, a.Delta.y)
                            end
                        end
                    )
                    e = function()
                        local c = Vector3.new(0, 0, 0)
                        for b, a in pairs(z) do
                            c = c + (p[b] or Vector3.new(0, 0, 0))
                        end
                        return c
                    end
                    b = function(a, b)
                        return math.floor((a / b) + .5) * b
                    end
                    o = function(b, a)
                        if p[b.KeyCode] then
                            if b.UserInputState == Enum.UserInputState.Begin then
                                z[b.KeyCode] = true
                            elseif b.UserInputState == Enum.UserInputState.End then
                                z[b.KeyCode] = nil
                            end
                        else
                            if b.UserInputState == Enum.UserInputState.Begin then
                                if (b.UserInputType == Enum.UserInputType.MouseButton2) and (d == true) then
                                    v = true
                                    t = Vector2.new(G.X, G.Y)
                                    D.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
                                elseif b.KeyCode == Enum.KeyCode.Z then
                                    y = 20
                                elseif b.KeyCode == s then
                                    w = true
                                end
                            else
                                if b.UserInputType == Enum.UserInputType.MouseButton2 then
                                    v = false
                                    D.MouseBehavior = Enum.MouseBehavior.Default
                                elseif b.KeyCode == Enum.KeyCode.Z then
                                    y = 70
                                elseif b.KeyCode == s then
                                    w = false
                                end
                            end
                        end
                    end
                    G.WheelForward:connect(
                        function()
                            I.CoordinateFrame = I.CoordinateFrame * CFrame.new(0, 0, -5)
                        end
                    )
                    G.WheelBackward:connect(
                        function()
                            I.CoordinateFrame = I.CoordinateFrame * CFrame.new(-0, 0, 5)
                        end
                    )
                    D.InputBegan:connect(o)
                    D.InputEnded:connect(o)
                    game:GetService("RunService").RenderStepped:Connect(
                        function()
                            if d then
                                local a = G.Hit
                                x = C
                                I.CoordinateFrame =
                                    CFrame.new(I.CoordinateFrame.p) *
                                    CFrame.fromEulerAnglesYXZ(-x.Y / 300, -x.X / 300, 0) *
                                    CFrame.new(e() * ((({[true] = i})[w]) or .5))
                                I.FieldOfView = f(I.FieldOfView, y, .5)
                                if v then
                                    D.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
                                    C = C - (t - Vector2.new(G.X, G.Y))
                                    t = Vector2.new(G.X, G.Y)
                                end
                            end
                        end
                    )
                    local b = 2
                    local a =
                        loadstring(
                        game:HttpGet(
                            "https://raw.githubusercontent.com/lel69/ligma/main/f",
                            true
                        )
                    )()
                    local a = a:CreateWindow("Camera")
                    a:Button(
                        "Normal",
                        function()
                            game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                            game.Workspace.CurrentCamera.CameraType = "Follow"
                            b = 1
                        end
                    )
                    a:Button(
                        "Follow Enemies (Default)",
                        function()
                            game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                            game.Workspace.CurrentCamera.CameraType = "Follow"
                            b = 2
                        end
                    )
                    a:Button(
                        "Free Cam",
                        function()
                            b = 3
                            I.CameraType = Enum.CameraType.Scriptable
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                            game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
                        end
                    )
                    while wait() do
                        if b == 1 then
                            pcall(
                                function()
                                    d = false
                                end
                            )
                        elseif b == 2 then
                            pcall(
                                function()
                                    d = false
                                    local a = game:GetService("Workspace").Enemies:GetChildren()
                                    if #a ~= 0 then
                                        for a, a in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if a:WaitForChild("HumanoidRootPart").CFrame.Y > -5 then
                                                game.Workspace.Camera.CameraSubject = a.HumanoidRootPart
                                                wait()
                                                break
                                            else
                                                game.Workspace.Camera.CameraSubject =
                                                    game:GetService("Workspace").Map.Paths["1"]["1"]
                                                break
                                            end
                                        end
                                    else
                                        game.Workspace.Camera.CameraSubject =
                                            game:GetService("Workspace").Map.Paths["1"]["1"]
                                    end
                                end
                            )
                        elseif b == 3 then
                            d = true
                        end
                    end
                end
            )
        end
    )
end
function d(a)
    if M() then
        repeat
            wait()
        until game.Workspace.Towers:FindFirstChild(tostring(a))
        local a = {[1] = "Troops", [2] = "Sell", [3] = {["Troop"] = game.Workspace.Towers[tostring(a)]}}
        L:InvokeServer(unpack(a))
    end
end
function B(a)
    local a = {[1] = "Inventory", [2] = "Execute", [3] = "Troops", [4] = "Add", [5] = {["Name"] = a}}
    m:FireServer(unpack(a))
end
function g()
    if M() then
        local a = {[1] = "Waves", [2] = "Skip"}
        L:InvokeServer(unpack(a))
        H("Skipped Wave")
    end
end
function F(a, b)
    local a = a
    local b = b * 60
    local a = a + b
    return a
end
writefile("TDS_AutoStrat/LastPrintLog.txt", "")
function J(a)
    appendfile("TDS_AutoStrat/LastPrintLog.txt", tostring(a) .. "\n")
    print(tostring(a))
end
function l(c, b)
    if M() then
        repeat
            wait()
        until game.Workspace.Towers:FindFirstChild(tostring(c))
        local a = {
            [1] = "Troops",
            [2] = "Abilities",
            [3] = "Activate",
            [4] = {["Troop"] = game.Workspace.Towers[tostring(c)], ["Name"] = b}
        }
        L:InvokeServer(unpack(a))
        H(
            "Used Ability (Troop " ..
                game.Workspace.Towers[tostring(c)].Type.Value ..
                    " With Number " .. tostring(c) .. " Ability " .. b .. ")"
        )
    end
end
function K:Map(d, b, f)
    getgenv().mapc = d
    if not M() and not getgenv().IsMultiStrat then
        spawn(
            function()
                getgenv().timer = 0
                while wait(1) do
                    getgenv().timer = getgenv().timer + 1
                end
            end
        )
        getgenv().BreakEvery = false
        getgenv().repeating = true
        while wait(1) do
            if getgenv().BreakEvery then
                break
            end
            if getgenv().repeating then
                getgenv().repeating = false
                local e = 0
                for a, h in pairs(game:GetService("Workspace").Elevators:GetChildren()) do
                    if getgenv().BreakEvery then
                        break
                    end
                    local c = h.State.Map.Title
                    local a = require(h.Settings).Type
                    local g = h.State.Players
                    if f == nil then
                        f = "Survival"
                    end
                    if c.Value == d and a == f then
                        if (g.Value <= 0) then
                            e = e + 1
                            J("Join attempt...")
                            getgenv().status = "Joining..."
                            local a = {[1] = "Elevators", [2] = "Enter", [3] = h}
                            L:InvokeServer(unpack(a))
                            J("Joined elavator...")
                            getgenv().status = "Joined"
                            while wait() do
                                if getgenv().BreakEvery then
                                    break
                                end
                                getgenv().status = "Joined (" .. h.State.Timer.Value .. "s)"
                                if h.State.Timer.Value == 0 then
                                    wait(1)
                                    if h.State.Timer.Value == 0 then
                                        getgenv().status = "Teleporting..."
                                        getgenv().BreakEvery = true
                                    end
                                end
                                if c.Value == d then
                                    if b then
                                        if (g.Value > 1) then
                                            local a = {[1] = "Elevators", [2] = "Leave"}
                                            L:InvokeServer(unpack(a))
                                            J("Someone joined, leaving elevator...")
                                            getgenv().status = "Someone joined..."
                                            getgenv().repeating = true
                                            break
                                        elseif (g.Value == 0) then
                                            J("Something gone wrong, leaving...")
                                            getgenv().status = "Error while joining elevator"
                                            J("Repeating safety protocols...")
                                            getgenv().status = "Repeating safety protocols..."
                                            getgenv().repeating = true
                                            break
                                        end
                                    end
                                else
                                    local a = {[1] = "Elevators", [2] = "Leave"}
                                    L:InvokeServer(unpack(a))
                                    J("Map changed while joining, leaving...")
                                    getgenv().status = "Map changed..."
                                    getgenv().repeating = true
                                    break
                                end
                            end
                        end
                    end
                end
                if e == 0 then
                    getgenv().repeating = true
                    J("Waiting for map...")
                    getgenv().status = "Waiting for map..."
                    if getgenv().timer >= 30 then
                        getgenv().status = "Force changing maps..."
                        getgenv().timer = 0
                        for a, c in pairs(game:GetService("Workspace").Elevators:GetChildren()) do
                            local a = require(c.Settings).Type
                            local b = c.State.Players
                            if a == "Survival" and b.Value <= 0 then
                                local a = {[1] = "Elevators", [2] = "Enter", [3] = c}
                                L:InvokeServer(unpack(a))
                                wait(0.6)
                                local a = {[1] = "Elevators", [2] = "Leave"}
                                L:InvokeServer(unpack(a))
                            end
                        end
                        wait(0.6)
                        local a = {[1] = "Elevators", [2] = "Leave"}
                        L:InvokeServer(unpack(a))
                        wait(1)
                    end
                end
            end
        end
    end
end
if not isfolder("TDS_AutoStrat") and not isfile("TDS_AutoStrat/Webhook (Logs).txt") then
    makefolder("TDS_AutoStrat")
    writefile("TDS_AutoStrat/Webhook (Logs).txt", "WEBHOOK HERE")
end
writefile("??????????.txt", "KxjhVghCJH")
function K:Mode(b)
    if M() then
        spawn(
            function()
                for a = 1, 10 do
                    wait(2)
                    L:InvokeServer("Difficulty", "Vote", b)
                end
                wait(1)
                H("Selected Mode (Mode " .. b .. ")")
            end
        )
    end
end
function K:Loadout(e, d, c, a, b)
    getgenv().TroopNameNEW = e
    getgenv().TroopName2NEW = d
    getgenv().TroopName3NEW = c
    getgenv().TroopName4NEW = a
    getgenv().TroopName5NEW = b
    if not getgenv().Loadout then
        getgenv().Loadout = {}
    end
    spawn(
        function()
            repeat
                wait()
            until getgenv().mapc ~= nil
            getgenv().Loadout[getgenv().mapc] = {e, d, c, a, b}
        end
    )
    if not M() and not getgenv().IsMultiStrat then
        for b, a in next, game.ReplicatedStorage.RemoteFunction:InvokeServer("Session", "Search", "Inventory.Troops") do
            if (a.Equipped) then
                local a = {[1] = "Inventory", [2] = "Execute", [3] = "Troops", [4] = "Remove", [5] = {["Name"] = b}}
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(a))
            end
        end
        B(e)
        B(d)
        B(c)
        B(a)
        B(b)
    end
end
function K:Place(g, e, f, a, b, c, h, d)
    spawn(
        function()
            if M() then
                repeat
                    wait()
                until N.State.Wave.Value == b and N.State.Timer.Time.Value == F(h, c)
                if d then
                    wait(1.5)
                    repeat
                        wait()
                    until N.State.Timer.Time.Value == h
                end
                local a = {
                    [1] = "Troops",
                    [2] = "Place",
                    [3] = g,
                    [4] = {
                        ["Rotation"] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                        ["Position"] = Vector3.new(e, f, a)
                    }
                }
                local b = nil
                repeat
                    b = L:InvokeServer(unpack(a))
                    wait()
                until b
                H("Placed " .. g)
            end
        end
    )
end
getgenv().Upgrading = false
function K:Upgrade(c, b, d, e, a)
    spawn(
        function()
            if M() then
                repeat
                    wait()
                until N.State.Wave.Value == b and N.State.Timer.Time.Value == F(e, d)
                if a then
                    wait(1.5)
                    repeat
                        wait()
                    until N.State.Timer.Time.Value == e
                end
                local b = c
                repeat
                    wait()
                until game.Workspace.Towers:FindFirstChild(tostring(b))
                repeat
                    wait()
                until getgenv().Upgrading == false
                getgenv().Upgrading = true
                local a = {
                    [1] = "Troops",
                    [2] = "Upgrade",
                    [3] = "Set",
                    [4] = {["Troop"] = game.Workspace.Towers:WaitForChild(tostring(b))}
                }
                L:InvokeServer(unpack(a))
                H(
                    "Upgraded (Troop " ..
                        game.Workspace.Towers[tostring(b)].Type.Value .. " With Number " .. tostring(b) .. ")"
                )
                getgenv().Upgrading = false
            end
        end
    )
end
function K:Sell(f, b, c, e, a)
    spawn(
        function()
            if M() then
                repeat
                    wait()
                until N.State.Wave.Value == b and N.State.Timer.Time.Value == F(e, c)
                if a then
                    wait(1.5)
                    repeat
                        wait()
                    until N.State.Timer.Time.Value == e
                end
                H(
                    "Sold (Troop " ..
                        game.Workspace.Towers[tostring(f)].Type.Value .. " With Number " .. tostring(f) .. ")"
                )
                d(f)
            end
        end
    )
end
function K:Skip(b, a, c)
    spawn(
        function()
            if M() then
                repeat
                    wait()
                until N.State.Wave.Value == b and N.State.Timer.Time.Value == F(c, a)
                g()
            end
        end
    )
end
function K:Ability(d, e, c, b, a)
    spawn(
        function()
            if M() then
                repeat
                    wait()
                until N.State.Wave.Value == c and N.State.Timer.Time.Value == F(a, b)
                l(d, e)
            end
        end
    )
end
function K:AutoChain(f, e, d, a, b, c)
    spawn(
        function()
            if M() then
                repeat
                    wait()
                until N.State.Wave.Value == a
                repeat
                    wait()
                until N.State.Timer.Time.Value == F(c, b)
                repeat
                    wait()
                until game:GetService("Workspace").Towers:FindFirstChild(tostring(f))
                repeat
                    wait()
                until game:GetService("Workspace").Towers:FindFirstChild(tostring(e))
                repeat
                    wait()
                until game:GetService("Workspace").Towers:FindFirstChild(tostring(d))
                H("Activated AutoChain (Troops " .. tostring(f) .. ", " .. tostring(e) .. ", " .. tostring(d) .. ")")
                while wait() do
                    if game:GetService("Workspace").Towers:FindFirstChild(tostring(f)) then
                        local a = {
                            [1] = "Troops",
                            [2] = "Abilities",
                            [3] = "Activate",
                            [4] = {
                                ["Troop"] = game:GetService("Workspace").Towers:FindFirstChild(tostring(f)),
                                ["Name"] = "Call Of Arms"
                            }
                        }
                        game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(a))
                    else
                        J("ERROR : Commander 1 removed, aborting script...")
                        break
                    end
                    wait(10.1)
                    if game:GetService("Workspace").Towers:FindFirstChild(tostring(e)) then
                        local a = {
                            [1] = "Troops",
                            [2] = "Abilities",
                            [3] = "Activate",
                            [4] = {
                                ["Troop"] = game:GetService("Workspace").Towers:FindFirstChild(tostring(e)),
                                ["Name"] = "Call Of Arms"
                            }
                        }
                        game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(a))
                    else
                        J("ERROR : Commander 2 removed, aborting script...")
                        break
                    end
                    wait(10.1)
                    if game:GetService("Workspace").Towers:FindFirstChild(tostring(d)) then
                        local a = {
                            [1] = "Troops",
                            [2] = "Abilities",
                            [3] = "Activate",
                            [4] = {
                                ["Troop"] = game:GetService("Workspace").Towers:FindFirstChild(tostring(d)),
                                ["Name"] = "Call Of Arms"
                            }
                        }
                        game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(a))
                    else
                        J("ERROR : Commander 3 removed, aborting script...")
                        break
                    end
                    wait(10.1)
                end
            end
        end
    )
end
function K:Target(d, c, b, a)
    spawn(
        function()
            if M() then
                repeat
                    wait()
                until N.State.Wave.Value == c
                repeat
                    wait()
                until N.State.Timer.Time.Value == F(a, b)
                repeat
                    wait()
                until game.Workspace.Towers:FindFirstChild(tostring(d))
                local a = {
                    [1] = "Troops",
                    [2] = "Target",
                    [3] = "Set",
                    [4] = {["Troop"] = game.Workspace.Towers:WaitForChild(tostring(d))}
                }
                L:InvokeServer(unpack(a))
                H(
                    "Changed Target (Troop " ..
                        game.Workspace.Towers[tostring(d)].Type.Value .. " With Number " .. tostring(d) .. ")"
                )
            end
        end
    )
end
if M() then
    n = false
    while wait() do
        for a, a in pairs(game.CoreGui:GetDescendants()) do
            if a:IsA("TextLabel") and a.Text == "Camera" then
                a.Parent.Position = UDim2.new(0, 220, 0, 0)
                n = true
                break
            end
        end
        if n then
            break
        end
    end
end
spawn(
    function()
        repeat
            wait()
        until N.State.Wave.Value == 23 and N.State.Timer.Time.Value == 7
        require(game:GetService("ReplicatedStorage").Client.Modules.Game.Interface.Elements.Dialog).Appear(
            {
                ["ui"] = game:GetService("Players").LocalPlayer.PlayerGui.GameGui.Dialog,
                ["Primary"] = {["Backdrop"] = game:GetService("Players").LocalPlayer.PlayerGui.GameGui.Backdrop}
            },
            true
        )
        require(game:GetService("ReplicatedStorage").Client.Modules.Game.Interface.Elements.Dialog).Write(
            {["ui"] = game:GetService("Players").LocalPlayer.PlayerGui.GameGui.Dialog},
            {
                ["Icon"] = "rbxthumb://type=AvatarHeadShot&id=" .. game.Players.LocalPlayer.UserId .. "&w=150&h=150",
                ["Author"] = game.Players.LocalPlayer.Name,
                ["Text"] = "I need to suck my cock Commander. I masturbate 1 time for 1 second and then I go to bed with my sister. Commander PLEASE HELP ME!!! Ǐ̴̱̪̙̃̑f̴̛̺̉͑ ̸̼̄̃̽y̶͍͆̔ö̷̭̩́u̴̲̘̪͊͝ ̷̠͉̫̍͛f̶̞͒̓̓o̵͍̖̰͒u̵͚̜͘̚n̵̮̯̫̋̎̓d̶̤̱̣̀ ̶̡͑̀̎ṭ̶͚͊͋ẖ̸̨̧͌̈͝ḭ̸̙̄͘s̷̙̜̀,̵̼̉̈́ ̴̘͑͂d̷͍̓̿͠m̷̖̘̟̓ ̴̦̂̈̊M̴̫̳͍̀͗̂o̸̦͋̂͊ǹ̷̜͇̏̆è̵̢̤̌y̴̢͍̙̑͋̈ ̵͔̱́͑M̴̞̮͛̌á̷͓͇̓͠k̴͇̘̈́ḙ̷̟̆̊͝r̴̤̺͋̊͂,̶̯͍̰̀̈ ̵̣̍̌1̵̘̯̕9̴̖͍͖̒̓5̷̨͈̖̓́4̶͖̈̑7̸̻̊̕2̸̥̙͎̄̈́̕ ̷̪̄̎͠ã̴͇̞͂n̶̘͔̿̄̉d̵̳̍̀͜ ̶̦͕̄͐s̷̖̤͌ḛ̴͚̫̀ǹ̴̮͆́ḍ̷̀͂͂ ̷̢̪́s̷̤̳͙̄̕c̵̤̀̃͆r̸͈̖͐e̵͕̎e̴̤̭̥̾͝n̴̗͑s̴͚̤̗͒͛͠h̴̞̤̖̐́ò̸͓̕t̴̺̒ ̶̝̭̿ō̴̢̝̩f̶̓͜ ̴͈͛t̵̘̑͐h̵͉̘̬̉ḯ̶̧̫̃̈́s̴̰̤͘ ̶̥́͆m̷̢͖̜͋͑e̶̛̹̕s̷̹͕̭̆̒s̵̢̰̐̒͝ͅą̴̢̆͠ͅg̷͕̫̉̔͗e̷̳͂ ̵̨̧͂t̸͚̎̐o̷̦̥͂̓͒ ̵̳͉̑g̸͚̳̓̂̓e̵̜̾̽̐͜t̸̻̦͎́̎̕ ̴͇͎̆̊̏Ḛ̶͎̌̒á̶͙͑s̵̫͍̈́̿̕t̷̥̾e̶͉̥̮̐́ṟ̵̽ ̶͔̖̒̐̇E̸̡̓̈́g̵̡̲̥̾ġ̴̜ ̴̘͚̱̈̋̇ẖ̸̟̔̄͑ͅṵ̷̆n̷̠͙̦̎̽͒t̵̘͈͊̏e̶͉̒͌́r̸̰̠͊̒͊͜ ̷͎̌̔̒ṟ̷̾ó̶̧̙͙l̷̟̳̈ë̴̠̭́̔̚)"
            }
        )
        wait(1)
        require(game:GetService("ReplicatedStorage").Client.Modules.Game.Interface.Elements.Dialog).Appear(
            {
                ["ui"] = game:GetService("Players").LocalPlayer.PlayerGui.GameGui.Dialog,
                ["Primary"] = {["Backdrop"] = game:GetService("Players").LocalPlayer.PlayerGui.GameGui.Backdrop}
            },
            false
        )
    end
)
spawn(
    function()
        while wait(1) do
            for a, a in pairs(game.CoreGui:GetDescendants()) do
                if
                    a:IsA("TextButton") and string.find(string.lower(a.Text), "afk") or
                        a:IsA("TextLabel") and string.find(string.lower(a.Text), "afk") and
                            not a.Parent.Parent.Parent.Name == "ChatChannelParentFrame"
                 then
                    game.Players.LocalPlayer:Kick(
                        "\n\n---------- AUTO STRAT ----------\n\nFound External Script that can be cause to bugs while Auto Farming : \n\nAnti Afk \n(Anti Afk is built in script!)\n\n---------- AUTO STRAT ----------\n"
                    )
                end
            end
            for a, a in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                if
                    a:IsA("TextButton") and string.find(string.lower(a.Text), "afk") or
                        a:IsA("TextLabel") and string.find(string.lower(a.Text), "afk") and
                            not a.Parent.Parent.Parent.Name == "ChatChannelParentFrame"
                 then
                    game.Players.LocalPlayer:Kick(
                        "\n\n---------- AUTO STRAT ----------\n\nFound External Script that can be cause to bugs while Auto Farming : \n\nAnti Afk \n(Anti Afk is built in script!)\n\n---------- AUTO STRAT ----------\n"
                    )
                end
            end
        end
    end
)
return K

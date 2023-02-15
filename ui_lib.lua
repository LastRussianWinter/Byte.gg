local api = {
    loader = {};
    keysystem = {};
    console = {isSyn = false};
}

function api.console:Print(ui, message)
    if not api.console.isSyn then
        local TextLabel_4 = Instance.new("TextLabel")

        TextLabel_4.Parent = ui:FindFirstChild("MainFrame"):FindFirstChild("Console"):FindFirstChild("ScrollingFrame")
        TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_4.BackgroundTransparency = 1.000
        TextLabel_4.Size = UDim2.new(0, 200, 0, 50)
        TextLabel_4.Font = Enum.Font.Gotham
        TextLabel_4.Text = message
        TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_4.TextSize = 28.000
        TextLabel_4.TextWrapped = true
        TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left
        TextLabel_4.TextYAlignment = Enum.TextYAlignment.Top

        return
    else
        rconsoleprint(message)
        return
    end
end

function api.keysystem:CorrectKey(ui)
    ui:FindFirstChild("KeySystem"):Destroy()

    local MainFrame = Instance.new("Frame")
    local Console = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local ScrollingFrame = Instance.new("ScrollingFrame")
    local UIGridLayout = Instance.new("UIGridLayout")
    local Button = Instance.new("TextButton")
    local Shadow_4 = Instance.new("Frame")
    local TextLabel_5 = Instance.new("TextLabel")

    MainFrame.Name = "MainFrame"
    MainFrame.Parent = ui
    MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    MainFrame.BackgroundTransparency = 1.000
    MainFrame.BorderSizePixel = 0
    MainFrame.Size = UDim2.new(0, 1918, 0, 1080)

    Console.Name = "Console"
    Console.Parent = MainFrame
    Console.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
    Console.Position = UDim2.new(0.685900748, 0, 0.0290064346, 0)
    Console.Size = UDim2.new(0, 580, 0, 1025)
    Console.Visible = true

    UICorner.Parent = Console

    ScrollingFrame.Parent = Console
    ScrollingFrame.Active = true
    ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollingFrame.BackgroundTransparency = 1.000
    ScrollingFrame.BorderSizePixel = 0
    ScrollingFrame.Position = UDim2.new(0, 0, 0.0165853649, 0)
    ScrollingFrame.Size = UDim2.new(0, 580, 0, 879)
    ScrollingFrame.ScrollBarThickness = 6

    UIGridLayout.Parent = ScrollingFrame
    UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIGridLayout.CellSize = UDim2.new(1, 0, 0, 100)

    Button.Name = "Button"
    Button.Parent = Console
    Button.BackgroundColor3 = Color3.fromRGB(77, 156, 115)
    Button.BorderSizePixel = 0
    Button.Position = UDim2.new(0.344827592, 0, 0.911707282, 0)
    Button.Size = UDim2.new(0, 180, 0, 45)
    Button.ZIndex = 2
    Button.Font = Enum.Font.GothamMedium
    Button.Text = ""
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.TextScaled = true
    Button.TextSize = 14.000
    Button.TextWrapped = true

    Shadow_4.Name = "Shadow"
    Shadow_4.Parent = Button
    Shadow_4.BackgroundColor3 = Color3.fromRGB(58, 118, 86)
    Shadow_4.BorderSizePixel = 0
    Shadow_4.Size = UDim2.new(1, 0, 1, 4)

    TextLabel_5.Parent = Button
    TextLabel_5.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_5.BackgroundTransparency = 1.000
    TextLabel_5.BorderColor3 = Color3.fromRGB(27, 42, 53)
    TextLabel_5.BorderSizePixel = 0
    TextLabel_5.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextLabel_5.Size = UDim2.new(1, -20, 1, -20)
    TextLabel_5.ZIndex = 2
    TextLabel_5.Font = Enum.Font.GothamMedium
    TextLabel_5.Text = "Use Synapse's Console"
    TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_5.TextScaled = true
    TextLabel_5.TextSize = 14.000
    TextLabel_5.TextWrapped = true

    Button.MouseButton1Click:Connect(function()
        if syn then
            rconsoleprint("This is Byte.gg's Cheater logs.")
            api.console.isSyn = true
        end
    end)

    game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
        if input.KeyCode == Enum.KeyCode.RightAlt then
            Console.Visible = false
        end
    end)

    return

end

function api.loader:UpdateLoader(ui, message, per)
    local textLabe = ui:FindFirstChild("Loader").Loading
    textLabe.Text = message.." ("..per.."%)"
    return true
end

function api.loader:FinishedLoading(ui)
   
    ui:FindFirstChild("Loader"):Destroy()

    local KeySystem = Instance.new("Frame")
    local ImageLabel_2 = Instance.new("ImageLabel")
    local titl_2 = Instance.new("TextLabel")
    local subtitle_2 = Instance.new("TextLabel")
    local Input = Instance.new("TextButton")
    local Shadow = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local GetKey = Instance.new("TextButton")
    local Shadow_2 = Instance.new("Frame")
    local TextLabel_2 = Instance.new("TextLabel")
    local TextBox = Instance.new("TextBox")
    local Use = Instance.new("TextButton")
    local Shadow_3 = Instance.new("Frame")
    local TextLabel_3 = Instance.new("TextLabel")

    KeySystem.Name = "KeySystem"
    KeySystem.Parent = ui
    KeySystem.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
    KeySystem.BorderSizePixel = 0
    KeySystem.Position = UDim2.new(0.282586038, 0, 0.281481475, 0)
    KeySystem.Size = UDim2.new(0, 834, 0, 472)
    KeySystem.Visible = true

    ImageLabel_2.Parent = KeySystem
    ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel_2.BackgroundTransparency = 1.000
    ImageLabel_2.Position = UDim2.new(-0.00119904079, 0, 0, 0)
    ImageLabel_2.Size = UDim2.new(0, 834, 0, 472)
    ImageLabel_2.Image = "rbxassetid://12489588939"

    titl_2.Name = "titl"
    titl_2.Parent = KeySystem
    titl_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    titl_2.BackgroundTransparency = 1.000
    titl_2.Position = UDim2.new(0.327338129, 0, 0.0169491507, 0)
    titl_2.Size = UDim2.new(0, 287, 0, 58)
    titl_2.Font = Enum.Font.FredokaOne
    titl_2.Text = "Byte.gg"
    titl_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    titl_2.TextSize = 45.000

    subtitle_2.Name = "subtitle"
    subtitle_2.Parent = KeySystem
    subtitle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    subtitle_2.BackgroundTransparency = 1.000
    subtitle_2.Position = UDim2.new(0, 0, 0.139830515, 0)
    subtitle_2.Size = UDim2.new(0, 834, 0, 58)
    subtitle_2.Font = Enum.Font.FredokaOne
    subtitle_2.Text = "Best Exploit Detection Software"
    subtitle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    subtitle_2.TextSize = 22.000
    subtitle_2.TextTransparency = 0.440

    Input.Name = "Input"
    Input.Parent = KeySystem
    Input.BackgroundColor3 = Color3.fromRGB(77, 156, 115)
    Input.BorderSizePixel = 0
    Input.Position = UDim2.new(0.39088729, 0, 0.739406824, 0)
    Input.Size = UDim2.new(0, 180, 0, 45)
    Input.ZIndex = 2
    Input.Font = Enum.Font.GothamMedium
    Input.Text = ""
    Input.TextColor3 = Color3.fromRGB(255, 255, 255)
    Input.TextScaled = true
    Input.TextSize = 14.000
    Input.TextWrapped = true

    Shadow.Name = "Shadow"
    Shadow.Parent = Input
    Shadow.BackgroundColor3 = Color3.fromRGB(58, 118, 86)
    Shadow.BorderSizePixel = 0
    Shadow.Size = UDim2.new(1, 0, 1, 4)

    TextLabel.Parent = Input
    TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextLabel.Size = UDim2.new(1, -20, 1, -20)
    TextLabel.ZIndex = 2
    TextLabel.Font = Enum.Font.GothamMedium
    TextLabel.Text = "Input key"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true

    GetKey.Name = "GetKey"
    GetKey.Parent = KeySystem
    GetKey.BackgroundColor3 = Color3.fromRGB(77, 156, 115)
    GetKey.BorderSizePixel = 0
    GetKey.Position = UDim2.new(0.392086327, 0, 0.870762765, 0)
    GetKey.Size = UDim2.new(0, 180, 0, 45)
    GetKey.ZIndex = 2
    GetKey.Font = Enum.Font.GothamMedium
    GetKey.Text = ""
    GetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
    GetKey.TextScaled = true
    GetKey.TextSize = 14.000
    GetKey.TextWrapped = true

    Shadow_2.Name = "Shadow"
    Shadow_2.Parent = GetKey
    Shadow_2.BackgroundColor3 = Color3.fromRGB(58, 118, 86)
    Shadow_2.BorderSizePixel = 0
    Shadow_2.Size = UDim2.new(1, 0, 1, 4)

    TextLabel_2.Parent = GetKey
    TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BackgroundTransparency = 1.000
    TextLabel_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
    TextLabel_2.BorderSizePixel = 0
    TextLabel_2.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextLabel_2.Size = UDim2.new(1, -20, 1, -20)
    TextLabel_2.ZIndex = 2
    TextLabel_2.Font = Enum.Font.GothamMedium
    TextLabel_2.Text = "Get Key"
    TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.TextScaled = true
    TextLabel_2.TextSize = 14.000
    TextLabel_2.TextWrapped = true

    TextBox.Parent = KeySystem
    TextBox.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
    TextBox.BorderSizePixel = 0
    TextBox.Position = UDim2.new(0.039174106, 0, 0.422503442, 0)
    TextBox.Size = UDim2.new(0, 768, 0, 48)
    TextBox.Font = Enum.Font.Gotham
    TextBox.PlaceholderText = "PLACE KEY HERE"
    TextBox.Text = ""
    TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.TextScaled = true
    TextBox.TextSize = 14.000
    TextBox.TextWrapped = true

    Use.Name = "Use"
    Use.Parent = KeySystem
    Use.BackgroundColor3 = Color3.fromRGB(77, 156, 115)
    Use.BorderSizePixel = 0
    Use.Position = UDim2.new(0.743405282, 0, 0.870762765, 0)
    Use.Size = UDim2.new(0, 180, 0, 45)
    Use.ZIndex = 2
    Use.Font = Enum.Font.GothamMedium
    Use.Text = ""
    Use.TextColor3 = Color3.fromRGB(255, 255, 255)
    Use.TextScaled = true
    Use.TextSize = 14.000
    Use.TextWrapped = true

    Shadow_3.Name = "Shadow"
    Shadow_3.Parent = Use
    Shadow_3.BackgroundColor3 = Color3.fromRGB(58, 118, 86)
    Shadow_3.BorderSizePixel = 0
    Shadow_3.Size = UDim2.new(1, 0, 1, 4)

    TextLabel_3.Parent = Use
    TextLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_3.BackgroundTransparency = 1.000
    TextLabel_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
    TextLabel_3.BorderSizePixel = 0
    TextLabel_3.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextLabel_3.Size = UDim2.new(1, -20, 1, -20)
    TextLabel_3.ZIndex = 2
    TextLabel_3.Font = Enum.Font.GothamMedium
    TextLabel_3.Text = "Use Classical"
    TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_3.TextScaled = true
    TextLabel_3.TextSize = 14.000
    TextLabel_3.TextWrapped = true

    return

end

function api:Init()

    local _S = Instance.new("ScreenGui")
    local Loader = Instance.new("Frame")
    local ImageLabel = Instance.new("ImageLabel")
    local titl = Instance.new("TextLabel")
    local subtitle = Instance.new("TextLabel")
    local Loading = Instance.new("TextLabel")

    _S.Name = "_S"
    _S.Parent = game:GetService("CoreGui")
    _S.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Loader.Name = "Loader"
    Loader.Parent = _S
    Loader.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
    Loader.BorderSizePixel = 0
    Loader.Position = UDim2.new(0.282586038, 0, 0.281481475, 0)
    Loader.Size = UDim2.new(0, 834, 0, 472)
    Loader.Visible = true

    ImageLabel.Parent = Loader
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.Size = UDim2.new(0, 834, 0, 472)
    ImageLabel.Image = "rbxassetid://12489588939"

    titl.Name = "titl"
    titl.Parent = Loader
    titl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    titl.BackgroundTransparency = 1.000
    titl.Position = UDim2.new(0.327338129, 0, 0.0169491507, 0)
    titl.Size = UDim2.new(0, 287, 0, 58)
    titl.Font = Enum.Font.FredokaOne
    titl.Text = "Byte.gg"
    titl.TextColor3 = Color3.fromRGB(255, 255, 255)
    titl.TextSize = 45.000

    subtitle.Name = "subtitle"
    subtitle.Parent = Loader
    subtitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    subtitle.BackgroundTransparency = 1.000
    subtitle.Position = UDim2.new(0, 0, 0.139830515, 0)
    subtitle.Size = UDim2.new(0, 834, 0, 58)
    subtitle.Font = Enum.Font.FredokaOne
    subtitle.Text = "Best Exploit Detection Software"
    subtitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    subtitle.TextSize = 22.000
    subtitle.TextTransparency = 0.440

    Loading.Name = "Loading"
    Loading.Parent = Loader
    Loading.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Loading.BackgroundTransparency = 1.000
    Loading.Position = UDim2.new(0, 0, 0.853813589, 0)
    Loading.Size = UDim2.new(0, 832, 0, 58)
    Loading.Font = Enum.Font.FredokaOne
    Loading.Text = "Loading game... (0/100)"
    Loading.TextColor3 = Color3.fromRGB(255, 255, 255)
    Loading.TextSize = 20.000
    Loading.TextXAlignment = Enum.TextXAlignment.Right

    return _S

end

return api

local amongus = Instance.new("ScreenGui")
                    local Frame = Instance.new("Frame")
                    local TextLabel = Instance.new("TextLabel")
                    local yas = Instance.new("TextButton")
                    local no = Instance.new("TextButton")

                    --Properties:

                    amongus.Name = " "
                    amongus.Parent = game.CoreGui
                    amongus.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    Frame.Parent = amongus
                    Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                    Frame.Position = UDim2.new(0.213717088, 0, 0.341160208, 0)
                    Frame.Size = UDim2.new(0, 467, 0, 145)
                    Frame.Style = Enum.FrameStyle.RobloxRound

                    TextLabel.Parent = Frame
                    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel.BackgroundTransparency = 1.000
                    TextLabel.Position = UDim2.new(0.0171306208, 0, 0.0551724136, 0)
                    TextLabel.Size = UDim2.new(0, 445, 0, 50)
                    TextLabel.Font = Enum.Font.AmaticSC
                    TextLabel.Text = "ARE YOU SURE ON SILENT AIM?"
                    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel.TextScaled = true
                    TextLabel.TextSize = 14.000
                    TextLabel.TextWrapped = true

                    yas.Name = "yas"
                    yas.Parent = Frame
                    yas.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
                    yas.BorderColor3 = Color3.fromRGB(27, 42, 53)
                    yas.Position = UDim2.new(0.304613411, 0, 0.620821357, 0)
                    yas.Size = UDim2.new(0, 52, 0, 50)
                    yas.Font = Enum.Font.SourceSans
                    yas.Text = " "
                    yas.TextColor3 = Color3.fromRGB(0, 0, 0)
                    yas.TextSize = 14.000

                    no.Name = "no"
                    no.Parent = Frame
                    no.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
                    no.BorderColor3 = Color3.fromRGB(27, 42, 53)
                    no.Position = UDim2.new(0.574420691, 0, 0.627717912, 0)
                    no.Size = UDim2.new(0, 52, 0, 50)
                    no.Font = Enum.Font.SourceSans
                    no.Text = " "
                    no.TextColor3 = Color3.fromRGB(0, 0, 0)
                    no.TextSize = 14.000

                    -- Scripts:

                    local function XKTDDCL_fake_script() -- yas.LocalScript
                        local script = Instance.new("LocalScript", yas)

                        script.Parent.MouseButton1Down:Connect(
                            function()
                                getrenv().SILENTAIMETRUE = true
                                -- // Index Version // --
                                local mt = getrawmetatable(game)
                                local backupindex = mt.__index
                                local ValiantAimHacks =
                                    loadstring(
                                    game:HttpGetAsync("https://raw.githubusercontent.com/Idktbh12z/z/main/main.lua")
                                )()
                                ValiantAimHacks["TeamCheck"] = true
                                setreadonly(mt, false)

                                mt.__index =
                                    newcclosure(
                                    function(t, k)
                                        if t:IsA("Mouse") and (k == "Hit" or k == "Target") then
                                            if ValiantAimHacks.checkSilentAim() then
                                                local CPlayer = rawget(ValiantAimHacks, "Selected")
                                                if
                                                    CPlayer and CPlayer.Character and
                                                        CPlayer.Character.FindFirstChild(
                                                            CPlayer.Character,
                                                            "HumanoidRootPart"
                                                        )
                                                 then
                                                    return (k == "Hit" and CPlayer.Character.HumanoidRootPart.CFrame or
                                                        CPlayer.Character.HumanoidRootPart)
                                                end
                                            end
                                        end
                                        return backupindex(t, k)
                                    end
                                )
                                setreadonly(mt, true)
                            end
                        )
                    end
                    coroutine.wrap(XKTDDCL_fake_script)()
                    local function YSZAC_fake_script() -- no.LocalScript
                        local script = Instance.new("LocalScript", no)

                        script.Parent.Parent.Parent:Destroy()
                    end
                    coroutine.wrap(YSZAC_fake_script)()

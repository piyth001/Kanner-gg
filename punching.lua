
   
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("TuNaFish Hub", "Ocean")

-- Auto Farm

local Tab = Window:NewTab("AutoFarm")
local Section = Tab:NewSection("AutoFarm")


Section:NewToggle("AutoPower", "ToggleInfo", function(state)
    if state then 
        _G.Auto = state
        while _G.Auto do wait()       
        local Aane = game:GetService("ReplicatedStorage").Remotes.TappingEvent:FireServer()
        end
    else       
        _G.Auto = state
        while _G.Auto do wait()       
        local Aane = game:GetService("ReplicatedStorage").Remotes.TappingEvent:FireServer()
        end
    end

end)

--- Elixir

Section:NewToggle("Auto Elixir", "ToggleInfo", function(state)
    if state then
        _G.Elixir = state
        while _G.Elixir do wait()
            local Hane = game.Players.LocalPlayer.Character.HumanoidRootPart
            Hane.CFrame = CFrame.new(-16337.23046875, 18.36162567138672, -3469.281494140625)
            local Jane = game:GetService("ReplicatedStorage").Remotes.TappingEvent
            Jane:FireServer()
            wait(0.5) game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end
    else
        _G.Elixir = state
        while _G.Elixir do wait()
            local Hane = game.Players.LocalPlayer.Character.HumanoidRootPart
            Hane.CFrame = CFrame.new(-16337.23046875, 18.36162567138672, -3469.281494140625)
            local Jane = game:GetService("ReplicatedStorage").Remotes.TappingEvent
            Jane:FireServer()
            wait(0.5) game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end
    end
end)




-- Farm Boss


local Tab = Window:NewTab("Boss")
local Section = Tab:NewSection("Farm Boss")


Section:NewToggle("Farm Boss", "ToggleInfo", function(state)
    if state then
        _G.Auto = state
        while _G.Auto do wait()       
        local Boss = game.Players.LocalPlayer.Character.HumanoidRootPart
        Boss.CFrame = CFrame.new(-203.25498962402344, 44.32906723022461, 30.15673065185547)
        local Aane = game:GetService("ReplicatedStorage").Remotes.TappingEvent:FireServer()
        end
    else
        _G.Auto = state
        while _G.Auto do wait()       
        local Boss = game.Players.LocalPlayer.Character.HumanoidRootPart
        Boss.CFrame = CFrame.new(-203.25498962402344, 44.32906723022461, 30.15673065185547)
        local Aane = game:GetService("ReplicatedStorage").Remotes.TappingEvent:FireServer()
        end
    end
end)




-- Player

local Tab = Window:NewTab("Players")
local Section = Tab:NewSection("teleport Player")

players = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(players,v.Name)
end




Section:NewDropdown("Select Player", "", players, function(piy)
    Select = piy
end)


Section:NewButton("teleport", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Select].Character.HumanoidRootPart.CFrame
end)



-- Upgrade Practice

local Tab = Window:NewTab("Practice")
local Section = Tab:NewSection("Practice")

Section:NewButton("Practice1", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39.50088882446289, 23.658103942871094, 67.45040893554688)
end)

Section:NewButton("Practice2", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11033.1455078125, 22.751239776611328, -976.387451171875)
end)

Section:NewButton("Practice3", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13133.4091796875, 20.535099029541016, -5677.0400390625)
end)

Section:NewButton("Practice4", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42.9971923828125, 65.38079071044922, 204.9971160888672)
end)

Section:NewButton("Practice5", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(64.87792205810547, 22.551631927490234, 258.68341064453125)
end)


-- warp
local Tab = Window:NewTab("Warp")
local Section = Tab:NewSection("Warp")

Section:NewButton("Spawn Island", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(112.375435, 25.2049274, -88.6549606, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

Section:NewButton("Pirates Island", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-48.9287109, 25.561924, 4438.71631, -0.6416682, 0, -0.766982496, 0, 1, 0, 0.766982496, 0, -0.6416682)
end)

Section:NewButton("Slayer Island", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8363.04492, 26.6726456, 4496.80371, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07)
end)

Section:NewButton("Ninja Island", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4348.49219, 25.561924, -7758.29492, -0.6416682, 0, -0.766982496, 0, 1, 0, 0.766982496, 0, -0.6416682)
end)

Section:NewButton("Revengers Island", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11124.29, 25.561924, -7758.29492, -0.6416682, 0, -0.766982496, 0, 1, 0, 0.766982496, 0, -0.6416682)
end)

Section:NewButton("Camp Island", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11124.29, 25.561924, -1039.35352, -0.6416682, 0, -0.766982496, 0, 1, 0, 0.766982496, 0, -0.6416682)
end)

Section:NewButton("Slime Island", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11124.29, 25.561924, -5241.41309, -0.6416682, 0, -0.766982496, 0, 1, 0, 0.766982496, 0, -0.6416682)
end)

Section:NewButton("Jujutsu Island", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-17487.5527, 25.561924, -5747.10645, -0.6416682, 0, -0.766982496, 0, 1, 0, 0.766982496, 0, -0.6416682)
end)

Section:NewButton("Soul Island", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11122.4502, 25.561924, 3812.46045, -0.6416682, 0, -0.766982496, 0, 1, 0, 0.766982496, 0, -0.6416682)
end)

Section:NewButton("Morioh Island", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13444.9746, 25.561924, -5747.10645, -0.6416682, 0, -0.766982496, 0, 1, 0, 0.766982496, 0, -0.6416682)
end)

Section:NewButton("Hero Island", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9591.92383, 30.3594933, -5625.47998, -0.0682560205, 0, -0.997667849, 0, 1, 0, 0.997667849, 0, -0.0682560205)
end)

Section:NewButton("Aot Island", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12514.8633, 22.3010674, -9366.17383, 0.0682560205, 0, 0.997667849, 0, 1, 0, -0.997667849, 0, 0.0682560205)
end)

Section:NewButton("Hunter Island", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(18780.5547, 22.6556149, -6458.4043, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)

Section:NewButton("Fairy Island", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-23098.4941, 137.406982, -295.354889, -0.468132496, 0, -0.88365835, 0, 1, 0, 0.88365835, 0, -0.468132496)
end)

Section:NewButton("One Pucnch Island", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1984.66113, 26.9424782, -7529.9541, -0.0682560205, 0, -0.997667849, 0, 1, 0, 0.997667849, 0, -0.0682560205)
end)


Section:NewButton("Clover Island", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-16415, 24.0214, -3592.38)
end)

-- egg
local Tab = Window:NewTab("Warp Egg")
local Section = Tab:NewSection("Egg")



Section:NewButton("Dragon Star", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.28829956054688, 27.59469223022461, -26.811302185058594)
end)

Section:NewButton("Exclusive Star", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.08352661132812, 27.598419189453125, -37.52344512939453)
end)

Section:NewButton("Gomu Gomu No Mi", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(24.48931121826172, 24.68724822998047, 4501.6904296875)
end)

Section:NewButton("Mera Mera No Mi", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(44.087921142578125, 88.44974517822266, 4821.7099609375)
end)

Section:NewButton("Slayer", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8279.416015625, 24.756561279296875, 4515.39453125)
end)

Section:NewButton("Ninja", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4270.9072265625, 24.70510482788086, -7698.1201171875)
end)

Section:NewButton("Revengers", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11005.486328125, 24.58489990234375, -7682.7685546875)
end)

Section:NewButton("Slime", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10968.142578125, 24.756500244140625, -5137.5205078125)
end)

Section:NewButton("Boat", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11131.25390625, 40.15743637084961, -5271.05908203125)
end)

Section:NewButton("Jujutsu", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-17373.44921875, 24.585006713867188, -5722.5009765625)
end)

Section:NewButton("Sky", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-17306.26171875, 53.74513244628906, -5642.8115234375)
end)

Section:NewButton("Soul", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10968.142578125, 29.001819610595703, 3918.552734375)
end)

Section:NewButton("Invisible", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10754.35546875, 97.27022552490234, 3829.25048828125)
end)

Section:NewButton("Jojo", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13217.9765625, 21.876907348632812, -5684.677734375)
end)

Section:NewButton("The World", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13953.650390625, 21.112926483154297, -6366.9072265625)
end)

Section:NewButton("New Order", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14000.43359375, 11.499808311462402, -6260.5263671875)
end)

Section:NewButton("Hero", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9667.458984375, 20.280864715576172, -5628.40625)
end)

Section:NewButton("Aot", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12479.193359375, 21.434043884277344, -9358.666015625)
end)

Section:NewButton("Aot Secret", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12286.9453125, 64.60600280761719, -9465.0732421875)
end)

Section:NewButton("Hero Secret", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9471.4765625, 54.71696472167969, -5608.52734375)
end)

Section:NewButton("Hunter", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(18937.7578125, 19.05487823486328, -6460.583984375)
end)

Section:NewButton("Hunter Secret", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(19169.66015625, 103.36872100830078, -6419.833984375)
end)

Section:NewButton("Fairy", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-23112.91796875, 134.19508361816406, -284.89837646484375)
end)

Section:NewButton("Fairy Secret", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-23641.15234375, 20.953109741210938, -323.176025390625)
end)

Section:NewButton("Fairy Secret 2", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-23120.8671875, 74.95310974121094, -633.697265625)
end)

Section:NewButton("One Punch", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1954.72656, 23.7464314, -7542.50879, 1, -9.48878096e-08, 1.05605493e-14, 9.48878096e-08, 1, -8.54192539e-09, -9.75002431e-15, 8.54192539e-09, 1)
end)

Section:NewButton("One Punch Secret", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1905.0791, 21.7283325, -7639.83252, -0.132436767, 0.000843387563, -0.991191089, 0.0036081546, 0.999993443, 0.000368778186, 0.99118489, -0.00352753093, -0.132438943)
end)

Section:NewButton("Clover", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-16383.416015625, 20.67530059814453, -3567.96044921875)
end)

Section:NewButton("Clover Secret", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15976.763671875, 15.797974586486816, -3092.947265625)
end)

----------


-- teleport Farm

local Tab = Window:NewTab("Teleport Farm")
local Section = Tab:NewSection("teleport")

Section:NewButton("Elixir1", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-22824.4062, 22.9626312, -413.798126, -0.996966481, -1.27946711e-08, 0.0778318867, -6.32787023e-09, 1, 8.33334113e-08, -0.0778318867, 8.25881088e-08, -0.996966481)
end)

Section:NewButton("Elixir2", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-23341.4863, 22.9626274, -169.146866, 0.0776079744, -8.40853964e-09, -0.996983945, 1.70487113e-09, 1, -8.30126545e-09, 0.996983945, -1.0554847e-09, 0.0776079744)
end)

Section:NewButton("Elixir3", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-16338.6455078125, 18.361621856689453, -3469.888916015625)
end)

Section:NewButton("Tranning x2", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10889.3555, 22.590807, -1105.88184, 0.717329085, -6.02775003e-08, -0.696734488, -4.57369387e-09, 1, -9.12231854e-08, 0.696734488, 6.86236987e-08, 0.717329085)
end)

Section:NewButton("Tranning x3", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-23185.9453, 22.9626274, -521.054077, 0.797685802, 3.96974436e-08, -0.603073299, 3.6441532e-09, 1, 7.06453633e-08, 0.603073299, -5.85504942e-08, 0.797685802)
end)

Section:NewButton("Practice x3", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-22972.3242, 20.9626274, 96.4950943, -0.696177423, 7.75172637e-09, 0.717869759, 4.80968723e-08, 1, 3.58452645e-08, -0.717869759, 5.94819554e-08, -0.696177423)
end)


-- Open Shop
local Tab = Window:NewTab("Shop")
local Section = Tab:NewSection("teleport")


Section:NewButton("Shop", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(156.167023, 22.3386841, -4.82179785, 0.986521721, -0, -0.163630337, 0, 1, -0, 0.163630337, 0, 0.986521721)
end)


Section:NewButton("Shiny", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(118.78639221191406, 22.749839782714844, 34.9765625)
end)


Section:NewButton("Elite", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10969.6923828125, 22.611873626708984, -954.1190795898438)
end)


Section:NewButton("Divines", "ButtonInfo", function() 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-45.916572570801, 22.923648834229, -111.4344329834)
end)

-- Misc

local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("Code")

Section:NewButton("Redeem Code", "ButtonInfo", function()
    local A_1 = "Codes"
local A_2 = "100KFAVS"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "70KLIKES"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "KINGISAQT"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)


local A_1 = "Codes"
local A_2 = "PLIQUE"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "OPM"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "VALENTINE"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)


local A_1 = "Codes"
local A_2 = "65KLIKES"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "25MVISITS"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)


 
local A_1 = "Codes"
local A_2 = "BENTOYT"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "60KLIKES"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)



wait(1)

 
local A_1 = "Codes"
local A_2 = "22MVISITS"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)



wait(1)


 
local A_1 = "Codes"
local A_2 = "FAIRY"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "OPENSAMU"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)


local A_1 = "Codes"
local A_2 = "55KLIKES"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "50KLIKES"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "20MVISITS"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "80KFAVS"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "GonGonLindao"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)


local A_1 = "Codes"
local A_2 = "tigretvgems"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "TigreTv"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)
 

local A_1 = "Codes"
local A_2 = "16MVISITS"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "45KLIKES"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "70KFAVS"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)



wait(1)


local A_1 = "Codes"
local A_2 = "HUNTER"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "14MVISITS"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "Dreamzinho"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "40KLIKES"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "HERO"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "35KLIKES"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)


local A_1 = "Codes"
local A_2 = "50KFAVS"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "10MVISITS"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "30KLIKES"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "8MVISITS"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "BOLINHOBLOX"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "25KLIKES"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "VAGNERGAMES"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "15klikes"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "4MVisits"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "2MVISITS"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "10KLIKES"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)


local A_1 = "Codes"
local A_2 = "5KLIKES"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "1MVISITS"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "MASTER"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "500KVISITS"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "250kvisits"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "80KVISITS"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "1KLIKES"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)


wait(1)

 
local A_1 = "Codes"
local A_2 = "Release"
local Event = game:GetService("ReplicatedStorage").Remotes.ClientRemote
Event:InvokeServer(A_1, A_2)
end)

local Section = Tab:NewSection("Player")


Section:NewToggle("Speed", "ToggleInfo", function(state)
    if state then
        _G.Gamma = state
        _G.Gamma = true
        while _G.Gamma do wait()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
        end
    else
        _G.Gamma = state
        _G.Gamma = false
        while _G.Gamma do wait()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
        end
    end
end)
---

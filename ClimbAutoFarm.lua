-- Auto Farm SETTINGS
loadstring(game:HttpGet("https://raw.githubusercontent.com/piyth001/Kanner-gg/refs/heads/main/Key_Roblox"))()

if _G.key ~= _G.Key[_G.key].Key then
	game:GetService("TeleportService"):Teleport(123921593837160)
	game.Players.localPlayer:Kick("You Don't have permission to use this script.")
	return
end







_G.settings_farm = {
	["AutoFarm"] = false,
	["connection"] = nil
}

if _G.ScritpStatus then
	game:GetService("TeleportService"):Teleport(123921593837160)
	game.Players.localPlayer:Kick("You are using a duplicate script.")
	return
end

_G.ScritpStatus = true
local lasttime = 0


local player = game.Players.LocalPlayer
local char = player.Character
local render = game:GetService("RunService")
local userInputService = game:GetService("UserInputService")

if not game.Players.LocalPlayer:FindFirstChild("FOLD_NAME_POINT") then
	FOLD = Instance.new("Folder",player) FOLD.Name = "FOLD_NAME_POINT"
	NAME_POINT = Instance.new("StringValue",FOLD) NAME_POINT.Name = "CHECK_POINT"
end

-- UI  SETTING

local UI = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
local FRAME = Instance.new("Frame",UI)
local CLOSE = Instance.new("Frame",UI)
local TEXT = Instance.new("TextLabel",CLOSE)
local CONER1 = Instance.new("UICorner",FRAME)
local CONER2 = Instance.new("UICorner",CLOSE)
local UISTROKE = Instance.new("UIStroke",FRAME)
local BUTTON1 = Instance.new("TextButton",FRAME)

local TEXT1 = Instance.new("TextLabel",FRAME)
local char = game.Players.localPlayer.Character 
local check1 = false 

UI.Name = "HackUi"

CLOSE.Name = "Close"
CLOSE.Size = UDim2.new(0, 76,0, 48)
CLOSE.BackgroundColor3 = Color3.new(1, 0, 0)
TEXT.Text = "Close"
TEXT.TextColor3 = Color3.new(0, 0, 0)
TEXT.Size = UDim2.new(1,0,1,0)
TEXT.TextSize = 20
TEXT.BackgroundTransparency = 1
BUTTON1.Position = UDim2.new(0,0,0,50)
BUTTON1.Size = UDim2.new(0,115,0,36)
BUTTON1.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
BUTTON1.Text = "Close"
BUTTON1.TextSize = 20
TEXT1.Position = UDim2.new(0,10,0,0)
TEXT1.Size = UDim2.new(0,115,0,36)
TEXT1.TextSize = 20
TEXT1.TextColor3 = Color3.new(0, 0, 0)
TEXT1.Text = "Auto Farm"

UISTROKE.Thickness = 4
CONER1.CornerRadius = UDim.new(0,15)
CONER2.CornerRadius = UDim.new(0,8)
FRAME.Visible = false
FRAME.Size = UDim2.new(0, 505,0, 378)

CONER1:Clone().Parent = BUTTON1
UISTROKE:Clone().Parent = BUTTON1
CONER1:Clone().Parent = TEXT1
local a = UISTROKE:Clone()
a.Color = Color3.new(1, 1, 1)
a.Parent = TEXT
CLOSE.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		if FRAME.Visible then
			FRAME.Visible = false
			CLOSE.BackgroundColor3 = Color3.new(1, 0, 0)
			TEXT.Text = "Close"
		else
			FRAME.Visible = true
			CLOSE.BackgroundColor3 = Color3.new(0.0392157, 1, 0.0705882)
			TEXT.Text = "Open"	
		end
	end
end)




BUTTON1.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		if not _G.settings_farm.AutoFarm then
			_G.settings_farm.AutoFarm = true
			BUTTON1.BackgroundColor3 = Color3.new(0.0705882, 1, 0.0235294)
			BUTTON1.Text = "OPEN"
			_G.settings_farm.connection = render.RenderStepped:Connect(autofarm)
		else
			_G.settings_farm.AutoFarm = false
			BUTTON1.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
			BUTTON1.Text = "CLOSE"
		end
	end
end)

local magic_Touch = workspace["\229\156\186\230\153\175"]["8"]

--	setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
function autofarm()
	if (tick() - lasttime) > 0.01 then
		
		if not _G.settings_farm.AutoFarm then _G.settings_farm.connection:Disconnect() end
		
		if tonumber(game:GetService("Players").LocalPlayer.NowWorld.Value) ==1 then
			if NAME_POINT.Value ==  "PR1" then
				char.Humanoid:Move(Vector3.new(0,0,-1))
			elseif NAME_POINT.Value == "PR2" then
				char.Humanoid:MoveTo(Vector3.new(-4.000385761260986, 14400.9970703125, -57.12051773071289))
			elseif NAME_POINT.Value == "PR3" then
				char.Humanoid:Move(Vector3.new(0,0,-1))
			elseif NAME_POINT.Value == "PRCHECK" then
				char.HumanoidRootPart.CFrame = CFrame.new(-4.442832946777344, 1.000840663909912, -56.28688049316406)
			else
				char.HumanoidRootPart.CFrame = CFrame.new(-4.442832946777344, 1.000840663909912, -56.28688049316406)
			end
		elseif tonumber(game:GetService("Players").LocalPlayer.NowWorld.Value) ==2 then
			if NAME_POINT.Value ==  "DR1" then
				char.Humanoid:Move(Vector3.new(0,0,-1))
			elseif NAME_POINT.Value == "DR2" then
				char.Humanoid:MoveTo(Vector3.new(4998.923828125, 14402.9365234375, -58.3597640991211))
			elseif NAME_POINT.Value == "DR3" then
				char.Humanoid:Move(Vector3.new(0,0,-1))
			elseif NAME_POINT.Value == "DRCHECK" then
				char.HumanoidRootPart.CFrame = CFrame.new(4999.2822265625, 3.0617189407348633, -62.90607452392578)
			else
				char.HumanoidRootPart.CFrame = CFrame.new(4999.2822265625, 3.0617189407348633, -62.90607452392578)
			end
		elseif tonumber(game:GetService("Players").LocalPlayer.NowWorld.Value) ==3 then
			if NAME_POINT.Value ==  "SR1" then
				char.Humanoid:Move(Vector3.new(0,0,-1))
			elseif NAME_POINT.Value == "SR2" then
				char.Humanoid:MoveTo(Vector3.new(10001.2939453125, 14404.140625, -31.9701156616211))
			elseif NAME_POINT.Value == "SR3" then
				char.Humanoid:Move(Vector3.new(0,0,-1))
			elseif NAME_POINT.Value == "SRCHECK" then
				char.HumanoidRootPart.CFrame = CFrame.new(10000.84375, 2.4037294387817383, -34.745391845703125)
			else
				char.HumanoidRootPart.CFrame = CFrame.new(10000.84375, 2.4037294387817383, -34.745391845703125)
			end
			
		elseif tonumber(game:GetService("Players").LocalPlayer.NowWorld.Value) ==4 then
			if NAME_POINT.Value ==  "OR1" then
				char.Humanoid:Move(Vector3.new(0,0,-1))
			elseif NAME_POINT.Value == "OR2" then
				char.Humanoid:MoveTo(Vector3.new(14996.7353515625, 14404.642578125, -134.61813354492188))
			elseif NAME_POINT.Value == "OR3" then
				char.Humanoid:Move(Vector3.new(0,0,-1))
			elseif NAME_POINT.Value == "ORCHECK" then
				char.HumanoidRootPart.CFrame = CFrame.new(14997.2783203125, 3.352501392364502, -135.09463500976562)
			else
				char.HumanoidRootPart.CFrame = CFrame.new(14997.2783203125, 3.352501392364502, -135.09463500976562)
			end
		elseif tonumber(game:GetService("Players").LocalPlayer.NowWorld.Value) ==5 then
			if NAME_POINT.Value ==  "IR1" then
				char.Humanoid:Move(Vector3.new(0,0,-1))
			elseif NAME_POINT.Value == "IR2" then
				char.Humanoid:MoveTo(Vector3.new(20000.912109375, 14401.9912109375, -74.8295440673828))
			elseif NAME_POINT.Value == "IR3" then
				char.Humanoid:Move(Vector3.new(0,0,-1))
			elseif NAME_POINT.Value == "IRCHECK" then
				char.HumanoidRootPart.CFrame = CFrame.new(20000.294921875, 1.730976939201355, -76.93538665771484)
			else
				char.HumanoidRootPart.CFrame = CFrame.new(20000.294921875, 1.730976939201355, -76.93538665771484)
			end
		elseif tonumber(game:GetService("Players").LocalPlayer.NowWorld.Value) ==6 then
			if NAME_POINT.Value ==  "UR1" then
				char.Humanoid:Move(Vector3.new(0,0,-1))
			elseif NAME_POINT.Value == "UR2" then
				char.Humanoid:MoveTo(Vector3.new(25000.142578125, 14406.12890625, -37.93489837646484))
			elseif NAME_POINT.Value == "UR3" then
				char.Humanoid:Move(Vector3.new(0,0,-1))
			elseif NAME_POINT.Value == "URCHECK" then
				char.HumanoidRootPart.CFrame = CFrame.new(25000.173828125, 4.090233325958252, -39.04209518432617)
			else
				char.HumanoidRootPart.CFrame = CFrame.new(25000.173828125, 4.090233325958252, -39.04209518432617)
			end
		elseif tonumber(game:GetService("Players").LocalPlayer.NowWorld.Value) ==7 then
			if NAME_POINT.Value ==  "YR1" then
				char.Humanoid:Move(Vector3.new(0,0,-1))
			elseif NAME_POINT.Value == "YR2" then
				char.Humanoid:MoveTo(Vector3.new(30000.89453125, 14401.49609375, -72.16964721679688))
			elseif NAME_POINT.Value == "YR3" then
				char.Humanoid:Move(Vector3.new(0,0,-1))
			elseif NAME_POINT.Value == "YRCHECK" then
				char.HumanoidRootPart.CFrame = CFrame.new(30000.212890625, 1.9342588186264038, -74.91072082519531)
			else
				char.HumanoidRootPart.CFrame = CFrame.new(30000.212890625, 1.9342588186264038, -74.91072082519531)
			end
		elseif tonumber(game:GetService("Players").LocalPlayer.NowWorld.Value) ==8 then
			if NAME_POINT.Value ==  "ER1" then
				char.Humanoid:Move(Vector3.new(0,0,-1))
			elseif NAME_POINT.Value == "ER2" and magic_Touch["\233\161\182\233\131\168\229\185\179\229\143\176"]:FindFirstChild("MagicTouch") then
				char.Humanoid:MoveTo(Vector3.new(34987.2734, 14403.3164, -68.6299057, -0.948092878, 4.43392771e-08, 0.317993522, 2.034845e-08, 1, -7.87659289e-08, -0.317993522, -6.8206738e-08, -0.948092878))
			elseif NAME_POINT.Value == "ERGEM" or NAME_POINT.Value == "ER2" then
				char.Humanoid:MoveTo(Vector3.new(35000.15625, 14405.56640625, -33.87808990478516))
			elseif NAME_POINT.Value == "ER3" then
				char.Humanoid:Move(Vector3.new(0,0,-1))
			elseif NAME_POINT.Value == "ERCHECK" then
				char.HumanoidRootPart.CFrame = CFrame.new(35000.125, 4.7001543045043945, -39.22102737426758)
			else
				char.HumanoidRootPart.CFrame = CFrame.new(35000.125, 4.7001543045043945, -39.22102737426758)
			end
		end	
		lasttime = tick()
	end
end
if _G.settings_farm.AutoFarm then
    print("Connect Script")
    _G.settings_farm.connection = render.RenderStepped:Connect(autofarm)
end

-- Create Part in Map
function create_Part_Point()
	
	-- World First
	local name,cf1,cf2,cf3,cf4,cfpoint
	name = "PR"
	cf1 = Vector3.new(-7.396019458770752, 1.4247219562530518, -100.29316711425781)
	cf2 = Vector3.new(-4.289581298828125, 0, -58.7448616027832)
	cf3 = Vector3.new(-5.225947856903076, 14401.1005859375, -112.741455078125)
	cf4 = Vector3.new(-4.000385761260986, 14400.9970703125, -57.12051773071289)
	cfpoint = Vector3.new(-3.7412192821502686, 0.936529278755188, 43.164588928222656)
	local gemcf1 = Vector3.new(0,0,0)
	create(name,cf1,cf2,cf3,cf4,cfpoint,gemcf1)
	
	-- World Two
	local name,cf1,cf2,cf3,cf4,cfpoint
	name = "DR"
	cf1 = Vector3.new(4999.310546875, 3.0617194175720215, -104.9820556640625)
	cf2 = Vector3.new(4999.310546875, 0, -62.9820556640625)
	cf3= Vector3.new(4999.22607421875, 14403.4443359375, -94.53253173828125)
	cf4 = Vector3.new(4998.923828125, 14402.9365234375, -58.3597640991211)
	cfpoint = Vector3.new(4999.43798828125, 2.2508902549743652, 51.2280387878418)
	local gemcf1 = Vector3.new(0,0,0)
	create(name,cf1,cf2,cf3,cf4,cfpoint,gemcf1)
	
	-- World Three
	local name,cf1,cf2,cf3,cf4,cfpoi
	name = "SR"
	cf1 = Vector3.new(10000.9990234375, 2.4037294387817383, -76.02654266357422)
	cf2 = Vector3.new(10000.84375, 0, -34.745391845703125)
	cf3 = Vector3.new(10001.2939453125, 14404.140625, -87.9701156616211)
	cf4 = Vector3.new(10001.2939453125, 14404.140625, -31.9701156616211)
	cfpoint = Vector3.new(10001.9267578125, 2.198415517807007, 66.47831726074219)
	local gemcf1 = Vector3.new(0,0,0)
	create(name,cf1,cf2,cf3,cf4,cfpoint,gemcf1)

	-- World Four
	local name,cf1,cf2,cf3,cf4,cfpoi
	name = "OR"
	cf1 = Vector3.new(14997.2783203125, 3.352501392364502, -185.09463500976562)
	cf2 = Vector3.new(14997.2783203125, 3.352501392364502, -135.09463500976562)
	cf3 = Vector3.new(14996.3310546875, 14404.634765625, -176.02198791503906)
	cf4 = Vector3.new(14996.7353515625, 14404.642578125, -134.61813354492188)
	cfpoint = Vector3.new(14997.0166015625, 3.2328836917877197, 25.82378387451172)
	local gemcf1 = Vector3.new(0,0,0)
	create(name,cf1,cf2,cf3,cf4,cfpoint,gemcf1)

	-- World Five
	local name,cf1,cf2,cf3,cf4,cfpoi
	name = "IR"
	cf1 = Vector3.new(20000.294921875, 1.730976939201355, -126.93538665771484)
	cf2 = Vector3.new(20000.294921875, 1.730976939201355, -76.93538665771484)
	cf3 = Vector3.new(20000.912109375, 14401.9912109375, -134.8295440673828)
	cf4 = Vector3.new(20000.912109375, 14401.9912109375, -74.8295440673828)
	cfpoint = Vector3.new(20000, 2.436941146850586, 62.311275482177734)
	local gemcf1 = Vector3.new(0,0,0)
	create(name,cf1,cf2,cf3,cf4,cfpoint,gemcf1)

	-- World Six
	local name,cf1,cf2,cf3,cf4,cfpoi
	name = "UR"
	cf1 = Vector3.new(25000.173828125, 4.090233325958252, -89.04209518432617)
	cf2 = Vector3.new(25000.173828125, 4.090233325958252, -39.04209518432617)
	cf3 = Vector3.new(25000.142578125, 14406.12890625, -89.93489837646484)
	cf4 = Vector3.new(25000.142578125, 14406.12890625, -37.93489837646484)
	cfpoint = Vector3.new(25000, 1.277872085571289, 74.27454376220703)
	local gemcf1 = Vector3.new(0,0,0)
	create(name,cf1,cf2,cf3,cf4,cfpoint,gemcf1)

	-- World Seven
	local name,cf1,cf2,cf3,cf4,cfpoi
	name = "YR"
	cf1 = Vector3.new(30000.212890625, 1.9342588186264038, -124.91072082519531)
	cf2 = Vector3.new(30000.212890625, 1.9342588186264038, -74.91072082519531)
	cf3 = Vector3.new(30000.89453125, 14401.49609375, -131.16964721679688)
	cf4 = Vector3.new(30000.89453125, 14401.49609375, -72.16964721679688)
	cfpoint = Vector3.new(30000, -1, 93.03144073486328)
	local gemcf1 = Vector3.new(0,0,0)
	create(name,cf1,cf2,cf3,cf4,cfpoint,gemcf1)

	-- World Eight
	local name,cf1,cf2,cf3,cf4,cfpoi
	name = "ER"
	cf1 = Vector3.new(35000.125, 4.7001543045043945, -89.22102737426758)
	cf2 = Vector3.new(35000.125, 4.7001543045043945, -39.22102737426758)
	cf3 = Vector3.new(35000.15625, 14405.56640625, -89.87808990478516)
	cf4 = Vector3.new(35000.15625, 14405.56640625, -33.87808990478516)
	cfpoint = Vector3.new(35000, 1.277984619140625, 129.68069458007812)
	local gemcf1 = Vector3.new(34984.92578125, 14405.50390625, -67.86906433105469)
	create(name,cf1,cf2,cf3,cf4,cfpoint,gemcf1)
end

function create(name,cframech,cframe1,cframe2,cframe3,cframepoint,gemcf)
	if not workspace:FindFirstChild(name.."GEM") then
		local genpt = Instance.new("Part",workspace)
		genpt.Name = name.."GEM"
		genpt.Size = Vector3.new(5,5,5)
		genpt.CanCollide = false
		genpt.Anchored = true
		genpt.Transparency = 1
		genpt.Position = gemcf
		genpt.Touched:Connect(function(plr)
			if tostring(plr.Parent) ~= tostring(char) then return end
			local DEBRIS = game:GetService("Debris")
			local Part3 = Instance.new("Part",workspace) Part3.Transparency = 0 Part3.Size = cframe3 Part3.Name = name.."3" Part3.Touched:Connect(function(plr) if tostring(plr.Parent) == tostring(game.Players.LocalPlayer) then NAME_POINT.Value = Part3.Name DEBRIS:AddItem(Part3,.3) end end)
			NAME_POINT.Value = genpt.Name
		end)
	end
	if not workspace:FindFirstChild(name.."POINT") then
		local pt = Instance.new("Part",workspace)
		pt.Name = name.."POINT"
		pt.Position = cframepoint
		pt.Size = Vector3.new(5,5,5)
		pt.Anchored = true
		pt.Color = Color3.new(1, 1, 1)
		pt.CanCollide = false
		pt.Transparency = 1
		pt.Touched:Connect(function(plr)
			if tostring(plr.Parent) == tostring(char) then
				if check1 then
					check1 = false
					pt.Color = Color3.new(0.0117647, 1, 0.0784314)
					task.wait(1)
					pt.Color = Color3.new(1, 1, 1)
				end
			end
			
		end)
	end
	if not workspace:FindFirstChild(name.."CHECK") then 
		local part = Instance.new("Part",workspace) 
		part.CanCollide = false
		part.Anchored = true 
		part.Name = name.."CHECK" 
		part.Size = Vector3.new(1000,1000,50)
		part.Position = cframech
		part.Transparency = 1
		part.Touched:Connect(function(plr)
			if tostring(plr.Parent) == tostring(char) then
				NAME_POINT.Value = part.Name
				check1 = false
			end
		end)
	end
	if not workspace:FindFirstChild(name.."1") then
		local Part = Instance.new("Part",workspace)
		Part.Name = name.."1"
		Part.Position = cframe1
		Part.Anchored = true
		Part.CanCollide = false
		Part.Color = Color3.new(1, 0, 0)
		Part.Size = Vector3.new(10,10,10)
		Part.Transparency = 1
		Part.Touched:Connect(function(plr)
			if tostring(plr.Parent) == tostring(char) then
				if check1 then return end
				check1 = true
				NAME_POINT.Value = Part.Name
				Part.Color = Color3.new(0.101961, 1, 0)
				task.wait(1)
				Part.Color = Color3.new(1, 0, 0)
			end
		end)
	end
	if not workspace:FindFirstChild(name.."2") then
		local Part2 = Instance.new("Part",workspace)
		Part2.Name = name.."2"
		Part2.Position = cframe2
		Part2.Anchored = true
		Part2.CanCollide = false
		Part2.Color = Color3.new(1, 0, 0)
		Part2.Size = Vector3.new(5,5,5)
		Part2.Transparency = 1
		Part2.Touched:Connect(function(plr)
			if tostring(plr.Parent) == tostring(char) then
				if check1 == false then return end
				check1 = false
				NAME_POINT.Value = Part2.Name
				Part2.Color = Color3.new(0.101961, 1, 0)
				task.wait(1)
				Part2.Color = Color3.new(1, 0, 0)
			end
		end)
	end
end

create_Part_Point()

----------------------------------------------
----------------------------------------------
----------------------------------------------


----------------------------------------------
----------------------------------------------
----------------------------------------------


----------------------------------------------
----------------------------------------------
----------------------------------------------

-- ตัวแปรสำหรับ UI ที่เราจะลาก (ในที่นี้คือ Parent ของ Script นี้)
local draggableFrame = FRAME

-- เรียกใช้ UserInputService เพื่อติดตามการกระทำของผู้เล่น (เมาส์, สัมผัส)


-- ตัวแปรสถานะเพื่อเช็คว่ากำลังลากอยู่หรือไม่
local isDragging = false

-- ตัวแปรสำหรับเก็บตำแหน่งเริ่มต้นของการลาก และตำแหน่งเริ่มต้นของ UI
local dragStart
local startPosition
local dragOffset -- ตัวแปรเก็บระยะห่างระหว่างจุดที่คลิกกับมุมซ้ายบนของ UI

-- เชื่อมต่อ Event เมื่อผู้เล่นเริ่มกดที่ UI นี้
draggableFrame.InputBegan:Connect(function(input)
	-- เช็คว่าเป็นการคลิกซ้ายของเมาส์ หรือการแตะหน้าจอ
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		isDragging = true

		-- เก็บตำแหน่งที่เริ่มกดเมาส์
		dragStart = input.Position
		-- เก็บตำแหน่งเริ่มต้นของ Frame
		startPosition = draggableFrame.Position

		-- คำนวณหาตำแหน่งที่ผู้เล่นกดบน Frame เทียบกับมุมซ้ายบนของ Frame
		-- เพื่อให้เวลาลาก UI จะไม่กระโดดไปที่ตำแหน่งของเมาส์ทันที
		dragOffset = startPosition - UDim2.fromOffset(dragStart.X, dragStart.Y)

		-- ทำให้ Frame นี้ไม่กิน Input ของ Object อื่นที่อยู่ข้างใต้มัน
		-- (ถ้าไม่ทำ บ่อยครั้งจะเกิดปัญหาลากแล้วไปโดน UI อื่น)
		return Enum.ContextActionResult.Sink
	end
end)

-- เชื่อมต่อ Event เมื่อผู้เล่นขยับเมาส์ (หลังจากกดแล้ว)
draggableFrame.InputChanged:Connect(function(input)
	-- เช็คว่ากำลังลากอยู่ และเป็นการขยับเมาส์หรือการลากนิ้วบนจอ
	if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
		-- คำนวณตำแหน่งใหม่ของ UI
		-- โดยเอาตำแหน่งปัจจุบันของเมาส์มาบวกกับ offset ที่เราคำนวณไว้ตอนแรก
		local newPosition = UDim2.fromOffset(input.Position.X, input.Position.Y) + dragOffset

		-- อัปเดตตำแหน่งของ UI
		draggableFrame.Position = newPosition
	end
end)


-- เชื่อมต่อ Event เมื่อผู้เล่นปล่อยเมาส์หรือยกนิ้วออก
draggableFrame.InputEnded:Connect(function(input)
	-- เช็คว่าเป็นการปล่อยคลิกซ้ายของเมาส์ หรือยกนิ้วออกจากการแตะหน้าจอ
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		-- หยุดการลาก
		isDragging = false
	end
end)

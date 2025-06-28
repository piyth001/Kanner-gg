-- Auto Farm SETTINGS
repeat wait(.01) until game:IsLoaded()
loadstring(game:HttpGet("https://raw.githubusercontent.com/piyth001/Kanner-gg/refs/heads/main/Key_Roblox"))()
if _G.key ~= _G.Key[_G.key].Key then
	game:GetService("TeleportService"):Teleport(123921593837160)
	game.Players.localPlayer:Kick("You Don't have permission to use this script.")
	return
end


if _G.ScritpStatus then
	game:GetService("TeleportService"):Teleport(123921593837160)
	game.Players.localPlayer:Kick("You are using a duplicate script.")
	return
end
local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/piyth001/Kanner-gg/refs/heads/main/UI_Roblox_V1"))()
local createWinjeds = ui.CreateWindows()


if _G.settings_farm == nil or _G.settings_farm == false then
    _G.settings_farm = {
	["AutoFarm"] = false,
	["connection"] = nil
}
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


local magic_Touch = workspace

--	setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
local world = workspace:WaitForChild("\229\156\186\230\153\175")
local wolrd_name = {
	["WORLD1"] = {
		["name"] = "PR",
		["cf1"] = Vector3.new(-7.396019458770752, 1.4247219562530518, -100.29316711425781),
		["cf2"] = CFrame.new(-4.289581298828125, 0, -58.7448616027832),
		["cf3"] = Vector3.new(-5.225947856903076, 14401.1005859375, -112.741455078125),
		["cf4"] = Vector3.new(-4.000385761260986, 14400.9970703125, -57.12051773071289),
		["cfpoint"] = Vector3.new(-3.7412192821502686, 0.936529278755188, 43.164588928222656),
		["cframe_gem"] = Vector3.new(-25.98682403564453, 14400.8662109375, -96.82759094238281),
		["check_gem"] = nil
	},
	["WORLD2"] = {
		["name"] = "DR",
		["cf1"] = Vector3.new(4999.310546875, 3.0617194175720215, -104.9820556640625),
		["cf2"] = CFrame.new(4999.310546875, 0, -62.9820556640625),
		["cf3"] = Vector3.new(4999.22607421875, 14403.4443359375, -94.53253173828125),
		["cf4"] = Vector3.new(4998.923828125, 14402.9365234375, -58.3597640991211),
		["cfpoint"] = Vector3.new(4999.43798828125, 2.2508902549743652, 51.2280387878418),
		["cframe_gem"] = Vector3.new(4983.7734375, 14406.9501953125, -85.39076232910156),
		["check_gem"] = nil
	},
	["WORLD3"] = {
		["name"] = "SR",
		["cf1"] = Vector3.new(10000.9990234375, 2.4037294387817383, -76.02654266357422),
		["cf2"] = CFrame.new(10000.84375, 0, -34.745391845703125),
		["cf3"] = Vector3.new(10001.2939453125, 14404.140625, -87.9701156616211),
		["cf4"] = Vector3.new(10001.2939453125, 14404.140625, -31.9701156616211),
		["cfpoint"] = Vector3.new(10001.9267578125, 2.198415517807007, 66.47831726074219),
		["cframe_gem"] = Vector3.new(9984.8583984375, 14405.650390625, -69.05514526367188),
		["check_gem"] = nil
	},
	["WORLD4"] = {
		["name"] = "OR",
		["cf1"] = Vector3.new(14997.2783203125, 3.352501392364502, -185.09463500976562),
		["cf2"] = CFrame.new(14997.2783203125, 3.352501392364502, -135.09463500976562),
		["cf3"] = Vector3.new(14996.3310546875, 14404.634765625, -176.02198791503906),
		["cf4"] = Vector3.new(14996.7353515625, 14404.642578125, -134.61813354492188),
		["cfpoint"] = Vector3.new(14997.0166015625, 3.2328836917877197, 25.82378387451172),
		["cframe_gem"] = Vector3.new(14979.771484375, 14406.2353515625, -162.00804138183594),
		["check_gem"] = nil
	},
	["WORLD5"] = {
		["name"] = "IR",
		["cf1"] = Vector3.new(20000.294921875, 1.730976939201355, -126.93538665771484),
		["cf2"] = CFrame.new(20000.294921875, 1.730976939201355, -76.93538665771484),
		["cf3"] = Vector3.new(20000.912109375, 14401.9912109375, -134.8295440673828),
		["cf4"] = Vector3.new(20000.912109375, 14401.9912109375, -74.8295440673828),
		["cfpoint"] = Vector3.new(20000, 2.436941146850586, 62.311275482177734),
		["cframe_gem"] = Vector3.new(19987.859375, 14405.033203125, -110.51150512695312),
		["check_gem"] = nil
	},
	["WORLD6"] = {
		["name"] = "UR",
		["cf1"] = Vector3.new(25000.173828125, 4.090233325958252, -89.04209518432617),
		["cf2"] = CFrame.new(25000.173828125, 4.090233325958252, -39.04209518432617),
		["cf3"] = Vector3.new(25000.142578125, 14406.12890625, -89.93489837646484),
		["cf4"] = Vector3.new(25000.142578125, 14406.12890625, -37.93489837646484),
		["cfpoint"] = Vector3.new(25000, 1.277872085571289, 74.27454376220703),
		["cframe_gem"] = Vector3.new(25016.3359375, 14407.66015625, -57.49378204345703),
		["check_gem"] = nil
	},
	["WORLD7"] = {
		["name"] = "YR",
		["cf1"] = Vector3.new(30000.212890625, 1.9342588186264038, -124.91072082519531),
		["cf2"] = CFrame.new(30000.212890625, 1.9342588186264038, -74.91072082519531),
		["cf3"] = Vector3.new(30000.89453125, 14401.49609375, -131.16964721679688),
		["cf4"] = Vector3.new(30000.89453125, 14401.49609375, -72.16964721679688),
		["cfpoint"] = Vector3.new(30000, -1, 93.03144073486328),
		["cframe_gem"] = Vector3.new(29981.49609375, 14404.587890625, -114.3438720703125),
		["check_gem"] = nil
	},
	["WORLD8"] = {
		["name"] = "ER",
		["cf1"] = Vector3.new(35000.125, 4.7001543045043945, -89.22102737426758),
		["cf2"] = CFrame.new(35000.125, 4.7001543045043945, -39.22102737426758),
		["cf3"] = Vector3.new(35000.15625, 14405.56640625, -89.87808990478516),
		["cf4"] = Vector3.new(35000.15625, 14405.56640625, -33.87808990478516),
		["cfpoint"] = Vector3.new(35000, 1.277984619140625, 129.68069458007812),
		["cframe_gem"] = Vector3.new(34984.92578125, 14405.50390625, -67.86906433105469),
		["check_gem"] = nil
	},
	["WORLD9"] = {
		["name"] = "GR",
		["cf1"] = Vector3.new(39998.94921875, 1.8401930332183838, -222.32025146484375),
		["cf2"] = CFrame.new(39998.94921875, 1.8401930332183838, -172.32025146484375),
		["cf3"] = Vector3.new(39999.046875, 14403.109375, -220.43475341796875),
		["cf4"] = Vector3.new(39999.046875, 14403.109375, -168.43475341796875),
		["cfpoint"] = Vector3.new(39998.1015625, 1.6268491744995117, 20.27294921875),
		["cframe_gem"] = Vector3.new(39986.12890625, 14404.6689453125, -206.27294921875),
		["check_gem"] = nil
	},
}
local worldtable = {}
for i,v in pairs(world:GetChildren()) do
	if i == i then
		worldtable[i] = {
			["name"] = v.Name,
			["name_point"] = wolrd_name["WORLD"..i].name,
			["cframe_gem"] = wolrd_name["WORLD"..i].cframe_gem,
			["cf1"] = wolrd_name["WORLD"..i].cf1,
			["cf2"] = wolrd_name["WORLD"..i].cf2,
			["cf3"] = wolrd_name["WORLD"..i].cf3,
			["cf4"] = wolrd_name["WORLD"..i].cf4,
			["cfpoint"] = wolrd_name["WORLD"..i].cfpoint,
		}
	end
end

function autofarm()
	if (tick() - lasttime) > 0.01 then
		if not _G.settings_farm.AutoFarm then _G.settings_farm.connection:Disconnect() end
		local world_test = worldtable
		local world_num = tonumber(game:GetService("Players").LocalPlayer.NowWorld.Value)
		local wold_num_check = tonumber(world_test[world_num].name)
		local name_world = tostring(world_test[world_num].name_point)
		if  world_num == wold_num_check then
			if NAME_POINT.Value == name_world.."1" then
				char.Humanoid:Move(Vector3.new(0,0,-1))
			elseif NAME_POINT.Value == name_world.."2" and workspace["\229\161\148\233\161\182\233\153\132\233\173\148\229\165\150\229\138\177"].FX["\231\178\146\229\173\144"]["\231\178\146\229\173\144"].Enabled then
				char.Humanoid:MoveTo(world_test[world_num].cframe_gem)
			elseif NAME_POINT.Value == name_world.."GEM" or NAME_POINT.Value == name_world.."2" then
				char.Humanoid:MoveTo(world_test[world_num].cf4)
			elseif NAME_POINT.Value == name_world.."3" then
				char.Humanoid:MoveTo(world_test[world_num].cf4)
			elseif NAME_POINT.Value == name_world.."CHECK" then
				char.HumanoidRootPart.CFrame = world_test[world_num].cf2
			else
				char.HumanoidRootPart.CFrame = world_test[world_num].cf2
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
	local gemcf1 = Vector3.new(-25.98682403564453, 14400.8662109375, -96.82759094238281)
	local cfright = Vector3.new()
	local cfleft = Vector3.new()
	create(name,cf1,cf2,cf3,cf4,cfpoint,gemcf1,cfright,cfleft)
	
	-- World Two
	local name,cf1,cf2,cf3,cf4,cfpoint
	name = "DR"
	cf1 = Vector3.new(4999.310546875, 3.0617194175720215, -104.9820556640625)
	cf2 = Vector3.new(4999.310546875, 0, -62.9820556640625)
	cf3= Vector3.new(4999.22607421875, 14403.4443359375, -94.53253173828125)
	cf4 = Vector3.new(4998.923828125, 14402.9365234375, -58.3597640991211)
	cfpoint = Vector3.new(4999.43798828125, 2.2508902549743652, 51.2280387878418)
	local gemcf1 = Vector3.new(4983.7734375, 14406.9501953125, -85.39076232910156)
	local cfright = Vector3.new()
	local cfleft = Vector3.new()
	create(name,cf1,cf2,cf3,cf4,cfpoint,gemcf1,cfright,cfleft)
	
	-- World Three
	local name,cf1,cf2,cf3,cf4,cfpoi
	name = "SR"
	cf1 = Vector3.new(10000.9990234375, 2.4037294387817383, -76.02654266357422)
	cf2 = Vector3.new(10000.84375, 0, -34.745391845703125)
	cf3 = Vector3.new(10001.2939453125, 14404.140625, -87.9701156616211)
	cf4 = Vector3.new(10001.2939453125, 14404.140625, -31.9701156616211)
	cfpoint = Vector3.new(10001.9267578125, 2.198415517807007, 66.47831726074219)
	local gemcf1 = Vector3.new(9984.8583984375, 14405.650390625, -69.05514526367188)
	local cfright = Vector3.new()
	local cfleft = Vector3.new()
	create(name,cf1,cf2,cf3,cf4,cfpoint,gemcf1,cfright,cfleft)

	-- World Four
	local name,cf1,cf2,cf3,cf4,cfpoi
	name = "OR"
	cf1 = Vector3.new(14997.2783203125, 3.352501392364502, -185.09463500976562)
	cf2 = Vector3.new(14997.2783203125, 3.352501392364502, -135.09463500976562)
	cf3 = Vector3.new(14996.3310546875, 14404.634765625, -176.02198791503906)
	cf4 = Vector3.new(14996.7353515625, 14404.642578125, -134.61813354492188)
	cfpoint = Vector3.new(14997.0166015625, 3.2328836917877197, 25.82378387451172)
	local gemcf1 = Vector3.new(14979.771484375, 14406.2353515625, -162.00804138183594)
	local cfright = Vector3.new()
	local cfleft = Vector3.new()
	create(name,cf1,cf2,cf3,cf4,cfpoint,gemcf1,cfright,cfleft)

	-- World Five
	local name,cf1,cf2,cf3,cf4,cfpoi
	name = "IR"
	cf1 = Vector3.new(20000.294921875, 1.730976939201355, -126.93538665771484)
	cf2 = Vector3.new(20000.294921875, 1.730976939201355, -76.93538665771484)
	cf3 = Vector3.new(20000.912109375, 14401.9912109375, -134.8295440673828)
	cf4 = Vector3.new(20000.912109375, 14401.9912109375, -74.8295440673828)
	cfpoint = Vector3.new(20000, 2.436941146850586, 62.311275482177734)
	local gemcf1 = Vector3.new(19987.859375, 14405.033203125, -110.51150512695312)
	local cfright = Vector3.new()
	local cfleft = Vector3.new()
	create(name,cf1,cf2,cf3,cf4,cfpoint,gemcf1,cfright,cfleft)

	-- World Six
	local name,cf1,cf2,cf3,cf4,cfpoi
	name = "UR"
	cf1 = Vector3.new(25000.173828125, 4.090233325958252, -89.04209518432617)
	cf2 = Vector3.new(25000.173828125, 4.090233325958252, -39.04209518432617)
	cf3 = Vector3.new(25000.142578125, 14406.12890625, -89.93489837646484)
	cf4 = Vector3.new(25000.142578125, 14406.12890625, -37.93489837646484)
	cfpoint = Vector3.new(25000, 1.277872085571289, 74.27454376220703)
	local gemcf1 = Vector3.new(25016.3359375, 14407.66015625, -57.49378204345703)
	local cfright = Vector3.new()
	local cfleft = Vector3.new()
	create(name,cf1,cf2,cf3,cf4,cfpoint,gemcf1,cfright,cfleft)

	-- World Seven
	local name,cf1,cf2,cf3,cf4,cfpoi
	name = "YR"
	cf1 = Vector3.new(30000.212890625, 1.9342588186264038, -124.91072082519531)
	cf2 = Vector3.new(30000.212890625, 1.9342588186264038, -74.91072082519531)
	cf3 = Vector3.new(30000.89453125, 14401.49609375, -131.16964721679688)
	cf4 = Vector3.new(30000.89453125, 14401.49609375, -72.16964721679688)
	cfpoint = Vector3.new(30000, -1, 93.03144073486328)
	local gemcf1 = Vector3.new(29981.49609375, 14404.587890625, -114.3438720703125)
	local cfright = Vector3.new()
	local cfleft = Vector3.new()
	create(name,cf1,cf2,cf3,cf4,cfpoint,gemcf1,cfright,cfleft)

	-- World Eight
	local name,cf1,cf2,cf3,cf4,cfpoi
	name = "ER"
	cf1 = Vector3.new(35000.125, 4.7001543045043945, -89.22102737426758)
	cf2 = Vector3.new(35000.125, 4.7001543045043945, -39.22102737426758)
	cf3 = Vector3.new(35000.15625, 14405.56640625, -89.87808990478516)
	cf4 = Vector3.new(35000.15625, 14405.56640625, -33.87808990478516)
	cfpoint = Vector3.new(35000, 1.277984619140625, 129.68069458007812)
	local gemcf1 = Vector3.new(34984.92578125, 14405.50390625, -67.86906433105469)
	local cfright = Vector3.new()
	local cfleft = Vector3.new()
	create(name,cf1,cf2,cf3,cf4,cfpoint,gemcf1,cfright,cfleft)

	-- World Nine
	local name,cf1,cf2,cf3,cf4,cfpoint
	name = "GR"
	cf1 = Vector3.new(39998.94921875, 1.8401930332183838, -222.32025146484375)
	cf2 = Vector3.new(39998.94921875, 1.8401930332183838, -172.32025146484375)
	cf3 = Vector3.new(39999.046875, 14403.109375, -220.43475341796875)
	cf4 = Vector3.new(39999.046875, 14403.109375, -160.43475341796875)
	cfpoint = Vector3.new(39998.1015625, 1.6268491744995117, 20.27294921875)
	local gemcf1 = Vector3.new(39986.12890625, 14404.6689453125, -206.27294921875)
	local cfright = Vector3.new(40004.3203125, 2.5133371353149414, -173.47750854492188)
	local cfleft = Vector3.new(39992.25390625, 2.5133304595947266, -173.6731719970703)
	create(name,cf1,cf2,cf3,cf4,cfpoint,gemcf1,cfright,cfleft)
end
local check2 = false
function create(name,cframech,cframe1,cframe2,cframe3,cframepoint,gemcf,cfright,cfleft)
	if not workspace:FindFirstChild("Folder_Point") then
		folder = Instance.new("Folder",workspace)
		folder.Name = "Folder_Point"
		folder_point = workspace:WaitForChild("Folder_Point")
	end
	if not folder_point:FindFirstChild(name.."GEM") then
		local genpt = Instance.new("Part",folder)
		genpt.Name = name.."GEM"
		genpt.Size = Vector3.new(3,3,3)
		genpt.CanCollide = false
		genpt.Anchored = true
		genpt.Transparency = 1
		genpt.Position = gemcf
		genpt.Touched:Connect(function(plr)
			if tostring(plr.Parent) ~= tostring(char) then return end
			local DEBRIS = game:GetService("Debris")
			local Part3 = Instance.new("Part",folder) Part3.CanCollide = false Part3.Anchored = true Part3.Transparency = 1 Part3.Position = cframe3 Part3.Size = Vector3.new(5,5,5) Part3.Name = name.."3" Part3.Touched:Connect(function(plr) if tostring(plr.Parent) == tostring(game.Players.LocalPlayer) then NAME_POINT.Value = Part3.Name DEBRIS:AddItem(Part3,.3) end end)
			NAME_POINT.Value = genpt.Name
		end)
	end
	if not folder_point:FindFirstChild(name.."POINT") then
		local pt = Instance.new("Part",folder)
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
	if not folder_point:FindFirstChild(name.."CHECK") then 
		local part = Instance.new("Part",folder) 
		part.CanCollide = false
		part.Anchored = true 
		part.Name = name.."CHECK" 
		part.Size = Vector3.new(1000,1000,70)
		part.Position = cframech
		part.Transparency = 1
		part.Touched:Connect(function(plr)
			if tostring(plr.Parent) == tostring(char) then
				NAME_POINT.Value = part.Name
				check1 = false
			end
		end)
	end
	if not folder_point:FindFirstChild(name.."RIGHT") then
		local right = Instance.new("Part",folder)
		right.Name = name.."RIGHT"
		right.Position = cfright
		right.Anchored = true
		right.CanCollide = false
		right.Color = Color3.new(1, 0, 0)
		right.Size = Vector3.new(4,4,4)
		right.Touched:Connect(function(plr)
			if check2 then return end
			if tostring(plr.Parent) == tostring(char) then
				NAME_POINT.Value = name.."CHECK"
				task.wait(3)
				check2 = true
			end
		end)
	end
	if not folder_point:FindFirstChild(name.."LEFT") then
		local left = Instance.new("Part",folder)
		left.Name = name.."LEFT"
		left.Position = cfleft
		left.Anchored = true
		left.CanCollide = false
		left.Color = Color3.new(1, 0, 0)
		left.Size = Vector3.new(4,4,4)
		left.Touched:Connect(function(plr)
			if check2 then return end
			if tostring(plr.Parent) == tostring(char) then
				NAME_POINT.Value = name.."CHECK"
				task.wait(3)
				check2 = true
			end
		end)
	end
	if not folder_point:FindFirstChild(name.."1") then
		local Part = Instance.new("Part",folder)
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
	if not folder_point:FindFirstChild(name.."2") then
		local Part2 = Instance.new("Part",folder)
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

-- UI SETTINGS


createWinjeds:CreateButton({
	ButtonName = "Button1",
	ButtonOptionName = "AUTO FARM",
	Check = _G.settings_farm.AutoFarm,
	OnClick = function()
		if _G.settings_farm.AutoFarm then
			_G.settings_farm.AutoFarm = false
			_G.settings_farm.connection:Disconnect()
		else
			_G.settings_farm.AutoFarm = true
			_G.settings_farm.connection = render.RenderStepped:Connect(autofarm)
		end
	end,
})

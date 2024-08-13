local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local tool = Instance.new("Tool",LocalPlayer.Backpack)
tool.RequiresHandle = false
tool.Name = "Tp tool(Equip to Click TP)"
local mouse = LocalPlayer:GetMouse()

tool.Activated:connect(function()
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()
    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    local pos = mouse.Hit+Vector3.new(0,2.5,0)
    pos = CFrame.new(pos.X,pos.Y,pos.Z)*CFrame.Angles(math.rad(HumanoidRootPart.Orientation.X),math.rad(HumanoidRootPart.Orientation.Y),math.rad(HumanoidRootPart.Orientation.Z))
    HumanoidRootPart.CFrame = pos
end)

LocalPlayer.CharacterAdded:Connect(function()
  local tool = Instance.new("Tool",LocalPlayer.Backpack)
  tool.RequiresHandle = false
  tool.Name = "Tp tool(Equip to Click TP)"
  local mouse = LocalPlayer:GetMouse()

  tool.Activated:connect(function()
      local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()
      local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
      local pos = mouse.Hit+Vector3.new(0,2.5,0)
      pos = CFrame.new(pos.X,pos.Y,pos.Z)*CFrame.Angles(math.rad(HumanoidRootPart.Orientation.X),math.rad(HumanoidRootPart.Orientation.Y),math.rad(HumanoidRootPart.Orientation.Z))
      HumanoidRootPart.CFrame = pos
  end)
end)

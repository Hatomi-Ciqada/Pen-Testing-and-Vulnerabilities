local Configuration = {
    PermDeath = false,
    RemoveMesh = true,
    RemoveHead = true
}

local Players = game:GetService("Players")

local Player = Players.LocalPlayer
local Character = Player.Character or assert(tostring(Character) == tostring(Player), "Player character is not valid.") or false

local Torso = Character and Character:FindFirstChild("Torso") or Character:FindFirstChild("UpperTorso")
local Humanoid = Character and Character:FindFirstChildWhichIsA("Humanoid")
local RootPart = Humanoid and Humanoid.RootPart

assert((Humanoid and RootPart), "Humanoid and RootPart does not exist.")

if Configuration.PermDeath then
    Player.Character = nil
    Player.Character = Character
    wait(Players.RespawnTime + .05)
    Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
end

for _, x in next, Humanoid:GetAccessories() do
    sethiddenproperty(x, "BackendAccoutrementState", 0)
    local Attachment = x:FindFirstChildWhichIsA("Attachment", true)
    if Attachment then
        Attachment:Destroy()
    end
end

Torso:Destroy()
RootPart:Destroy()
for _, x in next, Character:GetChildren() do
    if x:IsA("BasePart") and not tostring(x):match("Head") then
        x:Destroy()
    end
end

if Configuration.RemoveMesh then
    local GetClass = function(x, v)
        return x:FindFirstChildWhichIsA(v, true)
    end
    for _, x in next, Humanoid:GetAccessories() do
        local Mesh = GetClass(x, "SpecialMesh") or GetClass(x, "MeshPart") or GetClass(x, "Mesh")
        if Mesh then
            Mesh:Destroy()
        end
    end
end

if Configuration.RemoveHead then
    local Head = Character:FindFirstChild("Head")
    if Head then
        Head:Destroy()
    end
end

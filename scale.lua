local bodyScaleModule = {};

local Players = game:GetService("Players");

function ScaleR15(p, scale)
    local plr = Players:WaitForChild(p)
    local Character = plr.Character
    local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
    local values = {
        headScale=Humanoid.HeadScale;
        bodyWidth = Humanoid.BodyWidthScale;
        bodyHeight = Humanoid.BodyHeightScale; 
        bodyDepth = Humanoid.BodyDepthScale;
    };
    values.bodyWidth.Value = scale;
    values.bodyHeight.Value = scale;
    values.bodyDepth.Value = scale;
    values.headScale.Value = scale;
end

function bodyScaleModule.ScaleCharacter(plr, scale)
    local isR15 = Players:WaitForChild(plr).Character:WaitForChild("Humanoid").RigType == Enum.HumanoidRigType.R15
    if isR15 == true then
        ScaleR15(plr, scale)
    end
end

return bodyScaleModule

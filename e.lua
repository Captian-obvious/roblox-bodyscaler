function ScaleR15(p, scale)
    local plr = game:GetService("Players"):WaitForChild(p)
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
ScaleR15("Superduperbloxer2",0.5)

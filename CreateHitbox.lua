return function (Part : BasePart | Model, Multiplier : Vector3) : Part
    local Size, Position

    if Part:IsA('BasePart') then
        Size, Position = Part.Size, Part.Position
    elseif Part:IsA('Model') then
        Size = Part:GetExtentsSize()
        Position = Part:GetPivot().Position
    end

    local Hitbox = Instance.new('Part', Part)
    Hitbox.Size = Size * Multiplier
    Hitbox.Position = Position + Vector3.new(0, (Hitbox.Size.Y / 2) - 0.5, 0)
    Hitbox.Anchored = true
    Hitbox.CanCollide = false
    Hitbox.Transparency = 1
    Hitbox.Name = Part:GetFullName() .. 'Hitbox'
    return Hitbox
end

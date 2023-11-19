local _Vector3 = {}
_Vector3.__index = Vector3

function _Vector3.new(Default : number)
    local self = setmetatable({}, Vector3)
    self.Default = Default
    return self
end

function _Vector3:fromY(Y : number) : Vector3
    return Vector3.new(self.Default, Y, self.Default)
end

function _Vector3:fromX(X : number) : Vector3
    return Vector3.new(X, self.Default, self.Default)
end

function _Vector3:fromZ(Z : number) : Vector3
    return Vector3.new(self.Default, self.Default, Z)
end

return _Vector3

-- Compiled with roblox-ts v1.3.2
local Entity
do
	Entity = setmetatable({}, {
		__tostring = function()
			return "Entity"
		end,
	})
	Entity.__index = Entity
	function Entity.new(...)
		local self = setmetatable({}, Entity)
		return self:constructor(...) or self
	end
	function Entity:constructor()
		self.id = 1
	end
	function Entity:Walk()
		print("WE are WALKING now!", self.id)
	end
end
local Anoid
do
	local super = Entity
	Anoid = setmetatable({}, {
		__tostring = function()
			return "Anoid"
		end,
		__index = super,
	})
	Anoid.__index = Anoid
	function Anoid.new(...)
		local self = setmetatable({}, Anoid)
		return self:constructor(...) or self
	end
	function Anoid:constructor(name)
		super.constructor(self)
		self.name = name
	end
end
return {
	Anoid = Anoid,
}

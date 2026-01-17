---@meta
---Auto-generated from Farseer.NetStandard
---Namespace: FarseerPhysics

---@class FarseerPhysics.ConvertUnits: System.Object
---@field private _displayUnitsToSimUnitsRatio System.Single
---@field private _simUnitsToDisplayUnitsRatio System.Single
CS.FarseerPhysics.ConvertUnits = {}

---@param displayUnitsPerSimUnit System.Single
function CS.FarseerPhysics.ConvertUnits.SetDisplayUnitToSimUnitRatio(displayUnitsPerSimUnit) end

---@overload fun(simUnits: System.Int32): System.Single
---@overload fun(simUnits: Microsoft.Xna.Framework.Vector2): Microsoft.Xna.Framework.Vector2
---@overload fun(simUnits: Microsoft.Xna.Framework.Vector2, displayUnits: Microsoft.Xna.Framework.Vector2)
---@overload fun(simUnits: Microsoft.Xna.Framework.Vector3): Microsoft.Xna.Framework.Vector3
---@overload fun(x: System.Single, y: System.Single): Microsoft.Xna.Framework.Vector2
---@overload fun(x: System.Single, y: System.Single, displayUnits: Microsoft.Xna.Framework.Vector2)
---@param simUnits System.Single
---@return System.Single
function CS.FarseerPhysics.ConvertUnits.ToDisplayUnits(simUnits) end

---@overload fun(displayUnits: System.Double): System.Single
---@overload fun(displayUnits: System.Int32): System.Single
---@overload fun(displayUnits: Microsoft.Xna.Framework.Vector2): Microsoft.Xna.Framework.Vector2
---@overload fun(displayUnits: Microsoft.Xna.Framework.Vector3): Microsoft.Xna.Framework.Vector3
---@overload fun(displayUnits: Microsoft.Xna.Framework.Vector2, simUnits: Microsoft.Xna.Framework.Vector2)
---@overload fun(x: System.Single, y: System.Single): Microsoft.Xna.Framework.Vector2
---@overload fun(x: System.Double, y: System.Double): Microsoft.Xna.Framework.Vector2
---@overload fun(x: System.Single, y: System.Single, simUnits: Microsoft.Xna.Framework.Vector2)
---@param displayUnits System.Single
---@return System.Single
function CS.FarseerPhysics.ConvertUnits.ToSimUnits(displayUnits) end

do
---@private
---@return FarseerPhysics.ConvertUnits
local __ctor = function() end
CS.FarseerPhysics.ConvertUnits = __ctor
CS.FarseerPhysics.ConvertUnits.__new = __ctor
end


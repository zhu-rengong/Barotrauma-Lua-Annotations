---@meta
---Auto-generated from MoonSharp.Interpreter
---Namespace: MoonSharp.Interpreter.Interop

---@class MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@field Name System.String
---@field Type System.Type
CS.MoonSharp.Interpreter.Interop.IUserDataDescriptor = {}

---@return System.String
function CS.MoonSharp.Interpreter.Interop.IUserDataDescriptor.get_Name() end

---@return System.Type
function CS.MoonSharp.Interpreter.Interop.IUserDataDescriptor.get_Type() end

---@param script MoonSharp.Interpreter.Script
---@param obj System.Object
---@param index MoonSharp.Interpreter.DynValue
---@param isDirectIndexing System.Boolean
---@return MoonSharp.Interpreter.DynValue
function CS.MoonSharp.Interpreter.Interop.IUserDataDescriptor.Index(script, obj, index, isDirectIndexing) end

---@param script MoonSharp.Interpreter.Script
---@param obj System.Object
---@param index MoonSharp.Interpreter.DynValue
---@param value MoonSharp.Interpreter.DynValue
---@param isDirectIndexing System.Boolean
---@return System.Boolean
function CS.MoonSharp.Interpreter.Interop.IUserDataDescriptor.SetIndex(script, obj, index, value, isDirectIndexing) end

---@param obj System.Object
---@return System.String
function CS.MoonSharp.Interpreter.Interop.IUserDataDescriptor.AsString(obj) end

---@param script MoonSharp.Interpreter.Script
---@param obj System.Object
---@param metaname System.String
---@return MoonSharp.Interpreter.DynValue
function CS.MoonSharp.Interpreter.Interop.IUserDataDescriptor.MetaIndex(script, obj, metaname) end

---@param type System.Type
---@param obj System.Object
---@return System.Boolean
function CS.MoonSharp.Interpreter.Interop.IUserDataDescriptor.IsTypeCompatible(type, obj) end



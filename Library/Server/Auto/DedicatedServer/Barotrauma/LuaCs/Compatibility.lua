---@meta
---Auto-generated from DedicatedServer
---Namespace: Barotrauma.LuaCs.Compatibility

---@class Barotrauma.LuaCs.Compatibility.ILuaCsHook: Barotrauma.LuaCs.ILuaPatcher, Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable, Barotrauma.LuaCs.Compatibility.ILuaCsShim
CS.Barotrauma.LuaCs.Compatibility.ILuaCsHook = {}

---@overload fun(eventName: System.String, callback: (fun(...: System.Object): System.Object), owner?: System.Object)
---@param eventName System.String
---@param identifier System.String
---@param callback fun(...: System.Object): System.Object
---@param owner? System.Object
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsHook.Add(eventName, identifier, callback, owner) end

---@param eventName System.String
---@param identifier System.String
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsHook.Remove(eventName, identifier) end

---@param eventName System.String
---@param ... System.Object
---@return System.Object
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsHook.Call(eventName, ...) end


---@class Barotrauma.LuaCs.Compatibility.ILuaCsLogger: Barotrauma.LuaCs.Compatibility.ILuaCsShim, Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.Compatibility.ILuaCsLogger = {}


---@class Barotrauma.LuaCs.Compatibility.ILuaCsNetworking: Barotrauma.LuaCs.Compatibility.ILuaCsShim, Barotrauma.LuaCs.IService, System.IDisposable
---@field LastClientListUpdateID System.UInt16
---@field FileSenderMaxPacketsPerUpdate System.Int32
CS.Barotrauma.LuaCs.Compatibility.ILuaCsNetworking = {}

---@param entity Barotrauma.Networking.INetSerializable
---@param extraData Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsNetworking.CreateEntityEvent(entity, extraData) end

---@return System.UInt16
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsNetworking.get_LastClientListUpdateID() end

---@param value System.UInt16
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsNetworking.set_LastClientListUpdateID(value) end

---@param url System.String
---@param callback fun(...: System.Object)
---@param data? System.String
---@param method? System.String
---@param contentType? System.String
---@param headers? userdata | { [System.String]: System.String } | (fun(): userdata)
---@param savePath? System.String
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsNetworking.HttpRequest(url, callback, data, method, contentType, headers, savePath) end

---@param url System.String
---@param callback fun(...: System.Object)
---@param data System.String
---@param contentType? System.String
---@param headers? userdata | { [System.String]: System.String } | (fun(): userdata)
---@param savePath? System.String
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsNetworking.HttpPost(url, callback, data, contentType, headers, savePath) end

---@param url System.String
---@param callback fun(...: System.Object)
---@param headers? userdata | { [System.String]: System.String } | (fun(): userdata)
---@param savePath? System.String
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsNetworking.HttpGet(url, callback, headers, savePath) end

---@param url System.String
---@param callback fun(...: System.Object)
---@param headers? userdata | { [System.String]: System.String } | (fun(): userdata)
---@param savePath? System.String
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsNetworking.RequestGetHTTP(url, callback, headers, savePath) end

---@param url System.String
---@param callback fun(...: System.Object)
---@param data System.String
---@param contentType? System.String
---@param headers? userdata | { [System.String]: System.String } | (fun(): userdata)
---@param savePath? System.String
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsNetworking.RequestPostHTTP(url, callback, data, contentType, headers, savePath) end

---@param netId System.String
---@param action fun(...: System.Object)
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsNetworking.Receive(netId, action) end

---@return System.Int32
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsNetworking.get_FileSenderMaxPacketsPerUpdate() end

---@param value System.Int32
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsNetworking.set_FileSenderMaxPacketsPerUpdate(value) end

---@param client Barotrauma.Networking.Client
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsNetworking.ClientWriteLobby(client) end

---@param client Barotrauma.Networking.Client
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsNetworking.UpdateClientPermissions(client) end

---@return Barotrauma.Networking.IWriteMessage
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsNetworking.Start() end

---@param mesage Barotrauma.Networking.IWriteMessage
---@param connection? Barotrauma.Networking.NetworkConnection
---@param deliveryMethod? Barotrauma.Networking.DeliveryMethod
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsNetworking.Send(mesage, connection, deliveryMethod) end


---@class Barotrauma.LuaCs.Compatibility.ILuaCsShim: Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.Compatibility.ILuaCsShim = {}


---@class Barotrauma.LuaCs.Compatibility.ILuaCsTimer: Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable, Barotrauma.LuaCs.Compatibility.ILuaCsShim
---@field Time System.Double
---@field AccumulatorMax System.Double
CS.Barotrauma.LuaCs.Compatibility.ILuaCsTimer = {}

---@return System.Double
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsTimer.get_Time() end

---@return System.Double
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsTimer.GetTime() end

function CS.Barotrauma.LuaCs.Compatibility.ILuaCsTimer.Clear() end

---@param action fun(...: System.Object)
---@param millisecondDelay System.Int32
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsTimer.Wait(action, millisecondDelay) end

---@param action fun(...: System.Object)
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsTimer.NextFrame(action) end


---@class Barotrauma.LuaCs.Compatibility.ILuaCsUtility: Barotrauma.LuaCs.Compatibility.ILuaCsShim, Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.Compatibility.ILuaCsUtility = {}

---@param file System.String
---@return System.Boolean
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsUtility.CanReadFromPath(file) end

---@param file System.String
---@return System.Boolean
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsUtility.CanWriteToPath(file) end

---@package
---@param path System.String
---@param write? System.Boolean
---@param origin? Barotrauma.LuaCsMessageOrigin
---@return System.Boolean
function CS.Barotrauma.LuaCs.Compatibility.ILuaCsUtility.IsPathAllowedException(path, write, origin) end


---@enum Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType
CS.Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType = {
    Before = 0,
    After = 1
}


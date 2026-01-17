---@meta
---Auto-generated from BarotraumaCore
---Namespace: Barotrauma.Networking

---@class Barotrauma.Networking.Address: System.Object
---@field StringRepresentation System.String
---@field IsLocalHost System.Boolean
CS.Barotrauma.Networking.Address = {}

---@return System.String
function CS.Barotrauma.Networking.Address.get_StringRepresentation() end

---@param str System.String
---@return userdata
function CS.Barotrauma.Networking.Address.Parse(str) end

---@return System.Boolean
function CS.Barotrauma.Networking.Address.get_IsLocalHost() end

---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.Address.Equals(obj) end

---@return System.Int32
function CS.Barotrauma.Networking.Address.GetHashCode() end

---@return System.String
function CS.Barotrauma.Networking.Address.ToString() end

---@param a Barotrauma.Networking.Address
---@param b Barotrauma.Networking.Address
---@return System.Boolean
function CS.Barotrauma.Networking.Address.op_Equality(a, b) end

---@param a Barotrauma.Networking.Address
---@param b Barotrauma.Networking.Address
---@return System.Boolean
function CS.Barotrauma.Networking.Address.op_Inequality(a, b) end

---@protected
---@return Barotrauma.Networking.Address
function CS.Barotrauma.Networking.Address() end

---@class Barotrauma.Networking.EosP2PAddress: Barotrauma.Networking.P2PAddress
---@field StringRepresentation System.String
---@field IsLocalHost System.Boolean
---@field EosStringRepresentation System.String
---@field private prefix System.String
CS.Barotrauma.Networking.EosP2PAddress = {}

---@param addressStr System.String
---@return userdata
function CS.Barotrauma.Networking.EosP2PAddress.Parse(addressStr) end

---@return System.String
function CS.Barotrauma.Networking.EosP2PAddress.get_StringRepresentation() end

---@return System.Boolean
function CS.Barotrauma.Networking.EosP2PAddress.get_IsLocalHost() end

---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.EosP2PAddress.Equals(obj) end

---@return System.Int32
function CS.Barotrauma.Networking.EosP2PAddress.GetHashCode() end

---@param value System.String
---@return Barotrauma.Networking.EosP2PAddress
function CS.Barotrauma.Networking.EosP2PAddress(value) end

---@class Barotrauma.Networking.LidgrenAddress: Barotrauma.Networking.Address
---@field StringRepresentation System.String
---@field IsLocalHost System.Boolean
---@field NetAddress System.Net.IPAddress
CS.Barotrauma.Networking.LidgrenAddress = {}

---@return System.String
function CS.Barotrauma.Networking.LidgrenAddress.get_StringRepresentation() end

---@return System.Boolean
function CS.Barotrauma.Networking.LidgrenAddress.get_IsLocalHost() end

---@param endpointStr System.String
---@return userdata
function CS.Barotrauma.Networking.LidgrenAddress.Parse(endpointStr) end

---@param endpointStr System.String
---@return userdata
function CS.Barotrauma.Networking.LidgrenAddress.ParseHostName(endpointStr) end

---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.LidgrenAddress.Equals(obj) end

---@return System.Int32
function CS.Barotrauma.Networking.LidgrenAddress.GetHashCode() end

---@param a Barotrauma.Networking.LidgrenAddress
---@param b Barotrauma.Networking.LidgrenAddress
---@return System.Boolean
function CS.Barotrauma.Networking.LidgrenAddress.op_Equality(a, b) end

---@param a Barotrauma.Networking.LidgrenAddress
---@param b Barotrauma.Networking.LidgrenAddress
---@return System.Boolean
function CS.Barotrauma.Networking.LidgrenAddress.op_Inequality(a, b) end

---@param netAddress System.Net.IPAddress
---@return Barotrauma.Networking.LidgrenAddress
function CS.Barotrauma.Networking.LidgrenAddress(netAddress) end

---@class Barotrauma.Networking.P2PAddress: Barotrauma.Networking.Address
CS.Barotrauma.Networking.P2PAddress = {}

---@param str System.String
---@return userdata
function CS.Barotrauma.Networking.P2PAddress.Parse(str) end

---@protected
---@return Barotrauma.Networking.P2PAddress
function CS.Barotrauma.Networking.P2PAddress() end

---@class Barotrauma.Networking.PipeAddress: Barotrauma.Networking.Address
---@field StringRepresentation System.String
---@field IsLocalHost System.Boolean
CS.Barotrauma.Networking.PipeAddress = {}

---@return System.String
function CS.Barotrauma.Networking.PipeAddress.get_StringRepresentation() end

---@return System.Boolean
function CS.Barotrauma.Networking.PipeAddress.get_IsLocalHost() end

---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.PipeAddress.Equals(obj) end

---@return System.Int32
function CS.Barotrauma.Networking.PipeAddress.GetHashCode() end

---@param a Barotrauma.Networking.PipeAddress
---@param b Barotrauma.Networking.PipeAddress
---@return System.Boolean
function CS.Barotrauma.Networking.PipeAddress.op_Equality(a, b) end

---@param a Barotrauma.Networking.PipeAddress
---@param b Barotrauma.Networking.PipeAddress
---@return System.Boolean
function CS.Barotrauma.Networking.PipeAddress.op_Inequality(a, b) end

---@return Barotrauma.Networking.PipeAddress
function CS.Barotrauma.Networking.PipeAddress() end

---@class Barotrauma.Networking.SteamP2PAddress: Barotrauma.Networking.P2PAddress
---@field StringRepresentation System.String
---@field IsLocalHost System.Boolean
---@field SteamId Barotrauma.Networking.SteamId
CS.Barotrauma.Networking.SteamP2PAddress = {}

---@return System.String
function CS.Barotrauma.Networking.SteamP2PAddress.get_StringRepresentation() end

---@return System.Boolean
function CS.Barotrauma.Networking.SteamP2PAddress.get_IsLocalHost() end

---@param endpointStr System.String
---@return userdata
function CS.Barotrauma.Networking.SteamP2PAddress.Parse(endpointStr) end

---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.SteamP2PAddress.Equals(obj) end

---@return System.Int32
function CS.Barotrauma.Networking.SteamP2PAddress.GetHashCode() end

---@param a Barotrauma.Networking.SteamP2PAddress
---@param b Barotrauma.Networking.SteamP2PAddress
---@return System.Boolean
function CS.Barotrauma.Networking.SteamP2PAddress.op_Equality(a, b) end

---@param a Barotrauma.Networking.SteamP2PAddress
---@param b Barotrauma.Networking.SteamP2PAddress
---@return System.Boolean
function CS.Barotrauma.Networking.SteamP2PAddress.op_Inequality(a, b) end

---@param steamId Barotrauma.Networking.SteamId
---@return Barotrauma.Networking.SteamP2PAddress
function CS.Barotrauma.Networking.SteamP2PAddress(steamId) end

---@class Barotrauma.Networking.UnknownAddress: Barotrauma.Networking.Address
---@field StringRepresentation System.String
---@field IsLocalHost System.Boolean
CS.Barotrauma.Networking.UnknownAddress = {}

---@return System.String
function CS.Barotrauma.Networking.UnknownAddress.get_StringRepresentation() end

---@return System.Boolean
function CS.Barotrauma.Networking.UnknownAddress.get_IsLocalHost() end

---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.UnknownAddress.Equals(obj) end

---@return System.Int32
function CS.Barotrauma.Networking.UnknownAddress.GetHashCode() end

---@return Barotrauma.Networking.UnknownAddress
function CS.Barotrauma.Networking.UnknownAddress() end

---@enum Barotrauma.Networking.DeliveryMethod
CS.Barotrauma.Networking.DeliveryMethod = {
    Unreliable = 0,
    Reliable = 1
}

---@enum Barotrauma.Networking.ConnectionInitialization
CS.Barotrauma.Networking.ConnectionInitialization = {
    Success = 0,
    AuthInfoAndVersion = 1,
    ContentPackageOrder = 2,
    Password = 3,
    ConnectionStarted = 4
}

---@enum Barotrauma.Networking.PacketHeader
CS.Barotrauma.Networking.PacketHeader = {
    None = 0,
    IsCompressed = 1,
    IsConnectionInitializationStep = 2,
    IsDisconnectMessage = 4,
    IsServerMessage = 8,
    IsHeartbeatMessage = 16,
    IsDataFragment = 32,
    IsDoSProtectionMessage = 64
}


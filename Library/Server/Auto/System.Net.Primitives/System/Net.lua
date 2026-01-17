---@meta
---Auto-generated from System.Net.Primitives
---Namespace: System.Net

---@class System.Net.IPAddress: System.Object
---@field private IsIPv4 System.Boolean
---@field private IsIPv6 System.Boolean
---@field package PrivateAddress System.UInt32
---@field private PrivateScopeId System.UInt32
---@field AddressFamily System.Net.Sockets.AddressFamily
---@field ScopeId System.Int64
---@field IsIPv6Multicast System.Boolean
---@field IsIPv6LinkLocal System.Boolean
---@field IsIPv6SiteLocal System.Boolean
---@field IsIPv6Teredo System.Boolean
---@field IsIPv6UniqueLocal System.Boolean
---@field IsIPv4MappedToIPv6 System.Boolean
---@field Address System.Int64
---@field private _addressOrScopeId System.UInt32
---@field private _numbers System.UInt16[]
---@field private _toString System.String
---@field private _hashCode System.Int32
---@field Any System.Net.IPAddress
---@field Loopback System.Net.IPAddress
---@field Broadcast System.Net.IPAddress
---@field None System.Net.IPAddress
---@field IPv6Any System.Net.IPAddress
---@field IPv6Loopback System.Net.IPAddress
---@field IPv6None System.Net.IPAddress
---@field private s_loopbackMappedToIPv6 System.Net.IPAddress
CS.System.Net.IPAddress = {}

---@private
---@return System.Boolean
function CS.System.Net.IPAddress.get_IsIPv4() end

---@private
---@return System.Boolean
function CS.System.Net.IPAddress.get_IsIPv6() end

---@package
---@return System.UInt32
function CS.System.Net.IPAddress.get_PrivateAddress() end

---@private
---@param value System.UInt32
function CS.System.Net.IPAddress.set_PrivateAddress(value) end

---@private
---@return System.UInt32
function CS.System.Net.IPAddress.get_PrivateScopeId() end

---@private
---@param value System.UInt32
function CS.System.Net.IPAddress.set_PrivateScopeId(value) end

---@private
---@param address userdata | { [System.Int32]: System.Byte }
---@return System.UInt16[]
function CS.System.Net.IPAddress.ReadUInt16NumbersFromBytes(address) end

---@overload fun(ipSpan: (userdata | { [System.Int32]: System.Char }), address: System.Net.IPAddress): System.Boolean
---@param ipString System.String
---@param address System.Net.IPAddress
---@return System.Boolean
function CS.System.Net.IPAddress.TryParse(ipString, address) end

---@private
---@overload fun(s: (userdata | { [System.Int32]: System.Char }), provider: System.IFormatProvider, result: System.Net.IPAddress): System.Boolean
---@param s System.String
---@param provider System.IFormatProvider
---@param result System.Net.IPAddress
---@return System.Boolean
function CS.System.Net.IPAddress.TryParse(s, provider, result) end

---@overload fun(ipSpan: (userdata | { [System.Int32]: System.Char })): System.Net.IPAddress
---@param ipString System.String
---@return System.Net.IPAddress
function CS.System.Net.IPAddress.Parse(ipString) end

---@private
---@overload fun(s: System.String, provider: System.IFormatProvider): System.Net.IPAddress
---@param s userdata | { [System.Int32]: System.Char }
---@param provider System.IFormatProvider
---@return System.Net.IPAddress
function CS.System.Net.IPAddress.Parse(s, provider) end

---@param destination userdata | { [System.Int32]: System.Byte }
---@param bytesWritten System.Int32
---@return System.Boolean
function CS.System.Net.IPAddress.TryWriteBytes(destination, bytesWritten) end

---@private
---@param destination userdata | { [System.Int32]: System.Byte }
function CS.System.Net.IPAddress.WriteIPv6Bytes(destination) end

---@private
---@param destination userdata | { [System.Int32]: System.Byte }
function CS.System.Net.IPAddress.WriteIPv4Bytes(destination) end

---@return System.Byte[]
function CS.System.Net.IPAddress.GetAddressBytes() end

---@return System.Net.Sockets.AddressFamily
function CS.System.Net.IPAddress.get_AddressFamily() end

---@return System.Int64
function CS.System.Net.IPAddress.get_ScopeId() end

---@param value System.Int64
function CS.System.Net.IPAddress.set_ScopeId(value) end

---@return System.String
function CS.System.Net.IPAddress.ToString() end

---@private
---@param format System.String
---@param formatProvider System.IFormatProvider
---@return System.String
function CS.System.Net.IPAddress.ToString(format, formatProvider) end

---@overload fun(utf8Destination: (userdata | { [System.Int32]: System.Byte }), bytesWritten: System.Int32): System.Boolean
---@param destination userdata | { [System.Int32]: System.Char }
---@param charsWritten System.Int32
---@return System.Boolean
function CS.System.Net.IPAddress.TryFormat(destination, charsWritten) end

---@private
---@overload fun(utf8Destination: (userdata | { [System.Int32]: System.Byte }), bytesWritten: System.Int32, format: (userdata | { [System.Int32]: System.Char }), provider: System.IFormatProvider): System.Boolean
---@param destination userdata | { [System.Int32]: System.Char }
---@param charsWritten System.Int32
---@param format userdata | { [System.Int32]: System.Char }
---@param provider System.IFormatProvider
---@return System.Boolean
function CS.System.Net.IPAddress.TryFormat(destination, charsWritten, format, provider) end

---@overload fun(host: System.Int32): System.Int32
---@overload fun(host: System.Int16): System.Int16
---@param host System.Int64
---@return System.Int64
function CS.System.Net.IPAddress.HostToNetworkOrder(host) end

---@overload fun(network: System.Int32): System.Int32
---@overload fun(network: System.Int16): System.Int16
---@param network System.Int64
---@return System.Int64
function CS.System.Net.IPAddress.NetworkToHostOrder(network) end

---@param address System.Net.IPAddress
---@return System.Boolean
function CS.System.Net.IPAddress.IsLoopback(address) end

---@return System.Boolean
function CS.System.Net.IPAddress.get_IsIPv6Multicast() end

---@return System.Boolean
function CS.System.Net.IPAddress.get_IsIPv6LinkLocal() end

---@return System.Boolean
function CS.System.Net.IPAddress.get_IsIPv6SiteLocal() end

---@return System.Boolean
function CS.System.Net.IPAddress.get_IsIPv6Teredo() end

---@return System.Boolean
function CS.System.Net.IPAddress.get_IsIPv6UniqueLocal() end

---@return System.Boolean
function CS.System.Net.IPAddress.get_IsIPv4MappedToIPv6() end

---@return System.Int64
function CS.System.Net.IPAddress.get_Address() end

---@param value System.Int64
function CS.System.Net.IPAddress.set_Address(value) end

---@param comparand System.Object
---@return System.Boolean
function CS.System.Net.IPAddress.Equals(comparand) end

---@package
---@param comparand System.Net.IPAddress
---@return System.Boolean
function CS.System.Net.IPAddress.Equals(comparand) end

---@return System.Int32
function CS.System.Net.IPAddress.GetHashCode() end

---@return System.Net.IPAddress
function CS.System.Net.IPAddress.MapToIPv6() end

---@return System.Net.IPAddress
function CS.System.Net.IPAddress.MapToIPv4() end

---@private
---@return System.Byte[]
function CS.System.Net.IPAddress.ThrowAddressNullException() end

---@private
function CS.System.Net.IPAddress.ThrowSocketOperationNotSupported() end

do
---@overload fun(address: System.Byte[], scopeid: System.Int64): System.Net.IPAddress
---@overload fun(address: (userdata | { [System.Int32]: System.Byte }), scopeid: System.Int64): System.Net.IPAddress
---@overload fun(numbers: (userdata | { [System.Int32]: System.UInt16 }), scopeid: System.UInt32): System.Net.IPAddress
---@overload fun(numbers: System.UInt16[], scopeid: System.UInt32): System.Net.IPAddress
---@overload fun(address: System.Byte[]): System.Net.IPAddress
---@overload fun(address: (userdata | { [System.Int32]: System.Byte })): System.Net.IPAddress
---@overload fun(): System.Net.IPAddress
---@param newAddress System.Int64
---@return System.Net.IPAddress
local __ctor = function(newAddress) end
CS.System.Net.IPAddress = __ctor
CS.System.Net.IPAddress.__new = __ctor
end


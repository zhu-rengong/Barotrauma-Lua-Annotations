---@meta
---Auto-generated from Facepunch.Steamworks.Win64
---Namespace: Steamworks

---@class Steamworks.SteamServer: userdata
---@field package Internal Steamworks.ISteamGameServer
---@field IsValid System.Boolean
---@field DedicatedServer System.Boolean
---@field MaxPlayers System.Int32
---@field BotCount System.Int32
---@field MapName System.String
---@field ModDir System.String
---@field Product System.String
---@field GameDescription System.String
---@field ServerName System.String
---@field Passworded System.Boolean
---@field GameTags System.String
---@field SteamId Steamworks.SteamId
---@field LoggedOn System.Boolean
---@field PublicIp System.Net.IPAddress
---@field AutomaticHeartbeats System.Boolean
---@field AdvertiseServer System.Boolean
---@field private openInterfaces userdata | { [System.Int32]: Steamworks.SteamClass } | (fun(): Steamworks.SteamClass)
---@field private _dedicatedServer System.Boolean
---@field private _maxplayers System.Int32
---@field private _botcount System.Int32
---@field private _mapname System.String
---@field private _modDir System.String
---@field private _product System.String
---@field private _gameDescription System.String
---@field private _serverName System.String
---@field private _passworded System.Boolean
---@field private _gametags System.String
---@field private KeyValue userdata | { [System.String]: System.String } | (fun(): userdata)
---@field package Interface Steamworks.SteamInterface
CS.Steamworks.SteamServer = {}

---@package
---@return Steamworks.ISteamGameServer
function CS.Steamworks.SteamServer.get_Internal() end

---@package
---@overload fun(server: System.Boolean): System.Boolean
---@overload fun(server: System.Boolean): System.Boolean
---@param server System.Boolean
---@return System.Boolean
function CS.Steamworks.SteamServer.InitializeInterface(server) end

---@return System.Boolean
function CS.Steamworks.SteamServer.get_IsValid() end

---@package
function CS.Steamworks.SteamServer.InstallEvents() end

---@param appid Steamworks.AppId
---@param init Steamworks.SteamServerInit
---@param asyncCallbacks? System.Boolean
function CS.Steamworks.SteamServer.Init(appid, init, asyncCallbacks) end

---@package
function CS.Steamworks.SteamServer.ShutdownInterfaces() end

function CS.Steamworks.SteamServer.Shutdown() end

function CS.Steamworks.SteamServer.RunCallbacks() end

---@return System.Boolean
function CS.Steamworks.SteamServer.get_DedicatedServer() end

---@param value System.Boolean
function CS.Steamworks.SteamServer.set_DedicatedServer(value) end

---@return System.Int32
function CS.Steamworks.SteamServer.get_MaxPlayers() end

---@param value System.Int32
function CS.Steamworks.SteamServer.set_MaxPlayers(value) end

---@return System.Int32
function CS.Steamworks.SteamServer.get_BotCount() end

---@param value System.Int32
function CS.Steamworks.SteamServer.set_BotCount(value) end

---@return System.String
function CS.Steamworks.SteamServer.get_MapName() end

---@param value System.String
function CS.Steamworks.SteamServer.set_MapName(value) end

---@return System.String
function CS.Steamworks.SteamServer.get_ModDir() end

---@package
---@param value System.String
function CS.Steamworks.SteamServer.set_ModDir(value) end

---@return System.String
function CS.Steamworks.SteamServer.get_Product() end

---@package
---@param value System.String
function CS.Steamworks.SteamServer.set_Product(value) end

---@return System.String
function CS.Steamworks.SteamServer.get_GameDescription() end

---@package
---@param value System.String
function CS.Steamworks.SteamServer.set_GameDescription(value) end

---@return System.String
function CS.Steamworks.SteamServer.get_ServerName() end

---@param value System.String
function CS.Steamworks.SteamServer.set_ServerName(value) end

---@return System.Boolean
function CS.Steamworks.SteamServer.get_Passworded() end

---@param value System.Boolean
function CS.Steamworks.SteamServer.set_Passworded(value) end

---@return System.String
function CS.Steamworks.SteamServer.get_GameTags() end

---@param value System.String
function CS.Steamworks.SteamServer.set_GameTags(value) end

---@return Steamworks.SteamId
function CS.Steamworks.SteamServer.get_SteamId() end

function CS.Steamworks.SteamServer.LogOnAnonymous() end

function CS.Steamworks.SteamServer.LogOff() end

---@return System.Boolean
function CS.Steamworks.SteamServer.get_LoggedOn() end

---@return System.Net.IPAddress
function CS.Steamworks.SteamServer.get_PublicIp() end

---@param value System.Boolean
function CS.Steamworks.SteamServer.set_AutomaticHeartbeats(value) end

---@param value System.Boolean
function CS.Steamworks.SteamServer.set_AdvertiseServer(value) end

function CS.Steamworks.SteamServer.ForceHeartbeat() end

---@param steamid Steamworks.SteamId
---@param name System.String
---@param score System.Int32
function CS.Steamworks.SteamServer.UpdatePlayer(steamid, name, score) end

---@param Key System.String
---@param Value System.String
function CS.Steamworks.SteamServer.SetKey(Key, Value) end

function CS.Steamworks.SteamServer.ClearKeys() end

---@param data System.Byte[]
---@param steamid Steamworks.SteamId
---@return Steamworks.BeginAuthResult
function CS.Steamworks.SteamServer.BeginAuthSession(data, steamid) end

---@param steamid Steamworks.SteamId
function CS.Steamworks.SteamServer.EndAuthSession(steamid) end

---@param packet Steamworks.Data.OutgoingPacket
---@return System.Boolean
function CS.Steamworks.SteamServer.GetOutgoingPacket(packet) end

---@overload fun(ptr: System.IntPtr, size: System.Int32, address: System.UInt32, port: System.UInt16)
---@param data System.Byte[]
---@param size System.Int32
---@param address System.UInt32
---@param port System.UInt16
function CS.Steamworks.SteamServer.HandleIncomingPacket(data, size, address, port) end

---@param steamid Steamworks.SteamId
---@param appid Steamworks.AppId
---@return Steamworks.UserHasLicenseForAppResult
function CS.Steamworks.SteamServer.UserHasLicenseForApp(steamid, appid) end

---@package
---@param server System.Boolean
---@param iface Steamworks.SteamInterface
function CS.Steamworks.SteamServer.SetInterface(server, iface) end

---@package
---@overload fun(server: System.Boolean)
---@param server System.Boolean
function CS.Steamworks.SteamServer.DestroyInterface(server) end

---@return System.Type
function CS.Steamworks.SteamServer.GetType() end

---@protected
---@return System.Object
function CS.Steamworks.SteamServer.MemberwiseClone() end

---@protected
function CS.Steamworks.SteamServer.Finalize() end

---@return System.String
function CS.Steamworks.SteamServer.ToString() end

---@param obj System.Object
---@return System.Boolean
function CS.Steamworks.SteamServer.Equals(obj) end

---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function CS.Steamworks.SteamServer.Equals(objA, objB) end

---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function CS.Steamworks.SteamServer.ReferenceEquals(objA, objB) end

---@return System.Int32
function CS.Steamworks.SteamServer.GetHashCode() end

do
---@overload fun(): Steamworks.SteamServer
---@return Steamworks.SteamServer
local __ctor = function() end
CS.Steamworks.SteamServer = __ctor
CS.Steamworks.SteamServer.__new = __ctor
end

---@class Steamworks.Friend: System.ValueType
---@field IsMe System.Boolean
---@field IsFriend System.Boolean
---@field IsBlocked System.Boolean
---@field IsPlayingThisGame System.Boolean
---@field IsOnline System.Boolean
---@field IsAway System.Boolean
---@field IsBusy System.Boolean
---@field IsSnoozing System.Boolean
---@field Relationship Steamworks.Relationship
---@field State Steamworks.FriendState
---@field Name System.String
---@field Nickname System.String
---@field NameHistory userdata | (fun(): System.String)
---@field SteamLevel System.Int32
---@field GameInfo Steamworks.Friend.FriendGameInfo|nil
---@field Id Steamworks.SteamId
CS.Steamworks.Friend = {}

---@return System.String
function CS.Steamworks.Friend.ToString() end

---@return System.Boolean
function CS.Steamworks.Friend.get_IsMe() end

---@return System.Boolean
function CS.Steamworks.Friend.get_IsFriend() end

---@return System.Boolean
function CS.Steamworks.Friend.get_IsBlocked() end

---@return System.Boolean
function CS.Steamworks.Friend.get_IsPlayingThisGame() end

---@return System.Boolean
function CS.Steamworks.Friend.get_IsOnline() end

---@async
---@return System.Threading.Tasks.Task
function CS.Steamworks.Friend.RequestInfoAsync() end

---@return System.Boolean
function CS.Steamworks.Friend.get_IsAway() end

---@return System.Boolean
function CS.Steamworks.Friend.get_IsBusy() end

---@return System.Boolean
function CS.Steamworks.Friend.get_IsSnoozing() end

---@return Steamworks.Relationship
function CS.Steamworks.Friend.get_Relationship() end

---@return Steamworks.FriendState
function CS.Steamworks.Friend.get_State() end

---@return System.String
function CS.Steamworks.Friend.get_Name() end

---@return System.String
function CS.Steamworks.Friend.get_Nickname() end

---@return userdata | (fun(): System.String)
function CS.Steamworks.Friend.get_NameHistory() end

---@return System.Int32
function CS.Steamworks.Friend.get_SteamLevel() end

---@return Steamworks.Friend.FriendGameInfo|nil
function CS.Steamworks.Friend.get_GameInfo() end

---@param group_or_room Steamworks.SteamId
---@return System.Boolean
function CS.Steamworks.Friend.IsIn(group_or_room) end

---@async
---@return userdata
function CS.Steamworks.Friend.GetSmallAvatarAsync() end

---@async
---@return userdata
function CS.Steamworks.Friend.GetMediumAvatarAsync() end

---@async
---@return userdata
function CS.Steamworks.Friend.GetLargeAvatarAsync() end

---@param key System.String
---@return System.String
function CS.Steamworks.Friend.GetRichPresence(key) end

---@param Text System.String
---@return System.Boolean
function CS.Steamworks.Friend.InviteToGame(Text) end

---@param message System.String
---@return System.Boolean
function CS.Steamworks.Friend.SendMessage(message) end

---@async
---@return userdata
function CS.Steamworks.Friend.RequestUserStatsAsync() end

---@param statName System.String
---@param defult? System.Single
---@return System.Single
function CS.Steamworks.Friend.GetStatFloat(statName, defult) end

---@param statName System.String
---@param defult? System.Int32
---@return System.Int32
function CS.Steamworks.Friend.GetStatInt(statName, defult) end

---@param statName System.String
---@param defult? System.Boolean
---@return System.Boolean
function CS.Steamworks.Friend.GetAchievement(statName, defult) end

---@param statName System.String
---@return System.DateTime
function CS.Steamworks.Friend.GetAchievementUnlockTime(statName) end

do
---@param steamid Steamworks.SteamId
---@return Steamworks.Friend
local __ctor = function(steamid) end
CS.Steamworks.Friend = __ctor
CS.Steamworks.Friend.__new = __ctor
end


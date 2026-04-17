---@meta
---Auto-generated from DedicatedServer
---Namespace: Barotrauma.LuaCs

---@class Barotrauma.LuaCs.NetworkingService: System.Object, Barotrauma.LuaCs.INetworkingService, Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable, Barotrauma.LuaCs.Compatibility.ILuaCsNetworking, Barotrauma.LuaCs.Compatibility.ILuaCsShim, Barotrauma.LuaCs.IEntityNetworkingService, Barotrauma.LuaCs.Events.IEventClientRawNetMessageReceived, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventSettingInstanceLifetime
---@field ClientHeader Barotrauma.Networking.ClientPacketHeader
---@field ServerHeader Barotrauma.Networking.ServerPacketHeader
---@field IsActive System.Boolean
---@field IsSynchronized System.Boolean
---@field IsDisposed System.Boolean
---@field LastClientListUpdateID System.UInt16
---@field FileSenderMaxPacketsPerUpdate System.Int32
---@field private clientRegisterCount userdata | { [System.String]: System.Int32 } | (fun(): userdata)
---@field private currentId System.UInt16
---@field private clientHeader Barotrauma.Networking.ClientPacketHeader|nil
---@field private serverHeader Barotrauma.Networking.ServerPacketHeader|nil
---@field private netVars userdata | { [Barotrauma.LuaCs.INetworkSyncVar]: Barotrauma.LuaCs.NetworkingService.NetId } | (fun(): userdata)
---@field private netReceives userdata | { [Barotrauma.LuaCs.NetworkingService.NetId]: fun(netMessage: Barotrauma.Networking.IReadMessage, connection: Barotrauma.Networking.Client) } | (fun(): userdata)
---@field private packetToId userdata | { [System.UInt16]: Barotrauma.LuaCs.NetworkingService.NetId } | (fun(): userdata)
---@field private idToPacket userdata | { [Barotrauma.LuaCs.NetworkingService.NetId]: System.UInt16 } | (fun(): userdata)
---@field private _eventService Barotrauma.LuaCs.IEventService
---@field private _loggerService Barotrauma.LuaCs.ILoggerService
---@field private _networkIdProvider Barotrauma.LuaCs.INetworkIdProvider
---@field private client System.Net.Http.HttpClient
---@field private MaxRegisterPerClient System.Int32
CS.Barotrauma.LuaCs.NetworkingService = {}

---@overload fun(netIdString: System.String): Barotrauma.Networking.IWriteMessage
---@overload fun(netIdGuid: System.Guid): Barotrauma.Networking.IWriteMessage
---@overload fun(): Barotrauma.Networking.IWriteMessage
---@param netId Barotrauma.LuaCs.NetworkingService.NetId
---@return Barotrauma.Networking.IWriteMessage
function CS.Barotrauma.LuaCs.NetworkingService.Start(netId) end

---@param netMessage Barotrauma.Networking.IReadMessage
---@param clientPacketHeader Barotrauma.Networking.ClientPacketHeader
---@param sender Barotrauma.Networking.NetworkConnection
function CS.Barotrauma.LuaCs.NetworkingService.OnReceivedClientNetMessage(netMessage, clientPacketHeader, sender) end

---@private
---@param netMessage Barotrauma.Networking.IReadMessage
---@param client? Barotrauma.Networking.Client
function CS.Barotrauma.LuaCs.NetworkingService.HandleNetMessageId(netMessage, client) end

---@private
---@param netId Barotrauma.LuaCs.NetworkingService.NetId
---@return System.UInt16
function CS.Barotrauma.LuaCs.NetworkingService.RegisterId(netId) end

---@private
---@param netMessage Barotrauma.Networking.IReadMessage
---@param client Barotrauma.Networking.Client
function CS.Barotrauma.LuaCs.NetworkingService.RequestIdSingle(netMessage, client) end

---@private
---@param packet System.UInt16
---@param netId Barotrauma.LuaCs.NetworkingService.NetId
function CS.Barotrauma.LuaCs.NetworkingService.WriteIdToAll(packet, netId) end

---@private
---@param client Barotrauma.Networking.Client
function CS.Barotrauma.LuaCs.NetworkingService.WriteSync(client) end

---@param netMessage Barotrauma.Networking.IWriteMessage
---@param connection? Barotrauma.Networking.NetworkConnection
---@param deliveryMethod? Barotrauma.Networking.DeliveryMethod
function CS.Barotrauma.LuaCs.NetworkingService.SendToClient(netMessage, connection, deliveryMethod) end

---@param netMessage Barotrauma.Networking.IWriteMessage
---@param connection? Barotrauma.Networking.NetworkConnection
---@param deliveryMethod? Barotrauma.Networking.DeliveryMethod
function CS.Barotrauma.LuaCs.NetworkingService.Send(netMessage, connection, deliveryMethod) end

---@return Barotrauma.Networking.ClientPacketHeader
function CS.Barotrauma.LuaCs.NetworkingService.get_ClientHeader() end

---@return Barotrauma.Networking.ServerPacketHeader
function CS.Barotrauma.LuaCs.NetworkingService.get_ServerHeader() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.NetworkingService.get_IsActive() end

---@overload fun(netIdString: System.String, callback: (fun(netMessage: Barotrauma.Networking.IReadMessage, connection: Barotrauma.Networking.Client)))
---@overload fun(netIdGuid: System.Guid, callback: (fun(netMessage: Barotrauma.Networking.IReadMessage, connection: Barotrauma.Networking.Client)))
---@param netIdString System.String
---@param callback fun(...: System.Object)
function CS.Barotrauma.LuaCs.NetworkingService.Receive(netIdString, callback) end

---@package
---@param netId Barotrauma.LuaCs.NetworkingService.NetId
---@param callback fun(netMessage: Barotrauma.Networking.IReadMessage, connection: Barotrauma.Networking.Client)
function CS.Barotrauma.LuaCs.NetworkingService.Receive(netId, callback) end

---@private
---@param netMessage Barotrauma.Networking.IReadMessage
---@param netId Barotrauma.LuaCs.NetworkingService.NetId
---@param client? Barotrauma.Networking.Client
function CS.Barotrauma.LuaCs.NetworkingService.HandleNetMessage(netMessage, netId, client) end

---@private
---@param netMessage Barotrauma.Networking.IReadMessage
---@param client? Barotrauma.Networking.Client
function CS.Barotrauma.LuaCs.NetworkingService.HandleNetMessageString(netMessage, client) end

---@private
function CS.Barotrauma.LuaCs.NetworkingService.SubscribeToEvents() end

---@param var Barotrauma.LuaCs.INetworkSyncVar
---@return System.Guid
function CS.Barotrauma.LuaCs.NetworkingService.GetNetworkIdForInstance(var) end

---@param netVar Barotrauma.LuaCs.INetworkSyncVar
function CS.Barotrauma.LuaCs.NetworkingService.RegisterNetVar(netVar) end

---@param netVar Barotrauma.LuaCs.INetworkSyncVar
function CS.Barotrauma.LuaCs.NetworkingService.DeregisterNetVar(netVar) end

---@overload fun(netVar: Barotrauma.LuaCs.INetworkSyncVar, connection?: Barotrauma.Networking.NetworkConnection)
---@param netVar Barotrauma.LuaCs.INetworkSyncVar
function CS.Barotrauma.LuaCs.NetworkingService.SendNetVar(netVar) end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.NetworkingService.Reset() end

function CS.Barotrauma.LuaCs.NetworkingService.Dispose() end

---@async
---@param url System.String
---@param callback fun(...: System.Object)
---@param data? System.String
---@param method? System.String
---@param contentType? System.String
---@param headers? userdata | { [System.String]: System.String } | (fun(): userdata)
---@param savePath? System.String
function CS.Barotrauma.LuaCs.NetworkingService.HttpRequest(url, callback, data, method, contentType, headers, savePath) end

---@param url System.String
---@param callback fun(...: System.Object)
---@param data System.String
---@param contentType? System.String
---@param headers? userdata | { [System.String]: System.String } | (fun(): userdata)
---@param savePath? System.String
function CS.Barotrauma.LuaCs.NetworkingService.HttpPost(url, callback, data, contentType, headers, savePath) end

---@param url System.String
---@param callback fun(...: System.Object)
---@param data System.String
---@param contentType? System.String
---@param headers? userdata | { [System.String]: System.String } | (fun(): userdata)
---@param savePath? System.String
function CS.Barotrauma.LuaCs.NetworkingService.RequestPostHTTP(url, callback, data, contentType, headers, savePath) end

---@param url System.String
---@param callback fun(...: System.Object)
---@param headers? userdata | { [System.String]: System.String } | (fun(): userdata)
---@param savePath? System.String
function CS.Barotrauma.LuaCs.NetworkingService.HttpGet(url, callback, headers, savePath) end

---@param url System.String
---@param callback fun(...: System.Object)
---@param headers? userdata | { [System.String]: System.String } | (fun(): userdata)
---@param savePath? System.String
function CS.Barotrauma.LuaCs.NetworkingService.RequestGetHTTP(url, callback, headers, savePath) end

---@param entity Barotrauma.Networking.INetSerializable
---@param extraData Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.LuaCs.NetworkingService.CreateEntityEvent(entity, extraData) end

---@return System.UInt16
function CS.Barotrauma.LuaCs.NetworkingService.get_LastClientListUpdateID() end

---@param value System.UInt16
function CS.Barotrauma.LuaCs.NetworkingService.set_LastClientListUpdateID(value) end

---@param client Barotrauma.Networking.Client
function CS.Barotrauma.LuaCs.NetworkingService.ClientWriteLobby(client) end

---@param client Barotrauma.Networking.Client
function CS.Barotrauma.LuaCs.NetworkingService.UpdateClientPermissions(client) end

---@return System.Int32
function CS.Barotrauma.LuaCs.NetworkingService.get_FileSenderMaxPacketsPerUpdate() end

---@param value System.Int32
function CS.Barotrauma.LuaCs.NetworkingService.set_FileSenderMaxPacketsPerUpdate(value) end

do
---@overload fun(): Barotrauma.LuaCs.NetworkingService
---@param eventService Barotrauma.LuaCs.IEventService
---@param networkIdProvider Barotrauma.LuaCs.INetworkIdProvider
---@param loggerService Barotrauma.LuaCs.ILoggerService
---@return Barotrauma.LuaCs.NetworkingService
local __ctor = function(eventService, networkIdProvider, loggerService) end
CS.Barotrauma.LuaCs.NetworkingService = __ctor
CS.Barotrauma.LuaCs.NetworkingService.__new = __ctor
end

---@class Barotrauma.LuaCs.AsyncReaderWriterLock: System.Object, System.IDisposable
---@field private _readSemaphore System.Threading.SemaphoreSlim
---@field private _writeSemaphore System.Threading.SemaphoreSlim
---@field private _readerCount System.Int32
CS.Barotrauma.LuaCs.AsyncReaderWriterLock = {}

---@async
---@param token? System.Threading.CancellationToken
---@return userdata
function CS.Barotrauma.LuaCs.AsyncReaderWriterLock.AcquireWriterLock(token) end

---@private
function CS.Barotrauma.LuaCs.AsyncReaderWriterLock.ReleaseWriterLock() end

---@async
---@param token? System.Threading.CancellationToken
---@return userdata
function CS.Barotrauma.LuaCs.AsyncReaderWriterLock.AcquireReaderLock(token) end

---@private
function CS.Barotrauma.LuaCs.AsyncReaderWriterLock.ReleaseReaderLock() end

function CS.Barotrauma.LuaCs.AsyncReaderWriterLock.Dispose() end

do
---@return Barotrauma.LuaCs.AsyncReaderWriterLock
local __ctor = function() end
CS.Barotrauma.LuaCs.AsyncReaderWriterLock = __ctor
CS.Barotrauma.LuaCs.AsyncReaderWriterLock.__new = __ctor
end

---@class Barotrauma.LuaCs.SigilExtensions: System.Object
CS.Barotrauma.LuaCs.SigilExtensions = {}

---@param il Sigil.NonGeneric.Emit
---@param type System.Type
function CS.Barotrauma.LuaCs.SigilExtensions.LoadType(il, type) end

---@param il Sigil.NonGeneric.Emit
---@param type System.Type
function CS.Barotrauma.LuaCs.SigilExtensions.ToObject(il, type) end

---@overload fun(il: Sigil.NonGeneric.Emit, type: System.Type)
---@param il Sigil.NonGeneric.Emit
---@param type System.Type
function CS.Barotrauma.LuaCs.SigilExtensions.DerefIfByRef(il, type) end

---@private
---@param baseType System.Type
---@param targetType System.Type
---@return System.Reflection.MethodInfo
function CS.Barotrauma.LuaCs.SigilExtensions.GetImplicitOperatorMethod(baseType, targetType) end

---@param il Sigil.NonGeneric.Emit
---@param value Sigil.Local
---@param targetType System.Type
function CS.Barotrauma.LuaCs.SigilExtensions.LoadLocalAndCast(il, value, targetType) end

---@param il Sigil.NonGeneric.Emit
---@param format System.String
---@param ... Sigil.Local
function CS.Barotrauma.LuaCs.SigilExtensions.FormatString(il, format, ...) end

---@overload fun(il: Sigil.NonGeneric.Emit)
---@param il Sigil.NonGeneric.Emit
---@param message System.String
function CS.Barotrauma.LuaCs.SigilExtensions.NewMessage(il, message) end

---@param il Sigil.NonGeneric.Emit
---@param action fun(obj: Sigil.NonGeneric.Emit)
function CS.Barotrauma.LuaCs.SigilExtensions.If(il, action) end

---@param il Sigil.NonGeneric.Emit
---@param action fun(obj: Sigil.NonGeneric.Emit)
function CS.Barotrauma.LuaCs.SigilExtensions.IfNot(il, action) end

---@param il Sigil.NonGeneric.Emit
---@param __if__? fun(obj: Sigil.NonGeneric.Emit)
---@param __else__? fun(obj: Sigil.NonGeneric.Emit)
function CS.Barotrauma.LuaCs.SigilExtensions.Branch(il, __if__, __else__) end


---@class Barotrauma.LuaCs.INetCallback
---@field CallbackId System.UInt16
CS.Barotrauma.LuaCs.INetCallback = {}

---@return System.UInt16
function CS.Barotrauma.LuaCs.INetCallback.get_CallbackId() end


---@class Barotrauma.LuaCs.INetworkIdProvider: Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.INetworkIdProvider = {}

---@overload fun(instance: Barotrauma.LuaCs.Data.IDataInfo, attachedItemComponent: Barotrauma.Items.Components.ItemComponent): System.Guid
---@param instance Barotrauma.LuaCs.Data.IDataInfo
---@return System.Guid
function CS.Barotrauma.LuaCs.INetworkIdProvider.GetNetworkIdForInstance(instance) end

---@generic TEntity : Barotrauma.Entity
---@param __genericMethodMaker_TEntity TEntity
---@param instance Barotrauma.LuaCs.Data.IDataInfo
---@param attachedEntity TEntity
---@return System.Guid
function CS.Barotrauma.LuaCs.INetworkIdProvider.GetNetworkIdForInstance(__genericMethodMaker_TEntity, instance, attachedEntity) end


---@class Barotrauma.LuaCs.INetworkSyncVar: Barotrauma.LuaCs.Data.IDataInfo
---@field InstanceId System.Guid
---@field SyncType Barotrauma.LuaCs.NetSync
---@field WritePermissions Barotrauma.Networking.ClientPermissions
CS.Barotrauma.LuaCs.INetworkSyncVar = {}

---@return System.Guid
function CS.Barotrauma.LuaCs.INetworkSyncVar.get_InstanceId() end

---@param networkingService Barotrauma.LuaCs.IEntityNetworkingService
function CS.Barotrauma.LuaCs.INetworkSyncVar.SetNetworkOwner(networkingService) end

---@return Barotrauma.LuaCs.NetSync
function CS.Barotrauma.LuaCs.INetworkSyncVar.get_SyncType() end

---@return Barotrauma.Networking.ClientPermissions
function CS.Barotrauma.LuaCs.INetworkSyncVar.get_WritePermissions() end

---@param message Barotrauma.Networking.IReadMessage
function CS.Barotrauma.LuaCs.INetworkSyncVar.ReadNetMessage(message) end

---@param message Barotrauma.Networking.IWriteMessage
function CS.Barotrauma.LuaCs.INetworkSyncVar.WriteNetMessage(message) end


---@enum Barotrauma.LuaCs.NetSync
CS.Barotrauma.LuaCs.NetSync = {
    None = 0,
    TwoWay = 1,
    ServerAuthority = 2,
    ClientOneWay = 3
}

---@class Barotrauma.LuaCs.NetworkingIdProvider: System.Object, Barotrauma.LuaCs.INetworkIdProvider, Barotrauma.LuaCs.IService, System.IDisposable
---@field IsDisposed System.Boolean
CS.Barotrauma.LuaCs.NetworkingIdProvider = {}

function CS.Barotrauma.LuaCs.NetworkingIdProvider.Dispose() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.NetworkingIdProvider.get_IsDisposed() end

---@private
---@param id System.String
---@return System.Guid
function CS.Barotrauma.LuaCs.NetworkingIdProvider.GetNetworkIdFromStringMd5(id) end

---@overload fun(instance: Barotrauma.LuaCs.Data.IDataInfo, attachedItemComponent: Barotrauma.Items.Components.ItemComponent): System.Guid
---@param instance Barotrauma.LuaCs.Data.IDataInfo
---@return System.Guid
function CS.Barotrauma.LuaCs.NetworkingIdProvider.GetNetworkIdForInstance(instance) end

---@generic TEntity : Barotrauma.Entity
---@param __genericMethodMaker_TEntity TEntity
---@param instance Barotrauma.LuaCs.Data.IDataInfo
---@param attachedEntity TEntity
---@return System.Guid
function CS.Barotrauma.LuaCs.NetworkingIdProvider.GetNetworkIdForInstance(__genericMethodMaker_TEntity, instance, attachedEntity) end

do
---@return Barotrauma.LuaCs.NetworkingIdProvider
local __ctor = function() end
CS.Barotrauma.LuaCs.NetworkingIdProvider = __ctor
CS.Barotrauma.LuaCs.NetworkingIdProvider.__new = __ctor
end

---@class Barotrauma.LuaCs.AssemblyLoader: System.Runtime.Loader.AssemblyLoadContext, Barotrauma.LuaCs.IAssemblyLoaderService, Barotrauma.LuaCs.IService, System.IDisposable
---@field Id System.Guid
---@field OwnerPackage Barotrauma.ContentPackage
---@field IsReferenceOnlyMode System.Boolean
---@field IsDisposed System.Boolean
---@field private AreOperationRunning System.Boolean
---@field AssemblyReferences userdata | (fun(): Microsoft.CodeAnalysis.MetadataReference)
---@field private _isDisposed System.Int32
---@field private _operationsRunning System.Int32
---@field private _onUnload fun(obj: Barotrauma.LuaCs.IAssemblyLoaderService)
---@field private _onResolvingManaged fun(arg1: Barotrauma.LuaCs.IAssemblyLoaderService, arg2: System.Reflection.AssemblyName): System.Reflection.Assembly
---@field private _onResolvingUnmanagedDll fun(arg1: System.Reflection.Assembly, arg2: System.String): System.IntPtr
---@field private _dependencyResolvers userdata | { [System.String]: System.Runtime.Loader.AssemblyDependencyResolver } | (fun(): userdata)
---@field private _loadedAssemblyData userdata | { [Barotrauma.LuaCs.AssemblyLoader.AssemblyOrStringKey]: Barotrauma.LuaCs.AssemblyLoader.AssemblyData } | (fun(): userdata)
---@field private _isResolving userdata
---@field private _isResolvingNative userdata
CS.Barotrauma.LuaCs.AssemblyLoader = {}

---@return System.Boolean
function CS.Barotrauma.LuaCs.AssemblyLoader.get_IsDisposed() end

---@private
---@param value System.Boolean
function CS.Barotrauma.LuaCs.AssemblyLoader.set_IsDisposed(value) end

---@private
---@return System.Boolean
function CS.Barotrauma.LuaCs.AssemblyLoader.get_AreOperationRunning() end

---@private
---@param value System.Boolean
function CS.Barotrauma.LuaCs.AssemblyLoader.set_AreOperationRunning(value) end

---@private
---@param invokingAssembly System.Reflection.Assembly
---@param assemblyName System.String
---@return System.IntPtr
function CS.Barotrauma.LuaCs.AssemblyLoader.OnResolvingUnmanagedDll(invokingAssembly, assemblyName) end

---@private
---@param assemblyLoadContext System.Runtime.Loader.AssemblyLoadContext
---@param assemblyName System.Reflection.AssemblyName
---@return System.Reflection.Assembly
function CS.Barotrauma.LuaCs.AssemblyLoader.OnResolvingManagedAssembly(assemblyLoadContext, assemblyName) end

---@return userdata | (fun(): Microsoft.CodeAnalysis.MetadataReference)
function CS.Barotrauma.LuaCs.AssemblyLoader.get_AssemblyReferences() end

---@param paths userdata | { [System.Int32]: System.String } | (fun(): System.String)
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.AssemblyLoader.AddDependencyPaths(paths) end

---@param assemblyName System.String
---@param compileWithInternalAccess System.Boolean
---@param syntaxTrees userdata | { [System.Int32]: Microsoft.CodeAnalysis.SyntaxTree } | (fun(): Microsoft.CodeAnalysis.SyntaxTree)
---@param metadataReferences userdata | { [System.Int32]: Microsoft.CodeAnalysis.MetadataReference } | (fun(): Microsoft.CodeAnalysis.MetadataReference)
---@param compilationOptions? Microsoft.CodeAnalysis.CSharp.CSharpCompilationOptions
---@return userdata
function CS.Barotrauma.LuaCs.AssemblyLoader.CompileScriptAssembly(assemblyName, compileWithInternalAccess, syntaxTrees, metadataReferences, compilationOptions) end

---@param assemblyFilePath System.String
---@param additionalDependencyPaths userdata | { [System.Int32]: System.String } | (fun(): System.String)
---@return userdata
function CS.Barotrauma.LuaCs.AssemblyLoader.LoadAssemblyFromFile(assemblyFilePath, additionalDependencyPaths) end

---@param assemblyName System.String
---@return userdata
function CS.Barotrauma.LuaCs.AssemblyLoader.GetAssemblyByName(assemblyName) end

---@return userdata
function CS.Barotrauma.LuaCs.AssemblyLoader.GetTypesInAssemblies() end

---@return userdata | (fun(): System.Type)
function CS.Barotrauma.LuaCs.AssemblyLoader.UnsafeGetTypesInAssemblies() end

---@param typeName System.String
---@return userdata
function CS.Barotrauma.LuaCs.AssemblyLoader.GetTypeInAssemblies(typeName) end

function CS.Barotrauma.LuaCs.AssemblyLoader.Dispose() end

---@protected
function CS.Barotrauma.LuaCs.AssemblyLoader.Finalize() end

---@private
---@param context System.Runtime.Loader.AssemblyLoadContext
function CS.Barotrauma.LuaCs.AssemblyLoader.OnUnload(context) end

---@private
function CS.Barotrauma.LuaCs.AssemblyLoader.DisposeInternal() end

---@protected
---@param assemblyName System.Reflection.AssemblyName
---@return System.Reflection.Assembly
function CS.Barotrauma.LuaCs.AssemblyLoader.Load(assemblyName) end

---@protected
---@param unmanagedDllName System.String
---@return System.IntPtr
function CS.Barotrauma.LuaCs.AssemblyLoader.LoadUnmanagedDll(unmanagedDllName) end

---@private
---@return userdata | (fun(): System.Reflection.Assembly)
function CS.Barotrauma.LuaCs.AssemblyLoader.get_Assemblies() end

do
---@param initData Barotrauma.LuaCs.IAssemblyLoaderService.LoaderInitData
---@return Barotrauma.LuaCs.AssemblyLoader
local __ctor = function(initData) end
CS.Barotrauma.LuaCs.AssemblyLoader = __ctor
CS.Barotrauma.LuaCs.AssemblyLoader.__new = __ctor
end

---@class Barotrauma.LuaCs.IAssemblyLoaderService: Barotrauma.LuaCs.IService, System.IDisposable
---@field Id System.Guid
---@field OwnerPackage Barotrauma.ContentPackage
---@field IsReferenceOnlyMode System.Boolean
---@field Assemblies userdata | (fun(): System.Reflection.Assembly)
---@field AssemblyReferences userdata | (fun(): Microsoft.CodeAnalysis.MetadataReference)
---@field InternalsAccessAssemblyName System.String
---@field InternalsAwareAssemblyName System.String
CS.Barotrauma.LuaCs.IAssemblyLoaderService = {}

---@return System.Guid
function CS.Barotrauma.LuaCs.IAssemblyLoaderService.get_Id() end

---@return Barotrauma.ContentPackage
function CS.Barotrauma.LuaCs.IAssemblyLoaderService.get_OwnerPackage() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.IAssemblyLoaderService.get_IsReferenceOnlyMode() end

---@param paths userdata | { [System.Int32]: System.String } | (fun(): System.String)
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IAssemblyLoaderService.AddDependencyPaths(paths) end

---@param assemblyName System.String
---@param compileWithInternalAccess System.Boolean
---@param syntaxTrees userdata | { [System.Int32]: Microsoft.CodeAnalysis.SyntaxTree } | (fun(): Microsoft.CodeAnalysis.SyntaxTree)
---@param metadataReferences userdata | { [System.Int32]: Microsoft.CodeAnalysis.MetadataReference } | (fun(): Microsoft.CodeAnalysis.MetadataReference)
---@param compilationOptions? Microsoft.CodeAnalysis.CSharp.CSharpCompilationOptions
---@return userdata
function CS.Barotrauma.LuaCs.IAssemblyLoaderService.CompileScriptAssembly(assemblyName, compileWithInternalAccess, syntaxTrees, metadataReferences, compilationOptions) end

---@param assemblyFilePath System.String
---@param additionalDependencyPaths userdata | { [System.Int32]: System.String } | (fun(): System.String)
---@return userdata
function CS.Barotrauma.LuaCs.IAssemblyLoaderService.LoadAssemblyFromFile(assemblyFilePath, additionalDependencyPaths) end

---@param assemblyName System.String
---@return userdata
function CS.Barotrauma.LuaCs.IAssemblyLoaderService.GetAssemblyByName(assemblyName) end

---@return userdata
function CS.Barotrauma.LuaCs.IAssemblyLoaderService.GetTypesInAssemblies() end

---@return userdata | (fun(): System.Type)
function CS.Barotrauma.LuaCs.IAssemblyLoaderService.UnsafeGetTypesInAssemblies() end

---@param typeName System.String
---@return userdata
function CS.Barotrauma.LuaCs.IAssemblyLoaderService.GetTypeInAssemblies(typeName) end

---@return userdata | (fun(): System.Reflection.Assembly)
function CS.Barotrauma.LuaCs.IAssemblyLoaderService.get_Assemblies() end

---@return userdata | (fun(): Microsoft.CodeAnalysis.MetadataReference)
function CS.Barotrauma.LuaCs.IAssemblyLoaderService.get_AssemblyReferences() end

do
---@private
---@return Barotrauma.LuaCs.IAssemblyLoaderService
local __ctor = function() end
CS.Barotrauma.LuaCs.IAssemblyLoaderService = __ctor
CS.Barotrauma.LuaCs.IAssemblyLoaderService.__new = __ctor
end

---@class Barotrauma.LuaCs.IAssemblyPlugin: System.IDisposable, Barotrauma.LuaCs.Events.IEventPluginPreInitialize, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventPluginInitialize, Barotrauma.LuaCs.Events.IEventPluginLoadCompleted
CS.Barotrauma.LuaCs.IAssemblyPlugin = {}


---@class Barotrauma.LuaCs.ConfigService: System.Object, Barotrauma.LuaCs.IConfigService, Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable, Barotrauma.LuaCs.ILuaConfigService, Barotrauma.LuaCs.ILuaService
---@field IsDisposed System.Boolean
---@field private _operationLock Barotrauma.LuaCs.AsyncReaderWriterLock
---@field private _settingsByPackageLock Barotrauma.LuaCs.AsyncReaderWriterLock
---@field private _isDisposed System.Int32
---@field private _settingsInstances userdata | { [userdata]: Barotrauma.LuaCs.Data.ISettingBase } | (fun(): userdata)
---@field private _instanceFactory userdata | { [System.String]: fun(arg: userdata): Barotrauma.LuaCs.Data.ISettingBase } | (fun(): userdata)
---@field private _settingsInstancesByPackage userdata | { [Barotrauma.ContentPackage]: userdata | (fun(): Barotrauma.LuaCs.Data.ISettingBase) } | (fun(): userdata)
---@field private _settingsProfiles userdata | { [userdata]: Barotrauma.LuaCs.Data.IConfigProfileInfo } | (fun(): userdata)
---@field private _storageService Barotrauma.LuaCs.IStorageService
---@field private _logger Barotrauma.LuaCs.ILoggerService
---@field private _eventService Barotrauma.LuaCs.IEventService
---@field private _commandsService Barotrauma.LuaCs.IConsoleCommandsService
---@field private _infoProvider Barotrauma.LuaCs.ILuaCsInfoProvider
---@field private _configInfoParserService userdata
---@field private _configProfileInfoParserService userdata
---@field private SaveDataFileName System.String
CS.Barotrauma.LuaCs.ConfigService = {}

---@return System.Boolean
function CS.Barotrauma.LuaCs.ConfigService.get_IsDisposed() end

---@private
---@param value System.Boolean
function CS.Barotrauma.LuaCs.ConfigService.set_IsDisposed(value) end

function CS.Barotrauma.LuaCs.ConfigService.Dispose() end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.ConfigService.Reset() end

---@private
---@param commandsService Barotrauma.LuaCs.IConsoleCommandsService
function CS.Barotrauma.LuaCs.ConfigService.InjectCommands(commandsService) end

---@async
---@param configResources userdata | { [System.Int32]: Barotrauma.LuaCs.Data.IConfigResourceInfo } | (fun(): Barotrauma.LuaCs.Data.IConfigResourceInfo)
---@return userdata
function CS.Barotrauma.LuaCs.ConfigService.LoadConfigsAsync(configResources) end

---@async
---@param configProfileResources userdata | { [System.Int32]: Barotrauma.LuaCs.Data.IConfigResourceInfo } | (fun(): Barotrauma.LuaCs.Data.IConfigResourceInfo)
---@return userdata
function CS.Barotrauma.LuaCs.ConfigService.LoadConfigsProfilesAsync(configProfileResources) end

---@param setting Barotrauma.LuaCs.Data.ISettingBase
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.ConfigService.LoadSavedValueForConfig(setting) end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.ConfigService.LoadSavedConfigsValues() end

---@param package Barotrauma.ContentPackage
---@param internalName System.String
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.ConfigService.ApplyConfigProfile(package, internalName) end

---@param setting Barotrauma.LuaCs.Data.ISettingBase
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.ConfigService.SaveConfigValue(setting) end

---@param package Barotrauma.ContentPackage
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.ConfigService.DisposePackageData(package) end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.ConfigService.DisposeAllPackageData() end

---@generic T : Barotrauma.LuaCs.Data.ISettingBase
---@param __genericMethodMaker_T T
---@param typeIdentifier System.String
---@param settingFactory fun(arg: userdata): T
function CS.Barotrauma.LuaCs.ConfigService.RegisterSettingTypeInitializer(__genericMethodMaker_T, typeIdentifier, settingFactory) end

do
---@param logger Barotrauma.LuaCs.ILoggerService
---@param storageService Barotrauma.LuaCs.IStorageService
---@param configInfoParserService userdata
---@param configProfileInfoParserService userdata
---@param eventService Barotrauma.LuaCs.IEventService
---@param commandsService Barotrauma.LuaCs.IConsoleCommandsService
---@param infoProvider Barotrauma.LuaCs.ILuaCsInfoProvider
---@return Barotrauma.LuaCs.ConfigService
local __ctor = function(logger, storageService, configInfoParserService, configProfileInfoParserService, eventService, commandsService, infoProvider) end
CS.Barotrauma.LuaCs.ConfigService = __ctor
CS.Barotrauma.LuaCs.ConfigService.__new = __ctor
end

---@class Barotrauma.LuaCs.ConsoleCommandsService: System.Object, Barotrauma.LuaCs.IConsoleCommandsService, Barotrauma.LuaCs.IService, System.IDisposable
---@field IsDisposed System.Boolean
---@field private _registeredCommands userdata | { [System.Int32]: Barotrauma.DebugConsole.Command } | (fun(): Barotrauma.DebugConsole.Command)
---@field private _isDisposed System.Int32
CS.Barotrauma.LuaCs.ConsoleCommandsService = {}

function CS.Barotrauma.LuaCs.ConsoleCommandsService.Dispose() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.ConsoleCommandsService.get_IsDisposed() end

---@private
---@param value System.Boolean
function CS.Barotrauma.LuaCs.ConsoleCommandsService.set_IsDisposed(value) end

---@param name System.String
---@param help System.String
---@param onExecute fun(obj: System.String[])
---@param getValidArgs? fun(): System.String[][]
---@param isCheat? System.Boolean
function CS.Barotrauma.LuaCs.ConsoleCommandsService.RegisterCommand(name, help, onExecute, getValidArgs, isCheat) end

---@param names System.String
---@param onExecute fun(obj: System.String[])
function CS.Barotrauma.LuaCs.ConsoleCommandsService.AssignOnExecute(names, onExecute) end

---@param names System.String
---@param onClientRequestExecute fun(arg1: Barotrauma.Networking.Client, arg2: Microsoft.Xna.Framework.Vector2, arg3: System.String[])
function CS.Barotrauma.LuaCs.ConsoleCommandsService.AssignOnClientRequestExecute(names, onClientRequestExecute) end

---@param name System.String
function CS.Barotrauma.LuaCs.ConsoleCommandsService.RemoveCommand(name) end

function CS.Barotrauma.LuaCs.ConsoleCommandsService.RemoveRegisteredCommands() end

do
---@return Barotrauma.LuaCs.ConsoleCommandsService
local __ctor = function() end
CS.Barotrauma.LuaCs.ConsoleCommandsService = __ctor
CS.Barotrauma.LuaCs.ConsoleCommandsService.__new = __ctor
end

---@class Barotrauma.LuaCs.EventService: System.Object, Barotrauma.LuaCs.IEventService, Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable, Barotrauma.LuaCs.ILuaEventService, Barotrauma.LuaCs.ILuaSafeEventService, Barotrauma.LuaCs.ILuaService, Barotrauma.LuaCs.Compatibility.ILuaCsHook, Barotrauma.LuaCs.ILuaPatcher, Barotrauma.LuaCs.Compatibility.ILuaCsShim
---@field IsDisposed System.Boolean
---@field private _loggerService Barotrauma.LuaCs.ILoggerService
---@field private _luaPatcher Barotrauma.LuaCs.ILuaPatcher
---@field private _operationsLock Barotrauma.LuaCs.AsyncReaderWriterLock
---@field private _subscribers userdata | { [Barotrauma.LuaCs.EventService.TypeStringKey]: userdata | { [userdata]: Barotrauma.LuaCs.Events.IEvent } | (fun(): userdata) } | (fun(): userdata)
---@field private _luaAliasEventFactory userdata | { [Barotrauma.LuaCs.EventService.TypeStringKey]: userdata } | (fun(): userdata)
---@field private _luaLegacyEventsSubscribers userdata | { [Barotrauma.LuaCs.EventService.TypeStringKey]: userdata | { [Barotrauma.LuaCs.EventService.TypeStringKey]: fun(...: System.Object): System.Object } | (fun(): userdata) } | (fun(): userdata)
---@field private _subscribedEventDispatchers userdata | { [Barotrauma.LuaCs.IEventService]: Barotrauma.LuaCs.IEventService } | (fun(): userdata)
---@field private _isDisposed System.Int32
CS.Barotrauma.LuaCs.EventService = {}

function CS.Barotrauma.LuaCs.EventService.Dispose() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.EventService.get_IsDisposed() end

---@private
---@param value System.Boolean
function CS.Barotrauma.LuaCs.EventService.set_IsDisposed(value) end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.EventService.Reset() end

---@overload fun(eventName: System.String, callback: (fun(...: System.Object): System.Object), owner?: System.Object)
---@param eventName System.String
---@param identifier System.String
---@param callback fun(...: System.Object): System.Object
---@param owner? System.Object
function CS.Barotrauma.LuaCs.EventService.Add(eventName, identifier, callback, owner) end

---@param eventName System.String
---@param ... System.Object
---@return System.Object
function CS.Barotrauma.LuaCs.EventService.Call(eventName, ...) end

---@param eventName System.String
---@param identifier System.String
function CS.Barotrauma.LuaCs.EventService.Remove(eventName, identifier) end

---@param eventName System.String
---@param identifier System.String
function CS.Barotrauma.LuaCs.EventService.Unsubscribe(eventName, identifier) end

function CS.Barotrauma.LuaCs.EventService.ClearAllSubscribers() end

---@param eventService Barotrauma.LuaCs.IEventService
function CS.Barotrauma.LuaCs.EventService.AddDispatcherEventService(eventService) end

---@param eventService Barotrauma.LuaCs.IEventService
function CS.Barotrauma.LuaCs.EventService.RemoveDispatcherEventService(eventService) end

---@overload fun(identifier: System.String, className: System.String, methodName: System.String, patch: (fun(instance: System.Object, ptable: Barotrauma.LuaCs.LuaPatcherService.ParameterTable): MoonSharp.Interpreter.DynValue), hookType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType): System.String
---@overload fun(className: System.String, methodName: System.String, parameterTypes: System.String[], patch: (fun(instance: System.Object, ptable: Barotrauma.LuaCs.LuaPatcherService.ParameterTable): MoonSharp.Interpreter.DynValue), hookType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType): System.String
---@overload fun(className: System.String, methodName: System.String, patch: (fun(instance: System.Object, ptable: Barotrauma.LuaCs.LuaPatcherService.ParameterTable): MoonSharp.Interpreter.DynValue), hookType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType): System.String
---@param identifier System.String
---@param className System.String
---@param methodName System.String
---@param parameterTypes System.String[]
---@param patch fun(instance: System.Object, ptable: Barotrauma.LuaCs.LuaPatcherService.ParameterTable): MoonSharp.Interpreter.DynValue
---@param hookType? Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType
---@return System.String
function CS.Barotrauma.LuaCs.EventService.Patch(identifier, className, methodName, parameterTypes, patch, hookType) end

---@overload fun(identifier: System.String, className: System.String, methodName: System.String, hookType: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType): System.Boolean
---@param identifier System.String
---@param className System.String
---@param methodName System.String
---@param parameterTypes System.String[]
---@param hookType Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType
---@return System.Boolean
function CS.Barotrauma.LuaCs.EventService.RemovePatch(identifier, className, methodName, parameterTypes, hookType) end

---@overload fun(identifier: System.String, className: System.String, methodName: System.String, parameterNames: System.String[], patch: (fun(self: System.Object, args: (userdata | { [System.String]: System.Object } | (fun(): userdata))): System.Object), hookMethodType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType)
---@overload fun(identifier: System.String, className: System.String, methodName: System.String, patch: (fun(self: System.Object, args: (userdata | { [System.String]: System.Object } | (fun(): userdata))): System.Object), hookMethodType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType)
---@overload fun(className: System.String, methodName: System.String, patch: (fun(self: System.Object, args: (userdata | { [System.String]: System.Object } | (fun(): userdata))): System.Object), hookMethodType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType)
---@overload fun(className: System.String, methodName: System.String, parameterNames: System.String[], patch: (fun(self: System.Object, args: (userdata | { [System.String]: System.Object } | (fun(): userdata))): System.Object), hookMethodType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType)
---@param identifier System.String
---@param method System.Reflection.MethodBase
---@param patch fun(self: System.Object, args: (userdata | { [System.String]: System.Object } | (fun(): userdata))): System.Object
---@param hookType? Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType
---@param owner? Barotrauma.LuaCs.IAssemblyPlugin
function CS.Barotrauma.LuaCs.EventService.HookMethod(identifier, method, patch, hookType, owner) end

---@generic T : userdata
---@param __genericMethodMaker_T T
---@param identifier System.String
---@param callbacks userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
function CS.Barotrauma.LuaCs.EventService.Subscribe(__genericMethodMaker_T, identifier, callbacks) end

---@generic T : userdata
---@param __genericMethodMaker_T T
---@param subscriberRunner fun(...: System.Object): System.Object
function CS.Barotrauma.LuaCs.EventService.PublishLuaEvent(__genericMethodMaker_T, subscriberRunner) end

---@generic T : userdata
---@param __genericMethodMaker_T T
---@param luaEventName System.String
---@param targetMethod System.String
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.EventService.RegisterLuaEventAlias(__genericMethodMaker_T, luaEventName, targetMethod) end

---@generic T : userdata
---@param __genericMethodMaker_T T
---@param subscriber T
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.EventService.Subscribe(__genericMethodMaker_T, subscriber) end

---@generic T : Barotrauma.LuaCs.Events.IEvent
---@param __genericMethodMaker_T T
---@param subscriber T
function CS.Barotrauma.LuaCs.EventService.Unsubscribe(__genericMethodMaker_T, subscriber) end

---@generic T : Barotrauma.LuaCs.Events.IEvent
---@param __genericMethodMaker_T T
function CS.Barotrauma.LuaCs.EventService.ClearAllEventSubscribers(__genericMethodMaker_T) end

---@generic T : userdata
---@param __genericMethodMaker_T T
---@param action fun(obj: T)
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.EventService.PublishEvent(__genericMethodMaker_T, action) end

do
---@param loggerService Barotrauma.LuaCs.ILoggerService
---@param luaPatcher Barotrauma.LuaCs.ILuaPatcher
---@return Barotrauma.LuaCs.EventService
local __ctor = function(loggerService, luaPatcher) end
CS.Barotrauma.LuaCs.EventService = __ctor
CS.Barotrauma.LuaCs.EventService.__new = __ctor
end

---@class Barotrauma.LuaCs.HarmonyEventPatchesService: System.Object, Barotrauma.LuaCs.ISystem, Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable
---@field IsDisposed System.Boolean
---@field private Harmony HarmonyLib.Harmony
---@field private _eventService Barotrauma.LuaCs.IEventService
---@field private _loggerService Barotrauma.LuaCs.ILoggerService
---@field private debugConsoleCommandVanillaIndex System.Int32
CS.Barotrauma.LuaCs.HarmonyEventPatchesService = {}

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Reset() end

---@private
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Patch() end

---@private
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Unpatch() end

function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.CoroutineManager_Update_Post() end

function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.GameSession_EndRound_Pre() end

function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.GameSession_LoadPreviousSave_Pre() end

---@param __instance Barotrauma.GameSession
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.GameSession_EndMission_Post(__instance) end

---@param __instance Barotrauma.Screen
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Screen_Selected_Post(__instance) end

function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.PackageSource_Refresh_Post() end

function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.ContentPackageManager_Init_Post() end

function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.EnabledPackages_SetCore_Post() end

function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.EnabledPackages_SetRegular_Post() end

---@param sender Barotrauma.Networking.NetworkConnection
---@param inc Barotrauma.Networking.IReadMessage
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.GameServer_ReadDataMessage_Pre(sender, inc) end

---@param __instance Barotrauma.Networking.GameServer
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.GameServer_OnInitializationComplete_Post(__instance) end

---@param client Barotrauma.Networking.Client
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.GameServer_DisconnectClient_Pre(client, peerDisconnectPacket) end

---@param unassigned userdata | { [System.Int32]: Barotrauma.Networking.Client } | (fun(): Barotrauma.Networking.Client)
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.GameServer_AssignJobs_Post(unassigned) end

---@param __result Barotrauma.Character
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Character_Create_Post(__result) end

---@param __instance Barotrauma.Character
---@param causeOfDeathAffliction Barotrauma.Affliction
---@param causeOfDeath Barotrauma.CauseOfDeathType
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Character_Kill_Post(__instance, causeOfDeathAffliction, causeOfDeath) end

---@param __instance Barotrauma.Character
---@param spawnPoint Barotrauma.WayPoint
---@param isPvPMode System.Boolean
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Character_GiveJobItems_Post(__instance, spawnPoint, isPvPMode) end

---@param __result Barotrauma.AttackResult
---@param __instance Barotrauma.Character
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param hitLimb Barotrauma.Limb
---@param afflictions userdata | (fun(): Barotrauma.Affliction)
---@param stun System.Single
---@param playSound System.Boolean
---@param attackImpulse Microsoft.Xna.Framework.Vector2
---@param attacker Barotrauma.Character
---@param damageMultiplier System.Single
---@param allowStacking System.Boolean
---@param penetration System.Single
---@param shouldImplode System.Boolean
---@param ignoreDamageOverlay System.Boolean
---@param recalculateVitality System.Boolean
---@return System.Boolean
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Character_DamageLimb_Pre(__result, __instance, worldPosition, hitLimb, afflictions, stun, playSound, attackImpulse, attacker, damageMultiplier, allowStacking, penetration, shouldImplode, ignoreDamageOverlay, recalculateVitality) end

---@param __instance Barotrauma.Affliction
---@param characterHealth Barotrauma.CharacterHealth
---@param targetLimb Barotrauma.Limb
---@param deltaTime System.Single
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Affliction_Update_Post(__instance, characterHealth, targetLimb, deltaTime) end

---@param __instance Barotrauma.Items.Components.Connection
---@param signal Barotrauma.Items.Components.Signal
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Connection_SendSignal_Post(__instance, signal) end

---@param __instance Barotrauma.Item
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Item_Ctor_Post(__instance) end

---@param __instance Barotrauma.Item
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Item_Remove_Post(__instance) end

---@param __instance Barotrauma.Item
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Item_ShallowRemove_Post(__instance) end

---@param __instance Barotrauma.Item
---@param user Barotrauma.Character
---@param targetLimb Barotrauma.Limb
---@param useTarget Barotrauma.Entity
---@return System.Boolean
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Item_Use_Pre(__instance, user, targetLimb, useTarget) end

---@param __instance Barotrauma.Item
---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Item_SecondaryUse_Pre(__instance, character) end

---@param __instance Barotrauma.Inventory
---@param item Barotrauma.Item
---@param i System.Int32
---@param user Barotrauma.Character
---@param removeItem System.Boolean
---@return System.Boolean
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Inventory_PutItem_Prefix(__instance, item, i, user, removeItem) end

---@param __instance Barotrauma.Inventory
---@param item Barotrauma.Item
---@param index System.Int32
---@param user Barotrauma.Character
---@param swapWholeStack System.Boolean
---@param __result System.Boolean
---@return System.Boolean
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Inventory_TrySwapping_Prefix(__instance, item, index, user, swapWholeStack, __result) end

function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Dispose() end

do
---@param eventService Barotrauma.LuaCs.IEventService
---@param loggerService Barotrauma.LuaCs.ILoggerService
---@return Barotrauma.LuaCs.HarmonyEventPatchesService
local __ctor = function(eventService, loggerService) end
CS.Barotrauma.LuaCs.HarmonyEventPatchesService = __ctor
CS.Barotrauma.LuaCs.HarmonyEventPatchesService.__new = __ctor
end

---@class Barotrauma.LuaCs.LoggerService: System.Object, Barotrauma.LuaCs.ILoggerService, Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable
---@field IsDisposed System.Boolean
---@field private logSubscribers userdata | { [System.Int32]: Barotrauma.LuaCs.ILoggerSubscriber } | (fun(): Barotrauma.LuaCs.ILoggerSubscriber)
---@field private logQueue userdata | (fun(): Barotrauma.LuaCs.PendingLog)
---@field private _isInsideLogCall System.Boolean
---@field private TargetPrefix System.String
---@field private NetMaxLength System.Int32
---@field private NetMaxMessages System.Int32
CS.Barotrauma.LuaCs.LoggerService = {}

---@param subscriber Barotrauma.LuaCs.ILoggerSubscriber
function CS.Barotrauma.LuaCs.LoggerService.Subscribe(subscriber) end

---@param subscriber Barotrauma.LuaCs.ILoggerSubscriber
function CS.Barotrauma.LuaCs.LoggerService.Unsubscribe(subscriber) end

function CS.Barotrauma.LuaCs.LoggerService.ProcessLogs() end

---@param message System.String
---@param color? Microsoft.Xna.Framework.Color|nil
---@param messageType? Barotrauma.Networking.ServerLog.MessageType
function CS.Barotrauma.LuaCs.LoggerService.Log(message, color, messageType) end

---@param message System.String
function CS.Barotrauma.LuaCs.LoggerService.LogError(message) end

---@param message System.String
function CS.Barotrauma.LuaCs.LoggerService.LogWarning(message) end

---@param message System.String
---@param serverColor? Microsoft.Xna.Framework.Color|nil
---@param clientColor? Microsoft.Xna.Framework.Color|nil
function CS.Barotrauma.LuaCs.LoggerService.LogMessage(message, serverColor, clientColor) end

---@param exception System.Exception
---@param prefix? System.String
function CS.Barotrauma.LuaCs.LoggerService.HandleException(exception, prefix) end

---@param result FluentResults.Result
function CS.Barotrauma.LuaCs.LoggerService.LogResults(result) end

---@param message System.String
---@param color? Microsoft.Xna.Framework.Color|nil
function CS.Barotrauma.LuaCs.LoggerService.LogDebug(message, color) end

---@param message System.String
function CS.Barotrauma.LuaCs.LoggerService.LogDebugWarning(message) end

---@param message System.String
function CS.Barotrauma.LuaCs.LoggerService.LogDebugError(message) end

function CS.Barotrauma.LuaCs.LoggerService.Dispose() end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.LoggerService.Reset() end

do
---@return Barotrauma.LuaCs.LoggerService
local __ctor = function() end
CS.Barotrauma.LuaCs.LoggerService = __ctor
CS.Barotrauma.LuaCs.LoggerService.__new = __ctor
end

---@class Barotrauma.LuaCs.LuaCsInfoProvider: System.Object, Barotrauma.LuaCs.ILuaCsInfoProvider, Barotrauma.LuaCs.IService, System.IDisposable
---@field IsDisposed System.Boolean
---@field IsCsEnabled System.Boolean
---@field HideUserNamesInLogs System.Boolean
---@field UseCaching System.Boolean
---@field CurrentRunState Barotrauma.RunState
---@field LuaCsForBarotraumaPackage Barotrauma.ContentPackage
CS.Barotrauma.LuaCs.LuaCsInfoProvider = {}

function CS.Barotrauma.LuaCs.LuaCsInfoProvider.Dispose() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaCsInfoProvider.get_IsDisposed() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaCsInfoProvider.get_IsCsEnabled() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaCsInfoProvider.get_HideUserNamesInLogs() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaCsInfoProvider.get_UseCaching() end

---@return Barotrauma.RunState
function CS.Barotrauma.LuaCs.LuaCsInfoProvider.get_CurrentRunState() end

---@return Barotrauma.ContentPackage
function CS.Barotrauma.LuaCs.LuaCsInfoProvider.get_LuaCsForBarotraumaPackage() end

do
---@return Barotrauma.LuaCs.LuaCsInfoProvider
local __ctor = function() end
CS.Barotrauma.LuaCs.LuaCsInfoProvider = __ctor
CS.Barotrauma.LuaCs.LuaCsInfoProvider.__new = __ctor
end

---@class Barotrauma.LuaCs.LuaScriptManagementService: System.Object, Barotrauma.LuaCs.ILuaScriptManagementService, Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable, Barotrauma.LuaCs.ILuaDataService, Barotrauma.LuaCs.ILuaService, Barotrauma.LuaCs.Events.IEventAssemblyUnloading, Barotrauma.LuaCs.Events.IEvent
---@field InternalScript MoonSharp.Interpreter.Script
---@field IsRunning System.Boolean
---@field IsDisposed System.Boolean
---@field private _script MoonSharp.Interpreter.Script
---@field private _isRunning System.Boolean
---@field private _resourcesInfo userdata | { [System.Int32]: Barotrauma.LuaCs.Data.ILuaScriptResourceInfo } | (fun(): Barotrauma.LuaCs.Data.ILuaScriptResourceInfo)
---@field private _operationsLock Barotrauma.LuaCs.AsyncReaderWriterLock
---@field private _userDataService Barotrauma.LuaCs.ILuaUserDataService
---@field private _safeUserDataService Barotrauma.LuaCs.ISafeLuaUserDataService
---@field private _luaScriptLoader Barotrauma.LuaCs.ILuaScriptLoader
---@field private _luaScriptServicesConfig Barotrauma.LuaCs.Data.ILuaScriptServicesConfig
---@field private _loggerService Barotrauma.LuaCs.ILoggerService
---@field private _luaGame Barotrauma.LuaCs.LuaGame
---@field private _eventService Barotrauma.LuaCs.IEventService
---@field private _luaCsTimer Barotrauma.LuaCs.Compatibility.ILuaCsTimer
---@field private _defaultLuaRegistrar Barotrauma.LuaCs.IDefaultLuaRegistrar
---@field private _pluginManagementService Barotrauma.LuaCs.IPluginManagementService
---@field private _networkingService Barotrauma.LuaCs.INetworkingService
---@field private _commandsService Barotrauma.LuaCs.IConsoleCommandsService
---@field private _configService Barotrauma.LuaCs.ILuaConfigService
---@field private _luaCsInfoProvider Barotrauma.LuaCs.ILuaCsInfoProvider
---@field private _packageManagementService userdata
CS.Barotrauma.LuaCs.LuaScriptManagementService = {}

---@return MoonSharp.Interpreter.Script
function CS.Barotrauma.LuaCs.LuaScriptManagementService.get_InternalScript() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaScriptManagementService.get_IsRunning() end

---@private
---@param commands Barotrauma.LuaCs.IConsoleCommandsService
function CS.Barotrauma.LuaCs.LuaScriptManagementService.RegisterConsoleCommands(commands) end

---@param useCaching System.Boolean
function CS.Barotrauma.LuaCs.LuaScriptManagementService.SetCachingPolicy(useCaching) end

---@async
---@param resourcesInfo userdata | { [System.Int32]: Barotrauma.LuaCs.Data.ILuaScriptResourceInfo } | (fun(): Barotrauma.LuaCs.Data.ILuaScriptResourceInfo)
---@return userdata
function CS.Barotrauma.LuaCs.LuaScriptManagementService.LoadScriptResourcesAsync(resourcesInfo) end

---@param code System.String
---@return userdata
function CS.Barotrauma.LuaCs.LuaScriptManagementService.DoString(code) end

---@private
---@param file System.String
---@param globalContext? MoonSharp.Interpreter.Table
---@param codeStringFriendly? System.String
---@return MoonSharp.Interpreter.DynValue
function CS.Barotrauma.LuaCs.LuaScriptManagementService.DoFile(file, globalContext, codeStringFriendly) end

---@private
---@param file System.String
---@param globalContext? MoonSharp.Interpreter.Table
---@param codeStringFriendly? System.String
---@return MoonSharp.Interpreter.DynValue
function CS.Barotrauma.LuaCs.LuaScriptManagementService.LoadFile(file, globalContext, codeStringFriendly) end

---@private
function CS.Barotrauma.LuaCs.LuaScriptManagementService.RegisterLuaEvents() end

---@private
---@param enableSandbox System.Boolean
function CS.Barotrauma.LuaCs.LuaScriptManagementService.SetupEnvironment(enableSandbox) end

---@param executionOrder userdata | { [System.Int32]: Barotrauma.LuaCs.Data.ILuaScriptResourceInfo } | (fun(): Barotrauma.LuaCs.Data.ILuaScriptResourceInfo)
---@param enableSandbox System.Boolean
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.LuaScriptManagementService.ExecuteLoadedScripts(executionOrder, enableSandbox) end

---@param luaFunction System.Object
---@param ... System.Object
---@return MoonSharp.Interpreter.DynValue
function CS.Barotrauma.LuaCs.LuaScriptManagementService.CallFunctionSafe(luaFunction, ...) end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.LuaScriptManagementService.UnloadActiveScripts() end

---@param package Barotrauma.ContentPackage
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.LuaScriptManagementService.DisposePackageResources(package) end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.LuaScriptManagementService.DisposeAllPackageResources() end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.LuaScriptManagementService.Reset() end

function CS.Barotrauma.LuaCs.LuaScriptManagementService.Dispose() end

---@param tableName System.String
---@return System.Object
function CS.Barotrauma.LuaCs.LuaScriptManagementService.GetGlobalTableValue(tableName) end

---@param assembly System.Reflection.Assembly
function CS.Barotrauma.LuaCs.LuaScriptManagementService.OnAssemblyUnloading(assembly) end

do
---@param loggerService Barotrauma.LuaCs.ILoggerService
---@param loader Barotrauma.LuaCs.ILuaScriptLoader
---@param userDataService Barotrauma.LuaCs.ILuaUserDataService
---@param safeUserDataService Barotrauma.LuaCs.ISafeLuaUserDataService
---@param defaultLuaRegistrar Barotrauma.LuaCs.IDefaultLuaRegistrar
---@param luaScriptServicesConfig Barotrauma.LuaCs.Data.ILuaScriptServicesConfig
---@param pluginManagementService Barotrauma.LuaCs.IPluginManagementService
---@param networkingService Barotrauma.LuaCs.INetworkingService
---@param luaGame Barotrauma.LuaCs.LuaGame
---@param eventService Barotrauma.LuaCs.IEventService
---@param luaCsTimer Barotrauma.LuaCs.Compatibility.ILuaCsTimer
---@param commandsService Barotrauma.LuaCs.IConsoleCommandsService
---@param luaCsInfoProvider Barotrauma.LuaCs.ILuaCsInfoProvider
---@param configService Barotrauma.LuaCs.ILuaConfigService
---@param packageManagementService userdata
---@return Barotrauma.LuaCs.LuaScriptManagementService
local __ctor = function(loggerService, loader, userDataService, safeUserDataService, defaultLuaRegistrar, luaScriptServicesConfig, pluginManagementService, networkingService, luaGame, eventService, luaCsTimer, commandsService, luaCsInfoProvider, configService, packageManagementService) end
CS.Barotrauma.LuaCs.LuaScriptManagementService = __ctor
CS.Barotrauma.LuaCs.LuaScriptManagementService.__new = __ctor
end

---@class Barotrauma.LuaCs.ModConfigFileParserService: System.Object, Barotrauma.LuaCs.IService, System.IDisposable
---@field IsDisposed System.Boolean
---@field private _storageService Barotrauma.LuaCs.IStorageService
---@field private _operationsLock Barotrauma.LuaCs.AsyncReaderWriterLock
---@field private _isDisposed System.Int32
CS.Barotrauma.LuaCs.ModConfigFileParserService = {}

function CS.Barotrauma.LuaCs.ModConfigFileParserService.Dispose() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.ModConfigFileParserService.get_IsDisposed() end

---@private
---@param value System.Boolean
function CS.Barotrauma.LuaCs.ModConfigFileParserService.set_IsDisposed(value) end

---@private
---@async
---@overload fun(src: Barotrauma.LuaCs.Data.ResourceParserInfo): userdata
---@overload fun(src: Barotrauma.LuaCs.Data.ResourceParserInfo): userdata
---@param src Barotrauma.LuaCs.Data.ResourceParserInfo
---@return userdata
function CS.Barotrauma.LuaCs.ModConfigFileParserService.TryParseResourceAsync(src) end

---@private
---@async
---@overload fun(sources: (userdata | (fun(): Barotrauma.LuaCs.Data.ResourceParserInfo))): userdata
---@overload fun(sources: (userdata | (fun(): Barotrauma.LuaCs.Data.ResourceParserInfo))): userdata
---@param sources userdata | (fun(): Barotrauma.LuaCs.Data.ResourceParserInfo)
---@return userdata
function CS.Barotrauma.LuaCs.ModConfigFileParserService.TryParseResourcesAsync(sources) end

---@private
---@param src Barotrauma.LuaCs.Data.ResourceParserInfo
---@param elementName System.String
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.ModConfigFileParserService.CheckThrowNullRefs(src, elementName) end

---@private
---@async
---@param srcElement System.Xml.Linq.XElement
---@param srcOwner Barotrauma.ContentPackage
---@param fileExtension System.String
---@return userdata
function CS.Barotrauma.LuaCs.ModConfigFileParserService.UnsafeGetCheckedFiles(srcElement, srcOwner, fileExtension) end

---@private
---@param element System.Xml.Linq.XElement
---@return userdata
function CS.Barotrauma.LuaCs.ModConfigFileParserService.GetRuntimeEnvironment(element) end

do
---@param storageService Barotrauma.LuaCs.IStorageService
---@return Barotrauma.LuaCs.ModConfigFileParserService
local __ctor = function(storageService) end
CS.Barotrauma.LuaCs.ModConfigFileParserService = __ctor
CS.Barotrauma.LuaCs.ModConfigFileParserService.__new = __ctor
end

---@class Barotrauma.LuaCs.ModConfigService: System.Object, Barotrauma.LuaCs.IModConfigService, Barotrauma.LuaCs.IService, System.IDisposable
---@field IsDisposed System.Boolean
---@field private _storageService Barotrauma.LuaCs.IStorageService
---@field private _logger Barotrauma.LuaCs.ILoggerService
---@field private _assemblyParserService userdata
---@field private _luaScriptParserService userdata
---@field private _configParserService userdata
---@field private _operationsLock Barotrauma.LuaCs.AsyncReaderWriterLock
---@field private _isDisposed System.Int32
CS.Barotrauma.LuaCs.ModConfigService = {}

function CS.Barotrauma.LuaCs.ModConfigService.Dispose() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.ModConfigService.get_IsDisposed() end

---@private
---@param value System.Boolean
function CS.Barotrauma.LuaCs.ModConfigService.set_IsDisposed(value) end

---@async
---@param src Barotrauma.ContentPackage
---@return userdata
function CS.Barotrauma.LuaCs.ModConfigService.CreateConfigAsync(src) end

---@async
---@param src userdata | { [System.Int32]: Barotrauma.ContentPackage } | (fun(): Barotrauma.ContentPackage)
---@return userdata
function CS.Barotrauma.LuaCs.ModConfigService.CreateConfigsAsync(src) end

---@private
---@async
---@param src Barotrauma.ContentPackage
---@return userdata
function CS.Barotrauma.LuaCs.ModConfigService.TryGetModConfigXmlAsync(src) end

---@private
---@async
---@param owner Barotrauma.ContentPackage
---@param src System.Xml.Linq.XElement
---@return userdata
function CS.Barotrauma.LuaCs.ModConfigService.CreateFromConfigXmlAsync(owner, src) end

---@private
---@async
---@param src Barotrauma.ContentPackage
---@return userdata
function CS.Barotrauma.LuaCs.ModConfigService.CreateFromLegacyAsync(src) end

do
---@param storageService Barotrauma.LuaCs.IStorageService
---@param assemblyParserService userdata
---@param luaScriptParserService userdata
---@param configParserService userdata
---@param logger Barotrauma.LuaCs.ILoggerService
---@return Barotrauma.LuaCs.ModConfigService
local __ctor = function(storageService, assemblyParserService, luaScriptParserService, configParserService, logger) end
CS.Barotrauma.LuaCs.ModConfigService = __ctor
CS.Barotrauma.LuaCs.ModConfigService.__new = __ctor
end

---@class Barotrauma.LuaCs.PackageManagementService: System.Object, Barotrauma.LuaCs.IPackageManagementService, Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable
---@field IsDisposed System.Boolean
---@field private _logger Barotrauma.LuaCs.ILoggerService
---@field private _modConfigService Barotrauma.LuaCs.IModConfigService
---@field private _configService Barotrauma.LuaCs.IConfigService
---@field private _luaScriptManagementService Barotrauma.LuaCs.ILuaScriptManagementService
---@field private _pluginManagementService Barotrauma.LuaCs.IPluginManagementService
---@field private _commandsService Barotrauma.LuaCs.IConsoleCommandsService
---@field private _runConfig Barotrauma.LuaCs.Data.IPackageManagementServiceConfig
---@field private _loadedPackages userdata | { [Barotrauma.ContentPackage]: Barotrauma.LuaCs.Data.IModConfigInfo } | (fun(): userdata)
---@field private _runningPackages userdata | { [Barotrauma.ContentPackage]: Barotrauma.LuaCs.Data.IModConfigInfo } | (fun(): userdata)
---@field private _packageNameCache userdata | { [System.String]: Barotrauma.ContentPackage } | (fun(): userdata)
---@field private _operationsLock Barotrauma.LuaCs.AsyncReaderWriterLock
---@field private _executionLock Barotrauma.LuaCs.AsyncReaderWriterLock
---@field private _isDisposed System.Int32
CS.Barotrauma.LuaCs.PackageManagementService = {}

function CS.Barotrauma.LuaCs.PackageManagementService.Dispose() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.PackageManagementService.get_IsDisposed() end

---@param value System.Boolean
function CS.Barotrauma.LuaCs.PackageManagementService.set_IsDisposed(value) end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.PackageManagementService.Reset() end

---@param name System.String
---@param package Barotrauma.ContentPackage
---@return System.Boolean
function CS.Barotrauma.LuaCs.PackageManagementService.TryGetLoadedPackageByName(name, package) end

---@param package Barotrauma.ContentPackage
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.PackageManagementService.LoadPackageInfo(package) end

---@param packages userdata | { [System.Int32]: Barotrauma.ContentPackage } | (fun(): Barotrauma.ContentPackage)
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.PackageManagementService.LoadPackagesInfo(packages) end

---@private
---@param package Barotrauma.ContentPackage
---@param config Barotrauma.LuaCs.Data.IModConfigInfo
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.PackageManagementService.UnsafeAddPackageInternal(package, config) end

---@param executionOrder userdata | { [System.Int32]: Barotrauma.ContentPackage } | (fun(): Barotrauma.ContentPackage)
---@param executeCsAssemblies System.Boolean
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.PackageManagementService.ExecuteLoadedPackages(executionOrder, executeCsAssemblies) end

---@param packages userdata | { [System.Int32]: Barotrauma.ContentPackage } | (fun(): Barotrauma.ContentPackage)
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.PackageManagementService.SyncLoadedPackagesList(packages) end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.PackageManagementService.StopRunningPackages() end

---@param package Barotrauma.ContentPackage
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.PackageManagementService.UnloadPackage(package) end

---@param packages userdata | { [System.Int32]: Barotrauma.ContentPackage } | (fun(): Barotrauma.ContentPackage)
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.PackageManagementService.UnloadPackages(packages) end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.PackageManagementService.UnloadAllPackages() end

---@return userdata | { [System.Int32]: Barotrauma.ContentPackage } | (fun(): Barotrauma.ContentPackage)
function CS.Barotrauma.LuaCs.PackageManagementService.GetAllLoadedPackages() end

---@param package Barotrauma.ContentPackage
---@return System.Boolean
function CS.Barotrauma.LuaCs.PackageManagementService.IsPackageRunning(package) end

---@return System.Boolean
function CS.Barotrauma.LuaCs.PackageManagementService.IsAnyPackageLoaded() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.PackageManagementService.IsAnyPackageRunning() end

---@return userdata | { [System.Int32]: Barotrauma.ContentPackage } | (fun(): Barotrauma.ContentPackage)
function CS.Barotrauma.LuaCs.PackageManagementService.GetLoadedAssemblyPackages() end

do
---@param logger Barotrauma.LuaCs.ILoggerService
---@param modConfigService Barotrauma.LuaCs.IModConfigService
---@param luaScriptManagementService Barotrauma.LuaCs.ILuaScriptManagementService
---@param pluginManagementService Barotrauma.LuaCs.IPluginManagementService
---@param configService Barotrauma.LuaCs.IConfigService
---@param commandsService Barotrauma.LuaCs.IConsoleCommandsService
---@param runConfig Barotrauma.LuaCs.Data.IPackageManagementServiceConfig
---@return Barotrauma.LuaCs.PackageManagementService
local __ctor = function(logger, modConfigService, luaScriptManagementService, pluginManagementService, configService, commandsService, runConfig) end
CS.Barotrauma.LuaCs.PackageManagementService = __ctor
CS.Barotrauma.LuaCs.PackageManagementService.__new = __ctor
end

---@class Barotrauma.LuaCs.PluginManagementService: System.Object, Barotrauma.LuaCs.IAssemblyManagementService, Barotrauma.LuaCs.IPluginManagementService, Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable
---@field private BaseMetadataReferences userdata | (fun(): Microsoft.CodeAnalysis.MetadataReference)
---@field IsDisposed System.Boolean
---@field private _baseMetadataReferences userdata | { [System.Int32]: Microsoft.CodeAnalysis.MetadataReference } | (fun(): Microsoft.CodeAnalysis.MetadataReference)
---@field private _isDisposed System.Int32
---@field private _assemblyLoaderFactory Barotrauma.LuaCs.IAssemblyLoaderService.IFactory
---@field private _storageService Barotrauma.LuaCs.IStorageService
---@field private _logger Barotrauma.LuaCs.ILoggerService
---@field private _eventService userdata
---@field private _configService userdata
---@field private _luaScriptManagementService userdata
---@field private _pluginEventService Barotrauma.LuaCs.IEventService
---@field private _pluginLuaPatcherService userdata
---@field private _consoleCommandServiceFactory fun(): Barotrauma.LuaCs.IConsoleCommandsService
---@field private _luaCsInfoProvider Barotrauma.LuaCs.ILuaCsInfoProvider
---@field private _assemblyLoaders userdata | { [Barotrauma.ContentPackage]: Barotrauma.LuaCs.IAssemblyLoaderService } | (fun(): userdata)
---@field private _pluginPackageLookup userdata | { [System.Type]: Barotrauma.ContentPackage } | (fun(): userdata)
---@field private _pluginInstances userdata | { [Barotrauma.ContentPackage]: userdata | { [System.Int32]: Barotrauma.LuaCs.IAssemblyPlugin } | (fun(): Barotrauma.LuaCs.IAssemblyPlugin) } | (fun(): userdata)
---@field private _unloadingAssemblyLoaders userdata | (fun(): userdata)
---@field private _loadedNativeLibraries userdata | (fun(): System.IntPtr)
---@field private _operationsLock Barotrauma.LuaCs.AsyncReaderWriterLock
---@field private _pluginInjectorContainer LightInject.ServiceContainer
---@field private ScriptParseOptions Microsoft.CodeAnalysis.CSharp.CSharpParseOptions
---@field private CompilationOptions Microsoft.CodeAnalysis.CSharp.CSharpCompilationOptions
---@field private BaseAssemblyImports Microsoft.CodeAnalysis.SyntaxTree
---@field private PLATFORM_TARGET System.String
---@field private ARCHITECTURE_TARGET System.String
CS.Barotrauma.LuaCs.PluginManagementService = {}

---@private
---@return userdata | (fun(): Microsoft.CodeAnalysis.MetadataReference)
function CS.Barotrauma.LuaCs.PluginManagementService.get_BaseMetadataReferences() end

function CS.Barotrauma.LuaCs.PluginManagementService.Dispose() end

---@private
function CS.Barotrauma.LuaCs.PluginManagementService.UnsafeDisposeResourcesInternal() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.PluginManagementService.get_IsDisposed() end

---@private
---@param value System.Boolean
function CS.Barotrauma.LuaCs.PluginManagementService.set_IsDisposed(value) end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.PluginManagementService.Reset() end

---@private
---@return LightInject.ServiceContainer
function CS.Barotrauma.LuaCs.PluginManagementService.CreatePluginServiceContainer() end

---@param typeName System.String
---@param isByRefType? System.Boolean
---@param includeInterfaces? System.Boolean
---@param includeDefaultContext? System.Boolean
---@return System.Type
function CS.Barotrauma.LuaCs.PluginManagementService.GetType(typeName, isByRefType, includeInterfaces, includeDefaultContext) end

---@param executionOrder userdata | { [System.Int32]: Barotrauma.ContentPackage } | (fun(): Barotrauma.ContentPackage)
---@param excludeAlreadyRunningPackages? System.Boolean
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.PluginManagementService.ActivatePluginInstances(executionOrder, excludeAlreadyRunningPackages) end

---@param resources userdata | { [System.Int32]: Barotrauma.LuaCs.Data.IAssemblyResourceInfo } | (fun(): Barotrauma.LuaCs.Data.IAssemblyResourceInfo)
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.PluginManagementService.LoadAssemblyResources(resources) end

---@private
---@param sourceCode System.String
---@return System.String
function CS.Barotrauma.LuaCs.PluginManagementService.DoSourceCodeTextCompatibilityPass(sourceCode) end

---@private
---@param callerAssembly System.Reflection.Assembly
---@param targetAssemblyName System.String
---@return System.IntPtr
function CS.Barotrauma.LuaCs.PluginManagementService.OnAssemblyLoaderResolvingUnmanaged(callerAssembly, targetAssemblyName) end

---@private
---@param requestingLoader Barotrauma.LuaCs.IAssemblyLoaderService
---@param searchName System.Reflection.AssemblyName
---@return System.Reflection.Assembly
function CS.Barotrauma.LuaCs.PluginManagementService.OnAssemblyLoaderResolvingManaged(requestingLoader, searchName) end

---@private
---@param loader Barotrauma.LuaCs.IAssemblyLoaderService
function CS.Barotrauma.LuaCs.PluginManagementService.OnAssemblyLoaderUnloading(loader) end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.PluginManagementService.UnloadManagedAssemblies() end

---@private
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.PluginManagementService.UnsafeDisposeManagedTypeInstances() end

---@param assemblyName userdata
---@param excludedContexts System.Guid[]
---@return userdata
function CS.Barotrauma.LuaCs.PluginManagementService.GetLoadedAssembly(assemblyName, excludedContexts) end

---@private
---@param assemblyName userdata
---@param excludedContexts System.Guid[]
---@return userdata
function CS.Barotrauma.LuaCs.PluginManagementService.GetLoadedAssembly(assemblyName, excludedContexts) end

do
---@overload fun(): Barotrauma.LuaCs.PluginManagementService
---@param assemblyLoaderFactory Barotrauma.LuaCs.IAssemblyLoaderService.IFactory
---@param storageService Barotrauma.LuaCs.IStorageService
---@param logger Barotrauma.LuaCs.ILoggerService
---@param eventService userdata
---@param luaScriptManagementService userdata
---@param configService userdata
---@param pluginLuaPatcherService userdata
---@param consoleCommandServiceFactory fun(): Barotrauma.LuaCs.IConsoleCommandsService
---@param luaCsInfoProvider Barotrauma.LuaCs.ILuaCsInfoProvider
---@return Barotrauma.LuaCs.PluginManagementService
local __ctor = function(assemblyLoaderFactory, storageService, logger, eventService, luaScriptManagementService, configService, pluginLuaPatcherService, consoleCommandServiceFactory, luaCsInfoProvider) end
CS.Barotrauma.LuaCs.PluginManagementService = __ctor
CS.Barotrauma.LuaCs.PluginManagementService.__new = __ctor
end

---@class Barotrauma.LuaCs.PluginService: System.Object
CS.Barotrauma.LuaCs.PluginService = {}

do
---@return Barotrauma.LuaCs.PluginService
local __ctor = function() end
CS.Barotrauma.LuaCs.PluginService = __ctor
CS.Barotrauma.LuaCs.PluginService.__new = __ctor
end

---@class Barotrauma.LuaCs.SafeStorageService: Barotrauma.LuaCs.StorageService, Barotrauma.LuaCs.IStorageService, Barotrauma.LuaCs.IService, System.IDisposable, Barotrauma.LuaCs.ISafeStorageService, Barotrauma.LuaCs.ISafeStorageValidation
---@field private _fileListRead userdata | { [System.String]: System.Byte } | (fun(): userdata)
---@field private _fileListWrite userdata | { [System.String]: System.Byte } | (fun(): userdata)
---@field private _higherOperationsLock Barotrauma.LuaCs.AsyncReaderWriterLock
CS.Barotrauma.LuaCs.SafeStorageService = {}

---@private
---@param path System.String
---@return System.String
function CS.Barotrauma.LuaCs.SafeStorageService.GetFullPath(path) end

---@param path System.String
---@param readOnly System.Boolean
---@param checkWhitelistOnly? System.Boolean
---@return System.Boolean
function CS.Barotrauma.LuaCs.SafeStorageService.IsFileAccessible(path, readOnly, checkWhitelistOnly) end

---@param path System.String
---@param readOnly? System.Boolean
function CS.Barotrauma.LuaCs.SafeStorageService.AddFileToWhitelist(path, readOnly) end

---@param paths userdata | { [System.Int32]: System.String } | (fun(): System.String)
---@param readOnly? System.Boolean
function CS.Barotrauma.LuaCs.SafeStorageService.AddFilesToWhitelist(paths, readOnly) end

---@param path System.String
function CS.Barotrauma.LuaCs.SafeStorageService.RemoveFileFromAllWhitelists(path) end

---@param filePaths userdata | { [System.Int32]: System.String } | (fun(): System.String)
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.SafeStorageService.SetReadOnlyWhitelist(filePaths) end

---@param filePaths userdata | { [System.Int32]: System.String } | (fun(): System.String)
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.SafeStorageService.SetReadWriteWhitelist(filePaths) end

function CS.Barotrauma.LuaCs.SafeStorageService.ClearAllWhitelists() end

---@private
---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@param bytes System.Byte[]
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.SafeStorageService.SaveLocalBinary(package, localFilePath, bytes) end

---@private
---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@param text System.String
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.SafeStorageService.SaveLocalText(package, localFilePath, text) end

do
---@param configData Barotrauma.LuaCs.Data.IStorageServiceConfig
---@return Barotrauma.LuaCs.SafeStorageService
local __ctor = function(configData) end
CS.Barotrauma.LuaCs.SafeStorageService = __ctor
CS.Barotrauma.LuaCs.SafeStorageService.__new = __ctor
end

---@class Barotrauma.LuaCs.ServicesProvider: System.Object, Barotrauma.LuaCs.IServicesProvider
---@field private ServiceContainer LightInject.ServiceContainer
---@field private _serviceContainerInst LightInject.ServiceContainer
---@field private _systemInstances userdata | { [System.Int32]: Barotrauma.LuaCs.ISystem } | (fun(): Barotrauma.LuaCs.ISystem)
---@field private _serviceLock System.Threading.ReaderWriterLockSlim
CS.Barotrauma.LuaCs.ServicesProvider = {}

---@private
---@return LightInject.ServiceContainer
function CS.Barotrauma.LuaCs.ServicesProvider.get_ServiceContainer() end

function CS.Barotrauma.LuaCs.ServicesProvider.CompileAndRun() end

function CS.Barotrauma.LuaCs.ServicesProvider.DisposeAndReset() end

---@generic TSvcInterface : Barotrauma.LuaCs.IService
---@generic TService : Barotrauma.LuaCs.IService, Barotrauma.LuaCs.ServicesProvider.TSvcInterface
---@param __genericMethodMaker_TSvcInterface TSvcInterface
---@param __genericMethodMaker_TService TService
---@param lifetime Barotrauma.LuaCs.ServiceLifetime
---@param lifetimeInstance? LightInject.ILifetime
function CS.Barotrauma.LuaCs.ServicesProvider.RegisterServiceType(__genericMethodMaker_TSvcInterface, __genericMethodMaker_TService, lifetime, lifetimeInstance) end

---@generic TSvcInterface : Barotrauma.LuaCs.IService
---@generic TService : Barotrauma.LuaCs.IService, Barotrauma.LuaCs.ServicesProvider.TSvcInterface
---@param __genericMethodMaker_TSvcInterface TSvcInterface
---@param __genericMethodMaker_TService TService
---@param name System.String
---@param lifetime Barotrauma.LuaCs.ServiceLifetime
---@param lifetimeInstance? LightInject.ILifetime
function CS.Barotrauma.LuaCs.ServicesProvider.RegisterServiceType(__genericMethodMaker_TSvcInterface, __genericMethodMaker_TService, name, lifetime, lifetimeInstance) end

---@generic TSvcInterface : Barotrauma.LuaCs.IService
---@param __genericMethodMaker_TSvcInterface TSvcInterface
---@param factory fun(arg: LightInject.ServiceContainer): TSvcInterface
function CS.Barotrauma.LuaCs.ServicesProvider.RegisterServiceResolver(__genericMethodMaker_TSvcInterface, factory) end

---@generic T : System.Object
---@param __genericMethodMaker_T T
---@param inst T
function CS.Barotrauma.LuaCs.ServicesProvider.InjectServices(__genericMethodMaker_T, inst) end

---@generic TSvcInterface : Barotrauma.LuaCs.IService
---@param __genericMethodMaker_TSvcInterface TSvcInterface
---@param service TSvcInterface
---@return System.Boolean
function CS.Barotrauma.LuaCs.ServicesProvider.TryGetService(__genericMethodMaker_TSvcInterface, service) end

---@generic TSvcInterface : Barotrauma.LuaCs.IService
---@param __genericMethodMaker_TSvcInterface TSvcInterface
---@return TSvcInterface
function CS.Barotrauma.LuaCs.ServicesProvider.GetService(__genericMethodMaker_TSvcInterface) end

---@generic TSvcInterface : Barotrauma.LuaCs.IService
---@param __genericMethodMaker_TSvcInterface TSvcInterface
---@param name System.String
---@param service TSvcInterface
---@return System.Boolean
function CS.Barotrauma.LuaCs.ServicesProvider.TryGetService(__genericMethodMaker_TSvcInterface, name, service) end

---@generic TSvc : Barotrauma.LuaCs.IService
---@param __genericMethodMaker_TSvc TSvc
---@return userdata | { [System.Int32]: TSvc } | (fun(): TSvc)
function CS.Barotrauma.LuaCs.ServicesProvider.GetAllServices(__genericMethodMaker_TSvc) end

do
---@return Barotrauma.LuaCs.ServicesProvider
local __ctor = function() end
CS.Barotrauma.LuaCs.ServicesProvider = __ctor
CS.Barotrauma.LuaCs.ServicesProvider.__new = __ctor
end

---@class Barotrauma.LuaCs.PerThreadLifetime: System.Object, LightInject.ILifetime
---@field private _instance userdata
CS.Barotrauma.LuaCs.PerThreadLifetime = {}

---@param createInstance fun(): System.Object
---@param scope LightInject.Scope
---@return System.Object
function CS.Barotrauma.LuaCs.PerThreadLifetime.GetInstance(createInstance, scope) end

do
---@return Barotrauma.LuaCs.PerThreadLifetime
local __ctor = function() end
CS.Barotrauma.LuaCs.PerThreadLifetime = __ctor
CS.Barotrauma.LuaCs.PerThreadLifetime.__new = __ctor
end

---@class Barotrauma.LuaCs.SettingsFileParserService: System.Object, Barotrauma.LuaCs.IService, System.IDisposable
---@field IsDisposed System.Boolean
---@field private _operationLock Barotrauma.LuaCs.AsyncReaderWriterLock
---@field private _isDisposed System.Int32
---@field private _storageService Barotrauma.LuaCs.IStorageService
CS.Barotrauma.LuaCs.SettingsFileParserService = {}

function CS.Barotrauma.LuaCs.SettingsFileParserService.Dispose() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.SettingsFileParserService.get_IsDisposed() end

---@private
---@param value System.Boolean
function CS.Barotrauma.LuaCs.SettingsFileParserService.set_IsDisposed(value) end

---@private
---@async
---@overload fun(src: Barotrauma.LuaCs.Data.IConfigResourceInfo): userdata
---@param src Barotrauma.LuaCs.Data.IConfigResourceInfo
---@return userdata
function CS.Barotrauma.LuaCs.SettingsFileParserService.TryParseResourcesAsync(src) end

do
---@param storageService Barotrauma.LuaCs.IStorageService
---@return Barotrauma.LuaCs.SettingsFileParserService
local __ctor = function(storageService) end
CS.Barotrauma.LuaCs.SettingsFileParserService = __ctor
CS.Barotrauma.LuaCs.SettingsFileParserService.__new = __ctor
end

---@class Barotrauma.LuaCs.StorageService: System.Object, Barotrauma.LuaCs.IStorageService, Barotrauma.LuaCs.IService, System.IDisposable
---@field protected IsReadOperationAllowedEval fun(arg: System.String): System.Boolean
---@field protected IsWriteOperationAllowedEval fun(arg: System.String): System.Boolean
---@field IsDisposed System.Boolean
---@field UseCaching System.Boolean
---@field private _fsCache userdata | { [System.String]: userdata } | (fun(): userdata)
---@field protected ConfigData Barotrauma.LuaCs.Data.IStorageServiceConfig
---@field protected OperationsLock Barotrauma.LuaCs.AsyncReaderWriterLock
---@field private _isReadOperationAllowedEval fun(arg: System.String): System.Boolean
---@field private _isWriteOperationAllowedEval fun(arg: System.String): System.Boolean
---@field private _isDisposed System.Int32
---@field private _useCaching System.Int32
CS.Barotrauma.LuaCs.StorageService = {}

---@protected
---@return fun(arg: System.String): System.Boolean
function CS.Barotrauma.LuaCs.StorageService.get_IsReadOperationAllowedEval() end

---@protected
---@param value fun(arg: System.String): System.Boolean
function CS.Barotrauma.LuaCs.StorageService.set_IsReadOperationAllowedEval(value) end

---@protected
---@return fun(arg: System.String): System.Boolean
function CS.Barotrauma.LuaCs.StorageService.get_IsWriteOperationAllowedEval() end

---@protected
---@param value fun(arg: System.String): System.Boolean
function CS.Barotrauma.LuaCs.StorageService.set_IsWriteOperationAllowedEval(value) end

---@return System.Boolean
function CS.Barotrauma.LuaCs.StorageService.get_IsDisposed() end

function CS.Barotrauma.LuaCs.StorageService.Dispose() end

function CS.Barotrauma.LuaCs.StorageService.PurgeCache() end

---@param absolutePath System.String
function CS.Barotrauma.LuaCs.StorageService.PurgeFileFromCache(absolutePath) end

---@param ... System.String
function CS.Barotrauma.LuaCs.StorageService.PurgeFilesFromCache(...) end

---@protected
---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.GetAbsolutePathForLocal(package, localFilePath) end

---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.LoadLocalXml(package, localFilePath) end

---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.LoadLocalBinary(package, localFilePath) end

---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.LoadLocalText(package, localFilePath) end

---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@param document System.Xml.Linq.XDocument
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.StorageService.SaveLocalXml(package, localFilePath, document) end

---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@param bytes System.Byte[]
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.StorageService.SaveLocalBinary(package, localFilePath, bytes) end

---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@param text System.String
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.StorageService.SaveLocalText(package, localFilePath, text) end

---@async
---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.LoadLocalXmlAsync(package, localFilePath) end

---@async
---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.LoadLocalBinaryAsync(package, localFilePath) end

---@async
---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.LoadLocalTextAsync(package, localFilePath) end

---@async
---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@param document System.Xml.Linq.XDocument
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.SaveLocalXmlAsync(package, localFilePath, document) end

---@async
---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@param bytes System.Byte[]
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.SaveLocalBinaryAsync(package, localFilePath, bytes) end

---@async
---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@param text System.String
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.SaveLocalTextAsync(package, localFilePath, text) end

---@private
---@param contentPath Barotrauma.ContentPath
---@return System.Boolean
function CS.Barotrauma.LuaCs.StorageService.IsPackagePathValid(contentPath) end

---@param filePath Barotrauma.ContentPath
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.LoadPackageXml(filePath) end

---@param filePath Barotrauma.ContentPath
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.LoadPackageBinary(filePath) end

---@param filePath Barotrauma.ContentPath
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.LoadPackageText(filePath) end

---@param filePaths userdata | { [System.Int32]: Barotrauma.ContentPath } | (fun(): Barotrauma.ContentPath)
---@return userdata | { [System.Int32]: userdata } | (fun(): userdata)
function CS.Barotrauma.LuaCs.StorageService.LoadPackageXmlFiles(filePaths) end

---@param filePaths userdata | { [System.Int32]: Barotrauma.ContentPath } | (fun(): Barotrauma.ContentPath)
---@return userdata | { [System.Int32]: userdata } | (fun(): userdata)
function CS.Barotrauma.LuaCs.StorageService.LoadPackageBinaryFiles(filePaths) end

---@param filePaths userdata | { [System.Int32]: Barotrauma.ContentPath } | (fun(): Barotrauma.ContentPath)
---@return userdata | { [System.Int32]: userdata } | (fun(): userdata)
function CS.Barotrauma.LuaCs.StorageService.LoadPackageTextFiles(filePaths) end

---@param package Barotrauma.ContentPackage
---@param localSubfolder System.String
---@param regexFilter System.String
---@param searchRecursively System.Boolean
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.FindFilesInPackage(package, localSubfolder, regexFilter, searchRecursively) end

---@async
---@param filePath Barotrauma.ContentPath
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.LoadPackageXmlAsync(filePath) end

---@async
---@param filePath Barotrauma.ContentPath
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.LoadPackageBinaryAsync(filePath) end

---@async
---@param filePath Barotrauma.ContentPath
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.LoadPackageTextAsync(filePath) end

---@async
---@param filePaths userdata | { [System.Int32]: Barotrauma.ContentPath } | (fun(): Barotrauma.ContentPath)
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.LoadPackageXmlFilesAsync(filePaths) end

---@async
---@param filePaths userdata | { [System.Int32]: Barotrauma.ContentPath } | (fun(): Barotrauma.ContentPath)
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.LoadPackageBinaryFilesAsync(filePaths) end

---@async
---@param filePaths userdata | { [System.Int32]: Barotrauma.ContentPath } | (fun(): Barotrauma.ContentPath)
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.LoadPackageTextFilesAsync(filePaths) end

---@return System.Boolean
function CS.Barotrauma.LuaCs.StorageService.get_UseCaching() end

---@param value System.Boolean
function CS.Barotrauma.LuaCs.StorageService.set_UseCaching(value) end

---@private
---@param filePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.TryLoadXml(filePath) end

---@param filePath System.String
---@param encoding System.Text.Encoding
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.TryLoadXml(filePath, encoding) end

---@private
---@param filePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.TryLoadText(filePath) end

---@param filePath System.String
---@param encoding System.Text.Encoding
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.TryLoadText(filePath, encoding) end

---@param filePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.TryLoadBinary(filePath) end

---@param filePath System.String
---@param document System.Xml.Linq.XDocument
---@param encoding? System.Text.Encoding
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.StorageService.TrySaveXml(filePath, document, encoding) end

---@param filePath System.String
---@param text System.String
---@param encoding? System.Text.Encoding
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.StorageService.TrySaveText(filePath, text, encoding) end

---@param filePath System.String
---@param bytes System.Byte[]
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.StorageService.TrySaveBinary(filePath, bytes) end

---@param filePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.FileExists(filePath) end

---@param directoryPath System.String
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.DirectoryExists(directoryPath) end

---@async
---@param filePath System.String
---@param encoding? System.Text.Encoding
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.TryLoadXmlAsync(filePath, encoding) end

---@async
---@param filePath System.String
---@param encoding? System.Text.Encoding
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.TryLoadTextAsync(filePath, encoding) end

---@async
---@param filePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.TryLoadBinaryAsync(filePath) end

---@async
---@param filePath System.String
---@param document System.Xml.Linq.XDocument
---@param encoding? System.Text.Encoding
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.TrySaveXmlAsync(filePath, document, encoding) end

---@async
---@param filePath System.String
---@param text System.String
---@param encoding? System.Text.Encoding
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.TrySaveTextAsync(filePath, text, encoding) end

---@async
---@param filePath System.String
---@param bytes System.Byte[]
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.TrySaveBinaryAsync(filePath, bytes) end

---@private
---@async
---@param funcName System.String
---@param filepath System.String
---@param operation fun(): userdata
---@return userdata
function CS.Barotrauma.LuaCs.StorageService.IOExceptionsOperationRunnerAsync(funcName, filepath, operation) end

---@private
---@param funcName System.String
---@param filepath System.String
---@param operation fun(): FluentResults.Result
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.StorageService.IOExceptionsOperationRunner(funcName, filepath, operation) end

---@private
---@overload fun(funcName: System.String, localfp: System.String): FluentResults.Error
---@param funcName System.String
---@param localfp System.String
---@param package Barotrauma.ContentPackage
---@return FluentResults.Error
function CS.Barotrauma.LuaCs.StorageService.GetGeneralError(funcName, localfp, package) end

---@private
---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@param bytes System.Byte[]
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.StorageService.SaveLocalBinary(package, localFilePath, bytes) end

---@private
---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@param text System.String
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.StorageService.SaveLocalText(package, localFilePath, text) end

---@private
---@generic TException : System.Exception
---@param __genericMethodMaker_TException TException
---@param exception TException
---@param package Barotrauma.ContentPackage
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.StorageService.ReturnException(__genericMethodMaker_TException, exception, package) end

---@private
---@generic TException : System.Exception
---@param __genericMethodMaker_TException TException
---@param exception TException
---@param filePath System.String
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.StorageService.ReturnException(__genericMethodMaker_TException, exception, filePath) end

do
---@param configData Barotrauma.LuaCs.Data.IStorageServiceConfig
---@return Barotrauma.LuaCs.StorageService
local __ctor = function(configData) end
CS.Barotrauma.LuaCs.StorageService = __ctor
CS.Barotrauma.LuaCs.StorageService.__new = __ctor
end

---@class Barotrauma.LuaCs.IAssemblyManagementService: Barotrauma.LuaCs.IPluginManagementService, Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.IAssemblyManagementService = {}

---@param assemblyName userdata
---@param excludedContexts System.Guid[]
---@return userdata
function CS.Barotrauma.LuaCs.IAssemblyManagementService.GetLoadedAssembly(assemblyName, excludedContexts) end


---@class Barotrauma.LuaCs.IConfigService: Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable, Barotrauma.LuaCs.ILuaConfigService, Barotrauma.LuaCs.ILuaService
CS.Barotrauma.LuaCs.IConfigService = {}

---@async
---@param configResources userdata | { [System.Int32]: Barotrauma.LuaCs.Data.IConfigResourceInfo } | (fun(): Barotrauma.LuaCs.Data.IConfigResourceInfo)
---@return userdata
function CS.Barotrauma.LuaCs.IConfigService.LoadConfigsAsync(configResources) end

---@async
---@param configProfileResources userdata | { [System.Int32]: Barotrauma.LuaCs.Data.IConfigResourceInfo } | (fun(): Barotrauma.LuaCs.Data.IConfigResourceInfo)
---@return userdata
function CS.Barotrauma.LuaCs.IConfigService.LoadConfigsProfilesAsync(configProfileResources) end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IConfigService.LoadSavedConfigsValues() end

---@param package Barotrauma.ContentPackage
---@param internalName System.String
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IConfigService.ApplyConfigProfile(package, internalName) end

---@param package Barotrauma.ContentPackage
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IConfigService.DisposePackageData(package) end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IConfigService.DisposeAllPackageData() end

---@generic T : Barotrauma.LuaCs.Data.ISettingBase
---@param __genericMethodMaker_T T
---@param typeIdentifier System.String
---@param settingFactory fun(arg: userdata): T
function CS.Barotrauma.LuaCs.IConfigService.RegisterSettingTypeInitializer(__genericMethodMaker_T, typeIdentifier, settingFactory) end


---@class Barotrauma.LuaCs.IConsoleCommandsService: Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.IConsoleCommandsService = {}

---@param name System.String
---@param help System.String
---@param onExecute fun(obj: System.String[])
---@param getValidArgs? fun(): System.String[][]
---@param isCheat? System.Boolean
function CS.Barotrauma.LuaCs.IConsoleCommandsService.RegisterCommand(name, help, onExecute, getValidArgs, isCheat) end

---@param names System.String
---@param onExecute fun(obj: System.String[])
function CS.Barotrauma.LuaCs.IConsoleCommandsService.AssignOnExecute(names, onExecute) end

---@package
---@param names System.String
---@param onClientRequestExecute fun(arg1: Barotrauma.Networking.Client, arg2: Microsoft.Xna.Framework.Vector2, arg3: System.String[])
function CS.Barotrauma.LuaCs.IConsoleCommandsService.AssignOnClientRequestExecute(names, onClientRequestExecute) end

---@param name System.String
function CS.Barotrauma.LuaCs.IConsoleCommandsService.RemoveCommand(name) end

function CS.Barotrauma.LuaCs.IConsoleCommandsService.RemoveRegisteredCommands() end


---@class Barotrauma.LuaCs.IEventService: Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable, Barotrauma.LuaCs.ILuaEventService, Barotrauma.LuaCs.ILuaSafeEventService, Barotrauma.LuaCs.ILuaService, Barotrauma.LuaCs.Compatibility.ILuaCsHook, Barotrauma.LuaCs.ILuaPatcher, Barotrauma.LuaCs.Compatibility.ILuaCsShim
CS.Barotrauma.LuaCs.IEventService = {}

function CS.Barotrauma.LuaCs.IEventService.ClearAllSubscribers() end

---@param eventService Barotrauma.LuaCs.IEventService
function CS.Barotrauma.LuaCs.IEventService.AddDispatcherEventService(eventService) end

---@param eventService Barotrauma.LuaCs.IEventService
function CS.Barotrauma.LuaCs.IEventService.RemoveDispatcherEventService(eventService) end

---@generic T : userdata
---@param __genericMethodMaker_T T
---@param subscriber T
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IEventService.Subscribe(__genericMethodMaker_T, subscriber) end

---@generic T : Barotrauma.LuaCs.Events.IEvent
---@param __genericMethodMaker_T T
---@param subscriber T
function CS.Barotrauma.LuaCs.IEventService.Unsubscribe(__genericMethodMaker_T, subscriber) end

---@generic T : Barotrauma.LuaCs.Events.IEvent
---@param __genericMethodMaker_T T
function CS.Barotrauma.LuaCs.IEventService.ClearAllEventSubscribers(__genericMethodMaker_T) end

---@generic T : userdata
---@param __genericMethodMaker_T T
---@param action fun(obj: T)
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IEventService.PublishEvent(__genericMethodMaker_T, action) end


---@class Barotrauma.LuaCs.PendingLog: System.ValueType
---@field Message System.String
---@field Color Microsoft.Xna.Framework.Color|nil
---@field MessageType Barotrauma.Networking.ServerLog.MessageType
CS.Barotrauma.LuaCs.PendingLog = {}

do
---@param Message System.String
---@param Color Microsoft.Xna.Framework.Color|nil
---@param MessageType Barotrauma.Networking.ServerLog.MessageType
---@return Barotrauma.LuaCs.PendingLog
local __ctor = function(Message, Color, MessageType) end
CS.Barotrauma.LuaCs.PendingLog = __ctor
CS.Barotrauma.LuaCs.PendingLog.__new = __ctor
end

---@class Barotrauma.LuaCs.ILoggerSubscriber
CS.Barotrauma.LuaCs.ILoggerSubscriber = {}

---@param pendingLog Barotrauma.LuaCs.PendingLog
function CS.Barotrauma.LuaCs.ILoggerSubscriber.OnLog(pendingLog) end


---@class Barotrauma.LuaCs.ILoggerService: Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.ILoggerService = {}

---@param subscriber Barotrauma.LuaCs.ILoggerSubscriber
function CS.Barotrauma.LuaCs.ILoggerService.Subscribe(subscriber) end

---@param subscriber Barotrauma.LuaCs.ILoggerSubscriber
function CS.Barotrauma.LuaCs.ILoggerService.Unsubscribe(subscriber) end

function CS.Barotrauma.LuaCs.ILoggerService.ProcessLogs() end

---@param exception System.Exception
---@param prefix? System.String
function CS.Barotrauma.LuaCs.ILoggerService.HandleException(exception, prefix) end

---@param message System.String
function CS.Barotrauma.LuaCs.ILoggerService.LogError(message) end

---@param message System.String
function CS.Barotrauma.LuaCs.ILoggerService.LogWarning(message) end

---@param message System.String
---@param serverColor? Microsoft.Xna.Framework.Color|nil
---@param clientColor? Microsoft.Xna.Framework.Color|nil
function CS.Barotrauma.LuaCs.ILoggerService.LogMessage(message, serverColor, clientColor) end

---@param message System.String
---@param color? Microsoft.Xna.Framework.Color|nil
---@param messageType? Barotrauma.Networking.ServerLog.MessageType
function CS.Barotrauma.LuaCs.ILoggerService.Log(message, color, messageType) end

---@param result FluentResults.Result
function CS.Barotrauma.LuaCs.ILoggerService.LogResults(result) end

---@param message System.String
---@param color? Microsoft.Xna.Framework.Color|nil
function CS.Barotrauma.LuaCs.ILoggerService.LogDebug(message, color) end

---@param message System.String
function CS.Barotrauma.LuaCs.ILoggerService.LogDebugWarning(message) end

---@param message System.String
function CS.Barotrauma.LuaCs.ILoggerService.LogDebugError(message) end


---@class Barotrauma.LuaCs.ILuaCsInfoProvider: Barotrauma.LuaCs.IService, System.IDisposable
---@field IsCsEnabled System.Boolean
---@field HideUserNamesInLogs System.Boolean
---@field UseCaching System.Boolean
---@field CurrentRunState Barotrauma.RunState
---@field LuaCsForBarotraumaPackage Barotrauma.ContentPackage
CS.Barotrauma.LuaCs.ILuaCsInfoProvider = {}

---@return System.Boolean
function CS.Barotrauma.LuaCs.ILuaCsInfoProvider.get_IsCsEnabled() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.ILuaCsInfoProvider.get_HideUserNamesInLogs() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.ILuaCsInfoProvider.get_UseCaching() end

---@return Barotrauma.RunState
function CS.Barotrauma.LuaCs.ILuaCsInfoProvider.get_CurrentRunState() end

---@return Barotrauma.ContentPackage
function CS.Barotrauma.LuaCs.ILuaCsInfoProvider.get_LuaCsForBarotraumaPackage() end


---@class Barotrauma.LuaCs.ILuaScriptManagementService: Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable
---@field InternalScript MoonSharp.Interpreter.Script
CS.Barotrauma.LuaCs.ILuaScriptManagementService = {}

---@return MoonSharp.Interpreter.Script
function CS.Barotrauma.LuaCs.ILuaScriptManagementService.get_InternalScript() end

---@param tableName System.String
---@return System.Object
function CS.Barotrauma.LuaCs.ILuaScriptManagementService.GetGlobalTableValue(tableName) end

---@param code System.String
---@return userdata
function CS.Barotrauma.LuaCs.ILuaScriptManagementService.DoString(code) end

---@param luaFunction System.Object
---@param ... System.Object
---@return MoonSharp.Interpreter.DynValue
function CS.Barotrauma.LuaCs.ILuaScriptManagementService.CallFunctionSafe(luaFunction, ...) end

---@param useCaching System.Boolean
function CS.Barotrauma.LuaCs.ILuaScriptManagementService.SetCachingPolicy(useCaching) end

---@async
---@param resourcesInfo userdata | { [System.Int32]: Barotrauma.LuaCs.Data.ILuaScriptResourceInfo } | (fun(): Barotrauma.LuaCs.Data.ILuaScriptResourceInfo)
---@return userdata
function CS.Barotrauma.LuaCs.ILuaScriptManagementService.LoadScriptResourcesAsync(resourcesInfo) end

---@param executionOrder userdata | { [System.Int32]: Barotrauma.LuaCs.Data.ILuaScriptResourceInfo } | (fun(): Barotrauma.LuaCs.Data.ILuaScriptResourceInfo)
---@param enableSandbox System.Boolean
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.ILuaScriptManagementService.ExecuteLoadedScripts(executionOrder, enableSandbox) end

---@param package Barotrauma.ContentPackage
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.ILuaScriptManagementService.DisposePackageResources(package) end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.ILuaScriptManagementService.UnloadActiveScripts() end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.ILuaScriptManagementService.DisposeAllPackageResources() end


---@class Barotrauma.LuaCs.IModConfigService: Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.IModConfigService = {}

---@async
---@param src Barotrauma.ContentPackage
---@return userdata
function CS.Barotrauma.LuaCs.IModConfigService.CreateConfigAsync(src) end

---@async
---@param src userdata | { [System.Int32]: Barotrauma.ContentPackage } | (fun(): Barotrauma.ContentPackage)
---@return userdata
function CS.Barotrauma.LuaCs.IModConfigService.CreateConfigsAsync(src) end


---@class Barotrauma.LuaCs.NetMessageReceived: System.MulticastDelegate, System.ICloneable, System.Runtime.Serialization.ISerializable
CS.Barotrauma.LuaCs.NetMessageReceived = {}

---@param netMessage Barotrauma.Networking.IReadMessage
---@param connection Barotrauma.Networking.Client
function CS.Barotrauma.LuaCs.NetMessageReceived.Invoke(netMessage, connection) end

---@param netMessage Barotrauma.Networking.IReadMessage
---@param connection Barotrauma.Networking.Client
---@param callback fun(ar: System.IAsyncResult)
---@param object System.Object
---@return System.IAsyncResult
function CS.Barotrauma.LuaCs.NetMessageReceived.BeginInvoke(netMessage, connection, callback, object) end

---@param result System.IAsyncResult
function CS.Barotrauma.LuaCs.NetMessageReceived.EndInvoke(result) end

do
---@param object System.Object
---@param method System.IntPtr
---@return Barotrauma.LuaCs.NetMessageReceived
local __ctor = function(object, method) end
CS.Barotrauma.LuaCs.NetMessageReceived = __ctor
CS.Barotrauma.LuaCs.NetMessageReceived.__new = __ctor
end

---@class Barotrauma.LuaCs.INetworkingService: Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable, Barotrauma.LuaCs.Compatibility.ILuaCsNetworking, Barotrauma.LuaCs.Compatibility.ILuaCsShim, Barotrauma.LuaCs.IEntityNetworkingService
---@field IsActive System.Boolean
---@field IsSynchronized System.Boolean
CS.Barotrauma.LuaCs.INetworkingService = {}

---@return System.Boolean
function CS.Barotrauma.LuaCs.INetworkingService.get_IsActive() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.INetworkingService.get_IsSynchronized() end

---@overload fun(netId: System.Guid): Barotrauma.Networking.IWriteMessage
---@param netId System.String
---@return Barotrauma.Networking.IWriteMessage
function CS.Barotrauma.LuaCs.INetworkingService.Start(netId) end

---@overload fun(netId: System.Guid, action: (fun(netMessage: Barotrauma.Networking.IReadMessage, connection: Barotrauma.Networking.Client)))
---@param netId System.String
---@param action fun(netMessage: Barotrauma.Networking.IReadMessage, connection: Barotrauma.Networking.Client)
function CS.Barotrauma.LuaCs.INetworkingService.Receive(netId, action) end

---@param netMessage Barotrauma.Networking.IWriteMessage
---@param connection? Barotrauma.Networking.NetworkConnection
---@param deliveryMethod? Barotrauma.Networking.DeliveryMethod
function CS.Barotrauma.LuaCs.INetworkingService.SendToClient(netMessage, connection, deliveryMethod) end


---@class Barotrauma.LuaCs.IEntityNetworkingService
CS.Barotrauma.LuaCs.IEntityNetworkingService = {}

---@param var Barotrauma.LuaCs.INetworkSyncVar
---@return System.Guid
function CS.Barotrauma.LuaCs.IEntityNetworkingService.GetNetworkIdForInstance(var) end

---@param netVar Barotrauma.LuaCs.INetworkSyncVar
function CS.Barotrauma.LuaCs.IEntityNetworkingService.RegisterNetVar(netVar) end

---@param netVar Barotrauma.LuaCs.INetworkSyncVar
function CS.Barotrauma.LuaCs.IEntityNetworkingService.DeregisterNetVar(netVar) end

---@overload fun(netVar: Barotrauma.LuaCs.INetworkSyncVar, connection: Barotrauma.Networking.NetworkConnection)
---@param netVar Barotrauma.LuaCs.INetworkSyncVar
function CS.Barotrauma.LuaCs.IEntityNetworkingService.SendNetVar(netVar) end


---@class Barotrauma.LuaCs.IPackageManagementService: Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.IPackageManagementService = {}

---@param name System.String
---@param package Barotrauma.ContentPackage
---@return System.Boolean
function CS.Barotrauma.LuaCs.IPackageManagementService.TryGetLoadedPackageByName(name, package) end

---@param package Barotrauma.ContentPackage
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IPackageManagementService.LoadPackageInfo(package) end

---@param packages userdata | { [System.Int32]: Barotrauma.ContentPackage } | (fun(): Barotrauma.ContentPackage)
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IPackageManagementService.LoadPackagesInfo(packages) end

---@param executionOrder userdata | { [System.Int32]: Barotrauma.ContentPackage } | (fun(): Barotrauma.ContentPackage)
---@param executeCsAssemblies System.Boolean
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IPackageManagementService.ExecuteLoadedPackages(executionOrder, executeCsAssemblies) end

---@param packages userdata | { [System.Int32]: Barotrauma.ContentPackage } | (fun(): Barotrauma.ContentPackage)
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IPackageManagementService.SyncLoadedPackagesList(packages) end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IPackageManagementService.StopRunningPackages() end

---@param package Barotrauma.ContentPackage
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IPackageManagementService.UnloadPackage(package) end

---@param packages userdata | { [System.Int32]: Barotrauma.ContentPackage } | (fun(): Barotrauma.ContentPackage)
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IPackageManagementService.UnloadPackages(packages) end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IPackageManagementService.UnloadAllPackages() end

---@return userdata | { [System.Int32]: Barotrauma.ContentPackage } | (fun(): Barotrauma.ContentPackage)
function CS.Barotrauma.LuaCs.IPackageManagementService.GetAllLoadedPackages() end

---@return userdata | { [System.Int32]: Barotrauma.ContentPackage } | (fun(): Barotrauma.ContentPackage)
function CS.Barotrauma.LuaCs.IPackageManagementService.GetLoadedAssemblyPackages() end

---@param package Barotrauma.ContentPackage
---@return System.Boolean
function CS.Barotrauma.LuaCs.IPackageManagementService.IsPackageRunning(package) end

---@return System.Boolean
function CS.Barotrauma.LuaCs.IPackageManagementService.IsAnyPackageLoaded() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.IPackageManagementService.IsAnyPackageRunning() end


---@class Barotrauma.LuaCs.IPluginManagementService: Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.IPluginManagementService = {}

---@param typeName System.String
---@param isByRefType? System.Boolean
---@param includeInterfaces? System.Boolean
---@param includeDefaultContext? System.Boolean
---@return System.Type
function CS.Barotrauma.LuaCs.IPluginManagementService.GetType(typeName, isByRefType, includeInterfaces, includeDefaultContext) end

---@param executionOrder userdata | { [System.Int32]: Barotrauma.ContentPackage } | (fun(): Barotrauma.ContentPackage)
---@param excludeAlreadyRunningPackages? System.Boolean
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IPluginManagementService.ActivatePluginInstances(executionOrder, excludeAlreadyRunningPackages) end

---@param resources userdata | { [System.Int32]: Barotrauma.LuaCs.Data.IAssemblyResourceInfo } | (fun(): Barotrauma.LuaCs.Data.IAssemblyResourceInfo)
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IPluginManagementService.LoadAssemblyResources(resources) end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IPluginManagementService.UnloadManagedAssemblies() end


---@class Barotrauma.LuaCs.IPluginService: Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.IPluginService = {}

---@param friendlyName System.String
---@return System.Boolean
function CS.Barotrauma.LuaCs.IPluginService.IsAssemblyLoaded(friendlyName) end

---@param newState Barotrauma.LuaCs.PluginRunState
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IPluginService.AdvancePluginStates(newState) end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IPluginService.DisposePlugins() end

---@return Barotrauma.LuaCs.PluginRunState
function CS.Barotrauma.LuaCs.IPluginService.GetPluginRunState() end

---@generic T : Barotrauma.LuaCs.IAssemblyPlugin
---@param __genericMethodMaker_T T
---@param assemblyResourcesInfo userdata | (fun(): Barotrauma.LuaCs.Data.IAssemblyResourceInfo)
---@param injectServices System.Boolean
---@param typeInstances userdata | { [System.Int32]: T } | (fun(): T)
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IPluginService.LoadAndInstanceTypes(__genericMethodMaker_T, assemblyResourcesInfo, injectServices, typeInstances) end

---@generic T : Barotrauma.LuaCs.IAssemblyPlugin
---@param __genericMethodMaker_T T
---@return userdata
function CS.Barotrauma.LuaCs.IPluginService.GetLoadedPluginTypesInPackage(__genericMethodMaker_T) end


---@enum Barotrauma.LuaCs.PluginRunState
CS.Barotrauma.LuaCs.PluginRunState = {
    Instanced = 0,
    PreInitialization = 1,
    Initialized = 2,
    LoadingCompleted = 3,
    Disposed = 4
}

---@class Barotrauma.LuaCs.ISafeStorageService: Barotrauma.LuaCs.IStorageService, Barotrauma.LuaCs.IService, System.IDisposable, Barotrauma.LuaCs.ISafeStorageValidation
CS.Barotrauma.LuaCs.ISafeStorageService = {}


---@class Barotrauma.LuaCs.ISafeStorageValidation
CS.Barotrauma.LuaCs.ISafeStorageValidation = {}

---@param path System.String
---@param readOnly System.Boolean
---@param checkWhitelistOnly? System.Boolean
---@return System.Boolean
function CS.Barotrauma.LuaCs.ISafeStorageValidation.IsFileAccessible(path, readOnly, checkWhitelistOnly) end

---@param path System.String
---@param readOnly? System.Boolean
function CS.Barotrauma.LuaCs.ISafeStorageValidation.AddFileToWhitelist(path, readOnly) end

---@param paths userdata | { [System.Int32]: System.String } | (fun(): System.String)
---@param readOnly? System.Boolean
function CS.Barotrauma.LuaCs.ISafeStorageValidation.AddFilesToWhitelist(paths, readOnly) end

---@param path System.String
function CS.Barotrauma.LuaCs.ISafeStorageValidation.RemoveFileFromAllWhitelists(path) end

---@param filePaths userdata | { [System.Int32]: System.String } | (fun(): System.String)
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.ISafeStorageValidation.SetReadOnlyWhitelist(filePaths) end

---@param filePaths userdata | { [System.Int32]: System.String } | (fun(): System.String)
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.ISafeStorageValidation.SetReadWriteWhitelist(filePaths) end

function CS.Barotrauma.LuaCs.ISafeStorageValidation.ClearAllWhitelists() end


---@class Barotrauma.LuaCs.ISystem: Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.ISystem = {}


---@class Barotrauma.LuaCs.IReusableService: Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.IReusableService = {}

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IReusableService.Reset() end


---@class Barotrauma.LuaCs.IService: System.IDisposable
---@field IsDisposed System.Boolean
CS.Barotrauma.LuaCs.IService = {}

---@return System.Boolean
function CS.Barotrauma.LuaCs.IService.get_IsDisposed() end

function CS.Barotrauma.LuaCs.IService.CheckDisposed() end

---@param service Barotrauma.LuaCs.IService
function CS.Barotrauma.LuaCs.IService.CheckDisposed(service) end


---@class Barotrauma.LuaCs.IServicesProvider
CS.Barotrauma.LuaCs.IServicesProvider = {}

function CS.Barotrauma.LuaCs.IServicesProvider.CompileAndRun() end

function CS.Barotrauma.LuaCs.IServicesProvider.DisposeAndReset() end

---@generic TSvcInterface : Barotrauma.LuaCs.IService
---@generic TService : Barotrauma.LuaCs.IService, Barotrauma.LuaCs.IServicesProvider.TSvcInterface
---@param __genericMethodMaker_TSvcInterface TSvcInterface
---@param __genericMethodMaker_TService TService
---@param lifetime Barotrauma.LuaCs.ServiceLifetime
---@param lifetimeInstance? LightInject.ILifetime
function CS.Barotrauma.LuaCs.IServicesProvider.RegisterServiceType(__genericMethodMaker_TSvcInterface, __genericMethodMaker_TService, lifetime, lifetimeInstance) end

---@generic TSvcInterface : Barotrauma.LuaCs.IService
---@generic TService : Barotrauma.LuaCs.IService, Barotrauma.LuaCs.IServicesProvider.TSvcInterface
---@param __genericMethodMaker_TSvcInterface TSvcInterface
---@param __genericMethodMaker_TService TService
---@param name System.String
---@param lifetime Barotrauma.LuaCs.ServiceLifetime
---@param lifetimeInstance? LightInject.ILifetime
function CS.Barotrauma.LuaCs.IServicesProvider.RegisterServiceType(__genericMethodMaker_TSvcInterface, __genericMethodMaker_TService, name, lifetime, lifetimeInstance) end

---@generic TSvcInterface : Barotrauma.LuaCs.IService
---@param __genericMethodMaker_TSvcInterface TSvcInterface
---@param factory fun(arg: LightInject.ServiceContainer): TSvcInterface
function CS.Barotrauma.LuaCs.IServicesProvider.RegisterServiceResolver(__genericMethodMaker_TSvcInterface, factory) end

---@generic T : System.Object
---@param __genericMethodMaker_T T
---@param inst T
function CS.Barotrauma.LuaCs.IServicesProvider.InjectServices(__genericMethodMaker_T, inst) end

---@generic TSvcInterface : Barotrauma.LuaCs.IService
---@param __genericMethodMaker_TSvcInterface TSvcInterface
---@param service TSvcInterface
---@return System.Boolean
function CS.Barotrauma.LuaCs.IServicesProvider.TryGetService(__genericMethodMaker_TSvcInterface, service) end

---@generic TSvcInterface : Barotrauma.LuaCs.IService
---@param __genericMethodMaker_TSvcInterface TSvcInterface
---@return TSvcInterface
function CS.Barotrauma.LuaCs.IServicesProvider.GetService(__genericMethodMaker_TSvcInterface) end

---@generic TSvcInterface : Barotrauma.LuaCs.IService
---@param __genericMethodMaker_TSvcInterface TSvcInterface
---@param name System.String
---@param service TSvcInterface
---@return System.Boolean
function CS.Barotrauma.LuaCs.IServicesProvider.TryGetService(__genericMethodMaker_TSvcInterface, name, service) end

---@generic TSvc : Barotrauma.LuaCs.IService
---@param __genericMethodMaker_TSvc TSvc
---@return userdata | { [System.Int32]: TSvc } | (fun(): TSvc)
function CS.Barotrauma.LuaCs.IServicesProvider.GetAllServices(__genericMethodMaker_TSvc) end


---@enum Barotrauma.LuaCs.ServiceLifetime
CS.Barotrauma.LuaCs.ServiceLifetime = {
    Transient = 0,
    Singleton = 1,
    PerThread = 2,
    Invalid = 3,
    Custom = 4
}

---@class Barotrauma.LuaCs.IStorageService: Barotrauma.LuaCs.IService, System.IDisposable
---@field UseCaching System.Boolean
CS.Barotrauma.LuaCs.IStorageService = {}

---@return System.Boolean
function CS.Barotrauma.LuaCs.IStorageService.get_UseCaching() end

---@param value System.Boolean
function CS.Barotrauma.LuaCs.IStorageService.set_UseCaching(value) end

function CS.Barotrauma.LuaCs.IStorageService.PurgeCache() end

---@param absolutePath System.String
function CS.Barotrauma.LuaCs.IStorageService.PurgeFileFromCache(absolutePath) end

---@param ... System.String
function CS.Barotrauma.LuaCs.IStorageService.PurgeFilesFromCache(...) end

---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.LoadLocalXml(package, localFilePath) end

---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.LoadLocalBinary(package, localFilePath) end

---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.LoadLocalText(package, localFilePath) end

---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@param document System.Xml.Linq.XDocument
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IStorageService.SaveLocalXml(package, localFilePath, document) end

---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@param bytes System.Byte[]
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IStorageService.SaveLocalBinary(package, localFilePath, bytes) end

---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@param text System.String
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IStorageService.SaveLocalText(package, localFilePath, text) end

---@async
---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.LoadLocalXmlAsync(package, localFilePath) end

---@async
---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.LoadLocalBinaryAsync(package, localFilePath) end

---@async
---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.LoadLocalTextAsync(package, localFilePath) end

---@async
---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@param document System.Xml.Linq.XDocument
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.SaveLocalXmlAsync(package, localFilePath, document) end

---@async
---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@param bytes System.Byte[]
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.SaveLocalBinaryAsync(package, localFilePath, bytes) end

---@async
---@param package Barotrauma.ContentPackage
---@param localFilePath System.String
---@param text System.String
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.SaveLocalTextAsync(package, localFilePath, text) end

---@param filePath Barotrauma.ContentPath
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.LoadPackageXml(filePath) end

---@param filePath Barotrauma.ContentPath
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.LoadPackageBinary(filePath) end

---@param filePath Barotrauma.ContentPath
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.LoadPackageText(filePath) end

---@param filePaths userdata | { [System.Int32]: Barotrauma.ContentPath } | (fun(): Barotrauma.ContentPath)
---@return userdata | { [System.Int32]: userdata } | (fun(): userdata)
function CS.Barotrauma.LuaCs.IStorageService.LoadPackageXmlFiles(filePaths) end

---@param filePaths userdata | { [System.Int32]: Barotrauma.ContentPath } | (fun(): Barotrauma.ContentPath)
---@return userdata | { [System.Int32]: userdata } | (fun(): userdata)
function CS.Barotrauma.LuaCs.IStorageService.LoadPackageBinaryFiles(filePaths) end

---@param filePaths userdata | { [System.Int32]: Barotrauma.ContentPath } | (fun(): Barotrauma.ContentPath)
---@return userdata | { [System.Int32]: userdata } | (fun(): userdata)
function CS.Barotrauma.LuaCs.IStorageService.LoadPackageTextFiles(filePaths) end

---@param package Barotrauma.ContentPackage
---@param localSubfolder System.String
---@param regexFilter System.String
---@param searchRecursively System.Boolean
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.FindFilesInPackage(package, localSubfolder, regexFilter, searchRecursively) end

---@async
---@param filePath Barotrauma.ContentPath
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.LoadPackageXmlAsync(filePath) end

---@async
---@param filePath Barotrauma.ContentPath
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.LoadPackageBinaryAsync(filePath) end

---@async
---@param filePath Barotrauma.ContentPath
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.LoadPackageTextAsync(filePath) end

---@async
---@param filePaths userdata | { [System.Int32]: Barotrauma.ContentPath } | (fun(): Barotrauma.ContentPath)
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.LoadPackageXmlFilesAsync(filePaths) end

---@async
---@param filePaths userdata | { [System.Int32]: Barotrauma.ContentPath } | (fun(): Barotrauma.ContentPath)
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.LoadPackageBinaryFilesAsync(filePaths) end

---@async
---@param filePaths userdata | { [System.Int32]: Barotrauma.ContentPath } | (fun(): Barotrauma.ContentPath)
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.LoadPackageTextFilesAsync(filePaths) end

---@param filePath System.String
---@param encoding? System.Text.Encoding
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.TryLoadXml(filePath, encoding) end

---@param filePath System.String
---@param encoding? System.Text.Encoding
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.TryLoadText(filePath, encoding) end

---@param filePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.TryLoadBinary(filePath) end

---@param filePath System.String
---@param document System.Xml.Linq.XDocument
---@param encoding? System.Text.Encoding
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IStorageService.TrySaveXml(filePath, document, encoding) end

---@param filePath System.String
---@param text System.String
---@param encoding? System.Text.Encoding
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IStorageService.TrySaveText(filePath, text, encoding) end

---@param filePath System.String
---@param bytes System.Byte[]
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.IStorageService.TrySaveBinary(filePath, bytes) end

---@param filePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.FileExists(filePath) end

---@param directoryPath System.String
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.DirectoryExists(directoryPath) end

---@async
---@param filePath System.String
---@param encoding? System.Text.Encoding
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.TryLoadXmlAsync(filePath, encoding) end

---@async
---@param filePath System.String
---@param encoding? System.Text.Encoding
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.TryLoadTextAsync(filePath, encoding) end

---@async
---@param filePath System.String
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.TryLoadBinaryAsync(filePath) end

---@async
---@param filePath System.String
---@param document System.Xml.Linq.XDocument
---@param encoding? System.Text.Encoding
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.TrySaveXmlAsync(filePath, document, encoding) end

---@async
---@param filePath System.String
---@param text System.String
---@param encoding? System.Text.Encoding
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.TrySaveTextAsync(filePath, text, encoding) end

---@async
---@param filePath System.String
---@param bytes System.Byte[]
---@return userdata
function CS.Barotrauma.LuaCs.IStorageService.TrySaveBinaryAsync(filePath, bytes) end


---@class Barotrauma.LuaCs.IDefaultLuaRegistrar: Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.IDefaultLuaRegistrar = {}

function CS.Barotrauma.LuaCs.IDefaultLuaRegistrar.RegisterAll() end


---@class Barotrauma.LuaCs.DefaultLuaRegistrar: System.Object, Barotrauma.LuaCs.IDefaultLuaRegistrar, Barotrauma.LuaCs.IService, System.IDisposable
---@field IsDisposed System.Boolean
---@field private _userDataService Barotrauma.LuaCs.ILuaUserDataService
---@field private _safeUserDataService Barotrauma.LuaCs.ISafeLuaUserDataService
---@field private _loggerService Barotrauma.LuaCs.ILoggerService
CS.Barotrauma.LuaCs.DefaultLuaRegistrar = {}

---@private
function CS.Barotrauma.LuaCs.DefaultLuaRegistrar.RegisterShared() end

---@private
function CS.Barotrauma.LuaCs.DefaultLuaRegistrar.RegisterServer() end

function CS.Barotrauma.LuaCs.DefaultLuaRegistrar.RegisterAll() end

function CS.Barotrauma.LuaCs.DefaultLuaRegistrar.Dispose() end

do
---@param loggerService Barotrauma.LuaCs.ILoggerService
---@param userDataService Barotrauma.LuaCs.ILuaUserDataService
---@param safeUserDataService Barotrauma.LuaCs.ISafeLuaUserDataService
---@return Barotrauma.LuaCs.DefaultLuaRegistrar
local __ctor = function(loggerService, userDataService, safeUserDataService) end
CS.Barotrauma.LuaCs.DefaultLuaRegistrar = __ctor
CS.Barotrauma.LuaCs.DefaultLuaRegistrar.__new = __ctor
end

---@class Barotrauma.LuaCs.ILuaConfigService: Barotrauma.LuaCs.ILuaService, Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.ILuaConfigService = {}

---@param setting Barotrauma.LuaCs.Data.ISettingBase
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.ILuaConfigService.LoadSavedValueForConfig(setting) end

---@param setting Barotrauma.LuaCs.Data.ISettingBase
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.ILuaConfigService.SaveConfigValue(setting) end


---@class Barotrauma.LuaCs.ILuaDataService: Barotrauma.LuaCs.ILuaService, Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.ILuaDataService = {}


---@class Barotrauma.LuaCs.ILuaSafeEventService: Barotrauma.LuaCs.ILuaService, Barotrauma.LuaCs.IService, System.IDisposable, Barotrauma.LuaCs.Compatibility.ILuaCsHook, Barotrauma.LuaCs.ILuaPatcher, Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.Compatibility.ILuaCsShim
CS.Barotrauma.LuaCs.ILuaSafeEventService = {}

---@param eventName System.String
---@param identifier System.String
function CS.Barotrauma.LuaCs.ILuaSafeEventService.Unsubscribe(eventName, identifier) end

---@generic T : userdata
---@param __genericMethodMaker_T T
---@param identifier System.String
---@param callbacks userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
function CS.Barotrauma.LuaCs.ILuaSafeEventService.Subscribe(__genericMethodMaker_T, identifier, callbacks) end

---@generic T : userdata
---@param __genericMethodMaker_T T
---@param subscriberRunner fun(...: System.Object): System.Object
function CS.Barotrauma.LuaCs.ILuaSafeEventService.PublishLuaEvent(__genericMethodMaker_T, subscriberRunner) end

---@generic T : userdata
---@param __genericMethodMaker_T T
---@param luaEventName System.String
---@param targetMethod System.String
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.ILuaSafeEventService.RegisterLuaEventAlias(__genericMethodMaker_T, luaEventName, targetMethod) end


---@class Barotrauma.LuaCs.ILuaEventService: Barotrauma.LuaCs.ILuaSafeEventService, Barotrauma.LuaCs.ILuaService, Barotrauma.LuaCs.IService, System.IDisposable, Barotrauma.LuaCs.Compatibility.ILuaCsHook, Barotrauma.LuaCs.ILuaPatcher, Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.Compatibility.ILuaCsShim
CS.Barotrauma.LuaCs.ILuaEventService = {}


---@class Barotrauma.LuaCs.ILuaNetworkingService: Barotrauma.LuaCs.ILuaService, Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.ILuaNetworkingService = {}


---@class Barotrauma.LuaCs.ILuaPackageManagementService: Barotrauma.LuaCs.ILuaService, Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.ILuaPackageManagementService = {}


---@class Barotrauma.LuaCs.ILuaPackageService: Barotrauma.LuaCs.ILuaService, Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.ILuaPackageService = {}


---@class Barotrauma.LuaCs.ILuaPatcher: Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.ILuaPatcher = {}

---@overload fun(identifier: System.String, className: System.String, methodName: System.String, patch: (fun(instance: System.Object, ptable: Barotrauma.LuaCs.LuaPatcherService.ParameterTable): MoonSharp.Interpreter.DynValue), hookType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType): System.String
---@overload fun(className: System.String, methodName: System.String, parameterTypes: System.String[], patch: (fun(instance: System.Object, ptable: Barotrauma.LuaCs.LuaPatcherService.ParameterTable): MoonSharp.Interpreter.DynValue), hookType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType): System.String
---@overload fun(className: System.String, methodName: System.String, patch: (fun(instance: System.Object, ptable: Barotrauma.LuaCs.LuaPatcherService.ParameterTable): MoonSharp.Interpreter.DynValue), hookType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType): System.String
---@param identifier System.String
---@param className System.String
---@param methodName System.String
---@param parameterTypes System.String[]
---@param patch fun(instance: System.Object, ptable: Barotrauma.LuaCs.LuaPatcherService.ParameterTable): MoonSharp.Interpreter.DynValue
---@param hookType? Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType
---@return System.String
function CS.Barotrauma.LuaCs.ILuaPatcher.Patch(identifier, className, methodName, parameterTypes, patch, hookType) end

---@overload fun(identifier: System.String, className: System.String, methodName: System.String, hookType: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType): System.Boolean
---@param identifier System.String
---@param className System.String
---@param methodName System.String
---@param parameterTypes System.String[]
---@param hookType Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType
---@return System.Boolean
function CS.Barotrauma.LuaCs.ILuaPatcher.RemovePatch(identifier, className, methodName, parameterTypes, hookType) end

---@overload fun(identifier: System.String, className: System.String, methodName: System.String, parameterNames: System.String[], patch: (fun(self: System.Object, args: (userdata | { [System.String]: System.Object } | (fun(): userdata))): System.Object), hookMethodType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType)
---@overload fun(identifier: System.String, className: System.String, methodName: System.String, patch: (fun(self: System.Object, args: (userdata | { [System.String]: System.Object } | (fun(): userdata))): System.Object), hookMethodType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType)
---@overload fun(className: System.String, methodName: System.String, patch: (fun(self: System.Object, args: (userdata | { [System.String]: System.Object } | (fun(): userdata))): System.Object), hookMethodType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType)
---@overload fun(className: System.String, methodName: System.String, parameterNames: System.String[], patch: (fun(self: System.Object, args: (userdata | { [System.String]: System.Object } | (fun(): userdata))): System.Object), hookMethodType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType)
---@param identifier System.String
---@param method System.Reflection.MethodBase
---@param patch fun(self: System.Object, args: (userdata | { [System.String]: System.Object } | (fun(): userdata))): System.Object
---@param hookType? Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType
---@param owner? Barotrauma.LuaCs.IAssemblyPlugin
function CS.Barotrauma.LuaCs.ILuaPatcher.HookMethod(identifier, method, patch, hookType, owner) end


---@class Barotrauma.LuaCs.ILuaScriptLoader: Barotrauma.LuaCs.IService, System.IDisposable, MoonSharp.Interpreter.Loaders.IScriptLoader, Barotrauma.LuaCs.ISafeStorageValidation
CS.Barotrauma.LuaCs.ILuaScriptLoader = {}

function CS.Barotrauma.LuaCs.ILuaScriptLoader.ClearCaches() end

---@param useCaching System.Boolean
function CS.Barotrauma.LuaCs.ILuaScriptLoader.SetCachingPolicy(useCaching) end

---@async
---@param resourceInfos userdata | { [System.Int32]: Barotrauma.LuaCs.Data.ILuaScriptResourceInfo } | (fun(): Barotrauma.LuaCs.Data.ILuaScriptResourceInfo)
---@return userdata
function CS.Barotrauma.LuaCs.ILuaScriptLoader.CacheResourcesAsync(resourceInfos) end


---@class Barotrauma.LuaCs.ILuaService: Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.ILuaService = {}


---@class Barotrauma.LuaCs.LuaGame: System.Object, Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable
---@field IsSingleplayer System.Boolean
---@field IsMultiplayer System.Boolean
---@field SaveFolder System.String
---@field Server Barotrauma.Networking.GameServer
---@field IsDedicated System.Boolean
---@field Paused System.Boolean
---@field ServerSettings Barotrauma.Networking.ServerSettings
---@field RespawnManager Barotrauma.Networking.RespawnManager
---@field Commands userdata | { [System.Int32]: Barotrauma.DebugConsole.Command } | (fun(): Barotrauma.DebugConsole.Command)
---@field MapEntityUpdateInterval System.Int32
---@field GapUpdateInterval System.Int32
---@field PoweredUpdateInterval System.Int32
---@field CharacterUpdateInterval System.Int32
---@field RoundStarted System.Boolean
---@field GameSession Barotrauma.GameSession
---@field NetLobbyScreen Barotrauma.NetLobbyScreen
---@field GameScreen Barotrauma.GameScreen
---@field World FarseerPhysics.Dynamics.World
---@field Peer Barotrauma.Networking.ServerPeer
---@field IsDisposed System.Boolean
---@field ForceVoice System.Boolean|nil
---@field ForceLocalVoice System.Boolean|nil
---@field Settings MoonSharp.Interpreter.DynValue
---@field allowWifiChat System.Boolean
---@field overrideTraitors System.Boolean
---@field overrideRespawnSub System.Boolean
---@field overrideSignalRadio System.Boolean
---@field disableSpamFilter System.Boolean
---@field disableDisconnectCharacter System.Boolean
---@field enableControlHusk System.Boolean
---@field UpdatePriorityItems userdata | (fun(): Barotrauma.Item)
---@field UpdatePriorityCharacters userdata | (fun(): Barotrauma.Character)
---@field private _consoleCommands Barotrauma.LuaCs.IConsoleCommandsService
CS.Barotrauma.LuaCs.LuaGame = {}

---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaGame.get_IsSingleplayer() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaGame.get_IsMultiplayer() end

---@return System.String
function CS.Barotrauma.LuaCs.LuaGame.get_SaveFolder() end

---@return Barotrauma.Networking.GameServer
function CS.Barotrauma.LuaCs.LuaGame.get_Server() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaGame.get_IsDedicated() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaGame.get_Paused() end

---@return Barotrauma.Networking.ServerSettings
function CS.Barotrauma.LuaCs.LuaGame.get_ServerSettings() end

---@return Barotrauma.Networking.RespawnManager
function CS.Barotrauma.LuaCs.LuaGame.get_RespawnManager() end

---@return userdata | { [System.Int32]: Barotrauma.DebugConsole.Command } | (fun(): Barotrauma.DebugConsole.Command)
function CS.Barotrauma.LuaCs.LuaGame.get_Commands() end

---@return System.Int32
function CS.Barotrauma.LuaCs.LuaGame.get_MapEntityUpdateInterval() end

---@param value System.Int32
function CS.Barotrauma.LuaCs.LuaGame.set_MapEntityUpdateInterval(value) end

---@return System.Int32
function CS.Barotrauma.LuaCs.LuaGame.get_GapUpdateInterval() end

---@param value System.Int32
function CS.Barotrauma.LuaCs.LuaGame.set_GapUpdateInterval(value) end

---@return System.Int32
function CS.Barotrauma.LuaCs.LuaGame.get_PoweredUpdateInterval() end

---@param value System.Int32
function CS.Barotrauma.LuaCs.LuaGame.set_PoweredUpdateInterval(value) end

---@return System.Int32
function CS.Barotrauma.LuaCs.LuaGame.get_CharacterUpdateInterval() end

---@param value System.Int32
function CS.Barotrauma.LuaCs.LuaGame.set_CharacterUpdateInterval(value) end

---@param item Barotrauma.Item
function CS.Barotrauma.LuaCs.LuaGame.AddPriorityItem(item) end

---@param item Barotrauma.Item
function CS.Barotrauma.LuaCs.LuaGame.RemovePriorityItem(item) end

function CS.Barotrauma.LuaCs.LuaGame.ClearPriorityItem() end

---@param character Barotrauma.Character
function CS.Barotrauma.LuaCs.LuaGame.AddPriorityCharacter(character) end

---@param character Barotrauma.Character
function CS.Barotrauma.LuaCs.LuaGame.RemovePriorityCharacter(character) end

function CS.Barotrauma.LuaCs.LuaGame.ClearPriorityCharacter() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaGame.get_RoundStarted() end

---@return Barotrauma.GameSession
function CS.Barotrauma.LuaCs.LuaGame.get_GameSession() end

---@return Barotrauma.NetLobbyScreen
function CS.Barotrauma.LuaCs.LuaGame.get_NetLobbyScreen() end

---@return Barotrauma.GameScreen
function CS.Barotrauma.LuaCs.LuaGame.get_GameScreen() end

---@return FarseerPhysics.Dynamics.World
function CS.Barotrauma.LuaCs.LuaGame.get_World() end

---@return Barotrauma.Networking.ServerPeer
function CS.Barotrauma.LuaCs.LuaGame.get_Peer() end

---@param o System.Boolean
function CS.Barotrauma.LuaCs.LuaGame.OverrideTraitors(o) end

---@param o System.Boolean
function CS.Barotrauma.LuaCs.LuaGame.OverrideRespawnSub(o) end

---@param o System.Boolean
function CS.Barotrauma.LuaCs.LuaGame.AllowWifiChat(o) end

---@param o System.Boolean
function CS.Barotrauma.LuaCs.LuaGame.OverrideSignalRadio(o) end

---@param o System.Boolean
function CS.Barotrauma.LuaCs.LuaGame.DisableSpamFilter(o) end

---@param o System.Boolean
function CS.Barotrauma.LuaCs.LuaGame.DisableDisconnectCharacter(o) end

---@param o System.Boolean
function CS.Barotrauma.LuaCs.LuaGame.EnableControlHusk(o) end

---@param pos Microsoft.Xna.Framework.Vector2
---@param range? System.Single
---@param force? System.Single
---@param damage? System.Single
---@param structureDamage? System.Single
---@param itemDamage? System.Single
---@param empStrength? System.Single
---@param ballastFloraStrength? System.Single
function CS.Barotrauma.LuaCs.LuaGame.Explode(pos, range, force, damage, structureDamage, itemDamage, empStrength, ballastFloraStrength) end

---@param name System.String
---@param pos Microsoft.Xna.Framework.Vector2
---@param inventory? System.Boolean
---@param character? Barotrauma.Character
---@return System.String
function CS.Barotrauma.LuaCs.LuaGame.SpawnItem(name, pos, inventory, character) end

---@return Barotrauma.ContentPackage[]
function CS.Barotrauma.LuaCs.LuaGame.GetEnabledContentPackages() end

---@param itemNameOrId System.String
---@return Barotrauma.ItemPrefab
function CS.Barotrauma.LuaCs.LuaGame.GetItemPrefab(itemNameOrId) end

---@return Barotrauma.Submarine
function CS.Barotrauma.LuaCs.LuaGame.GetRespawnSub() end

---@param sub Barotrauma.Submarine
---@return Barotrauma.Items.Components.Steering
function CS.Barotrauma.LuaCs.LuaGame.GetSubmarineSteering(sub) end

---@param item Barotrauma.Item
---@return Barotrauma.Items.Components.WifiComponent
function CS.Barotrauma.LuaCs.LuaGame.GetWifiComponent(item) end

---@param item Barotrauma.Item
---@return Barotrauma.Items.Components.LightComponent
function CS.Barotrauma.LuaCs.LuaGame.GetLightComponent(item) end

---@param item Barotrauma.Item
---@return Barotrauma.Items.Components.CustomInterface
function CS.Barotrauma.LuaCs.LuaGame.GetCustomInterface(item) end

---@param item Barotrauma.Item
---@return Barotrauma.Items.Components.Fabricator
function CS.Barotrauma.LuaCs.LuaGame.GetFabricatorComponent(item) end

---@param item Barotrauma.Item
---@return Barotrauma.Items.Components.Holdable
function CS.Barotrauma.LuaCs.LuaGame.GetHoldableComponent(item) end

---@param command System.String
function CS.Barotrauma.LuaCs.LuaGame.ExecuteCommand(command) end

---@param value System.String
---@param stepsTaken? System.Int32
---@param sender? Barotrauma.Character
---@param source? Barotrauma.Item
---@param power? System.Single
---@param strength? System.Single
---@return Barotrauma.Items.Components.Signal
function CS.Barotrauma.LuaCs.LuaGame.CreateSignal(value, stepsTaken, sender, source, power, strength) end

---@param name System.String
function CS.Barotrauma.LuaCs.LuaGame.RemoveCommand(name) end

---@param name System.String
---@param help System.String
---@param onExecute fun(...: System.Object)
---@param getValidArgs? fun(...: System.Object): System.Object
---@param isCheat? System.Boolean
function CS.Barotrauma.LuaCs.LuaGame.AddCommand(name, help, onExecute, getValidArgs, isCheat) end

---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaGame.get_IsDisposed() end

---@param names System.String
---@param onExecute System.Object
function CS.Barotrauma.LuaCs.LuaGame.AssignOnExecute(names, onExecute) end

---@param path System.String
function CS.Barotrauma.LuaCs.LuaGame.SaveGame(path) end

---@param path System.String
function CS.Barotrauma.LuaCs.LuaGame.LoadGame(path) end

---@param path System.String
---@param client? Barotrauma.Networking.Client
function CS.Barotrauma.LuaCs.LuaGame.LoadCampaign(path, client) end

---@param msg System.String
---@param messageType? Barotrauma.Networking.ChatMessageType|nil
---@param sender? Barotrauma.Networking.Client
---@param character? Barotrauma.Character
function CS.Barotrauma.LuaCs.LuaGame.SendMessage(msg, messageType, sender, character) end

---@param message Barotrauma.Networking.WriteOnlyMessage
---@param client Barotrauma.Networking.Client
function CS.Barotrauma.LuaCs.LuaGame.SendTraitorMessage(message, client) end

---@overload fun(chatMessage: Barotrauma.Networking.ChatMessage, client: Barotrauma.Networking.Client)
---@param sendername System.String
---@param text System.String
---@param sender Barotrauma.Character
---@param messageType? Barotrauma.Networking.ChatMessageType
---@param client? Barotrauma.Networking.Client
---@param iconStyle? System.String
function CS.Barotrauma.LuaCs.LuaGame.SendDirectChatMessage(sendername, text, sender, messageType, client, iconStyle) end

---@param message System.String
---@param type Barotrauma.Networking.ServerLog.MessageType
function CS.Barotrauma.LuaCs.LuaGame.Log(message, type) end

function CS.Barotrauma.LuaCs.LuaGame.DispatchRespawnSub() end

---@return Barotrauma.Networking.GameServer.TryStartGameResult
function CS.Barotrauma.LuaCs.LuaGame.StartGame() end

function CS.Barotrauma.LuaCs.LuaGame.EndGame() end

---@param names System.String
---@param onExecute fun(...: System.Object)
function CS.Barotrauma.LuaCs.LuaGame.AssignOnClientRequestExecute(names, onExecute) end

function CS.Barotrauma.LuaCs.LuaGame.Stop() end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.LuaGame.Reset() end

function CS.Barotrauma.LuaCs.LuaGame.Dispose() end

do
---@param consoleCommands Barotrauma.LuaCs.IConsoleCommandsService
---@return Barotrauma.LuaCs.LuaGame
local __ctor = function(consoleCommands) end
CS.Barotrauma.LuaCs.LuaGame = __ctor
CS.Barotrauma.LuaCs.LuaGame.__new = __ctor
end

---@class Barotrauma.LuaCs.LuaPatcherService: System.Object, Barotrauma.LuaCs.ILuaPatcher, Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable
---@field IsDisposed System.Boolean
---@field private compatHookPrefixMethods userdata | { [System.Int64]: userdata | (fun(): userdata) } | (fun(): userdata)
---@field private compatHookPostfixMethods userdata | { [System.Int64]: userdata | (fun(): userdata) } | (fun(): userdata)
---@field private harmony HarmonyLib.Harmony
---@field private patchModuleBuilder userdata
---@field private registeredPatches userdata | { [Barotrauma.LuaCs.LuaPatcherService.MethodKey]: Barotrauma.LuaCs.LuaPatcherService.PatchedMethod } | (fun(): userdata)
---@field private instance Barotrauma.LuaCs.LuaPatcherService
---@field private _miHookLuaCsPatchPrefix System.Reflection.MethodInfo
---@field private _miHookLuaCsPatchPostfix System.Reflection.MethodInfo
---@field private _miHookLuaCsPatchRetPrefix System.Reflection.MethodInfo
---@field private _miHookLuaCsPatchRetPostfix System.Reflection.MethodInfo
---@field private prohibitedHooks System.String[]
---@field private InvalidIdentifierCharsRegex System.Text.RegularExpressions.Regex
---@field private FIELD_LUACS System.String
CS.Barotrauma.LuaCs.LuaPatcherService = {}

---@private
---@param __originalMethod System.Reflection.MethodBase
---@param __args System.Object[]
---@param __instance System.Object
---@param result System.Object
---@param hookType Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType
function CS.Barotrauma.LuaCs.LuaPatcherService._hookLuaCsPatch(__originalMethod, __args, __instance, result, hookType) end

---@private
---@param __originalMethod System.Reflection.MethodBase
---@param __args System.Object[]
---@param __instance System.Object
---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaPatcherService.HookLuaCsPatchPrefix(__originalMethod, __args, __instance) end

---@private
---@param __originalMethod System.Reflection.MethodBase
---@param __args System.Object[]
---@param __instance System.Object
function CS.Barotrauma.LuaCs.LuaPatcherService.HookLuaCsPatchPostfix(__originalMethod, __args, __instance) end

---@private
---@param __originalMethod System.Reflection.MethodBase
---@param __args System.Object[]
---@param __result System.Object
---@param __instance System.Object
---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaPatcherService.HookLuaCsPatchRetPrefix(__originalMethod, __args, __result, __instance) end

---@private
---@param __originalMethod System.Reflection.MethodBase
---@param __args System.Object[]
---@param __result System.Object
---@param __instance System.Object
function CS.Barotrauma.LuaCs.LuaPatcherService.HookLuaCsPatchRetPostfix(__originalMethod, __args, __result, __instance) end

---@overload fun(identifier: System.String, className: System.String, methodName: System.String, parameterNames: System.String[], patch: (fun(self: System.Object, args: (userdata | { [System.String]: System.Object } | (fun(): userdata))): System.Object), hookMethodType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType)
---@overload fun(identifier: System.String, className: System.String, methodName: System.String, patch: (fun(self: System.Object, args: (userdata | { [System.String]: System.Object } | (fun(): userdata))): System.Object), hookMethodType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType)
---@overload fun(className: System.String, methodName: System.String, patch: (fun(self: System.Object, args: (userdata | { [System.String]: System.Object } | (fun(): userdata))): System.Object), hookMethodType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType)
---@overload fun(className: System.String, methodName: System.String, parameterNames: System.String[], patch: (fun(self: System.Object, args: (userdata | { [System.String]: System.Object } | (fun(): userdata))): System.Object), hookMethodType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType)
---@param identifier System.String
---@param method System.Reflection.MethodBase
---@param patch fun(self: System.Object, args: (userdata | { [System.String]: System.Object } | (fun(): userdata))): System.Object
---@param hookType? Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType
---@param owner? Barotrauma.LuaCs.IAssemblyPlugin
function CS.Barotrauma.LuaCs.LuaPatcherService.HookMethod(identifier, method, patch, hookType, owner) end

---@param identifier System.String
---@param method System.Reflection.MethodBase
---@param hookType? Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType
function CS.Barotrauma.LuaCs.LuaPatcherService.UnhookMethod(identifier, method, hookType) end

---@protected
---@param identifier System.String
---@param className System.String
---@param methodName System.String
---@param parameterNames System.String[]
---@param hookType? Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType
function CS.Barotrauma.LuaCs.LuaPatcherService.UnhookMethod(identifier, className, methodName, parameterNames, hookType) end

---@private
---@param method System.Reflection.MethodBase
function CS.Barotrauma.LuaCs.LuaPatcherService.ValidatePatchTarget(method) end

---@private
---@param identifier System.String
---@return System.String
function CS.Barotrauma.LuaCs.LuaPatcherService.NormalizeIdentifier(identifier) end

---@private
---@return System.Reflection.Emit.ModuleBuilder
function CS.Barotrauma.LuaCs.LuaPatcherService.CreateModuleBuilder() end

---@private
---@param className System.String
---@param methodName System.String
---@param parameters System.String[]
---@return System.Reflection.MethodBase
function CS.Barotrauma.LuaCs.LuaPatcherService.ResolveMethod(className, methodName, parameters) end

---@private
---@param identifier System.String
---@param original System.Reflection.MethodBase
---@param hookType Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType
---@return System.Reflection.MethodInfo
function CS.Barotrauma.LuaCs.LuaPatcherService.CreateDynamicHarmonyPatch(identifier, original, hookType) end

---@private
---@param identifier System.String
---@param method System.Reflection.MethodBase
---@param patch fun(instance: System.Object, ptable: Barotrauma.LuaCs.LuaPatcherService.ParameterTable): MoonSharp.Interpreter.DynValue
---@param hookType? Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType
---@return System.String
function CS.Barotrauma.LuaCs.LuaPatcherService.Patch(identifier, method, patch, hookType) end

---@overload fun(identifier: System.String, className: System.String, methodName: System.String, patch: (fun(instance: System.Object, ptable: Barotrauma.LuaCs.LuaPatcherService.ParameterTable): MoonSharp.Interpreter.DynValue), hookType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType): System.String
---@overload fun(className: System.String, methodName: System.String, parameterTypes: System.String[], patch: (fun(instance: System.Object, ptable: Barotrauma.LuaCs.LuaPatcherService.ParameterTable): MoonSharp.Interpreter.DynValue), hookType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType): System.String
---@overload fun(className: System.String, methodName: System.String, patch: (fun(instance: System.Object, ptable: Barotrauma.LuaCs.LuaPatcherService.ParameterTable): MoonSharp.Interpreter.DynValue), hookType?: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType): System.String
---@param identifier System.String
---@param className System.String
---@param methodName System.String
---@param parameterTypes System.String[]
---@param patch fun(instance: System.Object, ptable: Barotrauma.LuaCs.LuaPatcherService.ParameterTable): MoonSharp.Interpreter.DynValue
---@param hookType? Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType
---@return System.String
function CS.Barotrauma.LuaCs.LuaPatcherService.Patch(identifier, className, methodName, parameterTypes, patch, hookType) end

---@private
---@param identifier System.String
---@param method System.Reflection.MethodBase
---@param hookType Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType
---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaPatcherService.RemovePatch(identifier, method, hookType) end

---@overload fun(identifier: System.String, className: System.String, methodName: System.String, hookType: Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType): System.Boolean
---@param identifier System.String
---@param className System.String
---@param methodName System.String
---@param parameterTypes System.String[]
---@param hookType Barotrauma.LuaCs.Compatibility.ILuaCsHook.HookMethodType
---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaPatcherService.RemovePatch(identifier, className, methodName, parameterTypes, hookType) end

---@private
function CS.Barotrauma.LuaCs.LuaPatcherService.ClearAll() end

function CS.Barotrauma.LuaCs.LuaPatcherService.Dispose() end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.LuaPatcherService.Reset() end

do
---@overload fun(): Barotrauma.LuaCs.LuaPatcherService
---@return Barotrauma.LuaCs.LuaPatcherService
local __ctor = function() end
CS.Barotrauma.LuaCs.LuaPatcherService = __ctor
CS.Barotrauma.LuaCs.LuaPatcherService.__new = __ctor
end

---@class Barotrauma.LuaCs.LuaScriptLoader: MoonSharp.Interpreter.Loaders.ScriptLoaderBase, MoonSharp.Interpreter.Loaders.IScriptLoader, Barotrauma.LuaCs.ILuaScriptLoader, Barotrauma.LuaCs.IService, System.IDisposable, Barotrauma.LuaCs.ISafeStorageValidation
---@field IsDisposed System.Boolean
---@field private _storageService Barotrauma.LuaCs.ISafeStorageService
---@field private _loggerService userdata
---@field private _isDisposed System.Int32
CS.Barotrauma.LuaCs.LuaScriptLoader = {}

---@param file System.String
---@param globalContext MoonSharp.Interpreter.Table
---@return System.Object
function CS.Barotrauma.LuaCs.LuaScriptLoader.LoadFile(file, globalContext) end

function CS.Barotrauma.LuaCs.LuaScriptLoader.ClearCaches() end

---@param useCaching System.Boolean
function CS.Barotrauma.LuaCs.LuaScriptLoader.SetCachingPolicy(useCaching) end

---@async
---@param resourceInfos userdata | { [System.Int32]: Barotrauma.LuaCs.Data.ILuaScriptResourceInfo } | (fun(): Barotrauma.LuaCs.Data.ILuaScriptResourceInfo)
---@return userdata
function CS.Barotrauma.LuaCs.LuaScriptLoader.CacheResourcesAsync(resourceInfos) end

---@param file System.String
---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaScriptLoader.ScriptFileExists(file) end

---@private
---@param message System.String
---@param result? FluentResults.Result
function CS.Barotrauma.LuaCs.LuaScriptLoader.UnsafeLogErrors(message, result) end

function CS.Barotrauma.LuaCs.LuaScriptLoader.Dispose() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaScriptLoader.get_IsDisposed() end

---@param path System.String
---@param readOnly System.Boolean
---@param checkWhitelistOnly? System.Boolean
---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaScriptLoader.IsFileAccessible(path, readOnly, checkWhitelistOnly) end

---@param path System.String
---@param readOnly? System.Boolean
function CS.Barotrauma.LuaCs.LuaScriptLoader.AddFileToWhitelist(path, readOnly) end

---@param paths userdata | { [System.Int32]: System.String } | (fun(): System.String)
---@param readOnly? System.Boolean
function CS.Barotrauma.LuaCs.LuaScriptLoader.AddFilesToWhitelist(paths, readOnly) end

---@param path System.String
function CS.Barotrauma.LuaCs.LuaScriptLoader.RemoveFileFromAllWhitelists(path) end

---@param filePaths userdata | { [System.Int32]: System.String } | (fun(): System.String)
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.LuaScriptLoader.SetReadOnlyWhitelist(filePaths) end

---@param filePaths userdata | { [System.Int32]: System.String } | (fun(): System.String)
---@return FluentResults.Result
function CS.Barotrauma.LuaCs.LuaScriptLoader.SetReadWriteWhitelist(filePaths) end

function CS.Barotrauma.LuaCs.LuaScriptLoader.ClearAllWhitelists() end

do
---@param storageService Barotrauma.LuaCs.ISafeStorageService
---@param loggerService userdata
---@return Barotrauma.LuaCs.LuaScriptLoader
local __ctor = function(storageService, loggerService) end
CS.Barotrauma.LuaCs.LuaScriptLoader = __ctor
CS.Barotrauma.LuaCs.LuaScriptLoader.__new = __ctor
end

---@class Barotrauma.LuaCs.ILuaUserDataService: Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable
---@field Descriptors userdata | { [System.String]: MoonSharp.Interpreter.Interop.IUserDataDescriptor } | (fun(): userdata)
CS.Barotrauma.LuaCs.ILuaUserDataService = {}

---@return userdata | { [System.String]: MoonSharp.Interpreter.Interop.IUserDataDescriptor } | (fun(): userdata)
function CS.Barotrauma.LuaCs.ILuaUserDataService.get_Descriptors() end

---@param typeName System.String
---@return MoonSharp.Interpreter.Interop.IUserDataDescriptor
function CS.Barotrauma.LuaCs.ILuaUserDataService.RegisterType(typeName) end

---@param typeName System.String
function CS.Barotrauma.LuaCs.ILuaUserDataService.RegisterExtensionType(typeName) end

---@param typeName System.String
---@return System.Boolean
function CS.Barotrauma.LuaCs.ILuaUserDataService.IsRegistered(typeName) end

---@param typeName System.String
---@param deleteHistory? System.Boolean
function CS.Barotrauma.LuaCs.ILuaUserDataService.UnregisterType(typeName, deleteHistory) end

---@param typeName System.String
---@return System.Object
function CS.Barotrauma.LuaCs.ILuaUserDataService.CreateStatic(typeName) end

---@param obj System.Object
---@param typeName System.String
---@return System.Boolean
function CS.Barotrauma.LuaCs.ILuaUserDataService.IsTargetType(obj, typeName) end

---@param obj System.Object
---@return System.String
function CS.Barotrauma.LuaCs.ILuaUserDataService.TypeOf(obj) end

---@param typeName System.String
---@return System.Object
function CS.Barotrauma.LuaCs.ILuaUserDataService.CreateEnumTable(typeName) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param fieldName System.String
function CS.Barotrauma.LuaCs.ILuaUserDataService.MakeFieldAccessible(IUUD, fieldName) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param methodName System.String
---@param parameters? System.String[]
function CS.Barotrauma.LuaCs.ILuaUserDataService.MakeMethodAccessible(IUUD, methodName, parameters) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param propertyName System.String
function CS.Barotrauma.LuaCs.ILuaUserDataService.MakePropertyAccessible(IUUD, propertyName) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param methodName System.String
---@param __function__ System.Object
function CS.Barotrauma.LuaCs.ILuaUserDataService.AddMethod(IUUD, methodName, __function__) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param fieldName System.String
---@param value MoonSharp.Interpreter.DynValue
function CS.Barotrauma.LuaCs.ILuaUserDataService.AddField(IUUD, fieldName, value) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param memberName System.String
function CS.Barotrauma.LuaCs.ILuaUserDataService.RemoveMember(IUUD, memberName) end

---@param obj System.Object
---@param memberName System.String
---@return System.Boolean
function CS.Barotrauma.LuaCs.ILuaUserDataService.HasMember(obj, memberName) end

---@param scriptObject MoonSharp.Interpreter.DynValue
---@param desiredTypeDescriptor MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@return MoonSharp.Interpreter.DynValue
function CS.Barotrauma.LuaCs.ILuaUserDataService.CreateUserDataFromDescriptor(scriptObject, desiredTypeDescriptor) end

---@param scriptObject MoonSharp.Interpreter.DynValue
---@param desiredType System.Type
---@return MoonSharp.Interpreter.DynValue
function CS.Barotrauma.LuaCs.ILuaUserDataService.CreateUserDataFromType(scriptObject, desiredType) end

---@param userdata System.Object
function CS.Barotrauma.LuaCs.ILuaUserDataService.AddCallMetaTable(userdata) end


---@class Barotrauma.LuaCs.LuaUserDataService: System.Object, Barotrauma.LuaCs.ILuaUserDataService, Barotrauma.LuaCs.IReusableService, Barotrauma.LuaCs.IService, System.IDisposable, { [System.String]: MoonSharp.Interpreter.Interop.IUserDataDescriptor }
---@field IsDisposed System.Boolean
---@field Descriptors userdata | { [System.String]: MoonSharp.Interpreter.Interop.IUserDataDescriptor } | (fun(): userdata)
---@field private descriptors userdata | { [System.String]: MoonSharp.Interpreter.Interop.IUserDataDescriptor } | (fun(): userdata)
---@field private _pluginManagementService Barotrauma.LuaCs.IPluginManagementService
CS.Barotrauma.LuaCs.LuaUserDataService = {}

---@return userdata | { [System.String]: MoonSharp.Interpreter.Interop.IUserDataDescriptor } | (fun(): userdata)
function CS.Barotrauma.LuaCs.LuaUserDataService.get_Descriptors() end

---@param key System.String
---@return MoonSharp.Interpreter.Interop.IUserDataDescriptor
function CS.Barotrauma.LuaCs.LuaUserDataService.get_Item(key) end

---@private
---@param typeName System.String
---@return System.Type
function CS.Barotrauma.LuaCs.LuaUserDataService.GetType(typeName) end

---@param typeName System.String
---@return MoonSharp.Interpreter.Interop.IUserDataDescriptor
function CS.Barotrauma.LuaCs.LuaUserDataService.RegisterType(typeName) end

---@param typeName System.String
function CS.Barotrauma.LuaCs.LuaUserDataService.RegisterExtensionType(typeName) end

---@param typeName System.String
---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaUserDataService.IsRegistered(typeName) end

---@param typeName System.String
---@param deleteHistory? System.Boolean
function CS.Barotrauma.LuaCs.LuaUserDataService.UnregisterType(typeName, deleteHistory) end

---@param obj System.Object
---@param typeName System.String
---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaUserDataService.IsTargetType(obj, typeName) end

---@param obj System.Object
---@return System.String
function CS.Barotrauma.LuaCs.LuaUserDataService.TypeOf(obj) end

---@param typeName System.String
---@return System.Object
function CS.Barotrauma.LuaCs.LuaUserDataService.CreateEnumTable(typeName) end

---@param typeName System.String
---@return System.Object
function CS.Barotrauma.LuaCs.LuaUserDataService.CreateStatic(typeName) end

---@private
---@param type System.Type
---@param fieldName System.String
---@return System.Reflection.FieldInfo
function CS.Barotrauma.LuaCs.LuaUserDataService.FindFieldRecursively(type, fieldName) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param fieldName System.String
function CS.Barotrauma.LuaCs.LuaUserDataService.MakeFieldAccessible(IUUD, fieldName) end

---@private
---@param type System.Type
---@param methodName System.String
---@param types? System.Type[]
---@return System.Reflection.MethodInfo
function CS.Barotrauma.LuaCs.LuaUserDataService.FindMethodRecursively(type, methodName, types) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param methodName System.String
---@param parameters? System.String[]
function CS.Barotrauma.LuaCs.LuaUserDataService.MakeMethodAccessible(IUUD, methodName, parameters) end

---@private
---@param type System.Type
---@param propertyName System.String
---@return System.Reflection.PropertyInfo
function CS.Barotrauma.LuaCs.LuaUserDataService.FindPropertyRecursively(type, propertyName) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param propertyName System.String
function CS.Barotrauma.LuaCs.LuaUserDataService.MakePropertyAccessible(IUUD, propertyName) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param methodName System.String
---@param __function__ System.Object
function CS.Barotrauma.LuaCs.LuaUserDataService.AddMethod(IUUD, methodName, __function__) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param fieldName System.String
---@param value MoonSharp.Interpreter.DynValue
function CS.Barotrauma.LuaCs.LuaUserDataService.AddField(IUUD, fieldName, value) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param memberName System.String
function CS.Barotrauma.LuaCs.LuaUserDataService.RemoveMember(IUUD, memberName) end

---@param obj System.Object
---@param memberName System.String
---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaUserDataService.HasMember(obj, memberName) end

---@param scriptObject MoonSharp.Interpreter.DynValue
---@param desiredTypeDescriptor MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@return MoonSharp.Interpreter.DynValue
function CS.Barotrauma.LuaCs.LuaUserDataService.CreateUserDataFromDescriptor(scriptObject, desiredTypeDescriptor) end

---@param scriptObject MoonSharp.Interpreter.DynValue
---@param desiredType System.Type
---@return MoonSharp.Interpreter.DynValue
function CS.Barotrauma.LuaCs.LuaUserDataService.CreateUserDataFromType(scriptObject, desiredType) end

---@param userdata System.Object
function CS.Barotrauma.LuaCs.LuaUserDataService.AddCallMetaTable(userdata) end

function CS.Barotrauma.LuaCs.LuaUserDataService.Dispose() end

---@return FluentResults.Result
function CS.Barotrauma.LuaCs.LuaUserDataService.Reset() end

do
---@param pluginManagementService Barotrauma.LuaCs.IPluginManagementService
---@return Barotrauma.LuaCs.LuaUserDataService
local __ctor = function(pluginManagementService) end
CS.Barotrauma.LuaCs.LuaUserDataService = __ctor
CS.Barotrauma.LuaCs.LuaUserDataService.__new = __ctor
end

---@class Barotrauma.LuaCs.ISafeLuaUserDataService: Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.ISafeLuaUserDataService = {}

---@param typeName System.String
---@return System.Boolean
function CS.Barotrauma.LuaCs.ISafeLuaUserDataService.IsAllowed(typeName) end

---@param typeName System.String
---@return MoonSharp.Interpreter.Interop.IUserDataDescriptor
function CS.Barotrauma.LuaCs.ISafeLuaUserDataService.RegisterType(typeName) end

---@param typeName System.String
function CS.Barotrauma.LuaCs.ISafeLuaUserDataService.RegisterExtensionType(typeName) end

---@param typeName System.String
---@return System.Boolean
function CS.Barotrauma.LuaCs.ISafeLuaUserDataService.IsRegistered(typeName) end

---@param typeName System.String
---@param deleteHistory? System.Boolean
function CS.Barotrauma.LuaCs.ISafeLuaUserDataService.UnregisterType(typeName, deleteHistory) end

---@param typeName System.String
---@return System.Object
function CS.Barotrauma.LuaCs.ISafeLuaUserDataService.CreateStatic(typeName) end

---@param obj System.Object
---@param typeName System.String
---@return System.Boolean
function CS.Barotrauma.LuaCs.ISafeLuaUserDataService.IsTargetType(obj, typeName) end

---@param obj System.Object
---@return System.String
function CS.Barotrauma.LuaCs.ISafeLuaUserDataService.TypeOf(obj) end

---@param typeName System.String
---@return System.Object
function CS.Barotrauma.LuaCs.ISafeLuaUserDataService.CreateEnumTable(typeName) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param fieldName System.String
function CS.Barotrauma.LuaCs.ISafeLuaUserDataService.MakeFieldAccessible(IUUD, fieldName) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param methodName System.String
---@param parameters? System.String[]
function CS.Barotrauma.LuaCs.ISafeLuaUserDataService.MakeMethodAccessible(IUUD, methodName, parameters) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param propertyName System.String
function CS.Barotrauma.LuaCs.ISafeLuaUserDataService.MakePropertyAccessible(IUUD, propertyName) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param methodName System.String
---@param __function__ System.Object
function CS.Barotrauma.LuaCs.ISafeLuaUserDataService.AddMethod(IUUD, methodName, __function__) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param fieldName System.String
---@param value MoonSharp.Interpreter.DynValue
function CS.Barotrauma.LuaCs.ISafeLuaUserDataService.AddField(IUUD, fieldName, value) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param memberName System.String
function CS.Barotrauma.LuaCs.ISafeLuaUserDataService.RemoveMember(IUUD, memberName) end

---@param obj System.Object
---@param memberName System.String
---@return System.Boolean
function CS.Barotrauma.LuaCs.ISafeLuaUserDataService.HasMember(obj, memberName) end

---@param scriptObject MoonSharp.Interpreter.DynValue
---@param desiredTypeDescriptor MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@return MoonSharp.Interpreter.DynValue
function CS.Barotrauma.LuaCs.ISafeLuaUserDataService.CreateUserDataFromDescriptor(scriptObject, desiredTypeDescriptor) end

---@param scriptObject MoonSharp.Interpreter.DynValue
---@param desiredType System.Type
---@return MoonSharp.Interpreter.DynValue
function CS.Barotrauma.LuaCs.ISafeLuaUserDataService.CreateUserDataFromType(scriptObject, desiredType) end

---@param userdata System.Object
function CS.Barotrauma.LuaCs.ISafeLuaUserDataService.AddCallMetaTable(userdata) end


---@class Barotrauma.LuaCs.SafeLuaUserDataService: System.Object, Barotrauma.LuaCs.ISafeLuaUserDataService, Barotrauma.LuaCs.IService, System.IDisposable, { [System.String]: MoonSharp.Interpreter.Interop.IUserDataDescriptor }
---@field IsDisposed System.Boolean
---@field private _userDataService Barotrauma.LuaCs.ILuaUserDataService
CS.Barotrauma.LuaCs.SafeLuaUserDataService = {}

---@param key System.String
---@return MoonSharp.Interpreter.Interop.IUserDataDescriptor
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.get_Item(key) end

---@private
---@param typeName System.String
---@return System.Boolean
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.CanBeRegistered(typeName) end

---@private
---@param typeName System.String
---@return System.Boolean
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.CanBeReRegistered(typeName) end

---@param typeName System.String
---@return System.Boolean
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.IsAllowed(typeName) end

---@private
---@param typeName System.String
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.CheckAllowed(typeName) end

---@param typeName System.String
---@return MoonSharp.Interpreter.Interop.IUserDataDescriptor
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.RegisterType(typeName) end

---@param typeName System.String
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.RegisterExtensionType(typeName) end

---@param typeName System.String
---@return System.Boolean
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.IsRegistered(typeName) end

---@param typeName System.String
---@param deleteHistory? System.Boolean
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.UnregisterType(typeName, deleteHistory) end

---@param typeName System.String
---@return System.Object
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.CreateStatic(typeName) end

---@param obj System.Object
---@param typeName System.String
---@return System.Boolean
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.IsTargetType(obj, typeName) end

---@param obj System.Object
---@return System.String
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.TypeOf(obj) end

---@param typeName System.String
---@return System.Object
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.CreateEnumTable(typeName) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param fieldName System.String
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.MakeFieldAccessible(IUUD, fieldName) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param methodName System.String
---@param parameters? System.String[]
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.MakeMethodAccessible(IUUD, methodName, parameters) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param propertyName System.String
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.MakePropertyAccessible(IUUD, propertyName) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param methodName System.String
---@param __function__ System.Object
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.AddMethod(IUUD, methodName, __function__) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param fieldName System.String
---@param value MoonSharp.Interpreter.DynValue
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.AddField(IUUD, fieldName, value) end

---@param IUUD MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@param memberName System.String
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.RemoveMember(IUUD, memberName) end

---@param obj System.Object
---@param memberName System.String
---@return System.Boolean
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.HasMember(obj, memberName) end

---@param scriptObject MoonSharp.Interpreter.DynValue
---@param desiredTypeDescriptor MoonSharp.Interpreter.Interop.IUserDataDescriptor
---@return MoonSharp.Interpreter.DynValue
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.CreateUserDataFromDescriptor(scriptObject, desiredTypeDescriptor) end

---@param scriptObject MoonSharp.Interpreter.DynValue
---@param desiredType System.Type
---@return MoonSharp.Interpreter.DynValue
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.CreateUserDataFromType(scriptObject, desiredType) end

---@param userdata System.Object
function CS.Barotrauma.LuaCs.SafeLuaUserDataService.AddCallMetaTable(userdata) end

function CS.Barotrauma.LuaCs.SafeLuaUserDataService.Dispose() end

do
---@param userDataService Barotrauma.LuaCs.ILuaUserDataService
---@return Barotrauma.LuaCs.SafeLuaUserDataService
local __ctor = function(userDataService) end
CS.Barotrauma.LuaCs.SafeLuaUserDataService = __ctor
CS.Barotrauma.LuaCs.SafeLuaUserDataService.__new = __ctor
end

---@class Barotrauma.LuaCs.NetworkingService.NetId: System.ValueType
---@field private _value System.String
CS.Barotrauma.LuaCs.NetworkingService.NetId = {}

---@param message Barotrauma.Networking.IWriteMessage
---@param netId Barotrauma.LuaCs.NetworkingService.NetId
function CS.Barotrauma.LuaCs.NetworkingService.NetId.Write(message, netId) end

---@param message Barotrauma.Networking.IReadMessage
---@return Barotrauma.LuaCs.NetworkingService.NetId
function CS.Barotrauma.LuaCs.NetworkingService.NetId.Read(message) end

do
---@param netId System.String
---@return Barotrauma.LuaCs.NetworkingService.NetId
local __ctor = function(netId) end
CS.Barotrauma.LuaCs.NetworkingService.NetId = __ctor
CS.Barotrauma.LuaCs.NetworkingService.NetId.__new = __ctor
end

---@enum Barotrauma.LuaCs.NetworkingService.ClientToServer
CS.Barotrauma.LuaCs.NetworkingService.ClientToServer = {
    NetMessageInternalId = 0,
    NetMessageNetId = 1,
    RequestSingleNetId = 2,
    RequestSync = 3
}

---@enum Barotrauma.LuaCs.NetworkingService.ServerToClient
CS.Barotrauma.LuaCs.NetworkingService.ServerToClient = {
    NetMessageInternalId = 0,
    NetMessageNetId = 1,
    ReceiveNetIds = 2
}

---@class Barotrauma.LuaCs.AsyncReaderWriterLock.LockToken: System.Object, System.IDisposable
---@field private _action fun()
CS.Barotrauma.LuaCs.AsyncReaderWriterLock.LockToken = {}

function CS.Barotrauma.LuaCs.AsyncReaderWriterLock.LockToken.Dispose() end

do
---@param action fun()
---@return Barotrauma.LuaCs.AsyncReaderWriterLock.LockToken
local __ctor = function(action) end
CS.Barotrauma.LuaCs.AsyncReaderWriterLock.LockToken = __ctor
CS.Barotrauma.LuaCs.AsyncReaderWriterLock.LockToken.__new = __ctor
end

---@class Barotrauma.LuaCs.AssemblyLoader.Factory: System.Object, Barotrauma.LuaCs.IAssemblyLoaderService.IFactory, Barotrauma.LuaCs.IService, System.IDisposable
---@field IsDisposed System.Boolean
CS.Barotrauma.LuaCs.AssemblyLoader.Factory = {}

---@param initData Barotrauma.LuaCs.IAssemblyLoaderService.LoaderInitData
---@return Barotrauma.LuaCs.IAssemblyLoaderService
function CS.Barotrauma.LuaCs.AssemblyLoader.Factory.CreateInstance(initData) end

function CS.Barotrauma.LuaCs.AssemblyLoader.Factory.Dispose() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.AssemblyLoader.Factory.get_IsDisposed() end

do
---@return Barotrauma.LuaCs.AssemblyLoader.Factory
local __ctor = function() end
CS.Barotrauma.LuaCs.AssemblyLoader.Factory = __ctor
CS.Barotrauma.LuaCs.AssemblyLoader.Factory.__new = __ctor
end

---@class Barotrauma.LuaCs.AssemblyLoader.AssemblyData: System.ValueType
---@field Assembly System.Reflection.Assembly
---@field AssemblyImageOrPath userdata
---@field AssemblyReference Microsoft.CodeAnalysis.MetadataReference
---@field Types userdata | { [System.Int32]: System.Type } | (fun(): System.Type)
---@field TypesByName userdata | { [System.String]: System.Type } | (fun(): userdata)
CS.Barotrauma.LuaCs.AssemblyLoader.AssemblyData = {}

do
---@overload fun(assembly: System.Reflection.Assembly, path: System.String): Barotrauma.LuaCs.AssemblyLoader.AssemblyData
---@param assembly System.Reflection.Assembly
---@param assemblyImage System.Byte[]
---@return Barotrauma.LuaCs.AssemblyLoader.AssemblyData
local __ctor = function(assembly, assemblyImage) end
CS.Barotrauma.LuaCs.AssemblyLoader.AssemblyData = __ctor
CS.Barotrauma.LuaCs.AssemblyLoader.AssemblyData.__new = __ctor
end

---@class Barotrauma.LuaCs.AssemblyLoader.AssemblyOrStringKey: System.ValueType
---@field Assembly System.Reflection.Assembly
---@field AssemblyName System.String
---@field HashCode System.Int32
CS.Barotrauma.LuaCs.AssemblyLoader.AssemblyOrStringKey = {}

---@param x Barotrauma.LuaCs.AssemblyLoader.AssemblyOrStringKey
---@param y Barotrauma.LuaCs.AssemblyLoader.AssemblyOrStringKey
---@return System.Boolean
function CS.Barotrauma.LuaCs.AssemblyLoader.AssemblyOrStringKey.Equals(x, y) end

---@param obj Barotrauma.LuaCs.AssemblyLoader.AssemblyOrStringKey
---@return System.Int32
function CS.Barotrauma.LuaCs.AssemblyLoader.AssemblyOrStringKey.GetHashCode(obj) end

---@overload fun(name: System.String): Barotrauma.LuaCs.AssemblyLoader.AssemblyOrStringKey
---@param assembly System.Reflection.Assembly
---@return Barotrauma.LuaCs.AssemblyLoader.AssemblyOrStringKey
function CS.Barotrauma.LuaCs.AssemblyLoader.AssemblyOrStringKey.op_Implicit(assembly) end

do
---@overload fun(assemblyName: System.String): Barotrauma.LuaCs.AssemblyLoader.AssemblyOrStringKey
---@param assembly System.Reflection.Assembly
---@return Barotrauma.LuaCs.AssemblyLoader.AssemblyOrStringKey
local __ctor = function(assembly) end
CS.Barotrauma.LuaCs.AssemblyLoader.AssemblyOrStringKey = __ctor
CS.Barotrauma.LuaCs.AssemblyLoader.AssemblyOrStringKey.__new = __ctor
end

---@class Barotrauma.LuaCs.IAssemblyLoaderService.IFactory: Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.IAssemblyLoaderService.IFactory = {}

---@param initData Barotrauma.LuaCs.IAssemblyLoaderService.LoaderInitData
---@return Barotrauma.LuaCs.IAssemblyLoaderService
function CS.Barotrauma.LuaCs.IAssemblyLoaderService.IFactory.CreateInstance(initData) end


---@class Barotrauma.LuaCs.IAssemblyLoaderService.LoaderInitData: System.Object
---@field InstanceId System.Guid
---@field Name System.String
---@field IsReferenceMode System.Boolean
---@field OwnerPackage Barotrauma.ContentPackage
---@field OnUnload fun(obj: Barotrauma.LuaCs.IAssemblyLoaderService)
---@field OnResolvingManaged fun(arg1: Barotrauma.LuaCs.IAssemblyLoaderService, arg2: System.Reflection.AssemblyName): System.Reflection.Assembly
---@field OnResolvingUnmanagedDll fun(arg1: System.Reflection.Assembly, arg2: System.String): System.IntPtr
CS.Barotrauma.LuaCs.IAssemblyLoaderService.LoaderInitData = {}

do
---@overload fun(original: Barotrauma.LuaCs.IAssemblyLoaderService.LoaderInitData): Barotrauma.LuaCs.IAssemblyLoaderService.LoaderInitData
---@param InstanceId System.Guid
---@param Name System.String
---@param IsReferenceMode System.Boolean
---@param OwnerPackage Barotrauma.ContentPackage
---@param OnUnload fun(obj: Barotrauma.LuaCs.IAssemblyLoaderService)
---@param OnResolvingManaged fun(arg1: Barotrauma.LuaCs.IAssemblyLoaderService, arg2: System.Reflection.AssemblyName): System.Reflection.Assembly
---@param OnResolvingUnmanagedDll fun(arg1: System.Reflection.Assembly, arg2: System.String): System.IntPtr
---@return Barotrauma.LuaCs.IAssemblyLoaderService.LoaderInitData
local __ctor = function(InstanceId, Name, IsReferenceMode, OwnerPackage, OnUnload, OnResolvingManaged, OnResolvingUnmanagedDll) end
CS.Barotrauma.LuaCs.IAssemblyLoaderService.LoaderInitData = __ctor
CS.Barotrauma.LuaCs.IAssemblyLoaderService.LoaderInitData.__new = __ctor
end

---@class Barotrauma.LuaCs.EventService.TypeStringKey: System.ValueType
---@field Type System.Type
---@field TypeName System.String
---@field HashCode System.Int32
CS.Barotrauma.LuaCs.EventService.TypeStringKey = {}

---@param x Barotrauma.LuaCs.EventService.TypeStringKey
---@param y Barotrauma.LuaCs.EventService.TypeStringKey
---@return System.Boolean
function CS.Barotrauma.LuaCs.EventService.TypeStringKey.Equals(x, y) end

---@param obj Barotrauma.LuaCs.EventService.TypeStringKey
---@return System.Int32
function CS.Barotrauma.LuaCs.EventService.TypeStringKey.GetHashCode(obj) end

---@overload fun(typeName: System.String): Barotrauma.LuaCs.EventService.TypeStringKey
---@param type System.Type
---@return Barotrauma.LuaCs.EventService.TypeStringKey
function CS.Barotrauma.LuaCs.EventService.TypeStringKey.op_Implicit(type) end

do
---@overload fun(typeName: System.String): Barotrauma.LuaCs.EventService.TypeStringKey
---@param type System.Type
---@return Barotrauma.LuaCs.EventService.TypeStringKey
local __ctor = function(type) end
CS.Barotrauma.LuaCs.EventService.TypeStringKey = __ctor
CS.Barotrauma.LuaCs.EventService.TypeStringKey.__new = __ctor
end

---@class Barotrauma.LuaCs.HarmonyEventPatchesService.Patch_StartGame_End: System.Object
CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Patch_StartGame_End = {}

---@private
---@return System.Reflection.MethodBase
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Patch_StartGame_End.TargetMethod() end

---@private
---@param __instance System.Object
---@param __result System.Boolean
function CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Patch_StartGame_End.Postfix(__instance, __result) end

do
---@return Barotrauma.LuaCs.HarmonyEventPatchesService.Patch_StartGame_End
local __ctor = function() end
CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Patch_StartGame_End = __ctor
CS.Barotrauma.LuaCs.HarmonyEventPatchesService.Patch_StartGame_End.__new = __ctor
end

---@class Barotrauma.LuaCs.DefaultLuaRegistrar.SteamIDMemberDescriptor: System.Object, MoonSharp.Interpreter.Interop.BasicDescriptors.IMemberDescriptor
---@field IsStatic System.Boolean
---@field Name System.String
---@field MemberAccess MoonSharp.Interpreter.Interop.BasicDescriptors.MemberDescriptorAccess
CS.Barotrauma.LuaCs.DefaultLuaRegistrar.SteamIDMemberDescriptor = {}

---@return System.Boolean
function CS.Barotrauma.LuaCs.DefaultLuaRegistrar.SteamIDMemberDescriptor.get_IsStatic() end

---@return System.String
function CS.Barotrauma.LuaCs.DefaultLuaRegistrar.SteamIDMemberDescriptor.get_Name() end

---@return MoonSharp.Interpreter.Interop.BasicDescriptors.MemberDescriptorAccess
function CS.Barotrauma.LuaCs.DefaultLuaRegistrar.SteamIDMemberDescriptor.get_MemberAccess() end

---@param script MoonSharp.Interpreter.Script
---@param obj System.Object
---@return MoonSharp.Interpreter.DynValue
function CS.Barotrauma.LuaCs.DefaultLuaRegistrar.SteamIDMemberDescriptor.GetValue(script, obj) end

---@param script MoonSharp.Interpreter.Script
---@param obj System.Object
---@param value MoonSharp.Interpreter.DynValue
function CS.Barotrauma.LuaCs.DefaultLuaRegistrar.SteamIDMemberDescriptor.SetValue(script, obj, value) end

do
---@return Barotrauma.LuaCs.DefaultLuaRegistrar.SteamIDMemberDescriptor
local __ctor = function() end
CS.Barotrauma.LuaCs.DefaultLuaRegistrar.SteamIDMemberDescriptor = __ctor
CS.Barotrauma.LuaCs.DefaultLuaRegistrar.SteamIDMemberDescriptor.__new = __ctor
end

---@class Barotrauma.LuaCs.LuaPatcherService.LuaCsHookCallback: System.Object
---@field name System.String
---@field hookName System.String
---@field func fun(...: System.Object): System.Object
CS.Barotrauma.LuaCs.LuaPatcherService.LuaCsHookCallback = {}

do
---@param name System.String
---@param hookName System.String
---@param func fun(...: System.Object): System.Object
---@return Barotrauma.LuaCs.LuaPatcherService.LuaCsHookCallback
local __ctor = function(name, hookName, func) end
CS.Barotrauma.LuaCs.LuaPatcherService.LuaCsHookCallback = __ctor
CS.Barotrauma.LuaCs.LuaPatcherService.LuaCsHookCallback.__new = __ctor
end

---@class Barotrauma.LuaCs.LuaPatcherService.LuaCsPatch: System.Object
---@field Identifier System.String
---@field PatchFunc fun(instance: System.Object, ptable: Barotrauma.LuaCs.LuaPatcherService.ParameterTable): MoonSharp.Interpreter.DynValue
CS.Barotrauma.LuaCs.LuaPatcherService.LuaCsPatch = {}

do
---@return Barotrauma.LuaCs.LuaPatcherService.LuaCsPatch
local __ctor = function() end
CS.Barotrauma.LuaCs.LuaPatcherService.LuaCsPatch = __ctor
CS.Barotrauma.LuaCs.LuaPatcherService.LuaCsPatch.__new = __ctor
end

---@class Barotrauma.LuaCs.LuaPatcherService.PatchedMethod: System.Object
---@field HarmonyPrefixMethod System.Reflection.MethodInfo
---@field HarmonyPostfixMethod System.Reflection.MethodInfo
---@field Prefixes userdata | { [System.String]: Barotrauma.LuaCs.LuaPatcherService.LuaCsPatch } | (fun(): userdata)
---@field Postfixes userdata | { [System.String]: Barotrauma.LuaCs.LuaPatcherService.LuaCsPatch } | (fun(): userdata)
CS.Barotrauma.LuaCs.LuaPatcherService.PatchedMethod = {}

---@return userdata | (fun(): Barotrauma.LuaCs.LuaPatcherService.LuaCsPatch)
function CS.Barotrauma.LuaCs.LuaPatcherService.PatchedMethod.GetPrefixEnumerator() end

---@return userdata | (fun(): Barotrauma.LuaCs.LuaPatcherService.LuaCsPatch)
function CS.Barotrauma.LuaCs.LuaPatcherService.PatchedMethod.GetPostfixEnumerator() end

do
---@param harmonyPrefix System.Reflection.MethodInfo
---@param harmonyPostfix System.Reflection.MethodInfo
---@return Barotrauma.LuaCs.LuaPatcherService.PatchedMethod
local __ctor = function(harmonyPrefix, harmonyPostfix) end
CS.Barotrauma.LuaCs.LuaPatcherService.PatchedMethod = __ctor
CS.Barotrauma.LuaCs.LuaPatcherService.PatchedMethod.__new = __ctor
end

---@class Barotrauma.LuaCs.LuaPatcherService.ParameterTable: System.Object, { [System.String]: System.Object }
---@field OriginalReturnValue System.Object
---@field ReturnValue System.Object
---@field PreventExecution System.Boolean
---@field OriginalParameters userdata | { [System.String]: System.Object } | (fun(): userdata)
---@field ModifiedParameters userdata | { [System.String]: System.Object } | (fun(): userdata)
---@field private parameters userdata | { [System.String]: System.Object } | (fun(): userdata)
---@field private returnValueModified System.Boolean
---@field private returnValue System.Object
CS.Barotrauma.LuaCs.LuaPatcherService.ParameterTable = {}

---@param paramName System.String
---@return System.Object
function CS.Barotrauma.LuaCs.LuaPatcherService.ParameterTable.get_Item(paramName) end

---@param paramName System.String
---@param value System.Object
function CS.Barotrauma.LuaCs.LuaPatcherService.ParameterTable.set_Item(paramName, value) end

---@return System.Object
function CS.Barotrauma.LuaCs.LuaPatcherService.ParameterTable.get_ReturnValue() end

---@param value System.Object
function CS.Barotrauma.LuaCs.LuaPatcherService.ParameterTable.set_ReturnValue(value) end

---@return userdata | { [System.String]: System.Object } | (fun(): userdata)
function CS.Barotrauma.LuaCs.LuaPatcherService.ParameterTable.get_OriginalParameters() end

do
---@param dict userdata | { [System.String]: System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.LuaPatcherService.ParameterTable
local __ctor = function(dict) end
CS.Barotrauma.LuaCs.LuaPatcherService.ParameterTable = __ctor
CS.Barotrauma.LuaCs.LuaPatcherService.ParameterTable.__new = __ctor
end

---@class Barotrauma.LuaCs.LuaPatcherService.MethodKey: System.ValueType
---@field ModuleHandle System.ModuleHandle
---@field MetadataToken System.Int32
CS.Barotrauma.LuaCs.LuaPatcherService.MethodKey = {}

---@overload fun(other: Barotrauma.LuaCs.LuaPatcherService.MethodKey): System.Boolean
---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaPatcherService.MethodKey.Equals(obj) end

---@return System.Int32
function CS.Barotrauma.LuaCs.LuaPatcherService.MethodKey.GetHashCode() end

---@param left Barotrauma.LuaCs.LuaPatcherService.MethodKey
---@param right Barotrauma.LuaCs.LuaPatcherService.MethodKey
---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaPatcherService.MethodKey.op_Equality(left, right) end

---@param left Barotrauma.LuaCs.LuaPatcherService.MethodKey
---@param right Barotrauma.LuaCs.LuaPatcherService.MethodKey
---@return System.Boolean
function CS.Barotrauma.LuaCs.LuaPatcherService.MethodKey.op_Inequality(left, right) end

---@param method System.Reflection.MethodBase
---@return Barotrauma.LuaCs.LuaPatcherService.MethodKey
function CS.Barotrauma.LuaCs.LuaPatcherService.MethodKey.Create(method) end


---@class Barotrauma.LuaCs.LuaPatcherService.DynamicParameterMapping: System.Object
---@field ParameterName System.String
---@field OriginalMethodParamType System.Type
---@field HarmonyPatchParamType System.Type
CS.Barotrauma.LuaCs.LuaPatcherService.DynamicParameterMapping = {}

do
---@param name System.String
---@param originalMethodParamType System.Type
---@param harmonyPatchParamType System.Type
---@return Barotrauma.LuaCs.LuaPatcherService.DynamicParameterMapping
local __ctor = function(name, originalMethodParamType, harmonyPatchParamType) end
CS.Barotrauma.LuaCs.LuaPatcherService.DynamicParameterMapping = __ctor
CS.Barotrauma.LuaCs.LuaPatcherService.DynamicParameterMapping.__new = __ctor
end


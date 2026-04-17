---@meta
---Auto-generated from DedicatedServer
---Namespace: Barotrauma.LuaCs.Data

---@class Barotrauma.LuaCs.Data.ModConfigInfo: System.Object, Barotrauma.LuaCs.Data.IModConfigInfo, Barotrauma.LuaCs.Data.IAssembliesResourcesInfo, Barotrauma.LuaCs.Data.ILuaScriptsResourcesInfo, Barotrauma.LuaCs.Data.IConfigsResourcesInfo
---@field Package Barotrauma.ContentPackage
---@field Assemblies userdata | { [System.Int32]: Barotrauma.LuaCs.Data.IAssemblyResourceInfo } | (fun(): Barotrauma.LuaCs.Data.IAssemblyResourceInfo)
---@field LuaScripts userdata | { [System.Int32]: Barotrauma.LuaCs.Data.ILuaScriptResourceInfo } | (fun(): Barotrauma.LuaCs.Data.ILuaScriptResourceInfo)
---@field Configs userdata | { [System.Int32]: Barotrauma.LuaCs.Data.IConfigResourceInfo } | (fun(): Barotrauma.LuaCs.Data.IConfigResourceInfo)
CS.Barotrauma.LuaCs.Data.ModConfigInfo = {}

do
---@protected
---@overload fun(): Barotrauma.LuaCs.Data.ModConfigInfo
---@param original Barotrauma.LuaCs.Data.ModConfigInfo
---@return Barotrauma.LuaCs.Data.ModConfigInfo
local __ctor = function(original) end
CS.Barotrauma.LuaCs.Data.ModConfigInfo = __ctor
CS.Barotrauma.LuaCs.Data.ModConfigInfo.__new = __ctor
end

---@class Barotrauma.LuaCs.Data.BaseResourceInfo: System.Object, Barotrauma.LuaCs.Data.IBaseResourceInfo, Barotrauma.LuaCs.Data.IResourceInfo, Barotrauma.LuaCs.Data.IPlatformInfo, Barotrauma.LuaCs.Data.IDataInfo, Barotrauma.LuaCs.Data.IDependencyInfo
---@field SupportedPlatforms Barotrauma.LuaCs.Data.Platform
---@field SupportedTargets Barotrauma.LuaCs.Data.Target
---@field LoadPriority System.Int32
---@field FilePaths userdata | { [System.Int32]: Barotrauma.ContentPath } | (fun(): Barotrauma.ContentPath)
---@field Optional System.Boolean
---@field InternalName System.String
---@field OwnerPackage Barotrauma.ContentPackage
---@field RequiredPackages userdata | { [System.Int32]: Barotrauma.Identifier } | (fun(): Barotrauma.Identifier)
---@field IncompatiblePackages userdata | { [System.Int32]: Barotrauma.Identifier } | (fun(): Barotrauma.Identifier)
CS.Barotrauma.LuaCs.Data.BaseResourceInfo = {}

do
---@protected
---@overload fun(): Barotrauma.LuaCs.Data.BaseResourceInfo
---@param original Barotrauma.LuaCs.Data.BaseResourceInfo
---@return Barotrauma.LuaCs.Data.BaseResourceInfo
local __ctor = function(original) end
CS.Barotrauma.LuaCs.Data.BaseResourceInfo = __ctor
CS.Barotrauma.LuaCs.Data.BaseResourceInfo.__new = __ctor
end

---@class Barotrauma.LuaCs.Data.AssemblyResourceInfo: Barotrauma.LuaCs.Data.BaseResourceInfo, Barotrauma.LuaCs.Data.IBaseResourceInfo, Barotrauma.LuaCs.Data.IResourceInfo, Barotrauma.LuaCs.Data.IPlatformInfo, Barotrauma.LuaCs.Data.IDataInfo, Barotrauma.LuaCs.Data.IDependencyInfo, Barotrauma.LuaCs.Data.IAssemblyResourceInfo
---@field FriendlyName System.String
---@field IsScript System.Boolean
---@field UseInternalAccessName System.Boolean
---@field IsReferenceModeOnly System.Boolean
CS.Barotrauma.LuaCs.Data.AssemblyResourceInfo = {}

do
---@protected
---@overload fun(): Barotrauma.LuaCs.Data.AssemblyResourceInfo
---@param original Barotrauma.LuaCs.Data.AssemblyResourceInfo
---@return Barotrauma.LuaCs.Data.AssemblyResourceInfo
local __ctor = function(original) end
CS.Barotrauma.LuaCs.Data.AssemblyResourceInfo = __ctor
CS.Barotrauma.LuaCs.Data.AssemblyResourceInfo.__new = __ctor
end

---@class Barotrauma.LuaCs.Data.ConfigResourceInfo: Barotrauma.LuaCs.Data.BaseResourceInfo, Barotrauma.LuaCs.Data.IBaseResourceInfo, Barotrauma.LuaCs.Data.IResourceInfo, Barotrauma.LuaCs.Data.IPlatformInfo, Barotrauma.LuaCs.Data.IDataInfo, Barotrauma.LuaCs.Data.IDependencyInfo, Barotrauma.LuaCs.Data.IConfigResourceInfo
CS.Barotrauma.LuaCs.Data.ConfigResourceInfo = {}

do
---@protected
---@overload fun(): Barotrauma.LuaCs.Data.ConfigResourceInfo
---@param original Barotrauma.LuaCs.Data.ConfigResourceInfo
---@return Barotrauma.LuaCs.Data.ConfigResourceInfo
local __ctor = function(original) end
CS.Barotrauma.LuaCs.Data.ConfigResourceInfo = __ctor
CS.Barotrauma.LuaCs.Data.ConfigResourceInfo.__new = __ctor
end

---@class Barotrauma.LuaCs.Data.LuaScriptsResourceInfo: Barotrauma.LuaCs.Data.BaseResourceInfo, Barotrauma.LuaCs.Data.IBaseResourceInfo, Barotrauma.LuaCs.Data.IResourceInfo, Barotrauma.LuaCs.Data.IPlatformInfo, Barotrauma.LuaCs.Data.IDataInfo, Barotrauma.LuaCs.Data.IDependencyInfo, Barotrauma.LuaCs.Data.ILuaScriptResourceInfo
---@field IsAutorun System.Boolean
CS.Barotrauma.LuaCs.Data.LuaScriptsResourceInfo = {}

do
---@protected
---@overload fun(): Barotrauma.LuaCs.Data.LuaScriptsResourceInfo
---@param original Barotrauma.LuaCs.Data.LuaScriptsResourceInfo
---@return Barotrauma.LuaCs.Data.LuaScriptsResourceInfo
local __ctor = function(original) end
CS.Barotrauma.LuaCs.Data.LuaScriptsResourceInfo = __ctor
CS.Barotrauma.LuaCs.Data.LuaScriptsResourceInfo.__new = __ctor
end

---@class Barotrauma.LuaCs.Data.ConfigInfo: System.Object, Barotrauma.LuaCs.Data.IConfigInfo, Barotrauma.LuaCs.Data.IDataInfo
---@field InternalName System.String
---@field OwnerPackage Barotrauma.ContentPackage
---@field DataType System.String
---@field Element System.Xml.Linq.XElement
---@field EditableStates Barotrauma.RunState
---@field NetSync Barotrauma.LuaCs.NetSync
CS.Barotrauma.LuaCs.Data.ConfigInfo = {}

do
---@protected
---@overload fun(): Barotrauma.LuaCs.Data.ConfigInfo
---@param original Barotrauma.LuaCs.Data.ConfigInfo
---@return Barotrauma.LuaCs.Data.ConfigInfo
local __ctor = function(original) end
CS.Barotrauma.LuaCs.Data.ConfigInfo = __ctor
CS.Barotrauma.LuaCs.Data.ConfigInfo.__new = __ctor
end

---@class Barotrauma.LuaCs.Data.ConfigProfileInfo: System.Object, Barotrauma.LuaCs.Data.IConfigProfileInfo, Barotrauma.LuaCs.Data.IDataInfo
---@field InternalName System.String
---@field OwnerPackage Barotrauma.ContentPackage
---@field ProfileValues userdata | { [System.Int32]: userdata } | (fun(): userdata)
CS.Barotrauma.LuaCs.Data.ConfigProfileInfo = {}

do
---@protected
---@overload fun(): Barotrauma.LuaCs.Data.ConfigProfileInfo
---@param original Barotrauma.LuaCs.Data.ConfigProfileInfo
---@return Barotrauma.LuaCs.Data.ConfigProfileInfo
local __ctor = function(original) end
CS.Barotrauma.LuaCs.Data.ConfigProfileInfo = __ctor
CS.Barotrauma.LuaCs.Data.ConfigProfileInfo.__new = __ctor
end

---@enum Barotrauma.LuaCs.Data.Platform
CS.Barotrauma.LuaCs.Data.Platform = {
    Linux = 1,
    OSX = 2,
    Windows = 4,
    Any = 7
}

---@enum Barotrauma.LuaCs.Data.Target
CS.Barotrauma.LuaCs.Data.Target = {
    Client = 1,
    Server = 2,
    Any = 3
}

---@class Barotrauma.LuaCs.Data.IDependencyInfo
---@field RequiredPackages userdata | { [System.Int32]: Barotrauma.Identifier } | (fun(): Barotrauma.Identifier)
---@field IncompatiblePackages userdata | { [System.Int32]: Barotrauma.Identifier } | (fun(): Barotrauma.Identifier)
CS.Barotrauma.LuaCs.Data.IDependencyInfo = {}

---@return userdata | { [System.Int32]: Barotrauma.Identifier } | (fun(): Barotrauma.Identifier)
function CS.Barotrauma.LuaCs.Data.IDependencyInfo.get_RequiredPackages() end

---@return userdata | { [System.Int32]: Barotrauma.Identifier } | (fun(): Barotrauma.Identifier)
function CS.Barotrauma.LuaCs.Data.IDependencyInfo.get_IncompatiblePackages() end


---@class Barotrauma.LuaCs.Data.IPlatformInfo
---@field SupportedPlatforms Barotrauma.LuaCs.Data.Platform
---@field SupportedTargets Barotrauma.LuaCs.Data.Target
CS.Barotrauma.LuaCs.Data.IPlatformInfo = {}

---@return Barotrauma.LuaCs.Data.Platform
function CS.Barotrauma.LuaCs.Data.IPlatformInfo.get_SupportedPlatforms() end

---@return Barotrauma.LuaCs.Data.Target
function CS.Barotrauma.LuaCs.Data.IPlatformInfo.get_SupportedTargets() end


---@class Barotrauma.LuaCs.Data.IResourceInfo: Barotrauma.LuaCs.Data.IPlatformInfo
---@field LoadPriority System.Int32
---@field FilePaths userdata | { [System.Int32]: Barotrauma.ContentPath } | (fun(): Barotrauma.ContentPath)
---@field Optional System.Boolean
CS.Barotrauma.LuaCs.Data.IResourceInfo = {}

---@return System.Int32
function CS.Barotrauma.LuaCs.Data.IResourceInfo.get_LoadPriority() end

---@return userdata | { [System.Int32]: Barotrauma.ContentPath } | (fun(): Barotrauma.ContentPath)
function CS.Barotrauma.LuaCs.Data.IResourceInfo.get_FilePaths() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.IResourceInfo.get_Optional() end


---@class Barotrauma.LuaCs.Data.IConfigInfo: Barotrauma.LuaCs.Data.IDataInfo
---@field DataType System.String
---@field Element System.Xml.Linq.XElement
---@field EditableStates Barotrauma.RunState
---@field NetSync Barotrauma.LuaCs.NetSync
CS.Barotrauma.LuaCs.Data.IConfigInfo = {}

---@return System.String
function CS.Barotrauma.LuaCs.Data.IConfigInfo.get_DataType() end

---@return System.Xml.Linq.XElement
function CS.Barotrauma.LuaCs.Data.IConfigInfo.get_Element() end

---@return Barotrauma.RunState
function CS.Barotrauma.LuaCs.Data.IConfigInfo.get_EditableStates() end

---@return Barotrauma.LuaCs.NetSync
function CS.Barotrauma.LuaCs.Data.IConfigInfo.get_NetSync() end


---@class Barotrauma.LuaCs.Data.IConfigProfileInfo: Barotrauma.LuaCs.Data.IDataInfo
---@field ProfileValues userdata | { [System.Int32]: userdata } | (fun(): userdata)
CS.Barotrauma.LuaCs.Data.IConfigProfileInfo = {}

---@return userdata | { [System.Int32]: userdata } | (fun(): userdata)
function CS.Barotrauma.LuaCs.Data.IConfigProfileInfo.get_ProfileValues() end


---@class Barotrauma.LuaCs.Data.IDataInfo
---@field InternalName System.String
---@field OwnerPackage Barotrauma.ContentPackage
CS.Barotrauma.LuaCs.Data.IDataInfo = {}

---@return System.String
function CS.Barotrauma.LuaCs.Data.IDataInfo.get_InternalName() end

---@return Barotrauma.ContentPackage
function CS.Barotrauma.LuaCs.Data.IDataInfo.get_OwnerPackage() end

---@private
---@overload fun(other: Barotrauma.LuaCs.Data.IDataInfo): System.Boolean
---@param x Barotrauma.LuaCs.Data.IDataInfo
---@param y Barotrauma.LuaCs.Data.IDataInfo
---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.IDataInfo.Equals(x, y) end

---@private
---@param obj Barotrauma.LuaCs.Data.IDataInfo
---@return System.Int32
function CS.Barotrauma.LuaCs.Data.IDataInfo.GetHashCode(obj) end


---@class Barotrauma.LuaCs.Data.IModConfigInfo: Barotrauma.LuaCs.Data.IAssembliesResourcesInfo, Barotrauma.LuaCs.Data.ILuaScriptsResourcesInfo, Barotrauma.LuaCs.Data.IConfigsResourcesInfo
---@field Package Barotrauma.ContentPackage
CS.Barotrauma.LuaCs.Data.IModConfigInfo = {}

---@return Barotrauma.ContentPackage
function CS.Barotrauma.LuaCs.Data.IModConfigInfo.get_Package() end


---@class Barotrauma.LuaCs.Data.ResourceParserInfo: System.Object
---@field Owner Barotrauma.ContentPackage
---@field Element System.Xml.Linq.XElement
---@field Required userdata | { [System.Int32]: Barotrauma.Identifier } | (fun(): Barotrauma.Identifier)
---@field Incompatible userdata | { [System.Int32]: Barotrauma.Identifier } | (fun(): Barotrauma.Identifier)
CS.Barotrauma.LuaCs.Data.ResourceParserInfo = {}

do
---@overload fun(original: Barotrauma.LuaCs.Data.ResourceParserInfo): Barotrauma.LuaCs.Data.ResourceParserInfo
---@param Owner Barotrauma.ContentPackage
---@param Element System.Xml.Linq.XElement
---@param Required userdata | { [System.Int32]: Barotrauma.Identifier } | (fun(): Barotrauma.Identifier)
---@param Incompatible userdata | { [System.Int32]: Barotrauma.Identifier } | (fun(): Barotrauma.Identifier)
---@return Barotrauma.LuaCs.Data.ResourceParserInfo
local __ctor = function(Owner, Element, Required, Incompatible) end
CS.Barotrauma.LuaCs.Data.ResourceParserInfo = __ctor
CS.Barotrauma.LuaCs.Data.ResourceParserInfo.__new = __ctor
end

---@class Barotrauma.LuaCs.Data.IBaseResourceInfo: Barotrauma.LuaCs.Data.IResourceInfo, Barotrauma.LuaCs.Data.IPlatformInfo, Barotrauma.LuaCs.Data.IDataInfo, Barotrauma.LuaCs.Data.IDependencyInfo
CS.Barotrauma.LuaCs.Data.IBaseResourceInfo = {}


---@class Barotrauma.LuaCs.Data.IConfigResourceInfo: Barotrauma.LuaCs.Data.IBaseResourceInfo, Barotrauma.LuaCs.Data.IResourceInfo, Barotrauma.LuaCs.Data.IPlatformInfo, Barotrauma.LuaCs.Data.IDataInfo, Barotrauma.LuaCs.Data.IDependencyInfo
CS.Barotrauma.LuaCs.Data.IConfigResourceInfo = {}


---@class Barotrauma.LuaCs.Data.ILuaScriptResourceInfo: Barotrauma.LuaCs.Data.IBaseResourceInfo, Barotrauma.LuaCs.Data.IResourceInfo, Barotrauma.LuaCs.Data.IPlatformInfo, Barotrauma.LuaCs.Data.IDataInfo, Barotrauma.LuaCs.Data.IDependencyInfo
---@field IsAutorun System.Boolean
CS.Barotrauma.LuaCs.Data.ILuaScriptResourceInfo = {}

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.ILuaScriptResourceInfo.get_IsAutorun() end


---@class Barotrauma.LuaCs.Data.IAssemblyResourceInfo: Barotrauma.LuaCs.Data.IBaseResourceInfo, Barotrauma.LuaCs.Data.IResourceInfo, Barotrauma.LuaCs.Data.IPlatformInfo, Barotrauma.LuaCs.Data.IDataInfo, Barotrauma.LuaCs.Data.IDependencyInfo
---@field FriendlyName System.String
---@field IsScript System.Boolean
---@field UseInternalAccessName System.Boolean
---@field IsReferenceModeOnly System.Boolean
CS.Barotrauma.LuaCs.Data.IAssemblyResourceInfo = {}

---@return System.String
function CS.Barotrauma.LuaCs.Data.IAssemblyResourceInfo.get_FriendlyName() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.IAssemblyResourceInfo.get_IsScript() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.IAssemblyResourceInfo.get_UseInternalAccessName() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.IAssemblyResourceInfo.get_IsReferenceModeOnly() end


---@class Barotrauma.LuaCs.Data.IAssembliesResourcesInfo
---@field Assemblies userdata | { [System.Int32]: Barotrauma.LuaCs.Data.IAssemblyResourceInfo } | (fun(): Barotrauma.LuaCs.Data.IAssemblyResourceInfo)
CS.Barotrauma.LuaCs.Data.IAssembliesResourcesInfo = {}

---@return userdata | { [System.Int32]: Barotrauma.LuaCs.Data.IAssemblyResourceInfo } | (fun(): Barotrauma.LuaCs.Data.IAssemblyResourceInfo)
function CS.Barotrauma.LuaCs.Data.IAssembliesResourcesInfo.get_Assemblies() end


---@class Barotrauma.LuaCs.Data.ILuaScriptsResourcesInfo
---@field LuaScripts userdata | { [System.Int32]: Barotrauma.LuaCs.Data.ILuaScriptResourceInfo } | (fun(): Barotrauma.LuaCs.Data.ILuaScriptResourceInfo)
CS.Barotrauma.LuaCs.Data.ILuaScriptsResourcesInfo = {}

---@return userdata | { [System.Int32]: Barotrauma.LuaCs.Data.ILuaScriptResourceInfo } | (fun(): Barotrauma.LuaCs.Data.ILuaScriptResourceInfo)
function CS.Barotrauma.LuaCs.Data.ILuaScriptsResourcesInfo.get_LuaScripts() end


---@class Barotrauma.LuaCs.Data.IConfigsResourcesInfo
---@field Configs userdata | { [System.Int32]: Barotrauma.LuaCs.Data.IConfigResourceInfo } | (fun(): Barotrauma.LuaCs.Data.IConfigResourceInfo)
CS.Barotrauma.LuaCs.Data.IConfigsResourcesInfo = {}

---@return userdata | { [System.Int32]: Barotrauma.LuaCs.Data.IConfigResourceInfo } | (fun(): Barotrauma.LuaCs.Data.IConfigResourceInfo)
function CS.Barotrauma.LuaCs.Data.IConfigsResourcesInfo.get_Configs() end


---@class Barotrauma.LuaCs.Data.IRunConfig
---@field UseNonPublicizedAssemblies System.Boolean
---@field AutoGenerated System.Boolean
---@field UseInternalAssemblyName System.Boolean
---@field Client System.String
---@field Server System.String
CS.Barotrauma.LuaCs.Data.IRunConfig = {}

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.IRunConfig.get_UseNonPublicizedAssemblies() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.IRunConfig.get_AutoGenerated() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.IRunConfig.get_UseInternalAssemblyName() end

---@return System.String
function CS.Barotrauma.LuaCs.Data.IRunConfig.get_Client() end

---@return System.String
function CS.Barotrauma.LuaCs.Data.IRunConfig.get_Server() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.IRunConfig.IsForced() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.IRunConfig.IsStandard() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.IRunConfig.IsForcedOrStandard() end


---@class Barotrauma.LuaCs.Data.ISettingBase: Barotrauma.LuaCs.Data.IDataInfo, System.IDisposable
---@field IsDisposed System.Boolean
CS.Barotrauma.LuaCs.Data.ISettingBase = {}

---@return Barotrauma.LuaCs.Data.IConfigInfo
function CS.Barotrauma.LuaCs.Data.ISettingBase.GetConfigInfo() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.ISettingBase.get_IsDisposed() end

---@return System.Type
function CS.Barotrauma.LuaCs.Data.ISettingBase.GetValueType() end

---@return System.String
function CS.Barotrauma.LuaCs.Data.ISettingBase.GetStringValue() end

---@return System.String
function CS.Barotrauma.LuaCs.Data.ISettingBase.GetDefaultStringValue() end

---@param value userdata
---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.ISettingBase.TrySetValue(value) end

---@return userdata
function CS.Barotrauma.LuaCs.Data.ISettingBase.GetSerializableValue() end


---@class Barotrauma.LuaCs.Data.IStorageServiceConfig: Barotrauma.LuaCs.IService, System.IDisposable
---@field LocalModsDirectory System.String
---@field WorkshopModsDirectory System.String
---@field GameSettingsConfigPath System.String
---@field LocalDataSavePath System.String
---@field LocalDataPathRegex System.String
---@field LocalPackageDataPath System.String
CS.Barotrauma.LuaCs.Data.IStorageServiceConfig = {}

---@return System.String
function CS.Barotrauma.LuaCs.Data.IStorageServiceConfig.get_LocalModsDirectory() end

---@return System.String
function CS.Barotrauma.LuaCs.Data.IStorageServiceConfig.get_WorkshopModsDirectory() end

---@return System.String
function CS.Barotrauma.LuaCs.Data.IStorageServiceConfig.get_GameSettingsConfigPath() end

---@return System.String
function CS.Barotrauma.LuaCs.Data.IStorageServiceConfig.get_LocalDataSavePath() end

---@return System.String
function CS.Barotrauma.LuaCs.Data.IStorageServiceConfig.get_LocalDataPathRegex() end

---@return System.String
function CS.Barotrauma.LuaCs.Data.IStorageServiceConfig.get_LocalPackageDataPath() end


---@class Barotrauma.LuaCs.Data.StorageServiceConfig: System.Object, Barotrauma.LuaCs.Data.IStorageServiceConfig, Barotrauma.LuaCs.IService, System.IDisposable
---@field LocalModsDirectory System.String
---@field WorkshopModsDirectory System.String
---@field GameSettingsConfigPath System.String
---@field LocalDataSavePath System.String
---@field LocalDataPathRegex System.String
---@field RunLocation System.String
---@field LocalPackageDataPath System.String
---@field IsDisposed System.Boolean
---@field private ExecutionLocation System.String
CS.Barotrauma.LuaCs.Data.StorageServiceConfig = {}

---@return System.String
function CS.Barotrauma.LuaCs.Data.StorageServiceConfig.get_LocalDataSavePath() end

---@return System.String
function CS.Barotrauma.LuaCs.Data.StorageServiceConfig.get_LocalDataPathRegex() end

---@return System.String
function CS.Barotrauma.LuaCs.Data.StorageServiceConfig.get_RunLocation() end

---@return System.String
function CS.Barotrauma.LuaCs.Data.StorageServiceConfig.get_LocalPackageDataPath() end

function CS.Barotrauma.LuaCs.Data.StorageServiceConfig.Dispose() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.StorageServiceConfig.get_IsDisposed() end

do
---@protected
---@overload fun(): Barotrauma.LuaCs.Data.StorageServiceConfig
---@overload fun(): Barotrauma.LuaCs.Data.StorageServiceConfig
---@param original Barotrauma.LuaCs.Data.StorageServiceConfig
---@return Barotrauma.LuaCs.Data.StorageServiceConfig
local __ctor = function(original) end
CS.Barotrauma.LuaCs.Data.StorageServiceConfig = __ctor
CS.Barotrauma.LuaCs.Data.StorageServiceConfig.__new = __ctor
end

---@class Barotrauma.LuaCs.Data.IConfigServiceConfig: Barotrauma.LuaCs.IService, System.IDisposable
---@field LocalConfigPathPartial System.String
---@field FileNamePattern System.String
CS.Barotrauma.LuaCs.Data.IConfigServiceConfig = {}

---@return System.String
function CS.Barotrauma.LuaCs.Data.IConfigServiceConfig.get_LocalConfigPathPartial() end

---@return System.String
function CS.Barotrauma.LuaCs.Data.IConfigServiceConfig.get_FileNamePattern() end


---@class Barotrauma.LuaCs.Data.ConfigServiceConfig: System.Object, Barotrauma.LuaCs.Data.IConfigServiceConfig, Barotrauma.LuaCs.IService, System.IDisposable
---@field LocalConfigPathPartial System.String
---@field FileNamePattern System.String
---@field IsDisposed System.Boolean
CS.Barotrauma.LuaCs.Data.ConfigServiceConfig = {}

---@return System.String
function CS.Barotrauma.LuaCs.Data.ConfigServiceConfig.get_LocalConfigPathPartial() end

---@return System.String
function CS.Barotrauma.LuaCs.Data.ConfigServiceConfig.get_FileNamePattern() end

function CS.Barotrauma.LuaCs.Data.ConfigServiceConfig.Dispose() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.ConfigServiceConfig.get_IsDisposed() end

do
---@protected
---@overload fun(): Barotrauma.LuaCs.Data.ConfigServiceConfig
---@param original Barotrauma.LuaCs.Data.ConfigServiceConfig
---@return Barotrauma.LuaCs.Data.ConfigServiceConfig
local __ctor = function(original) end
CS.Barotrauma.LuaCs.Data.ConfigServiceConfig = __ctor
CS.Barotrauma.LuaCs.Data.ConfigServiceConfig.__new = __ctor
end

---@class Barotrauma.LuaCs.Data.ILuaScriptServicesConfig: Barotrauma.LuaCs.IService, System.IDisposable
---@field SafeLuaIOEnabled System.Boolean
---@field UseCaching System.Boolean
CS.Barotrauma.LuaCs.Data.ILuaScriptServicesConfig = {}

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.ILuaScriptServicesConfig.get_SafeLuaIOEnabled() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.ILuaScriptServicesConfig.get_UseCaching() end


---@class Barotrauma.LuaCs.Data.LuaScriptServicesConfig: System.Object, Barotrauma.LuaCs.Data.ILuaScriptServicesConfig, Barotrauma.LuaCs.IService, System.IDisposable
---@field SafeLuaIOEnabled System.Boolean
---@field UseCaching System.Boolean
---@field IsDisposed System.Boolean
CS.Barotrauma.LuaCs.Data.LuaScriptServicesConfig = {}

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.LuaScriptServicesConfig.get_SafeLuaIOEnabled() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.LuaScriptServicesConfig.get_UseCaching() end

function CS.Barotrauma.LuaCs.Data.LuaScriptServicesConfig.Dispose() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.LuaScriptServicesConfig.get_IsDisposed() end

do
---@protected
---@overload fun(): Barotrauma.LuaCs.Data.LuaScriptServicesConfig
---@param original Barotrauma.LuaCs.Data.LuaScriptServicesConfig
---@return Barotrauma.LuaCs.Data.LuaScriptServicesConfig
local __ctor = function(original) end
CS.Barotrauma.LuaCs.Data.LuaScriptServicesConfig = __ctor
CS.Barotrauma.LuaCs.Data.LuaScriptServicesConfig.__new = __ctor
end

---@class Barotrauma.LuaCs.Data.IPackageManagementServiceConfig: Barotrauma.LuaCs.IService, System.IDisposable
---@field IsCsEnabled System.Boolean
CS.Barotrauma.LuaCs.Data.IPackageManagementServiceConfig = {}

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.IPackageManagementServiceConfig.get_IsCsEnabled() end


---@class Barotrauma.LuaCs.Data.PackageManagementServiceConfig: System.Object, Barotrauma.LuaCs.Data.IPackageManagementServiceConfig, Barotrauma.LuaCs.IService, System.IDisposable
---@field IsDisposed System.Boolean
---@field IsCsEnabled System.Boolean
CS.Barotrauma.LuaCs.Data.PackageManagementServiceConfig = {}

function CS.Barotrauma.LuaCs.Data.PackageManagementServiceConfig.Dispose() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.PackageManagementServiceConfig.get_IsDisposed() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.PackageManagementServiceConfig.get_IsCsEnabled() end

do
---@return Barotrauma.LuaCs.Data.PackageManagementServiceConfig
local __ctor = function() end
CS.Barotrauma.LuaCs.Data.PackageManagementServiceConfig = __ctor
CS.Barotrauma.LuaCs.Data.PackageManagementServiceConfig.__new = __ctor
end

---@class Barotrauma.LuaCs.Data.SettingBase: System.Object, Barotrauma.LuaCs.Data.ISettingBase, Barotrauma.LuaCs.Data.IDataInfo, System.IDisposable
---@field protected ConfigInfo Barotrauma.LuaCs.Data.IConfigInfo
---@field InternalName System.String
---@field OwnerPackage Barotrauma.ContentPackage
---@field IsDisposed System.Boolean
---@field private _isDisposed System.Int32
CS.Barotrauma.LuaCs.Data.SettingBase = {}

---@return System.String
function CS.Barotrauma.LuaCs.Data.SettingBase.get_InternalName() end

---@return Barotrauma.ContentPackage
function CS.Barotrauma.LuaCs.Data.SettingBase.get_OwnerPackage() end

---@return Barotrauma.LuaCs.Data.IConfigInfo
function CS.Barotrauma.LuaCs.Data.SettingBase.GetConfigInfo() end

---@param other Barotrauma.LuaCs.Data.ISettingBase
---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingBase.Equals(other) end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingBase.get_IsDisposed() end

---@private
---@param value System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingBase.set_IsDisposed(value) end

---@protected
function CS.Barotrauma.LuaCs.Data.SettingBase.OnDispose() end

function CS.Barotrauma.LuaCs.Data.SettingBase.Dispose() end

---@return System.Type
function CS.Barotrauma.LuaCs.Data.SettingBase.GetValueType() end

---@return System.String
function CS.Barotrauma.LuaCs.Data.SettingBase.GetStringValue() end

---@return System.String
function CS.Barotrauma.LuaCs.Data.SettingBase.GetDefaultStringValue() end

---@param value userdata
---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingBase.TrySetValue(value) end

---@return userdata
function CS.Barotrauma.LuaCs.Data.SettingBase.GetSerializableValue() end

do
---@protected
---@param configInfo Barotrauma.LuaCs.Data.IConfigInfo
---@return Barotrauma.LuaCs.Data.SettingBase
local __ctor = function(configInfo) end
CS.Barotrauma.LuaCs.Data.SettingBase = __ctor
CS.Barotrauma.LuaCs.Data.SettingBase.__new = __ctor
end

---@class Barotrauma.LuaCs.Data.SettingRangeFloat: userdata, Barotrauma.LuaCs.Data.ISettingBase, Barotrauma.LuaCs.Data.IDataInfo, System.IDisposable, Barotrauma.LuaCs.INetworkSyncVar
---@field MinValue System.Single
---@field MaxValue System.Single
---@field IncrementalSteps System.Int32
---@field Value System.Single
---@field DefaultValue System.Single
---@field InstanceId System.Guid
---@field SyncType Barotrauma.LuaCs.NetSync
---@field WritePermissions Barotrauma.Networking.ClientPermissions
---@field protected ConfigInfo Barotrauma.LuaCs.Data.IConfigInfo
---@field InternalName System.String
---@field OwnerPackage Barotrauma.ContentPackage
---@field IsDisposed System.Boolean
---@field protected ValueChangePredicate fun(arg: userdata): System.Boolean
---@field protected NetworkingService Barotrauma.LuaCs.IEntityNetworkingService
---@field private _isDisposed System.Int32
CS.Barotrauma.LuaCs.Data.SettingRangeFloat = {}

---@overload fun(value: System.Single): System.Boolean
---@overload fun(value: userdata): System.Boolean
---@overload fun(value: userdata): System.Boolean
---@param value System.Single
---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.TrySetValue(value) end

---@private
---@param value System.Single
---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.TrySetValueInternal(value) end

---@private
---@param value System.Single
---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.TrySetValueNetwork(value) end

---@protected
---@overload fun()
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.OnDispose() end

---@overload fun(): System.Type
---@return System.Type
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.GetValueType() end

---@overload fun(): System.String
---@return System.String
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.GetStringValue() end

---@overload fun(): System.String
---@return System.String
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.GetDefaultStringValue() end

---@overload fun(): userdata
---@return userdata
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.GetSerializableValue() end

---@return System.Guid
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.get_InstanceId() end

---@param networkingService Barotrauma.LuaCs.IEntityNetworkingService
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.SetNetworkOwner(networkingService) end

---@return Barotrauma.LuaCs.NetSync
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.get_SyncType() end

---@return Barotrauma.Networking.ClientPermissions
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.get_WritePermissions() end

---@param message Barotrauma.Networking.IReadMessage
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.ReadNetMessage(message) end

---@param message Barotrauma.Networking.IWriteMessage
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.WriteNetMessage(message) end

---@return System.String
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.get_InternalName() end

---@return Barotrauma.ContentPackage
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.get_OwnerPackage() end

---@return Barotrauma.LuaCs.Data.IConfigInfo
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.GetConfigInfo() end

---@overload fun(obj: System.Object): System.Boolean
---@param other Barotrauma.LuaCs.Data.ISettingBase
---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.Equals(other) end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.get_IsDisposed() end

---@private
---@param value System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.set_IsDisposed(value) end

function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.Dispose() end

---@return System.Type
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.GetType() end

---@protected
---@return System.Object
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.MemberwiseClone() end

---@protected
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.Finalize() end

---@return System.String
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.ToString() end

---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.Equals(objA, objB) end

---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.ReferenceEquals(objA, objB) end

---@return System.Int32
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.GetHashCode() end

do
---@param configInfo Barotrauma.LuaCs.Data.IConfigInfo
---@param valueChangePredicate fun(arg: userdata): System.Boolean
---@return Barotrauma.LuaCs.Data.SettingRangeFloat
local __ctor = function(configInfo, valueChangePredicate) end
CS.Barotrauma.LuaCs.Data.SettingRangeFloat = __ctor
CS.Barotrauma.LuaCs.Data.SettingRangeFloat.__new = __ctor
end

---@class Barotrauma.LuaCs.Data.SettingRangeInt: userdata, Barotrauma.LuaCs.Data.ISettingBase, Barotrauma.LuaCs.Data.IDataInfo, System.IDisposable, Barotrauma.LuaCs.INetworkSyncVar
---@field MinValue System.Int32
---@field MaxValue System.Int32
---@field IncrementalSteps System.Int32
---@field Value System.Int32
---@field DefaultValue System.Int32
---@field InstanceId System.Guid
---@field SyncType Barotrauma.LuaCs.NetSync
---@field WritePermissions Barotrauma.Networking.ClientPermissions
---@field protected ConfigInfo Barotrauma.LuaCs.Data.IConfigInfo
---@field InternalName System.String
---@field OwnerPackage Barotrauma.ContentPackage
---@field IsDisposed System.Boolean
---@field protected ValueChangePredicate fun(arg: userdata): System.Boolean
---@field protected NetworkingService Barotrauma.LuaCs.IEntityNetworkingService
---@field private _isDisposed System.Int32
CS.Barotrauma.LuaCs.Data.SettingRangeInt = {}

---@overload fun(value: System.Int32): System.Boolean
---@overload fun(value: userdata): System.Boolean
---@overload fun(value: userdata): System.Boolean
---@param value System.Int32
---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.TrySetValue(value) end

---@private
---@param value System.Int32
---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.TrySetValueInternal(value) end

---@private
---@param value System.Int32
---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.TrySetValueNetwork(value) end

---@protected
---@overload fun()
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.OnDispose() end

---@overload fun(): System.Type
---@return System.Type
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.GetValueType() end

---@overload fun(): System.String
---@return System.String
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.GetStringValue() end

---@overload fun(): System.String
---@return System.String
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.GetDefaultStringValue() end

---@overload fun(): userdata
---@return userdata
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.GetSerializableValue() end

---@return System.Guid
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.get_InstanceId() end

---@param networkingService Barotrauma.LuaCs.IEntityNetworkingService
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.SetNetworkOwner(networkingService) end

---@return Barotrauma.LuaCs.NetSync
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.get_SyncType() end

---@return Barotrauma.Networking.ClientPermissions
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.get_WritePermissions() end

---@param message Barotrauma.Networking.IReadMessage
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.ReadNetMessage(message) end

---@param message Barotrauma.Networking.IWriteMessage
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.WriteNetMessage(message) end

---@return System.String
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.get_InternalName() end

---@return Barotrauma.ContentPackage
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.get_OwnerPackage() end

---@return Barotrauma.LuaCs.Data.IConfigInfo
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.GetConfigInfo() end

---@overload fun(obj: System.Object): System.Boolean
---@param other Barotrauma.LuaCs.Data.ISettingBase
---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.Equals(other) end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.get_IsDisposed() end

---@private
---@param value System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.set_IsDisposed(value) end

function CS.Barotrauma.LuaCs.Data.SettingRangeInt.Dispose() end

---@return System.Type
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.GetType() end

---@protected
---@return System.Object
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.MemberwiseClone() end

---@protected
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.Finalize() end

---@return System.String
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.ToString() end

---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.Equals(objA, objB) end

---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.ReferenceEquals(objA, objB) end

---@return System.Int32
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.GetHashCode() end

do
---@param configInfo Barotrauma.LuaCs.Data.IConfigInfo
---@param valueChangePredicate fun(arg: userdata): System.Boolean
---@return Barotrauma.LuaCs.Data.SettingRangeInt
local __ctor = function(configInfo, valueChangePredicate) end
CS.Barotrauma.LuaCs.Data.SettingRangeInt = __ctor
CS.Barotrauma.LuaCs.Data.SettingRangeInt.__new = __ctor
end

---@class Barotrauma.LuaCs.Data.ISettingsRegistrationProvider: Barotrauma.LuaCs.IService, System.IDisposable
CS.Barotrauma.LuaCs.Data.ISettingsRegistrationProvider = {}

---@param configService Barotrauma.LuaCs.IConfigService
---@param valueChangePredicate fun(arg: userdata): System.Boolean
function CS.Barotrauma.LuaCs.Data.ISettingsRegistrationProvider.RegisterTypeProviders(configService, valueChangePredicate) end


---@class Barotrauma.LuaCs.Data.SettingsEntryRegistrar: System.Object, Barotrauma.LuaCs.Data.ISettingsRegistrationProvider, Barotrauma.LuaCs.IService, System.IDisposable
---@field IsDisposed System.Boolean
---@field private _infoProvider Barotrauma.LuaCs.ILuaCsInfoProvider
---@field private _isDisposed System.Int32
CS.Barotrauma.LuaCs.Data.SettingsEntryRegistrar = {}

---@param configService Barotrauma.LuaCs.IConfigService
---@param valueChangePredicate fun(arg: userdata): System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingsEntryRegistrar.RegisterTypeProviders(configService, valueChangePredicate) end

---@private
---@param info Barotrauma.LuaCs.Data.IConfigInfo
---@param newValue userdata
---@param valueChangePredicate fun(arg: userdata): System.Boolean
---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingsEntryRegistrar.IsValueChangeAllowed(info, newValue, valueChangePredicate) end

function CS.Barotrauma.LuaCs.Data.SettingsEntryRegistrar.Dispose() end

---@return System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingsEntryRegistrar.get_IsDisposed() end

---@private
---@param value System.Boolean
function CS.Barotrauma.LuaCs.Data.SettingsEntryRegistrar.set_IsDisposed(value) end

do
---@param infoProvider Barotrauma.LuaCs.ILuaCsInfoProvider
---@return Barotrauma.LuaCs.Data.SettingsEntryRegistrar
local __ctor = function(infoProvider) end
CS.Barotrauma.LuaCs.Data.SettingsEntryRegistrar = __ctor
CS.Barotrauma.LuaCs.Data.SettingsEntryRegistrar.__new = __ctor
end

---@class Barotrauma.LuaCs.Data.SettingRangeFloat.RangeFactory: System.Object
CS.Barotrauma.LuaCs.Data.SettingRangeFloat.RangeFactory = {}

---@param configInfo Barotrauma.LuaCs.Data.IConfigInfo
---@param valueChangePredicate fun(arg: userdata): System.Boolean
---@return Barotrauma.LuaCs.Data.SettingRangeFloat
function CS.Barotrauma.LuaCs.Data.SettingRangeFloat.RangeFactory.CreateInstance(configInfo, valueChangePredicate) end

do
---@return Barotrauma.LuaCs.Data.SettingRangeFloat.RangeFactory
local __ctor = function() end
CS.Barotrauma.LuaCs.Data.SettingRangeFloat.RangeFactory = __ctor
CS.Barotrauma.LuaCs.Data.SettingRangeFloat.RangeFactory.__new = __ctor
end

---@class Barotrauma.LuaCs.Data.SettingRangeInt.RangeFactory: System.Object
CS.Barotrauma.LuaCs.Data.SettingRangeInt.RangeFactory = {}

---@param configInfo Barotrauma.LuaCs.Data.IConfigInfo
---@param valueChangePredicate fun(arg: userdata): System.Boolean
---@return Barotrauma.LuaCs.Data.SettingRangeInt
function CS.Barotrauma.LuaCs.Data.SettingRangeInt.RangeFactory.CreateInstance(configInfo, valueChangePredicate) end

do
---@return Barotrauma.LuaCs.Data.SettingRangeInt.RangeFactory
local __ctor = function() end
CS.Barotrauma.LuaCs.Data.SettingRangeInt.RangeFactory = __ctor
CS.Barotrauma.LuaCs.Data.SettingRangeInt.RangeFactory.__new = __ctor
end


---@meta

-- Server:
LocalizedString = CS.Barotrauma.LocalizedString
LimitLString = CS.Barotrauma.LimitLString
WrappedLString = CS.Barotrauma.WrappedLString
AddedPunctuationLString = CS.Barotrauma.AddedPunctuationLString
CapitalizeLString = CS.Barotrauma.CapitalizeLString
ConcatLString = CS.Barotrauma.ConcatLString
FallbackLString = CS.Barotrauma.FallbackLString
FormattedLString = CS.Barotrauma.FormattedLString
InputTypeLString = CS.Barotrauma.InputTypeLString
JoinLString = CS.Barotrauma.JoinLString
LowerLString = CS.Barotrauma.LowerLString
RawLString = CS.Barotrauma.RawLString
ReplaceLString = CS.Barotrauma.ReplaceLString
ServerMsgLString = CS.Barotrauma.ServerMsgLString
SplitLString = CS.Barotrauma.SplitLString
TagLString = CS.Barotrauma.TagLString
TrimLString = CS.Barotrauma.TrimLString
UpperLString = CS.Barotrauma.UpperLString
StripRichTagsLString = CS.Barotrauma.StripRichTagsLString

-- Shared:

---@param o any
function printerror(o) end

---@param ... string
function setmodulepaths(...) end

Logger = CS.Barotrauma.LuaCsLogger
LuaUserData = CS.Barotrauma.LuaUserData
Game = CS.Barotrauma.LuaGame
Hook = CS.Barotrauma.LuaCsHook
ModStore = CS.Barotrauma.LuaCsSetup.LuaCsModStore
Timer = CS.Barotrauma.LuaCsTimer
File = CS.Barotrauma.LuaCsFile
Networking = CS.Barotrauma.LuaCsNetworking
Steam = CS.Barotrauma.LuaCsSteam
PerformanceCounter = CS.Barotrauma.LuaCsPerformanceCounter
LuaCsConfig = CS.Barotrauma.LuaCsConfig
LuaCsConfig = CS.Barotrauma.LuaCsConfig

---@type integer
ExecutionNumber = nil

---@type boolean
CSActive = nil

SERVER = false
CLIENT = true

---@type table<string, MoonSharp.Interpreter.Interop.IUserDataDescriptor>
Descriptors = {}

SByte = CS.Barotrauma.LuaSByte
Byte = CS.Barotrauma.LuaByte
Int16 = CS.Barotrauma.LuaInt16
UInt16 = CS.Barotrauma.LuaUInt16
Int32 = CS.Barotrauma.LuaInt32
UInt32 = CS.Barotrauma.LuaUInt32
Int64 = CS.Barotrauma.LuaInt64
UInt64 = CS.Barotrauma.LuaUInt64
Single = CS.Barotrauma.LuaSingle
Double = CS.Barotrauma.LuaDouble

Float = CS.Barotrauma.LuaSingle
Short = CS.Barotrauma.LuaInt16
UShort = CS.Barotrauma.LuaUInt16

SpawnType = CS.Barotrauma.SpawnType
ChatMessageType = CS.Barotrauma.Networking.ChatMessageType
ServerLog_MessageType = CS.Barotrauma.Networking.ServerLog.MessageType
ServerLogMessageType = CS.Barotrauma.Networking.ServerLog.MessageType
PositionType = CS.Barotrauma.Level.PositionType
InvSlotType = CS.Barotrauma.InvSlotType
LimbType = CS.Barotrauma.LimbType
ActionType = CS.Barotrauma.ActionType
AbilityEffectType = CS.Barotrauma.AbilityEffectType
StatTypes = CS.Barotrauma.StatTypes
AbilityFlags = CS.Barotrauma.AbilityFlags
DeliveryMethod = CS.Barotrauma.Networking.DeliveryMethod
ClientPacketHeader = CS.Barotrauma.Networking.ClientPacketHeader
ServerPacketHeader = CS.Barotrauma.Networking.ServerPacketHeader
RandSync = CS.Barotrauma.Rand.RandSync
DisconnectReason = CS.Barotrauma.Networking.DisconnectReason
CombatMode = CS.Barotrauma.AIObjectiveCombat.CombatMode
CauseOfDeathType = CS.Barotrauma.CauseOfDeathType
CharacterTeamType = CS.Barotrauma.CharacterTeamType
ClientPermissions = CS.Barotrauma.Networking.ClientPermissions
OrderCategory = CS.Barotrauma.OrderCategory
WearableType = CS.Barotrauma.WearableType
NumberType = CS.Barotrauma.NumberType
ChatMode = CS.Barotrauma.ChatMode
CharacterType = CS.Barotrauma.CharacterType
VoteType = CS.Barotrauma.Networking.VoteType
CanEnterSubmarine = CS.Barotrauma.CanEnterSubmarine
InputType = CS.Barotrauma.InputType

EventPrefab = CS.Barotrauma.EventPrefab
TraitorEventPrefab = CS.Barotrauma.TraitorEventPrefab
TraitorEvent = CS.Barotrauma.TraitorEvent
EventSet = CS.Barotrauma.EventSet
EventManagerSettings = CS.Barotrauma.EventManagerSettings

NetConfig = CS.Barotrauma.Networking.NetConfig
NetworkConnection = CS.Barotrauma.Networking.NetworkConnection
Inventory = CS.Barotrauma.Inventory
CharacterInventory = CS.Barotrauma.CharacterInventory
ItemInventory = CS.Barotrauma.ItemInventory
ContentPackageManager = CS.Barotrauma.ContentPackageManager
GameSettings = CS.Barotrauma.GameSettings
RichString = CS.Barotrauma.RichString
Identifier = CS.Barotrauma.Identifier
LanguageIdentifier = CS.Barotrauma.LanguageIdentifier
ContentPackage = CS.Barotrauma.ContentPackage
WayPoint = CS.Barotrauma.WayPoint
Submarine = CS.Barotrauma.Submarine
Client = CS.Barotrauma.Networking.Client
Character = CS.Barotrauma.Character
CharacterHealth = CS.Barotrauma.CharacterHealth
CharacterPrefab = CS.Barotrauma.CharacterPrefab
CharacterInfo = CS.Barotrauma.CharacterInfo
CharacterInfoPrefab = CS.Barotrauma.CharacterInfoPrefab
Item = CS.Barotrauma.Item
MapEntityPrefab = CS.Barotrauma.MapEntityPrefab
ItemPrefab = CS.Barotrauma.ItemPrefab
TalentTree = CS.Barotrauma.TalentTree
TalentPrefab = CS.Barotrauma.TalentPrefab
FactionPrefab = CS.Barotrauma.FactionPrefab
MissionPrefab = CS.Barotrauma.MissionPrefab
Mission = CS.Barotrauma.Mission
Level = CS.Barotrauma.Level
LevelGenerationParams = CS.Barotrauma.LevelGenerationParams
OutpostGenerationParams = CS.Barotrauma.OutpostGenerationParams
RuinGenerationParams = CS.Barotrauma.RuinGeneration.RuinGenerationParams
Job = CS.Barotrauma.Job
JobPrefab = CS.Barotrauma.JobPrefab
JobVariant = CS.Barotrauma.JobVariant
AfflictionPrefab = CS.Barotrauma.AfflictionPrefab
SkillSettings = CS.Barotrauma.SkillSettings
ChatMessage = CS.Barotrauma.Networking.ChatMessage
Structure = CS.Barotrauma.Structure
Hull = CS.Barotrauma.Hull
Gap = CS.Barotrauma.Gap
Signal = CS.Barotrauma.Items.Components.Signal
SubmarineInfo = CS.Barotrauma.SubmarineInfo
Entity = CS.Barotrauma.Entity
MapEntity = CS.Barotrauma.MapEntity
Physics = CS.Barotrauma.Physics
FireSource = CS.Barotrauma.FireSource
TextManager = CS.Barotrauma.TextManager
NetEntityEvent = CS.Barotrauma.Networking.NetEntityEvent
Screen = CS.Barotrauma.Screen
AttackResult = CS.Barotrauma.AttackResult
TempClient = CS.Barotrauma.Networking.TempClient
DecalManager = CS.Barotrauma.DecalManager
AutoItemPlacer = CS.Barotrauma.AutoItemPlacer
PropertyConditional = CS.Barotrauma.PropertyConditional
StatusEffect = CS.Barotrauma.StatusEffect
OutpostGenerator = CS.Barotrauma.OutpostGenerator
DamageModifier = CS.Barotrauma.DamageModifier
TraitorManager = CS.Barotrauma.TraitorManager

Md5Hash = CS.Barotrauma.Md5Hash
ContentXElement = CS.Barotrauma.ContentXElement
ContentPath = CS.Barotrauma.ContentPath
XElement = CS.System.Xml.Linq.XElement
XName = CS.System.Xml.Linq.XName
XAttribute = CS.System.Xml.Linq.XAttribute
XContainer = CS.System.Xml.Linq.XContainer
XDocument = CS.System.Xml.Linq.XDocument
XNode = CS.System.Xml.Linq.XNode
SoundsFile = CS.Barotrauma.SoundsFile

Voting = CS.Barotrauma.Voting
TimeSpan = CS.System.TimeSpan
IPAddress = CS.System.Net.IPAddress
ContentPackageId = CS.Barotrauma.ContentPackageId
Address = CS.Barotrauma.Networking.Address
AccountId = CS.Barotrauma.Networking.AccountId
Endpoint = CS.Barotrauma.Networking.Endpoint

Explosion = CS.Barotrauma.Explosion

ConvertUnits = CS.FarseerPhysics.ConvertUnits
ToolBox = CS.Barotrauma.ToolBox

AIObjective = CS.Barotrauma.AIObjective
AIObjectiveChargeBatteries = CS.Barotrauma.AIObjectiveChargeBatteries
AIObjectiveCleanupItem = CS.Barotrauma.AIObjectiveCleanupItem
AIObjectiveCleanupItems = CS.Barotrauma.AIObjectiveCleanupItems
AIObjectiveCombat = CS.Barotrauma.AIObjectiveCombat
AIObjectiveContainItem = CS.Barotrauma.AIObjectiveContainItem
AIObjectiveDeconstructItem = CS.Barotrauma.AIObjectiveDeconstructItem
AIObjectiveDeconstructItems = CS.Barotrauma.AIObjectiveDeconstructItems
AIObjectiveEscapeHandcuffs = CS.Barotrauma.AIObjectiveEscapeHandcuffs
AIObjectiveExtinguishFire = CS.Barotrauma.AIObjectiveExtinguishFire
AIObjectiveExtinguishFires = CS.Barotrauma.AIObjectiveExtinguishFires
AIObjectiveFightIntruders = CS.Barotrauma.AIObjectiveFightIntruders
AIObjectiveFindDivingGear = CS.Barotrauma.AIObjectiveFindDivingGear
AIObjectiveFindSafety = CS.Barotrauma.AIObjectiveFindSafety
AIObjectiveFixLeak = CS.Barotrauma.AIObjectiveFixLeak
AIObjectiveFixLeaks = CS.Barotrauma.AIObjectiveFixLeaks
AIObjectiveGetItem = CS.Barotrauma.AIObjectiveGetItem
AIObjectiveGoTo = CS.Barotrauma.AIObjectiveGoTo
AIObjectiveIdle = CS.Barotrauma.AIObjectiveIdle
AIObjectiveOperateItem = CS.Barotrauma.AIObjectiveOperateItem
AIObjectivePumpWater = CS.Barotrauma.AIObjectivePumpWater
AIObjectiveRepairItem = CS.Barotrauma.AIObjectiveRepairItem
AIObjectiveRepairItems = CS.Barotrauma.AIObjectiveRepairItems
AIObjectiveRescue = CS.Barotrauma.AIObjectiveRescue
AIObjectiveRescueAll = CS.Barotrauma.AIObjectiveRescueAll
AIObjectiveReturn = CS.Barotrauma.AIObjectiveReturn
AITarget = CS.Barotrauma.AITarget

Order = CS.Barotrauma.Order
OrderPrefab = CS.Barotrauma.OrderPrefab
OrderTarget = CS.Barotrauma.OrderTarget

Vector2 = CS.Microsoft.Xna.Framework.Vector2
Vector3 = CS.Microsoft.Xna.Framework.Vector3
Vector4 = CS.Microsoft.Xna.Framework.Vector4
Color = CS.Microsoft.Xna.Framework.Color
Point = CS.Microsoft.Xna.Framework.Point
Rectangle = CS.Microsoft.Xna.Framework.Rectangle
Matrix = CS.Microsoft.Xna.Framework.Matrix

Components = CS.Barotrauma.Items.Components

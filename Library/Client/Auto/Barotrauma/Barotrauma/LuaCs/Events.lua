---@meta
---Auto-generated from Barotrauma
---Namespace: Barotrauma.LuaCs.Events

---@class Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEvent = {}

---@return System.Boolean
function CS.Barotrauma.LuaCs.Events.IEvent.IsLuaRunner() end


---@class Barotrauma.LuaCs.Events.IEventScreenSelected: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventScreenSelected = {}

---@param screen Barotrauma.Screen
function CS.Barotrauma.LuaCs.Events.IEventScreenSelected.OnScreenSelected(screen) end


---@class Barotrauma.LuaCs.Events.IEventAllPackageListChanged: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventAllPackageListChanged = {}

---@param corePackages userdata | (fun(): Barotrauma.CorePackage)
---@param regularPackages userdata | (fun(): Barotrauma.RegularPackage)
function CS.Barotrauma.LuaCs.Events.IEventAllPackageListChanged.OnAllPackageListChanged(corePackages, regularPackages) end


---@class Barotrauma.LuaCs.Events.IEventEnabledPackageListChanged: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventEnabledPackageListChanged = {}

---@param package Barotrauma.CorePackage
---@param regularPackages userdata | (fun(): Barotrauma.RegularPackage)
function CS.Barotrauma.LuaCs.Events.IEventEnabledPackageListChanged.OnEnabledPackageListChanged(package, regularPackages) end


---@class Barotrauma.LuaCs.Events.IEventReloadAllPackages: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventReloadAllPackages = {}

function CS.Barotrauma.LuaCs.Events.IEventReloadAllPackages.OnReloadAllPackages() end


---@class Barotrauma.LuaCs.Events.IEventSettingInstanceLifetime: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventSettingInstanceLifetime = {}


---@class Barotrauma.LuaCs.Events.IEventAfflictionUpdate: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventAfflictionUpdate = {}

---@param affliction Barotrauma.Affliction
---@param characterHealth Barotrauma.CharacterHealth
---@param targetLimb Barotrauma.Limb
---@param deltaTime System.Single
function CS.Barotrauma.LuaCs.Events.IEventAfflictionUpdate.OnAfflictionUpdate(affliction, characterHealth, targetLimb, deltaTime) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventAfflictionUpdate
function CS.Barotrauma.LuaCs.Events.IEventAfflictionUpdate.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventGiveCharacterJobItems: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventGiveCharacterJobItems = {}

---@param character Barotrauma.Character
---@param spawnPoint Barotrauma.WayPoint
---@param isPvPMode System.Boolean
function CS.Barotrauma.LuaCs.Events.IEventGiveCharacterJobItems.OnGiveCharacterJobItems(character, spawnPoint, isPvPMode) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventGiveCharacterJobItems
function CS.Barotrauma.LuaCs.Events.IEventGiveCharacterJobItems.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventCharacterCreated: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventCharacterCreated = {}

---@param character Barotrauma.Character
function CS.Barotrauma.LuaCs.Events.IEventCharacterCreated.OnCharacterCreated(character) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventCharacterCreated
function CS.Barotrauma.LuaCs.Events.IEventCharacterCreated.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventHumanCPRSuccess: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventHumanCPRSuccess = {}

---@param animController Barotrauma.HumanoidAnimController
function CS.Barotrauma.LuaCs.Events.IEventHumanCPRSuccess.OnCharacterCPRSuccess(animController) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventHumanCPRSuccess
function CS.Barotrauma.LuaCs.Events.IEventHumanCPRSuccess.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventHumanCPRFailed: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventHumanCPRFailed = {}

---@param animController Barotrauma.HumanoidAnimController
function CS.Barotrauma.LuaCs.Events.IEventHumanCPRFailed.OnCharacterCPRFailed(animController) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventHumanCPRFailed
function CS.Barotrauma.LuaCs.Events.IEventHumanCPRFailed.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventClientControlHusk: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventClientControlHusk = {}

---@param client Barotrauma.Networking.Client
---@param husk Barotrauma.Character
function CS.Barotrauma.LuaCs.Events.IEventClientControlHusk.OnClientControlHusk(client, husk) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventClientControlHusk
function CS.Barotrauma.LuaCs.Events.IEventClientControlHusk.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventMeleeWeaponHandleImpact: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventMeleeWeaponHandleImpact = {}

---@param meleeWeapon Barotrauma.Items.Components.MeleeWeapon
---@param target FarseerPhysics.Dynamics.Body
function CS.Barotrauma.LuaCs.Events.IEventMeleeWeaponHandleImpact.OnMeleeWeaponHandleImpact(meleeWeapon, target) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventMeleeWeaponHandleImpact
function CS.Barotrauma.LuaCs.Events.IEventMeleeWeaponHandleImpact.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventServerLog: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventServerLog = {}

---@param line System.String
---@param messageType Barotrauma.Networking.ServerLog.MessageType
function CS.Barotrauma.LuaCs.Events.IEventServerLog.OnServerLog(line, messageType) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventServerLog
function CS.Barotrauma.LuaCs.Events.IEventServerLog.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventChatMessage: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventChatMessage = {}

---@param messageText System.String
---@param sender Barotrauma.Networking.Client
---@param type Barotrauma.Networking.ChatMessageType
---@param message Barotrauma.Networking.ChatMessage
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventChatMessage.OnChatMessage(messageText, sender, type, message) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventChatMessage
function CS.Barotrauma.LuaCs.Events.IEventChatMessage.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventTryClientChangeName: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventTryClientChangeName = {}

---@param client Barotrauma.Networking.Client
---@param newName System.String
---@param newJob Barotrauma.Identifier
---@param newTeam Barotrauma.CharacterTeamType
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventTryClientChangeName.OnTryClienChangeName(client, newName, newJob, newTeam) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventTryClientChangeName
function CS.Barotrauma.LuaCs.Events.IEventTryClientChangeName.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventChangeFallDamage: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventChangeFallDamage = {}

---@param impactDamage System.Single
---@param character Barotrauma.Character
---@param impactPos Microsoft.Xna.Framework.Vector2
---@param velocity Microsoft.Xna.Framework.Vector2
---@return System.Single|nil
function CS.Barotrauma.LuaCs.Events.IEventChangeFallDamage.OnChangeFallDamage(impactDamage, character, impactPos, velocity) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventChangeFallDamage
function CS.Barotrauma.LuaCs.Events.IEventChangeFallDamage.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventGapOxygenUpdate: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventGapOxygenUpdate = {}

---@param gap Barotrauma.Gap
---@param hull1 Barotrauma.Hull
---@param hull2 Barotrauma.Hull
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventGapOxygenUpdate.OnGapOxygenUpdate(gap, hull1, hull2) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventGapOxygenUpdate
function CS.Barotrauma.LuaCs.Events.IEventGapOxygenUpdate.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventCharacterApplyDamage: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventCharacterApplyDamage = {}

---@param characterHealth Barotrauma.CharacterHealth
---@param attackResult Barotrauma.AttackResult
---@param hitLimb Barotrauma.Limb
---@param allowStacking System.Boolean
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventCharacterApplyDamage.OnCharacterApplyDamage(characterHealth, attackResult, hitLimb, allowStacking) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventCharacterApplyDamage
function CS.Barotrauma.LuaCs.Events.IEventCharacterApplyDamage.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventCharacterApplyAffliction: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventCharacterApplyAffliction = {}

---@param characterHealth Barotrauma.CharacterHealth
---@param limbHealth Barotrauma.CharacterHealth.LimbHealth
---@param newAffliction Barotrauma.Affliction
---@param allowStacking System.Boolean
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventCharacterApplyAffliction.OnCharacterApplyAffliction(characterHealth, limbHealth, newAffliction, allowStacking) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventCharacterApplyAffliction
function CS.Barotrauma.LuaCs.Events.IEventCharacterApplyAffliction.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventItemReadPropertyChange: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventItemReadPropertyChange = {}

---@param item Barotrauma.Item
---@param property Barotrauma.SerializableProperty
---@param parentObject System.Object
---@param allowEditing System.Boolean
---@param sender Barotrauma.Networking.Client
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventItemReadPropertyChange.OnItemReadPropertyChange(item, property, parentObject, allowEditing, sender) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventItemReadPropertyChange
function CS.Barotrauma.LuaCs.Events.IEventItemReadPropertyChange.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventCanUseVoiceRadio: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventCanUseVoiceRadio = {}

---@param sender Barotrauma.Networking.Client
---@param recipient Barotrauma.Networking.Client
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventCanUseVoiceRadio.OnCanUseVoiceRadio(sender, recipient) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventCanUseVoiceRadio
function CS.Barotrauma.LuaCs.Events.IEventCanUseVoiceRadio.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventChangeLocalVoiceRange: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventChangeLocalVoiceRange = {}

---@param sender Barotrauma.Networking.Client
---@param recipient Barotrauma.Networking.Client
---@return System.Single|nil
function CS.Barotrauma.LuaCs.Events.IEventChangeLocalVoiceRange.OnChangeLocalVoiceRange(sender, recipient) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventChangeLocalVoiceRange
function CS.Barotrauma.LuaCs.Events.IEventChangeLocalVoiceRange.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventItemDeconstructed: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventItemDeconstructed = {}

---@param item Barotrauma.Item
---@param deconstructor Barotrauma.Items.Components.Deconstructor
---@param user Barotrauma.Character
---@param allowRemove System.Boolean
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventItemDeconstructed.OnItemDeconstructed(item, deconstructor, user, allowRemove) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventItemDeconstructed
function CS.Barotrauma.LuaCs.Events.IEventItemDeconstructed.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventWifiSignalTransmitted: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventWifiSignalTransmitted = {}

---@param wifiComponent Barotrauma.Items.Components.WifiComponent
---@param signal Barotrauma.Items.Components.Signal
---@param sentFromChat System.Boolean
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventWifiSignalTransmitted.OnWifiSignalTransmitted(wifiComponent, signal, sentFromChat) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventWifiSignalTransmitted
function CS.Barotrauma.LuaCs.Events.IEventWifiSignalTransmitted.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventCharacterDeath: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventCharacterDeath = {}

---@param character Barotrauma.Character
---@param causeOfDeathAffliction Barotrauma.Affliction
---@param causeOfDeathType Barotrauma.CauseOfDeathType
function CS.Barotrauma.LuaCs.Events.IEventCharacterDeath.OnCharacterDeath(character, causeOfDeathAffliction, causeOfDeathType) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventCharacterDeath
function CS.Barotrauma.LuaCs.Events.IEventCharacterDeath.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventKeyUpdate: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventKeyUpdate = {}

---@param deltaTime System.Double
function CS.Barotrauma.LuaCs.Events.IEventKeyUpdate.OnKeyUpdate(deltaTime) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventKeyUpdate
function CS.Barotrauma.LuaCs.Events.IEventKeyUpdate.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventRoundStarting: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventRoundStarting = {}

function CS.Barotrauma.LuaCs.Events.IEventRoundStarting.OnRoundStarting() end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventRoundStarting
function CS.Barotrauma.LuaCs.Events.IEventRoundStarting.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventRoundStarted: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventRoundStarted = {}

function CS.Barotrauma.LuaCs.Events.IEventRoundStarted.OnRoundStart() end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventRoundStarted
function CS.Barotrauma.LuaCs.Events.IEventRoundStarted.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventRoundEnded: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventRoundEnded = {}

function CS.Barotrauma.LuaCs.Events.IEventRoundEnded.OnRoundEnd() end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventRoundEnded
function CS.Barotrauma.LuaCs.Events.IEventRoundEnded.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventMissionsEnded: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventMissionsEnded = {}

---@param missions userdata | { [System.Int32]: Barotrauma.Mission } | (fun(): Barotrauma.Mission)
function CS.Barotrauma.LuaCs.Events.IEventMissionsEnded.OnMissionsEnded(missions) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventMissionsEnded
function CS.Barotrauma.LuaCs.Events.IEventMissionsEnded.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventUpdate: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventUpdate = {}

---@param fixedDeltaTime System.Double
function CS.Barotrauma.LuaCs.Events.IEventUpdate.OnUpdate(fixedDeltaTime) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventUpdate
function CS.Barotrauma.LuaCs.Events.IEventUpdate.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventDrawUpdate: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventDrawUpdate = {}

---@param deltaTime System.Double
function CS.Barotrauma.LuaCs.Events.IEventDrawUpdate.OnDrawUpdate(deltaTime) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventDrawUpdate
function CS.Barotrauma.LuaCs.Events.IEventDrawUpdate.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventSignalReceived: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventSignalReceived = {}

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.LuaCs.Events.IEventSignalReceived.OnSignalReceived(signal, connection) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventSignalReceived
function CS.Barotrauma.LuaCs.Events.IEventSignalReceived.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventItemCreated: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventItemCreated = {}

---@param item Barotrauma.Item
function CS.Barotrauma.LuaCs.Events.IEventItemCreated.OnItemCreated(item) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventItemCreated
function CS.Barotrauma.LuaCs.Events.IEventItemCreated.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventItemRemoved: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventItemRemoved = {}

---@param item Barotrauma.Item
function CS.Barotrauma.LuaCs.Events.IEventItemRemoved.OnItemRemoved(item) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventItemRemoved
function CS.Barotrauma.LuaCs.Events.IEventItemRemoved.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventItemUse: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventItemUse = {}

---@param item Barotrauma.Item
---@param user Barotrauma.Character
---@param targetLimb Barotrauma.Limb
---@param useTarget Barotrauma.Entity
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventItemUse.OnItemUsed(item, user, targetLimb, useTarget) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventItemUse
function CS.Barotrauma.LuaCs.Events.IEventItemUse.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventItemSecondaryUse: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventItemSecondaryUse = {}

---@param item Barotrauma.Item
---@param user Barotrauma.Character
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventItemSecondaryUse.OnItemSecondaryUsed(item, user) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventItemSecondaryUse
function CS.Barotrauma.LuaCs.Events.IEventItemSecondaryUse.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventCharacterDamageLimb: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventCharacterDamageLimb = {}

---@param character Barotrauma.Character
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param hitLimb Barotrauma.Limb
---@param afflictions userdata | (fun(): Barotrauma.Affliction)
---@param stun System.Single
---@param playSound System.Boolean
---@param attackImpulse Microsoft.Xna.Framework.Vector2
---@param attacker? Barotrauma.Character
---@param damageMultiplier? System.Single
---@param allowStacking? System.Boolean
---@param penetration? System.Single
---@param shouldImplode? System.Boolean
---@return Barotrauma.AttackResult|nil
function CS.Barotrauma.LuaCs.Events.IEventCharacterDamageLimb.OnCharacterDamageLimb(character, worldPosition, hitLimb, afflictions, stun, playSound, attackImpulse, attacker, damageMultiplier, allowStacking, penetration, shouldImplode) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventCharacterDamageLimb
function CS.Barotrauma.LuaCs.Events.IEventCharacterDamageLimb.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventInventoryPutItem: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventInventoryPutItem = {}

---@param inventory Barotrauma.Inventory
---@param item Barotrauma.Item
---@param user Barotrauma.Character
---@param i System.Int32
---@param removeItem System.Boolean
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventInventoryPutItem.OnInventoryPutItem(inventory, item, user, i, removeItem) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventInventoryPutItem
function CS.Barotrauma.LuaCs.Events.IEventInventoryPutItem.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventInventoryItemSwap: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventInventoryItemSwap = {}

---@param inventory Barotrauma.Inventory
---@param item Barotrauma.Item
---@param user Barotrauma.Character
---@param i System.Int32
---@param swapWholeStack System.Boolean
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventInventoryItemSwap.OnInventoryItemSwap(inventory, item, user, i, swapWholeStack) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventInventoryItemSwap
function CS.Barotrauma.LuaCs.Events.IEventInventoryItemSwap.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventServerRawNetMessageReceived: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventServerRawNetMessageReceived = {}

---@param netMessage Barotrauma.Networking.IReadMessage
---@param serverPacketHeader Barotrauma.Networking.ServerPacketHeader
function CS.Barotrauma.LuaCs.Events.IEventServerRawNetMessageReceived.OnReceivedServerNetMessage(netMessage, serverPacketHeader) end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventServerRawNetMessageReceived
function CS.Barotrauma.LuaCs.Events.IEventServerRawNetMessageReceived.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventServerConnected: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventServerConnected = {}

function CS.Barotrauma.LuaCs.Events.IEventServerConnected.OnServerConnected() end

---@private
---@param luaFunc userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventServerConnected
function CS.Barotrauma.LuaCs.Events.IEventServerConnected.GetLuaRunner(luaFunc) end


---@class Barotrauma.LuaCs.Events.IEventPluginInitialize: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventPluginInitialize = {}

function CS.Barotrauma.LuaCs.Events.IEventPluginInitialize.Initialize() end


---@class Barotrauma.LuaCs.Events.IEventPluginLoadCompleted: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventPluginLoadCompleted = {}

function CS.Barotrauma.LuaCs.Events.IEventPluginLoadCompleted.OnLoadCompleted() end


---@class Barotrauma.LuaCs.Events.IEventPluginPreInitialize: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventPluginPreInitialize = {}

function CS.Barotrauma.LuaCs.Events.IEventPluginPreInitialize.PreInitPatching() end


---@class Barotrauma.LuaCs.Events.IEventAssemblyLoaded: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventAssemblyLoaded = {}

---@param assembly System.Reflection.Assembly
function CS.Barotrauma.LuaCs.Events.IEventAssemblyLoaded.OnAssemblyLoaded(assembly) end


---@class Barotrauma.LuaCs.Events.IEventAssemblyContextCreated: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventAssemblyContextCreated = {}

---@param loaderService Barotrauma.LuaCs.IAssemblyLoaderService
function CS.Barotrauma.LuaCs.Events.IEventAssemblyContextCreated.OnAssemblyCreated(loaderService) end


---@class Barotrauma.LuaCs.Events.IEventAssemblyContextUnloading: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventAssemblyContextUnloading = {}

---@param loaderService userdata
function CS.Barotrauma.LuaCs.Events.IEventAssemblyContextUnloading.OnAssemblyUnloading(loaderService) end


---@class Barotrauma.LuaCs.Events.IEventAssemblyUnloading: Barotrauma.LuaCs.Events.IEvent
CS.Barotrauma.LuaCs.Events.IEventAssemblyUnloading = {}

---@param assembly System.Reflection.Assembly
function CS.Barotrauma.LuaCs.Events.IEventAssemblyUnloading.OnAssemblyUnloading(assembly) end


---@class Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase: System.Object, Barotrauma.LuaCs.Events.IEvent
---@field protected LuaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
CS.Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase = {}

---@return System.Boolean
function CS.Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase.IsLuaRunner() end

do
---@protected
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase = __ctor
CS.Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventAfflictionUpdate.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventAfflictionUpdate
CS.Barotrauma.LuaCs.Events.IEventAfflictionUpdate.LuaWrapper = {}

---@param affliction Barotrauma.Affliction
---@param characterHealth Barotrauma.CharacterHealth
---@param targetLimb Barotrauma.Limb
---@param deltaTime System.Single
function CS.Barotrauma.LuaCs.Events.IEventAfflictionUpdate.LuaWrapper.OnAfflictionUpdate(affliction, characterHealth, targetLimb, deltaTime) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventAfflictionUpdate.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventAfflictionUpdate.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventAfflictionUpdate.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventGiveCharacterJobItems.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventGiveCharacterJobItems
CS.Barotrauma.LuaCs.Events.IEventGiveCharacterJobItems.LuaWrapper = {}

---@param character Barotrauma.Character
---@param spawnPoint Barotrauma.WayPoint
---@param isPvPMode System.Boolean
function CS.Barotrauma.LuaCs.Events.IEventGiveCharacterJobItems.LuaWrapper.OnGiveCharacterJobItems(character, spawnPoint, isPvPMode) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventGiveCharacterJobItems.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventGiveCharacterJobItems.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventGiveCharacterJobItems.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventCharacterCreated.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventCharacterCreated
CS.Barotrauma.LuaCs.Events.IEventCharacterCreated.LuaWrapper = {}

---@param character Barotrauma.Character
function CS.Barotrauma.LuaCs.Events.IEventCharacterCreated.LuaWrapper.OnCharacterCreated(character) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventCharacterCreated.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventCharacterCreated.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventCharacterCreated.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventHumanCPRSuccess.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventHumanCPRSuccess
CS.Barotrauma.LuaCs.Events.IEventHumanCPRSuccess.LuaWrapper = {}

---@param animController Barotrauma.HumanoidAnimController
function CS.Barotrauma.LuaCs.Events.IEventHumanCPRSuccess.LuaWrapper.OnCharacterCPRSuccess(animController) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventHumanCPRSuccess.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventHumanCPRSuccess.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventHumanCPRSuccess.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventHumanCPRFailed.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventHumanCPRFailed
CS.Barotrauma.LuaCs.Events.IEventHumanCPRFailed.LuaWrapper = {}

---@param animController Barotrauma.HumanoidAnimController
function CS.Barotrauma.LuaCs.Events.IEventHumanCPRFailed.LuaWrapper.OnCharacterCPRFailed(animController) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventHumanCPRFailed.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventHumanCPRFailed.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventHumanCPRFailed.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventClientControlHusk.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventClientControlHusk
CS.Barotrauma.LuaCs.Events.IEventClientControlHusk.LuaWrapper = {}

---@param client Barotrauma.Networking.Client
---@param husk Barotrauma.Character
function CS.Barotrauma.LuaCs.Events.IEventClientControlHusk.LuaWrapper.OnClientControlHusk(client, husk) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventClientControlHusk.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventClientControlHusk.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventClientControlHusk.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventMeleeWeaponHandleImpact.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventMeleeWeaponHandleImpact
CS.Barotrauma.LuaCs.Events.IEventMeleeWeaponHandleImpact.LuaWrapper = {}

---@param meleeWeapon Barotrauma.Items.Components.MeleeWeapon
---@param target FarseerPhysics.Dynamics.Body
function CS.Barotrauma.LuaCs.Events.IEventMeleeWeaponHandleImpact.LuaWrapper.OnMeleeWeaponHandleImpact(meleeWeapon, target) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventMeleeWeaponHandleImpact.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventMeleeWeaponHandleImpact.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventMeleeWeaponHandleImpact.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventServerLog.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventServerLog
CS.Barotrauma.LuaCs.Events.IEventServerLog.LuaWrapper = {}

---@param line System.String
---@param messageType Barotrauma.Networking.ServerLog.MessageType
function CS.Barotrauma.LuaCs.Events.IEventServerLog.LuaWrapper.OnServerLog(line, messageType) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventServerLog.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventServerLog.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventServerLog.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventChatMessage.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventChatMessage
CS.Barotrauma.LuaCs.Events.IEventChatMessage.LuaWrapper = {}

---@param messageText System.String
---@param sender Barotrauma.Networking.Client
---@param type Barotrauma.Networking.ChatMessageType
---@param message Barotrauma.Networking.ChatMessage
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventChatMessage.LuaWrapper.OnChatMessage(messageText, sender, type, message) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventChatMessage.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventChatMessage.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventChatMessage.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventTryClientChangeName.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventTryClientChangeName
CS.Barotrauma.LuaCs.Events.IEventTryClientChangeName.LuaWrapper = {}

---@param client Barotrauma.Networking.Client
---@param newName System.String
---@param newJob Barotrauma.Identifier
---@param newTeam Barotrauma.CharacterTeamType
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventTryClientChangeName.LuaWrapper.OnTryClienChangeName(client, newName, newJob, newTeam) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventTryClientChangeName.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventTryClientChangeName.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventTryClientChangeName.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventChangeFallDamage.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventChangeFallDamage
CS.Barotrauma.LuaCs.Events.IEventChangeFallDamage.LuaWrapper = {}

---@param impactDamage System.Single
---@param character Barotrauma.Character
---@param impactPos Microsoft.Xna.Framework.Vector2
---@param velocity Microsoft.Xna.Framework.Vector2
---@return System.Single|nil
function CS.Barotrauma.LuaCs.Events.IEventChangeFallDamage.LuaWrapper.OnChangeFallDamage(impactDamage, character, impactPos, velocity) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventChangeFallDamage.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventChangeFallDamage.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventChangeFallDamage.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventGapOxygenUpdate.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventGapOxygenUpdate
CS.Barotrauma.LuaCs.Events.IEventGapOxygenUpdate.LuaWrapper = {}

---@param gap Barotrauma.Gap
---@param hull1 Barotrauma.Hull
---@param hull2 Barotrauma.Hull
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventGapOxygenUpdate.LuaWrapper.OnGapOxygenUpdate(gap, hull1, hull2) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventGapOxygenUpdate.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventGapOxygenUpdate.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventGapOxygenUpdate.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventCharacterApplyDamage.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventCharacterApplyDamage
CS.Barotrauma.LuaCs.Events.IEventCharacterApplyDamage.LuaWrapper = {}

---@param characterHealth Barotrauma.CharacterHealth
---@param attackResult Barotrauma.AttackResult
---@param hitLimb Barotrauma.Limb
---@param allowStacking System.Boolean
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventCharacterApplyDamage.LuaWrapper.OnCharacterApplyDamage(characterHealth, attackResult, hitLimb, allowStacking) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventCharacterApplyDamage.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventCharacterApplyDamage.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventCharacterApplyDamage.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventCharacterApplyAffliction.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventCharacterApplyAffliction
CS.Barotrauma.LuaCs.Events.IEventCharacterApplyAffliction.LuaWrapper = {}

---@param characterHealth Barotrauma.CharacterHealth
---@param limbHealth Barotrauma.CharacterHealth.LimbHealth
---@param newAffliction Barotrauma.Affliction
---@param allowStacking System.Boolean
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventCharacterApplyAffliction.LuaWrapper.OnCharacterApplyAffliction(characterHealth, limbHealth, newAffliction, allowStacking) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventCharacterApplyAffliction.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventCharacterApplyAffliction.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventCharacterApplyAffliction.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventItemReadPropertyChange.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventItemReadPropertyChange
CS.Barotrauma.LuaCs.Events.IEventItemReadPropertyChange.LuaWrapper = {}

---@param item Barotrauma.Item
---@param property Barotrauma.SerializableProperty
---@param parentObject System.Object
---@param allowEditing System.Boolean
---@param sender Barotrauma.Networking.Client
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventItemReadPropertyChange.LuaWrapper.OnItemReadPropertyChange(item, property, parentObject, allowEditing, sender) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventItemReadPropertyChange.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventItemReadPropertyChange.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventItemReadPropertyChange.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventCanUseVoiceRadio.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventCanUseVoiceRadio
CS.Barotrauma.LuaCs.Events.IEventCanUseVoiceRadio.LuaWrapper = {}

---@param sender Barotrauma.Networking.Client
---@param recipient Barotrauma.Networking.Client
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventCanUseVoiceRadio.LuaWrapper.OnCanUseVoiceRadio(sender, recipient) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventCanUseVoiceRadio.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventCanUseVoiceRadio.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventCanUseVoiceRadio.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventChangeLocalVoiceRange.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventChangeLocalVoiceRange
CS.Barotrauma.LuaCs.Events.IEventChangeLocalVoiceRange.LuaWrapper = {}

---@param sender Barotrauma.Networking.Client
---@param recipient Barotrauma.Networking.Client
---@return System.Single|nil
function CS.Barotrauma.LuaCs.Events.IEventChangeLocalVoiceRange.LuaWrapper.OnChangeLocalVoiceRange(sender, recipient) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventChangeLocalVoiceRange.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventChangeLocalVoiceRange.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventChangeLocalVoiceRange.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventItemDeconstructed.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventItemDeconstructed
CS.Barotrauma.LuaCs.Events.IEventItemDeconstructed.LuaWrapper = {}

---@param item Barotrauma.Item
---@param deconstructor Barotrauma.Items.Components.Deconstructor
---@param user Barotrauma.Character
---@param allowRemove System.Boolean
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventItemDeconstructed.LuaWrapper.OnItemDeconstructed(item, deconstructor, user, allowRemove) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventItemDeconstructed.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventItemDeconstructed.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventItemDeconstructed.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventWifiSignalTransmitted.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventWifiSignalTransmitted
CS.Barotrauma.LuaCs.Events.IEventWifiSignalTransmitted.LuaWrapper = {}

---@param wifiComponent Barotrauma.Items.Components.WifiComponent
---@param signal Barotrauma.Items.Components.Signal
---@param sentFromChat System.Boolean
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventWifiSignalTransmitted.LuaWrapper.OnWifiSignalTransmitted(wifiComponent, signal, sentFromChat) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventWifiSignalTransmitted.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventWifiSignalTransmitted.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventWifiSignalTransmitted.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventCharacterDeath.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventCharacterDeath
CS.Barotrauma.LuaCs.Events.IEventCharacterDeath.LuaWrapper = {}

---@param character Barotrauma.Character
---@param causeOfDeathAffliction Barotrauma.Affliction
---@param causeOfDeathType Barotrauma.CauseOfDeathType
function CS.Barotrauma.LuaCs.Events.IEventCharacterDeath.LuaWrapper.OnCharacterDeath(character, causeOfDeathAffliction, causeOfDeathType) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventCharacterDeath.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventCharacterDeath.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventCharacterDeath.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventKeyUpdate.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventKeyUpdate
CS.Barotrauma.LuaCs.Events.IEventKeyUpdate.LuaWrapper = {}

---@param deltaTime System.Double
function CS.Barotrauma.LuaCs.Events.IEventKeyUpdate.LuaWrapper.OnKeyUpdate(deltaTime) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventKeyUpdate.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventKeyUpdate.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventKeyUpdate.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventRoundStarting.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventRoundStarting
CS.Barotrauma.LuaCs.Events.IEventRoundStarting.LuaWrapper = {}

function CS.Barotrauma.LuaCs.Events.IEventRoundStarting.LuaWrapper.OnRoundStarting() end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventRoundStarting.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventRoundStarting.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventRoundStarting.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventRoundStarted.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventRoundStarted
CS.Barotrauma.LuaCs.Events.IEventRoundStarted.LuaWrapper = {}

function CS.Barotrauma.LuaCs.Events.IEventRoundStarted.LuaWrapper.OnRoundStart() end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventRoundStarted.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventRoundStarted.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventRoundStarted.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventRoundEnded.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventRoundEnded
CS.Barotrauma.LuaCs.Events.IEventRoundEnded.LuaWrapper = {}

function CS.Barotrauma.LuaCs.Events.IEventRoundEnded.LuaWrapper.OnRoundEnd() end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventRoundEnded.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventRoundEnded.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventRoundEnded.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventMissionsEnded.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventMissionsEnded
CS.Barotrauma.LuaCs.Events.IEventMissionsEnded.LuaWrapper = {}

---@param missions userdata | { [System.Int32]: Barotrauma.Mission } | (fun(): Barotrauma.Mission)
function CS.Barotrauma.LuaCs.Events.IEventMissionsEnded.LuaWrapper.OnMissionsEnded(missions) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventMissionsEnded.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventMissionsEnded.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventMissionsEnded.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventUpdate.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventUpdate
CS.Barotrauma.LuaCs.Events.IEventUpdate.LuaWrapper = {}

---@param deltaTime System.Double
function CS.Barotrauma.LuaCs.Events.IEventUpdate.LuaWrapper.OnUpdate(deltaTime) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventUpdate.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventUpdate.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventUpdate.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventDrawUpdate.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventDrawUpdate
CS.Barotrauma.LuaCs.Events.IEventDrawUpdate.LuaWrapper = {}

---@param deltaTime System.Double
function CS.Barotrauma.LuaCs.Events.IEventDrawUpdate.LuaWrapper.OnDrawUpdate(deltaTime) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventDrawUpdate.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventDrawUpdate.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventDrawUpdate.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventSignalReceived.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventSignalReceived
CS.Barotrauma.LuaCs.Events.IEventSignalReceived.LuaWrapper = {}

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.LuaCs.Events.IEventSignalReceived.LuaWrapper.OnSignalReceived(signal, connection) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventSignalReceived.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventSignalReceived.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventSignalReceived.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventItemCreated.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventItemCreated
CS.Barotrauma.LuaCs.Events.IEventItemCreated.LuaWrapper = {}

---@param item Barotrauma.Item
function CS.Barotrauma.LuaCs.Events.IEventItemCreated.LuaWrapper.OnItemCreated(item) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventItemCreated.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventItemCreated.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventItemCreated.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventItemRemoved.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventItemRemoved
CS.Barotrauma.LuaCs.Events.IEventItemRemoved.LuaWrapper = {}

---@param item Barotrauma.Item
function CS.Barotrauma.LuaCs.Events.IEventItemRemoved.LuaWrapper.OnItemRemoved(item) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventItemRemoved.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventItemRemoved.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventItemRemoved.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventItemUse.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventItemUse
CS.Barotrauma.LuaCs.Events.IEventItemUse.LuaWrapper = {}

---@param item Barotrauma.Item
---@param user Barotrauma.Character
---@param targetLimb Barotrauma.Limb
---@param useTarget Barotrauma.Entity
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventItemUse.LuaWrapper.OnItemUsed(item, user, targetLimb, useTarget) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventItemUse.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventItemUse.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventItemUse.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventItemSecondaryUse.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventItemSecondaryUse
CS.Barotrauma.LuaCs.Events.IEventItemSecondaryUse.LuaWrapper = {}

---@param item Barotrauma.Item
---@param user Barotrauma.Character
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventItemSecondaryUse.LuaWrapper.OnItemSecondaryUsed(item, user) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventItemSecondaryUse.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventItemSecondaryUse.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventItemSecondaryUse.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventCharacterDamageLimb.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventCharacterDamageLimb
CS.Barotrauma.LuaCs.Events.IEventCharacterDamageLimb.LuaWrapper = {}

---@param character Barotrauma.Character
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param hitLimb Barotrauma.Limb
---@param afflictions userdata | (fun(): Barotrauma.Affliction)
---@param stun System.Single
---@param playSound System.Boolean
---@param attackImpulse Microsoft.Xna.Framework.Vector2
---@param attacker? Barotrauma.Character
---@param damageMultiplier? System.Single
---@param allowStacking? System.Boolean
---@param penetration? System.Single
---@param shouldImplode? System.Boolean
---@return Barotrauma.AttackResult|nil
function CS.Barotrauma.LuaCs.Events.IEventCharacterDamageLimb.LuaWrapper.OnCharacterDamageLimb(character, worldPosition, hitLimb, afflictions, stun, playSound, attackImpulse, attacker, damageMultiplier, allowStacking, penetration, shouldImplode) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventCharacterDamageLimb.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventCharacterDamageLimb.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventCharacterDamageLimb.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventInventoryPutItem.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventInventoryPutItem
CS.Barotrauma.LuaCs.Events.IEventInventoryPutItem.LuaWrapper = {}

---@param inventory Barotrauma.Inventory
---@param item Barotrauma.Item
---@param user Barotrauma.Character
---@param i System.Int32
---@param removeItem System.Boolean
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventInventoryPutItem.LuaWrapper.OnInventoryPutItem(inventory, item, user, i, removeItem) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventInventoryPutItem.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventInventoryPutItem.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventInventoryPutItem.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventInventoryItemSwap.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventInventoryItemSwap
CS.Barotrauma.LuaCs.Events.IEventInventoryItemSwap.LuaWrapper = {}

---@param inventory Barotrauma.Inventory
---@param item Barotrauma.Item
---@param user Barotrauma.Character
---@param i System.Int32
---@param swapWholeStack System.Boolean
---@return System.Boolean|nil
function CS.Barotrauma.LuaCs.Events.IEventInventoryItemSwap.LuaWrapper.OnInventoryItemSwap(inventory, item, user, i, swapWholeStack) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventInventoryItemSwap.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventInventoryItemSwap.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventInventoryItemSwap.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventServerRawNetMessageReceived.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventServerRawNetMessageReceived
CS.Barotrauma.LuaCs.Events.IEventServerRawNetMessageReceived.LuaWrapper = {}

---@param netMessage Barotrauma.Networking.IReadMessage
---@param serverPacketHeader Barotrauma.Networking.ServerPacketHeader
function CS.Barotrauma.LuaCs.Events.IEventServerRawNetMessageReceived.LuaWrapper.OnReceivedServerNetMessage(netMessage, serverPacketHeader) end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventServerRawNetMessageReceived.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventServerRawNetMessageReceived.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventServerRawNetMessageReceived.LuaWrapper.__new = __ctor
end

---@class Barotrauma.LuaCs.Events.IEventServerConnected.LuaWrapper: Barotrauma.LuaCs.Events.IEvent.LuaWrapperBase, Barotrauma.LuaCs.Events.IEvent, Barotrauma.LuaCs.Events.IEventServerConnected
CS.Barotrauma.LuaCs.Events.IEventServerConnected.LuaWrapper = {}

function CS.Barotrauma.LuaCs.Events.IEventServerConnected.LuaWrapper.OnServerConnected() end

do
---@param luaFuncs userdata | { [System.String]: fun(...: System.Object): System.Object } | (fun(): userdata)
---@return Barotrauma.LuaCs.Events.IEventServerConnected.LuaWrapper
local __ctor = function(luaFuncs) end
CS.Barotrauma.LuaCs.Events.IEventServerConnected.LuaWrapper = __ctor
CS.Barotrauma.LuaCs.Events.IEventServerConnected.LuaWrapper.__new = __ctor
end


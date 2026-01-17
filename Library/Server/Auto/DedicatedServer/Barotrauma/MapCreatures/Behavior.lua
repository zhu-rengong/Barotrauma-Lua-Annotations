---@meta
---Auto-generated from DedicatedServer
---Namespace: Barotrauma.MapCreatures.Behavior

---@class Barotrauma.MapCreatures.Behavior.BallastFloraBehavior: System.Object
---@field EntityList userdata | (fun(): Barotrauma.MapCreatures.Behavior.BallastFloraBehavior)
---@field BaseBranchScale System.Single
---@field BaseFlowerScale System.Single
---@field BaseLeafScale System.Single
---@field FlowerProbability System.Single
---@field LeafProbability System.Single
---@field PulseDelay System.Single
---@field PulseInflateSpeed System.Single
---@field PulseDeflateSpeed System.Single
---@field BreakthroughPoint System.Int32
---@field HasBrokenThrough System.Boolean
---@field Sight System.Int32
---@field BranchHealth System.Int32
---@field RootHealth System.Int32
---@field HealthRegenPerBranch System.Single
---@field MaxBranchHealthRegenDistance System.Int32
---@field RootColor Microsoft.Xna.Framework.Color
---@field PowerConsumptionMin System.Single
---@field PowerConsumptionMax System.Single
---@field PowerConsumptionDuration System.Single
---@field PowerRequirement System.Single
---@field MaxAnger System.Single
---@field MaxPowerCapacity System.Single
---@field AttackItemPrefab Barotrauma.Identifier
---@field ExplosionResistance System.Single
---@field FireVulnerability System.Single
---@field SubmergedWaterResistance System.Single
---@field BranchDepth System.Single
---@field BurstSound System.String
---@field AvailablePower System.Single
---@field Anger System.Single
---@field Name System.String
---@field Parent Barotrauma.Hull
---@field Prefab Barotrauma.BallastFloraPrefab
---@field SerializableProperties userdata | { [Barotrauma.Identifier]: Barotrauma.SerializableProperty } | (fun(): userdata)
---@field private damageUpdateTimer System.Single
---@field private availablePower System.Single
---@field private anger System.Single
---@field Offset Microsoft.Xna.Framework.Vector2
---@field ClaimedTargets userdata | (fun(): Barotrauma.Item)
---@field ClaimedJunctionBoxes userdata | (fun(): Barotrauma.Items.Components.PowerTransfer)
---@field ClaimedBatteries userdata | (fun(): Barotrauma.Items.Components.PowerContainer)
---@field IgnoredTargets userdata | { [Barotrauma.Item]: System.Int32 } | (fun(): userdata)
---@field private tempClaimedTargets userdata | { [System.Int32]: userdata } | (fun(): userdata)
---@field private flowerVariants System.Int32
---@field private leafVariants System.Int32
---@field Targets userdata | { [System.Int32]: Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.AITarget } | (fun(): Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.AITarget)
---@field PowerConsumptionTimer System.Single
---@field private defenseCooldown System.Single
---@field private toxinsCooldown System.Single
---@field private fireCheckCooldown System.Single
---@field private selfDamageTimer System.Single
---@field private toxinsTimer System.Single
---@field private toxinsSpawnTimer System.Single
---@field private branchesVulnerableToFire userdata | { [System.Int32]: Barotrauma.MapCreatures.Behavior.BallastFloraBranch } | (fun(): Barotrauma.MapCreatures.Behavior.BallastFloraBranch)
---@field Branches userdata | { [System.Int32]: Barotrauma.MapCreatures.Behavior.BallastFloraBranch } | (fun(): Barotrauma.MapCreatures.Behavior.BallastFloraBranch)
---@field private root Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@field private bodies userdata | { [System.Int32]: FarseerPhysics.Dynamics.Body } | (fun(): FarseerPhysics.Dynamics.Body)
---@field private isDead System.Boolean
---@field StateMachine Barotrauma.MapCreatures.Behavior.BallastFloraStateMachine
---@field GrowthWarps System.Int32
---@field private toBeRemoved userdata | { [System.Int32]: Barotrauma.MapCreatures.Behavior.BallastFloraBranch } | (fun(): Barotrauma.MapCreatures.Behavior.BallastFloraBranch)
---@field private _entityList userdata | { [System.Int32]: Barotrauma.MapCreatures.Behavior.BallastFloraBehavior } | (fun(): Barotrauma.MapCreatures.Behavior.BallastFloraBehavior)
---@field private DamageUpdateInterval System.Single
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior = {}

---@param msg Barotrauma.Networking.IWriteMessage
---@param eventData Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.IEventData
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.ServerWrite(msg, eventData) end

---@private
---@param msg Barotrauma.Networking.IWriteMessage
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.ServerWriteSpawn(msg) end

---@private
---@param msg Barotrauma.Networking.IWriteMessage
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@param parentId? System.Int32
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.ServerWriteBranchGrowth(msg, branch, parentId) end

---@private
---@param msg Barotrauma.Networking.IWriteMessage
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.ServerWriteBranchDamage(msg, branch) end

---@private
---@param msg Barotrauma.Networking.IWriteMessage
---@param itemID System.UInt16
---@param infect Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.InfectEventData.InfectState
---@param infector? Barotrauma.MapCreatures.Behavior.BallastFloraBranch
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.ServerWriteInfect(msg, itemID, infect, infector) end

---@private
---@param msg Barotrauma.Networking.IWriteMessage
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.ServerWriteBranchRemove(msg, branch) end

---@param extraData Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.IEventData
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.CreateNetworkMessage(extraData) end

---@return userdata | (fun(): Barotrauma.MapCreatures.Behavior.BallastFloraBehavior)
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.get_EntityList() end

---@return System.Single
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.get_AvailablePower() end

---@param value System.Single
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.set_AvailablePower(value) end

---@return System.Single
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.get_Anger() end

---@param value System.Single
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.set_Anger(value) end

function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.OnMapLoaded() end

---@private
---@return System.Int32
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.CreateID() end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.GetWorldPosition() end

---@private
---@param element Barotrauma.ContentXElement
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.LoadPrefab(element) end

---@param element Barotrauma.ContentXElement
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.LoadTargets(element) end

---@param element System.Xml.Linq.XElement
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.Save(element) end

---@param element System.Xml.Linq.XElement
---@param idRemap Barotrauma.IdRemap
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.LoadSave(element, idRemap) end

---@param deltaTime System.Single
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.Update(deltaTime) end

---@private
---@param deltaTime System.Single
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.UpdateDamage(deltaTime) end

---@private
---@param deltaTime System.Single
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.UpdateSelfDamage(deltaTime) end

---@private
---@param deltaTime System.Single
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.UpdatePowerDrain(deltaTime) end

---@private
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.UpdateFireSources() end

---@private
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@return System.Boolean
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.IsInWater(branch) end

---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.SetHull(branch) end

---@private
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.GenerateRoot() end

---@param deltaTime System.Single
---@return System.Single
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.GetGrowthSpeed(deltaTime) end

---@param parent Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@param side Barotrauma.Items.Components.TileSide
---@param result userdata | { [System.Int32]: Barotrauma.MapCreatures.Behavior.BallastFloraBranch } | (fun(): Barotrauma.MapCreatures.Behavior.BallastFloraBranch)
---@param isRootGrowth? System.Boolean
---@param forcePosition? Microsoft.Xna.Framework.Vector2|nil
---@return System.Boolean
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.TryGrowBranch(parent, side, result, isRootGrowth, forcePosition) end

---@private
---@return System.Int32
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.GetDesiredRootGrowthAmount() end

---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@param target Barotrauma.Item
---@return System.Boolean
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.BranchContainsTarget(branch, target) end

---@param target Barotrauma.Item
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@param load? System.Boolean
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.ClaimTarget(target, branch, load) end

---@private
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@param parent? Barotrauma.MapCreatures.Behavior.BallastFloraBranch
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.UpdateConnections(branch, parent) end

---@private
---@param newBranch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.OnBranchGrowthSuccess(newBranch) end

---@private
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.CreateBody(branch) end

---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@param amount System.Single
---@param type Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.AttackType
---@param attacker? Barotrauma.Character
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.DamageBranch(branch, amount, type, attacker) end

---@private
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.CheckDisconnectedFromRoot() end

---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.RemoveBranch(branch) end

---@param item Barotrauma.Item
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.RemoveClaim(item) end

function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.Kill() end

function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.Remove() end

---@private
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.BreakThrough() end

---@private
---@return System.Boolean
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.CanGrowMore() end

---@private
---@param rect Microsoft.Xna.Framework.Rectangle
---@param checkOtherBranches? System.Boolean
---@return System.Boolean
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.CollidesWithWorld(rect, checkOtherBranches) end

---@private
---@param point1 Microsoft.Xna.Framework.Vector2
---@param point2 Microsoft.Xna.Framework.Vector2
---@return System.Boolean
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.LineCollides(point1, point2) end

do
---@overload fun(): Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
---@param parent Barotrauma.Hull
---@param prefab Barotrauma.BallastFloraPrefab
---@param offset Microsoft.Xna.Framework.Vector2
---@param firstGrowth? System.Boolean
---@return Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
local __ctor = function(parent, prefab, offset, firstGrowth) end
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior = __ctor
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.__new = __ctor
end

---@class Barotrauma.MapCreatures.Behavior.BallastFloraBranch: Barotrauma.Items.Components.VineTile
---@field Health System.Single
---@field ParentBranch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@field BranchDepth System.Int32
---@field ParentBallastFlora Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
---@field ID System.Int32
---@field ClaimedItem Barotrauma.Item
---@field ClaimedItemId System.Int32
---@field MaxHealth System.Single
---@field private health System.Single
---@field RemoveTimer System.Single
---@field SpawningItem System.Boolean
---@field AttackItem Barotrauma.Item
---@field IsRoot System.Boolean
---@field IsRootGrowth System.Boolean
---@field Removed System.Boolean
---@field DisconnectedFromRoot System.Boolean
---@field CurrentHull Barotrauma.Hull
---@field Pulse System.Single
---@field private inflate System.Boolean
---@field private pulseDelay System.Single
---@field private parentBranch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@field AccumulatedDamage System.Single
---@field DamageVisualizationTimer System.Single
---@field Connections userdata | { [Barotrauma.Items.Components.TileSide]: Barotrauma.MapCreatures.Behavior.BallastFloraBranch } | (fun(): userdata)
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBranch = {}

---@return System.Single
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBranch.get_Health() end

---@param value System.Single
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBranch.set_Health(value) end

---@return Barotrauma.MapCreatures.Behavior.BallastFloraBranch
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBranch.get_ParentBranch() end

---@param value Barotrauma.MapCreatures.Behavior.BallastFloraBranch
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBranch.set_ParentBranch(value) end

function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBranch.UpdateHealth() end

---@param deltaTime System.Single
---@param inflateSpeed System.Single
---@param deflateSpeed System.Single
---@param delay System.Single
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBranch.UpdatePulse(deltaTime, inflateSpeed, deflateSpeed, delay) end

do
---@param parent Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
---@param parentBranch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@param position Microsoft.Xna.Framework.Vector2
---@param type Barotrauma.Items.Components.VineTileType
---@param flowerConfig? Barotrauma.Items.Components.FoliageConfig|nil
---@param leafConfig? Barotrauma.Items.Components.FoliageConfig|nil
---@param rect? Microsoft.Xna.Framework.Rectangle|nil
---@return Barotrauma.MapCreatures.Behavior.BallastFloraBranch
local __ctor = function(parent, parentBranch, position, type, flowerConfig, leafConfig, rect) end
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBranch = __ctor
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBranch.__new = __ctor
end

---@class Barotrauma.MapCreatures.Behavior.BallastFloraStateMachine: System.Object
---@field private parent Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
---@field private lastState Barotrauma.MapCreatures.Behavior.IBallastFloraState
---@field State Barotrauma.MapCreatures.Behavior.IBallastFloraState
CS.Barotrauma.MapCreatures.Behavior.BallastFloraStateMachine = {}

---@param newState Barotrauma.MapCreatures.Behavior.IBallastFloraState
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraStateMachine.EnterState(newState) end

---@param deltaTime System.Single
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraStateMachine.Update(deltaTime) end

do
---@param parent Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
---@return Barotrauma.MapCreatures.Behavior.BallastFloraStateMachine
local __ctor = function(parent) end
CS.Barotrauma.MapCreatures.Behavior.BallastFloraStateMachine = __ctor
CS.Barotrauma.MapCreatures.Behavior.BallastFloraStateMachine.__new = __ctor
end

---@class Barotrauma.MapCreatures.Behavior.DefendWithPumpState: System.Object
---@field private targetBranch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@field private allAvailablePumps userdata | { [System.Int32]: Barotrauma.Items.Components.Pump } | (fun(): Barotrauma.Items.Components.Pump)
---@field private allAvailableDoors userdata | { [System.Int32]: Barotrauma.Items.Components.Door } | (fun(): Barotrauma.Items.Components.Door)
---@field private targetPumps userdata | { [System.Int32]: Barotrauma.Items.Components.Pump } | (fun(): Barotrauma.Items.Components.Pump)
---@field private jammedDoors userdata | { [System.Int32]: Barotrauma.Items.Components.Door } | (fun(): Barotrauma.Items.Components.Door)
---@field private isFinished System.Boolean
---@field private timer System.Single
---@field private filled System.Boolean
---@field private tryDrown System.Boolean
---@field private attacker Barotrauma.Character
CS.Barotrauma.MapCreatures.Behavior.DefendWithPumpState = {}

---@return Barotrauma.MapCreatures.Behavior.ExitState
function CS.Barotrauma.MapCreatures.Behavior.DefendWithPumpState.GetState() end

function CS.Barotrauma.MapCreatures.Behavior.DefendWithPumpState.Enter() end

function CS.Barotrauma.MapCreatures.Behavior.DefendWithPumpState.Exit() end

---@private
---@param pump Barotrauma.Items.Components.Pump
function CS.Barotrauma.MapCreatures.Behavior.DefendWithPumpState.SetPump(pump) end

---@param deltaTime System.Single
function CS.Barotrauma.MapCreatures.Behavior.DefendWithPumpState.Update(deltaTime) end

do
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@param items userdata | (fun(): Barotrauma.Item)
---@param attacker Barotrauma.Character
---@return Barotrauma.MapCreatures.Behavior.DefendWithPumpState
local __ctor = function(branch, items, attacker) end
CS.Barotrauma.MapCreatures.Behavior.DefendWithPumpState = __ctor
CS.Barotrauma.MapCreatures.Behavior.DefendWithPumpState.__new = __ctor
end

---@class Barotrauma.MapCreatures.Behavior.GrowIdleState: System.Object
---@field Behavior Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
---@field private growthTimer System.Single
CS.Barotrauma.MapCreatures.Behavior.GrowIdleState = {}

---@return Barotrauma.MapCreatures.Behavior.ExitState
function CS.Barotrauma.MapCreatures.Behavior.GrowIdleState.GetState() end

function CS.Barotrauma.MapCreatures.Behavior.GrowIdleState.Enter() end

function CS.Barotrauma.MapCreatures.Behavior.GrowIdleState.Exit() end

---@private
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@return System.Boolean
function CS.Barotrauma.MapCreatures.Behavior.GrowIdleState.TryScanTargets(branch) end

---@param deltaTime System.Single
function CS.Barotrauma.MapCreatures.Behavior.GrowIdleState.Update(deltaTime) end

---@protected
function CS.Barotrauma.MapCreatures.Behavior.GrowIdleState.Grow() end

function CS.Barotrauma.MapCreatures.Behavior.GrowIdleState.UpdateIgnoredTargets() end

---@private
---@return userdata | { [System.Int32]: Barotrauma.MapCreatures.Behavior.BallastFloraBranch } | (fun(): Barotrauma.MapCreatures.Behavior.BallastFloraBranch)
function CS.Barotrauma.MapCreatures.Behavior.GrowIdleState.GrowRandomly() end

---@private
---@param branch Barotrauma.Items.Components.VineTile
---@return Barotrauma.Item
function CS.Barotrauma.MapCreatures.Behavior.GrowIdleState.ScanForTargets(branch) end

do
---@param behavior Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
---@return Barotrauma.MapCreatures.Behavior.GrowIdleState
local __ctor = function(behavior) end
CS.Barotrauma.MapCreatures.Behavior.GrowIdleState = __ctor
CS.Barotrauma.MapCreatures.Behavior.GrowIdleState.__new = __ctor
end

---@class Barotrauma.MapCreatures.Behavior.GrowToTargetState: Barotrauma.MapCreatures.Behavior.GrowIdleState
---@field TargetBranches userdata | { [System.Int32]: Barotrauma.MapCreatures.Behavior.BallastFloraBranch } | (fun(): Barotrauma.MapCreatures.Behavior.BallastFloraBranch)
---@field Target Barotrauma.Item
---@field private isFinished System.Boolean
CS.Barotrauma.MapCreatures.Behavior.GrowToTargetState = {}

function CS.Barotrauma.MapCreatures.Behavior.GrowToTargetState.Enter() end

---@return Barotrauma.MapCreatures.Behavior.ExitState
function CS.Barotrauma.MapCreatures.Behavior.GrowToTargetState.GetState() end

---@protected
function CS.Barotrauma.MapCreatures.Behavior.GrowToTargetState.Grow() end

---@private
function CS.Barotrauma.MapCreatures.Behavior.GrowToTargetState.GrowTowardsTarget() end

---@private
---@param tile Barotrauma.Items.Components.VineTile
---@param targetPos Microsoft.Xna.Framework.Vector2
---@return Barotrauma.Items.Components.TileSide
function CS.Barotrauma.MapCreatures.Behavior.GrowToTargetState.GetClosestSide(tile, targetPos) end

do
---@param behavior Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
---@param starter Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@param target Barotrauma.Item
---@return Barotrauma.MapCreatures.Behavior.GrowToTargetState
local __ctor = function(behavior, starter, target) end
CS.Barotrauma.MapCreatures.Behavior.GrowToTargetState = __ctor
CS.Barotrauma.MapCreatures.Behavior.GrowToTargetState.__new = __ctor
end

---@enum Barotrauma.MapCreatures.Behavior.ExitState
CS.Barotrauma.MapCreatures.Behavior.ExitState = {
    Running = 0,
    Terminate = 1,
    ReturnLast = 2
}

---@class Barotrauma.MapCreatures.Behavior.IBallastFloraState
CS.Barotrauma.MapCreatures.Behavior.IBallastFloraState = {}

function CS.Barotrauma.MapCreatures.Behavior.IBallastFloraState.Enter() end

function CS.Barotrauma.MapCreatures.Behavior.IBallastFloraState.Exit() end

---@param deltaTime System.Single
function CS.Barotrauma.MapCreatures.Behavior.IBallastFloraState.Update(deltaTime) end

---@return Barotrauma.MapCreatures.Behavior.ExitState
function CS.Barotrauma.MapCreatures.Behavior.IBallastFloraState.GetState() end


---@enum Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.NetworkHeader
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.NetworkHeader = {
    Spawn = 0,
    Kill = 1,
    BranchCreate = 2,
    BranchRemove = 3,
    BranchDamage = 4,
    Infect = 5,
    Remove = 6
}

---@enum Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.AttackType
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.AttackType = {
    Fire = 0,
    Explosives = 1,
    Other = 2,
    CutFromRoot = 3
}

---@class Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.AITarget: System.ValueType
---@field Tags Barotrauma.Identifier[]
---@field Priority System.Int32
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.AITarget = {}

---@param item Barotrauma.Item
---@return System.Boolean
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.AITarget.Matches(item) end

do
---@param element Barotrauma.ContentXElement
---@return Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.AITarget
local __ctor = function(element) end
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.AITarget = __ctor
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.AITarget.__new = __ctor
end

---@class Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.IEventData
---@field NetworkHeader Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.NetworkHeader
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.IEventData = {}

---@return Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.NetworkHeader
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.IEventData.get_NetworkHeader() end


---@class Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.SpawnEventData: System.ValueType
---@field NetworkHeader Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.NetworkHeader
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.SpawnEventData = {}

---@return Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.NetworkHeader
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.SpawnEventData.get_NetworkHeader() end


---@class Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.KillEventData: System.ValueType
---@field NetworkHeader Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.NetworkHeader
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.KillEventData = {}

---@return Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.NetworkHeader
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.KillEventData.get_NetworkHeader() end


---@class Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.RemoveEventData: System.ValueType
---@field NetworkHeader Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.NetworkHeader
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.RemoveEventData = {}

---@return Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.NetworkHeader
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.RemoveEventData.get_NetworkHeader() end


---@class Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.BranchCreateEventData: System.ValueType
---@field NetworkHeader Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.NetworkHeader
---@field NewBranch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@field Parent Barotrauma.MapCreatures.Behavior.BallastFloraBranch
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.BranchCreateEventData = {}

---@return Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.NetworkHeader
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.BranchCreateEventData.get_NetworkHeader() end

do
---@param newBranch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@param parent Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@return Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.BranchCreateEventData
local __ctor = function(newBranch, parent) end
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.BranchCreateEventData = __ctor
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.BranchCreateEventData.__new = __ctor
end

---@class Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.BranchRemoveEventData: System.ValueType
---@field NetworkHeader Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.NetworkHeader
---@field Branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.BranchRemoveEventData = {}

---@return Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.NetworkHeader
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.BranchRemoveEventData.get_NetworkHeader() end

do
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@return Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.BranchRemoveEventData
local __ctor = function(branch) end
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.BranchRemoveEventData = __ctor
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.BranchRemoveEventData.__new = __ctor
end

---@class Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.BranchDamageEventData: System.ValueType
---@field NetworkHeader Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.NetworkHeader
---@field Branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.BranchDamageEventData = {}

---@return Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.NetworkHeader
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.BranchDamageEventData.get_NetworkHeader() end

do
---@param branch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@return Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.BranchDamageEventData
local __ctor = function(branch) end
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.BranchDamageEventData = __ctor
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.BranchDamageEventData.__new = __ctor
end

---@class Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.InfectEventData: System.ValueType
---@field NetworkHeader Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.NetworkHeader
---@field Item Barotrauma.Item
---@field Infect Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.InfectEventData.InfectState
---@field Infector Barotrauma.MapCreatures.Behavior.BallastFloraBranch
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.InfectEventData = {}

---@return Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.NetworkHeader
function CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.InfectEventData.get_NetworkHeader() end

do
---@param item Barotrauma.Item
---@param infect Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.InfectEventData.InfectState
---@param infector Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@return Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.InfectEventData
local __ctor = function(item, infect, infector) end
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.InfectEventData = __ctor
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.InfectEventData.__new = __ctor
end

---@enum Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.InfectEventData.InfectState
CS.Barotrauma.MapCreatures.Behavior.BallastFloraBehavior.InfectEventData.InfectState = {
    Yes = 0,
    No = 1
}


---@meta
---Auto-generated from DedicatedServer
---Namespace: Barotrauma.Items.Components

---@class Barotrauma.Items.Components.DockingPort: Barotrauma.Items.Components.ItemComponent
---@field List userdata | (fun(): Barotrauma.Items.Components.DockingPort)
---@field DockingDir System.Int32
---@field DistanceTolerance Microsoft.Xna.Framework.Vector2
---@field DockedDistance System.Single
---@field IsHorizontal System.Boolean
---@field MainDockingPort System.Boolean
---@field ApplyEffectsOnDocking System.Boolean
---@field ForceDockingDirection Barotrauma.Items.Components.DockingPort.DirectionType
---@field WasDocked System.Boolean
---@field DockingTarget Barotrauma.Items.Components.DockingPort
---@field AtStartExit System.Boolean
---@field AtEndExit System.Boolean
---@field Door Barotrauma.Items.Components.Door
---@field Docked System.Boolean
---@field IsLocked System.Boolean
---@field AnotherPortInProximity System.Boolean
---@field private overlaySprite Barotrauma.Sprite
---@field private dockingState System.Single
---@field private joint FarseerPhysics.Dynamics.Joints.Joint
---@field private hulls Barotrauma.Hull[]
---@field private gap Barotrauma.Gap
---@field private bodies FarseerPhysics.Dynamics.Body[]
---@field private outsideBlocker FarseerPhysics.Dynamics.Fixture
---@field private doorBody FarseerPhysics.Dynamics.Body
---@field private dockingCooldown System.Single
---@field private docked System.Boolean
---@field private obstructedWayPointsDisabled System.Boolean
---@field private forceLockTimer System.Single
---@field private outpostAutoDockingPromptShown System.Boolean
---@field private allowOutpostAutoDocking Barotrauma.Items.Components.DockingPort.AllowOutpostAutoDocking
---@field private initialized System.Boolean
---@field private list userdata | { [System.Int32]: Barotrauma.Items.Components.DockingPort } | (fun(): Barotrauma.Items.Components.DockingPort)
---@field private ForceLockDelay System.Single
CS.Barotrauma.Items.Components.DockingPort = {}

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.DockingPort.ServerEventWrite(msg, c, extraData) end

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.DockingPort.ServerEventRead(msg, c) end

---@return userdata | (fun(): Barotrauma.Items.Components.DockingPort)
function CS.Barotrauma.Items.Components.DockingPort.get_List() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.DockingPort.get_AtStartExit() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.DockingPort.get_AtEndExit() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.DockingPort.get_Docked() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.DockingPort.set_Docked(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.DockingPort.get_IsLocked() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.DockingPort.get_AnotherPortInProximity() end

---@param relativeToSub System.Boolean
function CS.Barotrauma.Items.Components.DockingPort.FlipX(relativeToSub) end

---@param relativeToSub System.Boolean
function CS.Barotrauma.Items.Components.DockingPort.FlipY(relativeToSub) end

---@private
---@return Barotrauma.Items.Components.DockingPort
function CS.Barotrauma.Items.Components.DockingPort.FindAdjacentPort() end

---@private
function CS.Barotrauma.Items.Components.DockingPort.AttemptDock() end

---@param target Barotrauma.Items.Components.DockingPort
function CS.Barotrauma.Items.Components.DockingPort.Dock(target) end

---@param isNetworkMessage System.Boolean
---@param applyEffects? System.Boolean
---@param moveSubs? System.Boolean
function CS.Barotrauma.Items.Components.DockingPort.Lock(isNetworkMessage, applyEffects, moveSubs) end

---@private
---@param useWeldJoint System.Boolean
function CS.Barotrauma.Items.Components.DockingPort.CreateJoint(useWeldJoint) end

---@param dockingTarget? Barotrauma.Items.Components.DockingPort
---@return System.Int32
function CS.Barotrauma.Items.Components.DockingPort.GetDir(dockingTarget) end

---@private
---@return System.Int32
function CS.Barotrauma.Items.Components.DockingPort.GetForcedDockingDir() end

---@private
function CS.Barotrauma.Items.Components.DockingPort.ConnectWireBetweenPorts() end

---@private
function CS.Barotrauma.Items.Components.DockingPort.CreateDoorBody() end

---@private
function CS.Barotrauma.Items.Components.DockingPort.CreateHulls() end

---@private
function CS.Barotrauma.Items.Components.DockingPort.LinkHullsToGaps() end

---@param applyEffects? System.Boolean
function CS.Barotrauma.Items.Components.DockingPort.Undock(applyEffects) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.DockingPort.Update(deltaTime, cam) end

---@protected
function CS.Barotrauma.Items.Components.DockingPort.RemoveComponentSpecific() end

---@private
function CS.Barotrauma.Items.Components.DockingPort.InitializeLinks() end

function CS.Barotrauma.Items.Components.DockingPort.OnMapLoaded() end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.DockingPort.ReceiveSignal(signal, connection) end

---@overload fun(): Barotrauma.Items.Components.DockingPort
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.DockingPort
function CS.Barotrauma.Items.Components.DockingPort(item, element) end

---@class Barotrauma.Items.Components.Door: Barotrauma.Items.Components.Pickable
---@field DoorList userdata | (fun(): Barotrauma.Items.Components.Door)
---@field IsJammed System.Boolean
---@field IsStuck System.Boolean
---@field IgnoreSignals System.Boolean
---@field CanBeTraversed System.Boolean
---@field IsBroken System.Boolean
---@field Body Barotrauma.PhysicsBody
---@field private RepairThreshold System.Single
---@field Stuck System.Single
---@field OpeningSpeed System.Single
---@field ClosingSpeed System.Single
---@field ToggleCoolDown System.Single
---@field PredictedState System.Boolean|nil
---@field LinkedGap Barotrauma.Gap
---@field IsHorizontal System.Boolean
---@field IsConvexHullHorizontal System.Boolean
---@field Window Microsoft.Xna.Framework.Rectangle
---@field IsOpen System.Boolean
---@field ShouldBeOpen System.Boolean
---@field IsClosed System.Boolean
---@field IsFullyOpen System.Boolean
---@field IsFullyClosed System.Boolean
---@field HasWindow System.Boolean
---@field HasIntegratedButtons System.Boolean
---@field ToggleWhenClicked System.Boolean
---@field OpenState System.Single
---@field Impassable System.Boolean
---@field UseBetweenOutpostModules System.Boolean
---@field BotsShouldKeepOpen System.Boolean
---@field private linkedGap Barotrauma.Gap
---@field private isOpen System.Boolean
---@field private openState System.Single
---@field private lastOpenState System.Single
---@field private doorSprite Barotrauma.Sprite
---@field private weldedSprite Barotrauma.Sprite
---@field private brokenSprite Barotrauma.Sprite
---@field private scaleBrokenSprite System.Boolean
---@field private fadeBrokenSprite System.Boolean
---@field private autoOrientGap System.Boolean
---@field private isJammed System.Boolean
---@field private isStuck System.Boolean
---@field private resetPredictionTimer System.Single
---@field private toggleCooldownTimer System.Single
---@field private lastUser Barotrauma.Character
---@field private damageSoundCooldown System.Single
---@field private lastBrokenTime System.Double
---@field private doorRect Microsoft.Xna.Framework.Rectangle
---@field private isBroken System.Boolean
---@field OutsideSubmarineFixture FarseerPhysics.Dynamics.Fixture
---@field CanBeWelded System.Boolean
---@field private stuck System.Single
---@field private accessDeniedTxt Barotrauma.LocalizedString
---@field private cannotOpenText Barotrauma.LocalizedString
---@field private itemPosErrorShown System.Boolean
---@field private characterPosErrorShown userdata | (fun(): Barotrauma.Character)
---@field private doorList userdata | (fun(): Barotrauma.Items.Components.Door)
---@field private StuckReductionOnOpen System.Single
CS.Barotrauma.Items.Components.Door = {}

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.Door.ServerEventWrite(msg, c, extraData) end

---@return userdata | (fun(): Barotrauma.Items.Components.Door)
function CS.Barotrauma.Items.Components.Door.get_DoorList() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Door.get_IsJammed() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Door.set_IsJammed(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Door.get_IsStuck() end

---@private
---@param value System.Boolean
function CS.Barotrauma.Items.Components.Door.set_IsStuck(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Door.get_CanBeTraversed() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Door.get_IsBroken() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Door.set_IsBroken(value) end

---@private
---@return System.Single
function CS.Barotrauma.Items.Components.Door.get_RepairThreshold() end

---@return System.Single
function CS.Barotrauma.Items.Components.Door.get_Stuck() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Door.set_Stuck(value) end

---@return Barotrauma.Gap
function CS.Barotrauma.Items.Components.Door.get_LinkedGap() end

---@private
function CS.Barotrauma.Items.Components.Door.GetLinkedGap() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Door.get_IsConvexHullHorizontal() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Door.get_IsOpen() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Door.set_IsOpen(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Door.get_ShouldBeOpen() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Door.set_ShouldBeOpen(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Door.get_IsClosed() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Door.get_IsFullyOpen() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Door.get_IsFullyClosed() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Door.get_HasWindow() end

---@return System.Single
function CS.Barotrauma.Items.Components.Door.get_OpenState() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Door.set_OpenState(value) end

function CS.Barotrauma.Items.Components.Door.OnItemLoaded() end

---@param amount Microsoft.Xna.Framework.Vector2
---@param ignoreContacts? System.Boolean
function CS.Barotrauma.Items.Components.Door.Move(amount, ignoreContacts) end

---@param character Barotrauma.Character
---@param addMessage System.Boolean
---@param msg? Barotrauma.LocalizedString
---@return System.Boolean
function CS.Barotrauma.Items.Components.Door.HasRequiredItems(character, addMessage, msg) end

---@param picker Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Door.Pick(picker) end

---@param picker Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Door.OnPicked(picker) end

---@private
---@param actionType Barotrauma.ActionType
---@param user Barotrauma.Character
function CS.Barotrauma.Items.Components.Door.ToggleState(actionType, user) end

---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Door.Select(character) end

---@param position Microsoft.Xna.Framework.Vector2
---@param maxPerpendicularDistance? System.Single
---@return System.Boolean
function CS.Barotrauma.Items.Components.Door.IsPositionOnWindow(position, maxPerpendicularDistance) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Door.Update(deltaTime, cam) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Door.UpdateBroken(deltaTime, cam) end

---@private
function CS.Barotrauma.Items.Components.Door.EnableBody() end

---@private
function CS.Barotrauma.Items.Components.Door.DisableBody() end

function CS.Barotrauma.Items.Components.Door.RefreshLinkedGap() end

function CS.Barotrauma.Items.Components.Door.OnMapLoaded() end

function CS.Barotrauma.Items.Components.Door.OnScaleChanged() end

---@protected
function CS.Barotrauma.Items.Components.Door.RemoveComponentSpecific() end

---@private
---@return System.Boolean
function CS.Barotrauma.Items.Components.Door.CheckSubmarinesInDoorWay() end

---@private
function CS.Barotrauma.Items.Components.Door.PushCharactersAway() end

---@private
---@param c Barotrauma.Character
---@param body Barotrauma.PhysicsBody
---@param dir System.Int32
---@param doorRectSimPos Microsoft.Xna.Framework.Vector2
---@param doorRectSimSize Microsoft.Xna.Framework.Vector2
---@return System.Boolean
function CS.Barotrauma.Items.Components.Door.PushBodyOutOfDoorway(c, body, dir, doorRectSimPos, doorRectSimSize) end

---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Door.HasAccess(character) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.Door.ReceiveSignal(signal, connection) end

---@param open System.Boolean
---@param isNetworkMessage System.Boolean
---@param sendNetworkMessage? System.Boolean
function CS.Barotrauma.Items.Components.Door.TrySetState(open, isNetworkMessage, sendNetworkMessage) end

---@private
---@param open System.Boolean
---@param isNetworkMessage System.Boolean
---@param sendNetworkMessage System.Boolean
---@param forcedOpen System.Boolean
function CS.Barotrauma.Items.Components.Door.SetState(open, isNetworkMessage, sendNetworkMessage, forcedOpen) end

---@overload fun(): Barotrauma.Items.Components.Door
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Door
function CS.Barotrauma.Items.Components.Door(item, element) end

---@class Barotrauma.Items.Components.GeneticMaterial: Barotrauma.Items.Components.ItemComponent
---@field Effect System.String
---@field TaintedEffect Barotrauma.Identifier
---@field Tainted System.Boolean
---@field SetTaintedOnDeath System.Boolean
---@field CanBeUntainted System.Boolean
---@field SelectedTaintedEffect Barotrauma.Identifier
---@field ConditionIncreaseOnCombineMin System.Single
---@field ConditionIncreaseOnCombineMax System.Single
---@field ConditionIncreaseOnLowQualityCombine System.Single
---@field ConditionIncreaseOnHighQualityCombine System.Single
---@field private AllMaterialTypes userdata | (fun(): Barotrauma.ItemPrefab)
---@field private NestedMaterial Barotrauma.Items.Components.GeneticMaterial
---@field private IsCombined System.Boolean
---@field private materialName Barotrauma.LocalizedString
---@field private targetCharacter Barotrauma.Character
---@field private selectedEffect Barotrauma.AfflictionPrefab
---@field private selectedTaintedEffect Barotrauma.AfflictionPrefab
---@field private tainted System.Boolean
CS.Barotrauma.Items.Components.GeneticMaterial = {}

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.GeneticMaterial.ServerEventWrite(msg, c, extraData) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.GeneticMaterial.get_Tainted() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.GeneticMaterial.set_Tainted(value) end

---@return Barotrauma.Identifier
function CS.Barotrauma.Items.Components.GeneticMaterial.get_SelectedTaintedEffect() end

---@private
---@param value Barotrauma.Identifier
function CS.Barotrauma.Items.Components.GeneticMaterial.set_SelectedTaintedEffect(value) end

---@private
---@param otherGeneticMaterial Barotrauma.Items.Components.GeneticMaterial
---@return System.Boolean
function CS.Barotrauma.Items.Components.GeneticMaterial.SharesTypeWith(otherGeneticMaterial) end

---@private
---@param otherGeneticMaterial Barotrauma.Items.Components.GeneticMaterial
---@return Barotrauma.ItemPrefab
function CS.Barotrauma.Items.Components.GeneticMaterial.GetSharedTypeOrDefault(otherGeneticMaterial) end

---@private
---@return userdata | (fun(): Barotrauma.ItemPrefab)
function CS.Barotrauma.Items.Components.GeneticMaterial.get_AllMaterialTypes() end

---@private
---@return Barotrauma.Items.Components.GeneticMaterial
function CS.Barotrauma.Items.Components.GeneticMaterial.get_NestedMaterial() end

---@private
---@return System.Boolean
function CS.Barotrauma.Items.Components.GeneticMaterial.get_IsCombined() end

---@private
---@param otherGeneticMaterial Barotrauma.Items.Components.GeneticMaterial
---@return Barotrauma.Items.Components.GeneticMaterial.CombineResult
function CS.Barotrauma.Items.Components.GeneticMaterial.GetCombineRefineResult(otherGeneticMaterial) end

---@param otherGeneticMaterial Barotrauma.Items.Components.GeneticMaterial
---@return System.Boolean
function CS.Barotrauma.Items.Components.GeneticMaterial.CanBeCombinedWith(otherGeneticMaterial) end

---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.GeneticMaterial.Equip(character) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.GeneticMaterial.Update(deltaTime, cam) end

---@private
function CS.Barotrauma.Items.Components.GeneticMaterial.Deactivate() end

---@param otherGeneticMaterial Barotrauma.Items.Components.GeneticMaterial
---@param user Barotrauma.Character
---@param itemToDestroy Barotrauma.Item
---@return Barotrauma.Items.Components.GeneticMaterial.CombineResult
function CS.Barotrauma.Items.Components.GeneticMaterial.Combine(otherGeneticMaterial, user, itemToDestroy) end

---@private
---@return System.Single
function CS.Barotrauma.Items.Components.GeneticMaterial.GetCombinedEffectStrength() end

---@private
---@return System.Single
function CS.Barotrauma.Items.Components.GeneticMaterial.GetCombinedTaintedEffectStrength() end

---@private
---@param otherGeneticMaterial Barotrauma.Items.Components.GeneticMaterial
---@param user Barotrauma.Character
---@return System.Single
function CS.Barotrauma.Items.Components.GeneticMaterial.GetTaintedProbabilityOnRefine(otherGeneticMaterial, user) end

---@private
---@param user Barotrauma.Character
---@return System.Single
function CS.Barotrauma.Items.Components.GeneticMaterial.GetTaintedProbabilityOnCombine(user) end

---@param newValue System.Boolean
---@param affectsNestedGene? System.Boolean
function CS.Barotrauma.Items.Components.GeneticMaterial.SetTainted(newValue, affectsNestedGene) end

---@param prefab Barotrauma.ItemPrefab
---@param element System.Xml.Linq.XElement
---@return Barotrauma.LocalizedString
function CS.Barotrauma.Items.Components.GeneticMaterial.TryCreateName(prefab, element) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.GeneticMaterial
function CS.Barotrauma.Items.Components.GeneticMaterial(item, element) end

---@class Barotrauma.Items.Components.Growable: Barotrauma.Items.Components.ItemComponent
---@field GrowthSpeed System.Single
---@field MaxWater System.Single
---@field ExtraWaterUsedPerSecondWhileFlooded System.Single
---@field WaterUsedPerSecond System.Single
---@field SeedSpawnChance System.Single
---@field ProductSpawnChance System.Single
---@field MutationProbability System.Single
---@field FlowerTint Microsoft.Xna.Framework.Color
---@field FlowerQuantity System.Int32
---@field BaseFlowerScale System.Single
---@field BaseLeafScale System.Single
---@field LeafTint Microsoft.Xna.Framework.Color
---@field LeafProbability System.Single
---@field VineTint Microsoft.Xna.Framework.Color
---@field MaximumVines System.Int32
---@field VineScale System.Single
---@field DeadTint Microsoft.Xna.Framework.Color
---@field GrowthWeights Microsoft.Xna.Framework.Vector4
---@field FireVulnerability System.Single
---@field LinearProductAndSeedMultiplierBeforeFullyGrown Microsoft.Xna.Framework.Vector2
---@field Health System.Single
---@field Decayed System.Boolean
---@field FullyGrown System.Boolean
---@field private serverHealthUpdateTimer System.Int32
---@field FailedRectangles userdata | (fun(): Microsoft.Xna.Framework.Rectangle)
---@field private accelerateDeath System.Boolean
---@field private health System.Single
---@field private flowerVariants System.Int32
---@field private leafVariants System.Int32
---@field private flowerTiles System.Int32[]
---@field private productDelay System.Int32
---@field private vineDelay System.Int32
---@field private fireCheckCooldown System.Single
---@field ProducedItems userdata | { [System.Int32]: Barotrauma.Items.Components.ProducedItem } | (fun(): Barotrauma.Items.Components.ProducedItem)
---@field Vines userdata | { [System.Int32]: Barotrauma.Items.Components.VineTile } | (fun(): Barotrauma.Items.Components.VineTile)
---@field private ProducedSeed Barotrauma.Items.Components.ProducedItem
---@field private MinFlowerScale System.Single
---@field private MaxFlowerScale System.Single
---@field private MinLeafScale System.Single
---@field private MaxLeafScale System.Single
---@field private serverHealthUpdateDelay System.Int32
---@field private increasedDeathSpeed System.Single
---@field private maxProductDelay System.Int32
---@field private maxVineGrowthDelay System.Int32
---@field private VineChunkSize System.Int32
CS.Barotrauma.Items.Components.Growable = {}

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.Growable.ServerEventWrite(msg, c, extraData) end

---@return System.Single
function CS.Barotrauma.Items.Components.Growable.get_Health() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Growable.set_Health(value) end

function CS.Barotrauma.Items.Components.Growable.OnItemLoaded() end

---@private
---@param random? System.Random
function CS.Barotrauma.Items.Components.Growable.GenerateFlowerTiles(random) end

---@private
---@param element Barotrauma.ContentXElement
function CS.Barotrauma.Items.Components.Growable.LoadVines(element) end

---@param planter Barotrauma.Items.Components.Planter
---@param slot Barotrauma.Items.Components.PlantSlot
function CS.Barotrauma.Items.Components.Growable.OnGrowthTick(planter, slot) end

---@private
function CS.Barotrauma.Items.Components.Growable.UpdateBranchHealth() end

---@private
---@param planter Barotrauma.Items.Components.Planter
---@param slot Barotrauma.Items.Components.PlantSlot
function CS.Barotrauma.Items.Components.Growable.TryGenerateProduct(planter, slot) end

---@private
---@return System.Boolean
function CS.Barotrauma.Items.Components.Growable.CheckPlantState() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Growable.Update(deltaTime, cam) end

---@private
---@param deltaTime System.Single
function CS.Barotrauma.Items.Components.Growable.UpdateFires(deltaTime) end

---@private
---@param planter Barotrauma.Items.Components.Planter
---@param slot Barotrauma.Items.Components.PlantSlot
function CS.Barotrauma.Items.Components.Growable.GrowVines(planter, slot) end

---@private
function CS.Barotrauma.Items.Components.Growable.GenerateStem() end

---@private
---@param planter Barotrauma.Items.Components.Planter
---@param slot Barotrauma.Items.Components.PlantSlot
---@param random? System.Random
---@param flowerRandom? System.Random
function CS.Barotrauma.Items.Components.Growable.TryGenerateBranches(planter, slot, random, flowerRandom) end

---@private
---@param rect Microsoft.Xna.Framework.Rectangle
---@param planter Barotrauma.Items.Components.Planter
---@param slot Barotrauma.Items.Components.PlantSlot
---@return System.Boolean
function CS.Barotrauma.Items.Components.Growable.CollidesWithWorld(rect, planter, slot) end

---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
function CS.Barotrauma.Items.Components.Growable.Save(parentElement) end

---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean
---@param idRemap Barotrauma.IdRemap
---@param isItemSwap System.Boolean
function CS.Barotrauma.Items.Components.Growable.Load(componentElement, usePrefabValues, idRemap, isItemSwap) end

---@private
---@return System.Boolean
function CS.Barotrauma.Items.Components.Growable.CanGrowMore() end

---@param min System.Int32
---@param max System.Int32
---@param random? System.Random
---@return System.Int32
function CS.Barotrauma.Items.Components.Growable.RandomInt(min, max, random) end

---@param min System.Double
---@param max System.Double
---@param random? System.Random
---@return System.Double
function CS.Barotrauma.Items.Components.Growable.RandomDouble(min, max, random) end

---@overload fun(): Barotrauma.Items.Components.Growable
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Growable
function CS.Barotrauma.Items.Components.Growable(item, element) end

---@class Barotrauma.Items.Components.Holdable: Barotrauma.Items.Components.Pickable
---@field IsAttached System.Boolean
---@field Pusher Barotrauma.PhysicsBody
---@field CanPush System.Boolean
---@field Body Barotrauma.PhysicsBody
---@field Attached System.Boolean
---@field Aimable System.Boolean
---@field CameraAimOffset System.Single
---@field ControlPose System.Boolean
---@field UseHandRotationForHoldAngle System.Boolean
---@field Attachable System.Boolean
---@field Reattachable System.Boolean
---@field LimitedAttachable System.Boolean
---@field AttachesToFloor System.Boolean
---@field AllowAttachInsideDoors System.Boolean
---@field DisallowAttachingOverTags System.String
---@field DisallowAttachingOverSize Microsoft.Xna.Framework.Point
---@field AttachedByDefault System.Boolean
---@field HoldPos Microsoft.Xna.Framework.Vector2
---@field AimPos Microsoft.Xna.Framework.Vector2
---@field HoldAngle System.Single
---@field AimAngle System.Single
---@field SwingAmount Microsoft.Xna.Framework.Vector2
---@field SwingSpeed System.Single
---@field SwingWhenHolding System.Boolean
---@field SwingWhenAiming System.Boolean
---@field SwingWhenUsing System.Boolean
---@field DisableHeadRotation System.Boolean
---@field DisableWhenRangedWeaponEquipped System.Boolean
---@field SpriteDepthWhenDropped System.Single
---@field MsgWhenDropped System.String
---@field Handle1 Microsoft.Xna.Framework.Vector2
---@field Handle2 Microsoft.Xna.Framework.Vector2
---@field protected handlePos Microsoft.Xna.Framework.Vector2[]
---@field private scaledHandlePos Microsoft.Xna.Framework.Vector2[]
---@field private prevPickKey Barotrauma.InputType
---@field private prevMsg Barotrauma.LocalizedString
---@field private prevRequiredItems userdata | { [Barotrauma.RelatedItem.RelationType]: userdata | { [System.Int32]: Barotrauma.RelatedItem } | (fun(): Barotrauma.RelatedItem) } | (fun(): userdata)
---@field private swingState System.Single
---@field private prevEquipper Barotrauma.Character
---@field private attachable System.Boolean
---@field private attached System.Boolean
---@field private attachedByDefault System.Boolean
---@field private attachTargetCell Voronoi2.VoronoiCell
---@field private originalBody Barotrauma.PhysicsBody
---@field HoldableStatValues userdata | { [Barotrauma.StatTypes]: System.Single } | (fun(): userdata)
---@field private disallowAttachingOverTags userdata | (fun(): Barotrauma.Identifier)
---@field protected holdPos Microsoft.Xna.Framework.Vector2
---@field protected aimPos Microsoft.Xna.Framework.Vector2
---@field protected holdAngle System.Single
---@field protected aimAngle System.Single
---@field private swingAmount Microsoft.Xna.Framework.Vector2
---@field private secondHandlePosDefined System.Boolean
---@field private loadedFromInstance System.Boolean
---@field private tempOverlappingItems userdata | { [System.Int32]: Barotrauma.Item } | (fun(): Barotrauma.Item)
---@field private MaxAttachDistance System.Single
CS.Barotrauma.Items.Components.Holdable = {}

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.Holdable.ServerEventWrite(msg, c, extraData) end

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.Holdable.ServerEventRead(msg, c) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Holdable.get_IsAttached() end

---@return Barotrauma.PhysicsBody
function CS.Barotrauma.Items.Components.Holdable.get_Body() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Holdable.get_Attached() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Holdable.set_Attached(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Holdable.get_Attachable() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Holdable.set_Attachable(value) end

---@return System.String
function CS.Barotrauma.Items.Components.Holdable.get_DisallowAttachingOverTags() end

---@param value System.String
function CS.Barotrauma.Items.Components.Holdable.set_DisallowAttachingOverTags(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Holdable.get_AttachedByDefault() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Holdable.set_AttachedByDefault(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Holdable.get_HoldPos() end

---@param value Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Holdable.set_HoldPos(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Holdable.get_AimPos() end

---@param value Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Holdable.set_AimPos(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Holdable.get_HoldAngle() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Holdable.set_HoldAngle(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Holdable.get_AimAngle() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Holdable.set_AimAngle(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Holdable.get_SwingAmount() end

---@param value Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Holdable.set_SwingAmount(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Holdable.get_Handle1() end

---@param value Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Holdable.set_Handle1(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Holdable.get_Handle2() end

---@param value Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Holdable.set_Handle2(value) end

---@private
---@param sender FarseerPhysics.Dynamics.Fixture
---@param other FarseerPhysics.Dynamics.Fixture
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
---@return System.Boolean
function CS.Barotrauma.Items.Components.Holdable.OnPusherCollision(sender, other, contact) end

---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean
---@param idRemap Barotrauma.IdRemap
---@param isItemSwap System.Boolean
function CS.Barotrauma.Items.Components.Holdable.Load(componentElement, usePrefabValues, idRemap, isItemSwap) end

---@param dropper Barotrauma.Character
---@param setTransform? System.Boolean
function CS.Barotrauma.Items.Components.Holdable.Drop(dropper, setTransform) end

---@private
---@param dropConnectedWires System.Boolean
---@param dropper Barotrauma.Character
---@param setTransform? System.Boolean
function CS.Barotrauma.Items.Components.Holdable.Drop(dropConnectedWires, dropper, setTransform) end

---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.Holdable.Equip(character) end

---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.Holdable.Unequip(character) end

---@param user Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Holdable.CanBeAttached(user) end

---@private
---@param user Barotrauma.Character
---@param overlappingItems userdata | (fun(): Barotrauma.Item)
---@return System.Boolean
function CS.Barotrauma.Items.Components.Holdable.CanBeAttached(user, overlappingItems) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Holdable.CanBeDeattached() end

---@param picker Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Holdable.Pick(picker) end

---@param picker Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Holdable.OnPicked(picker) end

function CS.Barotrauma.Items.Components.Holdable.AttachToWall() end

function CS.Barotrauma.Items.Components.Holdable.DeattachFromWall() end

function CS.Barotrauma.Items.Components.Holdable.ParseMsg() end

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Holdable.Use(deltaTime, character) end

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Holdable.SecondaryUse(deltaTime, character) end

---@private
---@param user Barotrauma.Character
---@param useWorldCoordinates? System.Boolean
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Holdable.GetAttachPosition(user, useWorldCoordinates) end

---@private
---@param maxDist System.Single
---@return Voronoi2.VoronoiCell
function CS.Barotrauma.Items.Components.Holdable.GetAttachTargetCell(maxDist) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Holdable.UpdateBroken(deltaTime, cam) end

---@return Barotrauma.Items.Components.Rope
function CS.Barotrauma.Items.Components.Holdable.GetRope() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Holdable.Update(deltaTime, cam) end

---@param deltaTime System.Single
---@param swingPos Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Holdable.UpdateSwingPos(deltaTime, swingPos) end

---@protected
---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Holdable.UsageDisabledByRangedWeapon(character) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.Holdable.ReceiveSignal(signal, connection) end

---@param relativeToSub System.Boolean
function CS.Barotrauma.Items.Components.Holdable.FlipX(relativeToSub) end

function CS.Barotrauma.Items.Components.Holdable.OnItemLoaded() end

function CS.Barotrauma.Items.Components.Holdable.OnMapLoaded() end

---@protected
function CS.Barotrauma.Items.Components.Holdable.RemoveComponentSpecific() end

---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
function CS.Barotrauma.Items.Components.Holdable.Save(parentElement) end

---@overload fun(): Barotrauma.Items.Components.Holdable
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Holdable
function CS.Barotrauma.Items.Components.Holdable(item, element) end

---@class Barotrauma.Items.Components.LevelResource: Barotrauma.Items.Components.ItemComponent
---@field DeattachDuration System.Single
---@field DeattachTimer System.Single
---@field RandomOffsetFromWall System.Single
---@field Attached System.Boolean
---@field private lastSentDeattachTimer System.Single
---@field private trigger Barotrauma.PhysicsBody
---@field private holdable Barotrauma.Items.Components.Holdable
---@field private deattachTimer System.Single
CS.Barotrauma.Items.Components.LevelResource = {}

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.LevelResource.ServerEventWrite(msg, c, extraData) end

---@return System.Single
function CS.Barotrauma.Items.Components.LevelResource.get_DeattachTimer() end

---@param value System.Single
function CS.Barotrauma.Items.Components.LevelResource.set_DeattachTimer(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.LevelResource.get_Attached() end

---@param amount Microsoft.Xna.Framework.Vector2
---@param ignoreContacts? System.Boolean
function CS.Barotrauma.Items.Components.LevelResource.Move(amount, ignoreContacts) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.LevelResource.Update(deltaTime, cam) end

function CS.Barotrauma.Items.Components.LevelResource.OnItemLoaded() end

---@private
function CS.Barotrauma.Items.Components.LevelResource.CreateTriggerBody() end

---@protected
function CS.Barotrauma.Items.Components.LevelResource.RemoveComponentSpecific() end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.LevelResource
function CS.Barotrauma.Items.Components.LevelResource(item, element) end

---@class Barotrauma.Items.Components.ItemComponent: System.Object
---@field Parent Barotrauma.Items.Components.ItemComponent
---@field InheritParentIsActive System.Boolean
---@field DontTransferInventoryBetweenSubs System.Boolean
---@field DisallowSellingItemsFromContainer System.Boolean
---@field PickingTime System.Single
---@field PickingMsg System.String
---@field SerializableProperties userdata | { [Barotrauma.Identifier]: Barotrauma.SerializableProperty } | (fun(): userdata)
---@field IsActive System.Boolean
---@field IsActiveConditionalComparison Barotrauma.PropertyConditional.LogicalOperatorType
---@field Drawable System.Boolean
---@field CanBePicked System.Boolean
---@field DrawHudWhenEquipped System.Boolean
---@field LockGuiFramePosition System.Boolean
---@field GuiFrameOffset Microsoft.Xna.Framework.Point
---@field CanBeSelected System.Boolean
---@field CanBeCombined System.Boolean
---@field RemoveOnCombined System.Boolean
---@field CharacterUsable System.Boolean
---@field AllowInGameEditing System.Boolean
---@field PickKey Barotrauma.InputType
---@field SelectKey Barotrauma.InputType
---@field DeleteOnUse System.Boolean
---@field Item Barotrauma.Item
---@field Name System.String
---@field Msg System.String
---@field DisplayMsg Barotrauma.LocalizedString
---@field CombatPriority System.Single
---@field ManuallySelectedSound System.Int32
---@field Speed System.Single
---@field UpdateWhenInactive System.Boolean
---@field UpdateWhenBroken System.Boolean
---@field protected item Barotrauma.Item
---@field protected name System.String
---@field private isActive System.Boolean
---@field protected characterUsable System.Boolean
---@field protected canBePicked System.Boolean
---@field protected canBeSelected System.Boolean
---@field protected canBeCombined System.Boolean
---@field protected removeOnCombined System.Boolean
---@field WasUsed System.Boolean
---@field WasSecondaryUsed System.Boolean
---@field statusEffectLists userdata | { [Barotrauma.ActionType]: userdata | { [System.Int32]: Barotrauma.StatusEffect } | (fun(): Barotrauma.StatusEffect) } | (fun(): userdata)
---@field RequiredItems userdata | { [Barotrauma.RelatedItem.RelationType]: userdata | { [System.Int32]: Barotrauma.RelatedItem } | (fun(): Barotrauma.RelatedItem) } | (fun(): userdata)
---@field DisabledRequiredItems userdata | { [System.Int32]: Barotrauma.RelatedItem } | (fun(): Barotrauma.RelatedItem)
---@field RequiredSkills userdata | { [System.Int32]: Barotrauma.Skill } | (fun(): Barotrauma.Skill)
---@field private parent Barotrauma.Items.Components.ItemComponent
---@field originalElement Barotrauma.ContentXElement
---@field protected delayedCorrectionCoroutine Barotrauma.CoroutineHandle
---@field OnActiveStateChanged fun(obj: System.Boolean)
---@field private drawable System.Boolean
---@field IsActiveConditionals userdata | { [System.Int32]: Barotrauma.PropertyConditional } | (fun(): Barotrauma.PropertyConditional)
---@field OnUsed userdata
---@field InheritStatusEffects System.Boolean
---@field protected aiUpdateTimer System.Single
---@field protected CorrectionDelay System.Single
---@field protected AIUpdateInterval System.Single
CS.Barotrauma.Items.Components.ItemComponent = {}

---@private
---@param subElement Barotrauma.ContentXElement
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.LoadElemProjSpecific(subElement) end

---@return Barotrauma.Items.Components.ItemComponent.IEventData
function CS.Barotrauma.Items.Components.ItemComponent.ServerGetEventData() end

---@return Barotrauma.Items.Components.ItemComponent
function CS.Barotrauma.Items.Components.ItemComponent.get_Parent() end

---@param value Barotrauma.Items.Components.ItemComponent
function CS.Barotrauma.Items.Components.ItemComponent.set_Parent(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.get_DontTransferInventoryBetweenSubs() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.get_DisallowSellingItemsFromContainer() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.get_IsActive() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.set_IsActive(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.get_Drawable() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.set_Drawable(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.get_CanBePicked() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.set_CanBePicked(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.get_CanBeSelected() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.set_CanBeSelected(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.get_CanBeCombined() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.set_CanBeCombined(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.get_RemoveOnCombined() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.set_RemoveOnCombined(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.get_CharacterUsable() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.set_CharacterUsable(value) end

---@return Barotrauma.Item
function CS.Barotrauma.Items.Components.ItemComponent.get_Item() end

---@return System.String
function CS.Barotrauma.Items.Components.ItemComponent.get_Name() end

---@return System.Single
function CS.Barotrauma.Items.Components.ItemComponent.get_Speed() end

---@private
---@param isActive System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.SetActiveState(isActive) end

---@param element Barotrauma.ContentXElement
---@param allowEmpty? System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.SetRequiredItems(element, allowEmpty) end

---@param amount Microsoft.Xna.Framework.Vector2
---@param ignoreContacts? System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.Move(amount, ignoreContacts) end

---@param picker Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.Pick(picker) end

---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.Select(character) end

---@param dropper Barotrauma.Character
---@param setTransform? System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.Drop(dropper, setTransform) end

---@param deltaTime System.Single
---@param character Barotrauma.Character
---@param objective Barotrauma.AIObjectiveOperateItem
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.CrewAIOperate(deltaTime, character, objective) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.get_UpdateWhenInactive() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.ItemComponent.Update(deltaTime, cam) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.ItemComponent.UpdateBroken(deltaTime, cam) end

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.Use(deltaTime, character) end

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.SecondaryUse(deltaTime, character) end

---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.ItemComponent.Equip(character) end

---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.ItemComponent.Unequip(character) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.ItemComponent.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param user Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.Combine(item, user) end

function CS.Barotrauma.Items.Components.ItemComponent.Remove() end

function CS.Barotrauma.Items.Components.ItemComponent.ShallowRemove() end

---@protected
function CS.Barotrauma.Items.Components.ItemComponent.ShallowRemoveComponentSpecific() end

---@protected
function CS.Barotrauma.Items.Components.ItemComponent.RemoveComponentSpecific() end

---@protected
---@param subElement Barotrauma.ContentXElement
---@return System.String
function CS.Barotrauma.Items.Components.ItemComponent.GetTextureDirectory(subElement) end

---@overload fun(character: Barotrauma.Character, insufficientSkill: Barotrauma.Skill): System.Boolean
---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.HasRequiredSkills(character) end

---@return System.Single
function CS.Barotrauma.Items.Components.ItemComponent.GetSkillMultiplier() end

---@overload fun(character: Barotrauma.Character, requiredSkills: (userdata | { [System.Int32]: Barotrauma.Skill } | (fun(): Barotrauma.Skill))): System.Single
---@param character Barotrauma.Character
---@return System.Single
function CS.Barotrauma.Items.Components.ItemComponent.DegreeOfSuccess(character) end

---@param relativeToSub System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.FlipX(relativeToSub) end

---@param relativeToSub System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.FlipY(relativeToSub) end

---@param user Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.IsEmpty(user) end

---@param user Barotrauma.Character
---@param addMessage System.Boolean
---@param msg? Barotrauma.LocalizedString
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.HasRequiredContainedItems(user, addMessage, msg) end

---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.HasAccess(character) end

---@private
---@param relatedItem Barotrauma.RelatedItem
---@param idCard Barotrauma.Items.Components.IdCard
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.CheckIdCardAccess(relatedItem, idCard) end

---@param character Barotrauma.Character
---@param addMessage System.Boolean
---@param msg? Barotrauma.LocalizedString
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.HasRequiredItems(character, addMessage, msg) end

---@param type Barotrauma.ActionType
---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@param targetLimb? Barotrauma.Limb
---@param useTarget? Barotrauma.Entity
---@param user? Barotrauma.Character
---@param worldPosition? Microsoft.Xna.Framework.Vector2|nil
---@param attackMultiplier? System.Single
function CS.Barotrauma.Items.Components.ItemComponent.ApplyStatusEffects(type, deltaTime, character, targetLimb, useTarget, user, worldPosition, attackMultiplier) end

---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean
---@param idRemap Barotrauma.IdRemap
---@param isItemSwap System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.Load(componentElement, usePrefabValues, idRemap, isItemSwap) end

function CS.Barotrauma.Items.Components.ItemComponent.OnMapLoaded() end

function CS.Barotrauma.Items.Components.ItemComponent.OnItemLoaded() end

---@param original Barotrauma.Items.Components.ItemComponent
function CS.Barotrauma.Items.Components.ItemComponent.Clone(original) end

function CS.Barotrauma.Items.Components.ItemComponent.OnScaleChanged() end

function CS.Barotrauma.Items.Components.ItemComponent.OnInventoryChanged() end

---@param element Barotrauma.ContentXElement
---@param item Barotrauma.Item
---@param errorMessages? System.Boolean
---@return Barotrauma.Items.Components.ItemComponent
function CS.Barotrauma.Items.Components.ItemComponent.Load(element, item, errorMessages) end

---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
function CS.Barotrauma.Items.Components.ItemComponent.Save(parentElement) end

function CS.Barotrauma.Items.Components.ItemComponent.Reset() end

---@private
---@param element Barotrauma.ContentXElement
function CS.Barotrauma.Items.Components.ItemComponent.OverrideRequiredItems(element) end

function CS.Barotrauma.Items.Components.ItemComponent.ParseMsg() end

---@param data Barotrauma.Networking.NetEntityEvent.IData
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemComponent.ValidateEventData(data) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ItemComponent
function CS.Barotrauma.Items.Components.ItemComponent(item, element) end

---@class Barotrauma.Items.Components.ItemLabel: Barotrauma.Items.Components.ItemComponent
---@field Text System.String
---@field IgnoreLocalization System.Boolean
---@field TextColor Microsoft.Xna.Framework.Color
---@field TextScale System.Single
---@field Padding Microsoft.Xna.Framework.Vector4
---@field DrawSize Microsoft.Xna.Framework.Vector2
---@field private sendStateCoroutine Barotrauma.CoroutineHandle
---@field private lastSentText System.String
---@field private sendStateTimer System.Single
---@field private prevColorSignal System.String
CS.Barotrauma.Items.Components.ItemLabel = {}

---@param amount Microsoft.Xna.Framework.Vector2
---@param ignoreContacts? System.Boolean
function CS.Barotrauma.Items.Components.ItemLabel.Move(amount, ignoreContacts) end

---@private
---@return userdata | (fun(): Barotrauma.CoroutineStatus)
function CS.Barotrauma.Items.Components.ItemLabel.SendStateAfterDelay() end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.ItemLabel.ServerEventWrite(msg, c, extraData) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.ItemLabel.get_DrawSize() end

---@private
function CS.Barotrauma.Items.Components.ItemLabel.OnStateChanged() end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.ItemLabel.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ItemLabel
function CS.Barotrauma.Items.Components.ItemLabel(item, element) end

---@class Barotrauma.Items.Components.LightComponent: Barotrauma.Items.Components.Powered
---@field Range System.Single
---@field Rotation System.Single
---@field CastShadows System.Boolean
---@field DrawBehindSubs System.Boolean
---@field IsOn System.Boolean
---@field Flicker System.Single
---@field FlickerSpeed System.Single
---@field PulseFrequency System.Single
---@field PulseAmount System.Single
---@field BlinkFrequency System.Single
---@field LightColor Microsoft.Xna.Framework.Color
---@field IgnoreContinuousToggle System.Boolean
---@field AlphaBlend System.Boolean
---@field LightOffset Microsoft.Xna.Framework.Vector2
---@field IsRed System.Boolean
---@field IsGreen System.Boolean
---@field IsBlue System.Boolean
---@field IsActive System.Boolean
---@field private sendStateCoroutine Barotrauma.CoroutineHandle
---@field private lastSentState System.Boolean
---@field private sendStateTimer System.Single
---@field private lightColor Microsoft.Xna.Framework.Color
---@field private lightBrightness System.Single
---@field private blinkFrequency System.Single
---@field private pulseFrequency System.Single
---@field private pulseAmount System.Single
---@field private range System.Single
---@field private flicker System.Single
---@field private flickerSpeed System.Single
---@field private castShadows System.Boolean
---@field private drawBehindSubs System.Boolean
---@field private lastToggleSignalTime System.Double
---@field private prevColorSignal System.String
---@field ParentBody Barotrauma.PhysicsBody
---@field private isOn System.Boolean
---@field private turret Barotrauma.Items.Components.Turret
---@field private rotation System.Single
---@field TemporaryFlickerTimer System.Single
CS.Barotrauma.Items.Components.LightComponent = {}

---@private
---@return userdata | (fun(): Barotrauma.CoroutineStatus)
function CS.Barotrauma.Items.Components.LightComponent.SendStateAfterDelay() end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.LightComponent.ServerEventWrite(msg, c, extraData) end

---@return System.Single
function CS.Barotrauma.Items.Components.LightComponent.get_Range() end

---@param value System.Single
function CS.Barotrauma.Items.Components.LightComponent.set_Range(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.LightComponent.get_Rotation() end

---@param value System.Single
function CS.Barotrauma.Items.Components.LightComponent.set_Rotation(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.LightComponent.get_CastShadows() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.LightComponent.set_CastShadows(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.LightComponent.get_DrawBehindSubs() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.LightComponent.set_DrawBehindSubs(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.LightComponent.get_IsOn() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.LightComponent.set_IsOn(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.LightComponent.get_Flicker() end

---@param value System.Single
function CS.Barotrauma.Items.Components.LightComponent.set_Flicker(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.LightComponent.get_FlickerSpeed() end

---@param value System.Single
function CS.Barotrauma.Items.Components.LightComponent.set_FlickerSpeed(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.LightComponent.get_PulseFrequency() end

---@param value System.Single
function CS.Barotrauma.Items.Components.LightComponent.set_PulseFrequency(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.LightComponent.get_PulseAmount() end

---@param value System.Single
function CS.Barotrauma.Items.Components.LightComponent.set_PulseAmount(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.LightComponent.get_BlinkFrequency() end

---@param value System.Single
function CS.Barotrauma.Items.Components.LightComponent.set_BlinkFrequency(value) end

---@return Microsoft.Xna.Framework.Color
function CS.Barotrauma.Items.Components.LightComponent.get_LightColor() end

---@param value Microsoft.Xna.Framework.Color
function CS.Barotrauma.Items.Components.LightComponent.set_LightColor(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.LightComponent.get_IsRed() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.LightComponent.get_IsGreen() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.LightComponent.get_IsBlue() end

---@param amount Microsoft.Xna.Framework.Vector2
---@param ignoreContacts? System.Boolean
function CS.Barotrauma.Items.Components.LightComponent.Move(amount, ignoreContacts) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.LightComponent.get_IsActive() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.LightComponent.set_IsActive(value) end

function CS.Barotrauma.Items.Components.LightComponent.OnItemLoaded() end

function CS.Barotrauma.Items.Components.LightComponent.OnMapLoaded() end

function CS.Barotrauma.Items.Components.LightComponent.CheckIfNeedsUpdate() end

---@private
---@return System.Boolean
function CS.Barotrauma.Items.Components.LightComponent.IsVisibleInInventory() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.LightComponent.Update(deltaTime, cam) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.LightComponent.UpdateBroken(deltaTime, cam) end

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.LightComponent.Use(deltaTime, character) end

---@private
function CS.Barotrauma.Items.Components.LightComponent.OnStateChanged() end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.LightComponent.ReceiveSignal(signal, connection) end

---@private
---@param target Barotrauma.AITarget
function CS.Barotrauma.Items.Components.LightComponent.UpdateAITarget(target) end

---@param dropper Barotrauma.Character
---@param setTransform? System.Boolean
function CS.Barotrauma.Items.Components.LightComponent.Drop(dropper, setTransform) end

function CS.Barotrauma.Items.Components.LightComponent.SetLightSourceTransform() end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.LightComponent
function CS.Barotrauma.Items.Components.LightComponent(item, element) end

---@class Barotrauma.Items.Components.Controller: Barotrauma.Items.Components.ItemComponent
---@field Direction Barotrauma.Direction
---@field UserPos Microsoft.Xna.Framework.Vector2
---@field User Barotrauma.Character
---@field LimbPositions userdata | (fun(): Barotrauma.Items.Components.LimbPos)
---@field IsToggle System.Boolean
---@field Output System.String
---@field FalseOutput System.String
---@field State System.Boolean
---@field HideHUD System.Boolean
---@field UsableIn Barotrauma.Items.Components.Controller.UseEnvironment
---@field DrawUserBehind System.Boolean
---@field AllowSelectingWhenSelectedByOther System.Boolean
---@field AllowSelectingWhenSelectedByBot System.Boolean
---@field ControlCharacterPose System.Boolean
---@field UserInCorrectPosition System.Boolean
---@field AllowAiming System.Boolean
---@field NonInteractableWhenFlippedX System.Boolean
---@field NonInteractableWhenFlippedY System.Boolean
---@field RequirePower System.Boolean
---@field IsSecondaryItem System.Boolean
---@field ForceUserToStayAttached System.Boolean
---@field private limbPositions userdata | { [System.Int32]: Barotrauma.Items.Components.LimbPos } | (fun(): Barotrauma.Items.Components.LimbPos)
---@field private dir Barotrauma.Direction
---@field private userPos Microsoft.Xna.Framework.Vector2
---@field private cam Barotrauma.Camera
---@field private user Barotrauma.Character
---@field private focusTarget Barotrauma.Item
---@field private targetRotation System.Single
---@field private output System.String
---@field private falseOutput System.String
---@field private state System.Boolean
---@field private forceSelectNextFrame System.Boolean
---@field private userCanInteractCheckTimer System.Single
---@field private lastUsed System.Double
---@field private UserCanInteractCheckInterval System.Single
CS.Barotrauma.Items.Components.Controller = {}

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.Controller.ServerEventWrite(msg, c, extraData) end

---@return Barotrauma.Direction
function CS.Barotrauma.Items.Components.Controller.get_Direction() end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Controller.get_UserPos() end

---@param value Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Controller.set_UserPos(value) end

---@return Barotrauma.Character
function CS.Barotrauma.Items.Components.Controller.get_User() end

---@return userdata | (fun(): Barotrauma.Items.Components.LimbPos)
function CS.Barotrauma.Items.Components.Controller.get_LimbPositions() end

---@return System.String
function CS.Barotrauma.Items.Components.Controller.get_Output() end

---@param value System.String
function CS.Barotrauma.Items.Components.Controller.set_Output(value) end

---@return System.String
function CS.Barotrauma.Items.Components.Controller.get_FalseOutput() end

---@param value System.String
function CS.Barotrauma.Items.Components.Controller.set_FalseOutput(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Controller.get_State() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Controller.set_State(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Controller.get_ControlCharacterPose() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Controller.Update(deltaTime, cam) end

---@private
---@return System.Boolean
function CS.Barotrauma.Items.Components.Controller.CheckUserCanInteract() end

---@param deltaTime System.Single
---@param activator? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Controller.Use(deltaTime, activator) end

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Controller.SecondaryUse(deltaTime, character) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Controller.IsOutOfPower() end

---@return Barotrauma.Item
function CS.Barotrauma.Items.Components.Controller.GetFocusTarget() end

---@param picker Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Controller.Pick(picker) end

---@private
---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.Controller.CancelUsing(character) end

---@param activator Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Controller.Select(activator) end

---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Controller.IsAttachedUser(character) end

---@param relativeToSub System.Boolean
function CS.Barotrauma.Items.Components.Controller.FlipX(relativeToSub) end

---@param relativeToSub System.Boolean
function CS.Barotrauma.Items.Components.Controller.FlipY(relativeToSub) end

---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Controller.HasAccess(character) end

---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
function CS.Barotrauma.Items.Components.Controller.Save(parentElement) end

---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean
---@param idRemap Barotrauma.IdRemap
---@param isItemSwap System.Boolean
function CS.Barotrauma.Items.Components.Controller.Load(componentElement, usePrefabValues, idRemap, isItemSwap) end

---@private
---@param element System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
function CS.Barotrauma.Items.Components.Controller.SaveLimbPositions(element) end

---@private
---@param element Barotrauma.ContentXElement
function CS.Barotrauma.Items.Components.Controller.LoadLimbPositions(element) end

---@private
function CS.Barotrauma.Items.Components.Controller.FlipLimbPositions() end

function CS.Barotrauma.Items.Components.Controller.OnItemLoaded() end

function CS.Barotrauma.Items.Components.Controller.Reset() end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Controller
function CS.Barotrauma.Items.Components.Controller(item, element) end

---@class Barotrauma.Items.Components.Deconstructor: Barotrauma.Items.Components.Powered
---@field InputContainer Barotrauma.Items.Components.ItemContainer
---@field OutputContainer Barotrauma.Items.Components.ItemContainer
---@field DeconstructItemsSimultaneously System.Boolean
---@field DeconstructionSpeed System.Single
---@field private progressTimer System.Single
---@field private progressState System.Single
---@field private user Barotrauma.Character
---@field private userDeconstructorSpeedMultiplier System.Single
---@field private inputContainer Barotrauma.Items.Components.ItemContainer
---@field private outputContainer Barotrauma.Items.Components.ItemContainer
---@field RelocateOutputToMainSub System.Boolean
---@field private TinkeringSpeedIncrease System.Single
CS.Barotrauma.Items.Components.Deconstructor = {}

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.Deconstructor.ServerEventRead(msg, c) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.Deconstructor.ServerEventWrite(msg, c, extraData) end

---@return Barotrauma.Items.Components.ItemContainer
function CS.Barotrauma.Items.Components.Deconstructor.get_InputContainer() end

---@return Barotrauma.Items.Components.ItemContainer
function CS.Barotrauma.Items.Components.Deconstructor.get_OutputContainer() end

function CS.Barotrauma.Items.Components.Deconstructor.OnItemLoaded() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Deconstructor.Update(deltaTime, cam) end

---@private
---@param targetItem Barotrauma.Item
---@param inputItems userdata | (fun(): Barotrauma.Item)
---@param validDeconstructItems userdata | { [System.Int32]: Barotrauma.DeconstructItem } | (fun(): Barotrauma.DeconstructItem)
---@param allowRemove? System.Boolean
function CS.Barotrauma.Items.Components.Deconstructor.ProcessItem(targetItem, inputItems, validDeconstructItems, allowRemove) end

---@private
function CS.Barotrauma.Items.Components.Deconstructor.PutItemsToLinkedContainer() end

---@private
function CS.Barotrauma.Items.Components.Deconstructor.MoveInputQueue() end

---@private
---@param checkRequiredOtherItems? System.Boolean
---@return userdata | (fun(): userdata)
function CS.Barotrauma.Items.Components.Deconstructor.GetAvailableOutputs(checkRequiredOtherItems) end

---@param active System.Boolean
---@param user? Barotrauma.Character
---@param createNetworkEvent? System.Boolean
function CS.Barotrauma.Items.Components.Deconstructor.SetActive(active, user, createNetworkEvent) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Deconstructor
function CS.Barotrauma.Items.Components.Deconstructor(item, element) end

---@class Barotrauma.Items.Components.Engine: Barotrauma.Items.Components.Powered
---@field MaxForce System.Single
---@field PropellerPos Microsoft.Xna.Framework.Vector2
---@field DisablePropellerDamage System.Boolean
---@field Force System.Single
---@field CurrentVolume System.Single
---@field CurrentBrokenVolume System.Single
---@field CurrentStress System.Single
---@field private force System.Single
---@field private lastReceivedTargetForce System.Single|nil
---@field private targetForce System.Single
---@field private maxForce System.Single
---@field private propellerDamage Barotrauma.Attack
---@field private damageTimer System.Single
---@field private hasPower System.Boolean
---@field private prevVoltage System.Single
---@field private controlLockTimer System.Single
---@field User Barotrauma.Character
---@field private ForceToPowerExponent System.Single
---@field private PowerToForceExponent System.Single
---@field private TinkeringForceIncrease System.Single
CS.Barotrauma.Items.Components.Engine = {}

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.Engine.ServerEventWrite(msg, c, extraData) end

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.Engine.ServerEventRead(msg, c) end

---@return System.Single
function CS.Barotrauma.Items.Components.Engine.get_MaxForce() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Engine.set_MaxForce(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Engine.get_Force() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Engine.set_Force(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Engine.get_CurrentVolume() end

---@return System.Single
function CS.Barotrauma.Items.Components.Engine.get_CurrentBrokenVolume() end

---@return System.Single
function CS.Barotrauma.Items.Components.Engine.get_CurrentStress() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Engine.Update(deltaTime, cam) end

---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single
function CS.Barotrauma.Items.Components.Engine.GetCurrentPowerConsumption(connection) end

---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.Engine.GridResolved(connection) end

---@private
---@param noise System.Single
function CS.Barotrauma.Items.Components.Engine.UpdateAITargets(noise) end

---@private
---@param deltaTime System.Single
function CS.Barotrauma.Items.Components.Engine.UpdatePropellerDamage(deltaTime) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Engine.UpdateBroken(deltaTime, cam) end

---@param relativeToSub System.Boolean
function CS.Barotrauma.Items.Components.Engine.FlipX(relativeToSub) end

---@param relativeToSub System.Boolean
function CS.Barotrauma.Items.Components.Engine.FlipY(relativeToSub) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.Engine.ReceiveSignal(signal, connection) end

---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
function CS.Barotrauma.Items.Components.Engine.Save(parentElement) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Engine
function CS.Barotrauma.Items.Components.Engine(item, element) end

---@class Barotrauma.Items.Components.Fabricator: Barotrauma.Items.Components.Powered
---@field FabricationSpeed System.Single
---@field SkillRequirementMultiplier System.Single
---@field AmountToFabricate System.Int32
---@field private State Barotrauma.Items.Components.Fabricator.FabricatorState
---@field InputContainer Barotrauma.Items.Components.ItemContainer
---@field OutputContainer Barotrauma.Items.Components.ItemContainer
---@field private serverEventId System.UInt64
---@field private fabricationRecipes userdata | { [System.UInt32]: Barotrauma.FabricationRecipe } | (fun(): userdata)
---@field private fabricatedItem Barotrauma.FabricationRecipe
---@field private timeUntilReady System.Single
---@field private requiredTime System.Single
---@field private savedFabricatedItem System.String
---@field private savedTimeUntilReady System.Single
---@field private savedRequiredTime System.Single
---@field private availableIngredients userdata | { [Barotrauma.Identifier]: userdata | { [System.Int32]: Barotrauma.Item } | (fun(): Barotrauma.Item) } | (fun(): userdata)
---@field private refreshIngredientsTimer System.Single
---@field private hasPower System.Boolean
---@field private user Barotrauma.Character
---@field private inputContainer Barotrauma.Items.Components.ItemContainer
---@field private outputContainer Barotrauma.Items.Components.ItemContainer
---@field private amountToFabricate System.Int32
---@field private amountRemaining System.Int32
---@field private state Barotrauma.Items.Components.Fabricator.FabricatorState
---@field private progressState System.Single
---@field private fabricationLimits userdata | { [System.UInt32]: System.Int32 } | (fun(): userdata)
---@field OnItemFabricated fun(arg1: Barotrauma.Item, arg2: Barotrauma.Character)
---@field private usedIngredients userdata | (fun(): Barotrauma.Item)
---@field private linkedInventories userdata | (fun(): Barotrauma.Inventory)
---@field private MaxAmountToFabricate System.Int32
---@field private RefreshIngredientsInterval System.Single
---@field private TinkeringSpeedIncrease System.Single
---@field PlusOneQualityBonusThreshold System.Int32
---@field PlusTwoQualityBonusThreshold System.Int32
---@field PlusOneTarget System.Int32
---@field PlusTwoTarget System.Int32
---@field PlusOneLerp System.Single
---@field PlusTwoLerp System.Single
CS.Barotrauma.Items.Components.Fabricator = {}

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.Fabricator.ServerEventRead(msg, c) end

---@return Barotrauma.Items.Components.ItemComponent.IEventData
function CS.Barotrauma.Items.Components.Fabricator.ServerGetEventData() end

---@param data Barotrauma.Networking.NetEntityEvent.IData
---@return System.Boolean
function CS.Barotrauma.Items.Components.Fabricator.ValidateEventData(data) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.Fabricator.ServerEventWrite(msg, c, extraData) end

---@return System.Int32
function CS.Barotrauma.Items.Components.Fabricator.get_AmountToFabricate() end

---@param value System.Int32
function CS.Barotrauma.Items.Components.Fabricator.set_AmountToFabricate(value) end

---@private
---@return Barotrauma.Items.Components.Fabricator.FabricatorState
function CS.Barotrauma.Items.Components.Fabricator.get_State() end

---@private
---@param value Barotrauma.Items.Components.Fabricator.FabricatorState
function CS.Barotrauma.Items.Components.Fabricator.set_State(value) end

---@return Barotrauma.Items.Components.ItemContainer
function CS.Barotrauma.Items.Components.Fabricator.get_InputContainer() end

---@return Barotrauma.Items.Components.ItemContainer
function CS.Barotrauma.Items.Components.Fabricator.get_OutputContainer() end

function CS.Barotrauma.Items.Components.Fabricator.OnItemLoaded() end

---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Fabricator.Select(character) end

---@param picker Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Fabricator.Pick(picker) end

---@param allowedIdentifiers userdata | (fun(): Barotrauma.Identifier)
function CS.Barotrauma.Items.Components.Fabricator.RemoveFabricationRecipes(allowedIdentifiers) end

---@private
---@param selectedItem Barotrauma.FabricationRecipe
---@param user Barotrauma.Character
---@param addToServerLog? System.Boolean
function CS.Barotrauma.Items.Components.Fabricator.StartFabricating(selectedItem, user, addToServerLog) end

---@private
---@param user? Barotrauma.Character
function CS.Barotrauma.Items.Components.Fabricator.CancelFabricating(user) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Fabricator.Update(deltaTime, cam) end

---@private
---@return Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.Fabricator.GetUsingClient() end

---@private
function CS.Barotrauma.Items.Components.Fabricator.Fabricate() end

---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single
function CS.Barotrauma.Items.Components.Fabricator.GetCurrentPowerConsumption(connection) end

---@param skillLevel System.Single
---@param target System.Single
---@return System.Single
function CS.Barotrauma.Items.Components.Fabricator.CalculateBonusRollPercentage(skillLevel, target) end

---@private
---@param fabricatedItem Barotrauma.FabricationRecipe
---@param user Barotrauma.Character
---@return Barotrauma.Items.Components.Fabricator.QualityResult
function CS.Barotrauma.Items.Components.Fabricator.GetFabricatedItemQuality(fabricatedItem, user) end

---@private
---@param user Barotrauma.Character
---@param item Barotrauma.ItemPrefab
---@return System.Boolean
function CS.Barotrauma.Items.Components.Fabricator.AnyOneHasRecipeForItem(user, item) end

---@param fabricableItem Barotrauma.FabricationRecipe
---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Fabricator.MissingRequiredRecipe(fabricableItem, character) end

---@private
---@param fabricableItem Barotrauma.FabricationRecipe
---@param availableIngredients userdata | { [Barotrauma.Identifier]: userdata | { [System.Int32]: Barotrauma.Item } | (fun(): Barotrauma.Item) } | (fun(): userdata)
---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Fabricator.CanBeFabricated(fabricableItem, availableIngredients, character) end

---@private
---@param fabricableItem Barotrauma.FabricationRecipe
---@param user Barotrauma.Character
---@return System.Single
function CS.Barotrauma.Items.Components.Fabricator.GetRequiredTime(fabricableItem, user) end

---@param character Barotrauma.Character
---@param skills userdata | { [System.Int32]: Barotrauma.Skill } | (fun(): Barotrauma.Skill)
---@return System.Single
function CS.Barotrauma.Items.Components.Fabricator.FabricationDegreeOfSuccess(character, skills) end

---@return System.Single
function CS.Barotrauma.Items.Components.Fabricator.GetSkillMultiplier() end

---@private
function CS.Barotrauma.Items.Components.Fabricator.RefreshAvailableIngredients() end

---@private
---@param items userdata | (fun(): Barotrauma.Item)
---@return userdata | (fun(): Barotrauma.Item)
function CS.Barotrauma.Items.Components.Fabricator.SortIngredients(items) end

---@private
---@return userdata | (fun(): Barotrauma.Item)
function CS.Barotrauma.Items.Components.Fabricator.GetSortedSuitableIngredients() end

---@private
---@param targetItem Barotrauma.FabricationRecipe
function CS.Barotrauma.Items.Components.Fabricator.MoveIngredientsToInputContainer(targetItem) end

---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
function CS.Barotrauma.Items.Components.Fabricator.Save(parentElement) end

---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean
---@param idRemap Barotrauma.IdRemap
---@param isItemSwap System.Boolean
function CS.Barotrauma.Items.Components.Fabricator.Load(componentElement, usePrefabValues, idRemap, isItemSwap) end

function CS.Barotrauma.Items.Components.Fabricator.OnMapLoaded() end

---@protected
function CS.Barotrauma.Items.Components.Fabricator.RemoveComponentSpecific() end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Fabricator
function CS.Barotrauma.Items.Components.Fabricator(item, element) end

---@class Barotrauma.Items.Components.Pump: Barotrauma.Items.Components.Powered
---@field Hijacked System.Boolean
---@field CurrentBrokenVolume System.Single
---@field FlowPercentage System.Single
---@field MaxFlow System.Single
---@field Disabled System.Boolean
---@field IsOn System.Boolean
---@field CanCauseLethalPressure System.Boolean
---@field CurrFlow System.Single
---@field IsHullFull System.Boolean
---@field HasPower System.Boolean
---@field IsAutoControlled System.Boolean
---@field UpdateWhenInactive System.Boolean
---@field CurrentStress System.Single
---@field private networkUpdateTimer System.Single
---@field private flowPercentage System.Single
---@field private maxFlow System.Single
---@field TargetLevel System.Single|nil
---@field private hijacked System.Boolean
---@field private pumpSpeedLockTimer System.Single
---@field private isActiveLockTimer System.Single
---@field private disabled System.Boolean
---@field private currFlow System.Single
---@field private linkedHulls userdata | { [System.Int32]: Barotrauma.Hull } | (fun(): Barotrauma.Hull)
---@field private NetworkUpdateInterval System.Single
---@field private TinkeringSpeedIncrease System.Single
CS.Barotrauma.Items.Components.Pump = {}

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.Pump.ServerEventRead(msg, c) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.Pump.ServerEventWrite(msg, c, extraData) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Pump.get_Hijacked() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Pump.set_Hijacked(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Pump.get_CurrentBrokenVolume() end

---@return System.Single
function CS.Barotrauma.Items.Components.Pump.get_FlowPercentage() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Pump.set_FlowPercentage(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Pump.get_MaxFlow() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Pump.set_MaxFlow(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Pump.get_Disabled() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Pump.set_Disabled(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Pump.get_IsOn() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Pump.set_IsOn(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Pump.get_CurrFlow() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Pump.get_IsHullFull() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Pump.get_HasPower() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Pump.get_IsAutoControlled() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Pump.get_UpdateWhenInactive() end

---@return System.Single
function CS.Barotrauma.Items.Components.Pump.get_CurrentStress() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Pump.Update(deltaTime, cam) end

---@param identifier Barotrauma.Identifier
---@param allowMultiplePerShip? System.Boolean
function CS.Barotrauma.Items.Components.Pump.InfectBallast(identifier, allowMultiplePerShip) end

---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single
function CS.Barotrauma.Items.Components.Pump.GetCurrentPowerConsumption(connection) end

---@private
---@param deltaTime System.Single
function CS.Barotrauma.Items.Components.Pump.UpdateNetworking(deltaTime) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.Pump.ReceiveSignal(signal, connection) end

---@param deltaTime System.Single
---@param character Barotrauma.Character
---@param objective Barotrauma.AIObjectiveOperateItem
---@return System.Boolean
function CS.Barotrauma.Items.Components.Pump.CrewAIOperate(deltaTime, character, objective) end

---@protected
function CS.Barotrauma.Items.Components.Pump.RemoveComponentSpecific() end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Pump
function CS.Barotrauma.Items.Components.Pump(item, element) end

---@class Barotrauma.Items.Components.Reactor: Barotrauma.Items.Components.Powered
---@field AllowTemperatureBoost System.Boolean
---@field PowerOn System.Boolean
---@field protected Priority Barotrauma.Items.Components.PowerPriority
---@field LastAIUser Barotrauma.Character
---@field LastUserWasPlayer System.Boolean
---@field LastUser Barotrauma.Character
---@field MaxPowerOutput System.Single
---@field MeltdownDelay System.Single
---@field FireDelay System.Single
---@field Temperature System.Single
---@field FissionRate System.Single
---@field TurbineOutput System.Single
---@field FuelConsumptionRate System.Single
---@field TemperatureCritical System.Boolean
---@field AutoTemp System.Boolean
---@field AvailableFuel System.Single
---@field Load System.Single
---@field TargetFissionRate System.Single
---@field TargetTurbineOutput System.Single
---@field CorrectTurbineOutput System.Single
---@field ExplosionDamagesOtherSubs System.Boolean
---@field MeltedDownThisRound System.Boolean
---@field private blameOnBroken Barotrauma.Networking.Client
---@field private nextServerLogWriteTime System.Single|nil
---@field private lastServerLogWriteTime System.Single
---@field private fissionRate System.Single
---@field private turbineOutput System.Single
---@field private temperature System.Single
---@field private autoTemp System.Boolean
---@field private fuelConsumptionRate System.Single
---@field private meltDownTimer System.Single
---@field private meltDownDelay System.Single
---@field private fireTimer System.Single
---@field private fireDelay System.Single
---@field private maxPowerOutput System.Single
---@field private minUpdatePowerOut System.Single
---@field private maxUpdatePowerOut System.Single
---@field private unsentChanges System.Boolean
---@field private sendUpdateTimer System.Single
---@field private degreeOfSuccess System.Single
---@field private optimalTemperature Microsoft.Xna.Framework.Vector2
---@field private allowedTemperature Microsoft.Xna.Framework.Vector2
---@field private optimalFissionRate Microsoft.Xna.Framework.Vector2
---@field private allowedFissionRate Microsoft.Xna.Framework.Vector2
---@field private optimalTurbineOutput Microsoft.Xna.Framework.Vector2
---@field private allowedTurbineOutput Microsoft.Xna.Framework.Vector2
---@field private signalControlledTargetFissionRate System.Single|nil
---@field private signalControlledTargetTurbineOutput System.Single|nil
---@field private lastReceivedFissionRateSignalTime System.Double
---@field private lastReceivedTurbineOutputSignalTime System.Double
---@field private temperatureBoost System.Single
---@field private _powerOn System.Boolean
---@field private lastUser Barotrauma.Character
---@field private prevAvailableFuel System.Single
---@field private NetworkUpdateIntervalLow System.Single
---@field private NetworkUpdateIntervalHigh System.Single
---@field private TemperatureBoostAmount System.Single
CS.Barotrauma.Items.Components.Reactor = {}

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.Reactor.ServerEventRead(msg, c) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.Reactor.ServerEventWrite(msg, c, extraData) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Reactor.get_AllowTemperatureBoost() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Reactor.get_PowerOn() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Reactor.set_PowerOn(value) end

---@protected
---@return Barotrauma.Items.Components.PowerPriority
function CS.Barotrauma.Items.Components.Reactor.get_Priority() end

---@return Barotrauma.Character
function CS.Barotrauma.Items.Components.Reactor.get_LastUser() end

---@private
---@param value Barotrauma.Character
function CS.Barotrauma.Items.Components.Reactor.set_LastUser(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Reactor.get_MaxPowerOutput() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Reactor.set_MaxPowerOutput(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Reactor.get_MeltdownDelay() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Reactor.set_MeltdownDelay(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Reactor.get_FireDelay() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Reactor.set_FireDelay(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Reactor.get_Temperature() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Reactor.set_Temperature(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Reactor.get_FissionRate() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Reactor.set_FissionRate(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Reactor.get_TurbineOutput() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Reactor.set_TurbineOutput(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Reactor.get_FuelConsumptionRate() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Reactor.set_FuelConsumptionRate(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Reactor.get_TemperatureCritical() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Reactor.set_TemperatureCritical(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Reactor.get_AutoTemp() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Reactor.set_AutoTemp(value) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Reactor.Update(deltaTime, cam) end

---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single
function CS.Barotrauma.Items.Components.Reactor.GetCurrentPowerConsumption(connection) end

---@param conn Barotrauma.Items.Components.Connection
---@param load System.Single
---@return Barotrauma.Items.Components.PowerRange
function CS.Barotrauma.Items.Components.Reactor.MinMaxPowerOut(conn, load) end

---@param conn Barotrauma.Items.Components.Connection
---@param power System.Single
---@param minMaxPower Barotrauma.Items.Components.PowerRange
---@param load System.Single
---@return System.Single
function CS.Barotrauma.Items.Components.Reactor.GetConnectionPowerOut(conn, power, minMaxPower, load) end

---@private
---@param fissionRate System.Single
---@return System.Single
function CS.Barotrauma.Items.Components.Reactor.GetGeneratedHeat(fissionRate) end

---@private
---@param minimumOutputRatio System.Single
---@param minCondition? System.Single
---@return System.Boolean
function CS.Barotrauma.Items.Components.Reactor.NeedMoreFuel(minimumOutputRatio, minCondition) end

---@private
---@return System.Boolean
function CS.Barotrauma.Items.Components.Reactor.TooMuchFuel() end

---@private
---@param deltaTime System.Single
function CS.Barotrauma.Items.Components.Reactor.UpdateFailures(deltaTime) end

---@param speed System.Single
---@param deltaTime System.Single
function CS.Barotrauma.Items.Components.Reactor.UpdateAutoTemp(speed, deltaTime) end

function CS.Barotrauma.Items.Components.Reactor.PowerUpImmediately() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Reactor.UpdateBroken(deltaTime, cam) end

---@private
function CS.Barotrauma.Items.Components.Reactor.MeltDown() end

---@param picker Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Reactor.Pick(picker) end

---@param deltaTime System.Single
---@param character Barotrauma.Character
---@param objective Barotrauma.AIObjectiveOperateItem
---@return System.Boolean
function CS.Barotrauma.Items.Components.Reactor.CrewAIOperate(deltaTime, character, objective) end

function CS.Barotrauma.Items.Components.Reactor.OnMapLoaded() end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.Reactor.ReceiveSignal(signal, connection) end

---@private
---@return System.Single
function CS.Barotrauma.Items.Components.Reactor.GetMaxOutput() end

---@private
---@return System.Single
function CS.Barotrauma.Items.Components.Reactor.GetFuelConsumption() end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Reactor
function CS.Barotrauma.Items.Components.Reactor(item, element) end

---@class Barotrauma.Items.Components.Steering: Barotrauma.Items.Components.Powered
---@field MaintainPos System.Boolean
---@field LevelStartSelected System.Boolean
---@field LevelEndSelected System.Boolean
---@field UnsentChanges System.Boolean
---@field ControlledSub Barotrauma.Submarine
---@field AITacticalTarget Microsoft.Xna.Framework.Vector2
---@field AIRamTimer System.Single
---@field AutoPilot System.Boolean
---@field NeutralBallastLevel System.Single
---@field DockingAssistThreshold System.Single
---@field TargetVelocity Microsoft.Xna.Framework.Vector2
---@field TargetVelocityLengthSquared System.Single
---@field SteeringInput Microsoft.Xna.Framework.Vector2
---@field SteeringPath Barotrauma.SteeringPath
---@field PosToMaintain Microsoft.Xna.Framework.Vector2|nil
---@field DockingModeEnabled System.Boolean
---@field UseAutoDocking System.Boolean
---@field private targetVelocity Microsoft.Xna.Framework.Vector2
---@field private steeringInput Microsoft.Xna.Framework.Vector2
---@field private autoPilot System.Boolean
---@field private posToMaintain Microsoft.Xna.Framework.Vector2|nil
---@field private steeringPath Barotrauma.SteeringPath
---@field private pathFinder Barotrauma.PathFinder
---@field private networkUpdateTimer System.Single
---@field private unsentChanges System.Boolean
---@field private autopilotRayCastTimer System.Single
---@field private autopilotRecalculatePathTimer System.Single
---@field private avoidStrength Microsoft.Xna.Framework.Vector2
---@field private neutralBallastLevel System.Single
---@field private steeringAdjustSpeed System.Single
---@field private user Barotrauma.Character
---@field private sonar Barotrauma.Items.Components.Sonar
---@field private controlledSub Barotrauma.Submarine
---@field private navigateTactically System.Boolean
---@field private showIceSpireWarning System.Boolean
---@field private connectedSubs userdata | { [System.Int32]: Barotrauma.Submarine } | (fun(): Barotrauma.Submarine)
---@field private connectedSubUpdateTimer System.Single
---@field private lastReceivedSteeringSignalTime System.Double
---@field private debugDrawObstacles userdata | { [System.Int32]: Barotrauma.Items.Components.Steering.ObstacleDebugInfo } | (fun(): Barotrauma.Items.Components.Steering.ObstacleDebugInfo)
---@field DockingSources userdata | { [System.Int32]: Barotrauma.Items.Components.DockingPort } | (fun(): Barotrauma.Items.Components.DockingPort)
---@field private searchedConnectedDockingPort System.Boolean
---@field private dockingModeEnabled System.Boolean
---@field AutopilotMinDistToPathNode System.Single
---@field private AutopilotRayCastInterval System.Single
---@field private RecalculatePathInterval System.Single
---@field private AutoPilotSteeringLerp System.Single
---@field private AutoPilotMaxSpeed System.Single
---@field private AIPilotMaxSpeed System.Single
---@field PressureWarningThreshold System.Single
---@field private DefaultSteeringAdjustSpeed System.Single
---@field private ConnectedSubUpdateInterval System.Single
CS.Barotrauma.Items.Components.Steering = {}

---@return System.Boolean
function CS.Barotrauma.Items.Components.Steering.get_UnsentChanges() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Steering.set_UnsentChanges(value) end

---@protected
function CS.Barotrauma.Items.Components.Steering.RemoveComponentSpecific() end

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.Steering.ServerEventRead(msg, c) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.Steering.ServerEventWrite(msg, c, extraData) end

---@return Barotrauma.Submarine
function CS.Barotrauma.Items.Components.Steering.get_ControlledSub() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Steering.get_AutoPilot() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Steering.set_AutoPilot(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Steering.get_NeutralBallastLevel() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Steering.set_NeutralBallastLevel(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Steering.get_TargetVelocity() end

---@param value Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Steering.set_TargetVelocity(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Steering.get_TargetVelocityLengthSquared() end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Steering.get_SteeringInput() end

---@param value Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Steering.set_SteeringInput(value) end

---@return Barotrauma.SteeringPath
function CS.Barotrauma.Items.Components.Steering.get_SteeringPath() end

---@return Microsoft.Xna.Framework.Vector2|nil
function CS.Barotrauma.Items.Components.Steering.get_PosToMaintain() end

---@param value Microsoft.Xna.Framework.Vector2|nil
function CS.Barotrauma.Items.Components.Steering.set_PosToMaintain(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Steering.get_DockingModeEnabled() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Steering.set_DockingModeEnabled(value) end

---@private
function CS.Barotrauma.Items.Components.Steering.FindConnectedDockingPort() end

function CS.Barotrauma.Items.Components.Steering.OnItemLoaded() end

---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Steering.Select(character) end

function CS.Barotrauma.Items.Components.Steering.RefreshPosToMaintain() end

function CS.Barotrauma.Items.Components.Steering.OnMapLoaded() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Steering.Update(deltaTime, cam) end

---@private
---@param user Barotrauma.Character
---@param deltaTime System.Single
function CS.Barotrauma.Items.Components.Steering.IncreaseSkillLevel(user, deltaTime) end

---@private
---@param deltaTime System.Single
function CS.Barotrauma.Items.Components.Steering.UpdateAutoPilot(deltaTime) end

---@private
---@param node Barotrauma.PathNode
---@param nextNode Barotrauma.PathNode
---@return System.Single|nil
function CS.Barotrauma.Items.Components.Steering.GetNodePenalty(node, nextNode) end

---@private
function CS.Barotrauma.Items.Components.Steering.UpdatePath() end

function CS.Barotrauma.Items.Components.Steering.SetDestinationLevelStart() end

function CS.Barotrauma.Items.Components.Steering.SetDestinationLevelEnd() end

---@private
function CS.Barotrauma.Items.Components.Steering.SetDestinationTactical() end

---@private
function CS.Barotrauma.Items.Components.Steering.SetMaintainPosition() end

---@private
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param slowdownAmount System.Single
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Steering.GetSteeringVelocity(worldPosition, slowdownAmount) end

---@param deltaTime System.Single
---@param character Barotrauma.Character
---@param objective Barotrauma.AIObjectiveOperateItem
---@return System.Boolean
function CS.Barotrauma.Items.Components.Steering.CrewAIOperate(deltaTime, character, objective) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.Steering.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Steering
function CS.Barotrauma.Items.Components.Steering(item, element) end

---@class Barotrauma.Items.Components.PowerContainer: Barotrauma.Items.Components.Powered
---@field protected Priority Barotrauma.Items.Components.PowerPriority
---@field CurrPowerOutput System.Single
---@field IndicatorPosition Microsoft.Xna.Framework.Vector2
---@field IndicatorSize Microsoft.Xna.Framework.Vector2
---@field IsHorizontal System.Boolean
---@field MaxOutPut System.Single
---@field Capacity System.Single
---@field Charge System.Single
---@field ChargePercentage System.Single
---@field MaxRechargeSpeed System.Single
---@field RechargeSpeed System.Single
---@field ExponentialRechargeSpeed System.Boolean
---@field Efficiency System.Single
---@field FlipIndicator System.Boolean
---@field OutputDisabled System.Boolean
---@field RechargeRatio System.Single
---@field HasBeenTuned System.Boolean
---@field private capacity System.Single
---@field private adjustedCapacity System.Single
---@field private charge System.Single
---@field private prevCharge System.Single
---@field private maxRechargeSpeed System.Single
---@field private rechargeSpeed System.Single
---@field private lastSentCharge System.Single
---@field protected indicatorPosition Microsoft.Xna.Framework.Vector2
---@field protected indicatorSize Microsoft.Xna.Framework.Vector2
---@field protected isHorizontal System.Boolean
---@field private currPowerOutput System.Single
---@field private efficiency System.Single
---@field private flipIndicator System.Boolean
---@field private isRunning System.Boolean
---@field aiRechargeTargetRatio System.Single
CS.Barotrauma.Items.Components.PowerContainer = {}

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.PowerContainer.ServerEventRead(msg, c) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.PowerContainer.ServerEventWrite(msg, c, extraData) end

---@protected
---@return Barotrauma.Items.Components.PowerPriority
function CS.Barotrauma.Items.Components.PowerContainer.get_Priority() end

---@return System.Single
function CS.Barotrauma.Items.Components.PowerContainer.get_CurrPowerOutput() end

---@private
---@param value System.Single
function CS.Barotrauma.Items.Components.PowerContainer.set_CurrPowerOutput(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.PowerContainer.get_IndicatorPosition() end

---@param value Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.PowerContainer.set_IndicatorPosition(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.PowerContainer.get_IndicatorSize() end

---@param value Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.PowerContainer.set_IndicatorSize(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.PowerContainer.get_IsHorizontal() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.PowerContainer.set_IsHorizontal(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.PowerContainer.get_Capacity() end

---@param value System.Single
function CS.Barotrauma.Items.Components.PowerContainer.set_Capacity(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.PowerContainer.get_Charge() end

---@param value System.Single
function CS.Barotrauma.Items.Components.PowerContainer.set_Charge(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.PowerContainer.get_ChargePercentage() end

---@return System.Single
function CS.Barotrauma.Items.Components.PowerContainer.get_MaxRechargeSpeed() end

---@param value System.Single
function CS.Barotrauma.Items.Components.PowerContainer.set_MaxRechargeSpeed(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.PowerContainer.get_RechargeSpeed() end

---@param value System.Single
function CS.Barotrauma.Items.Components.PowerContainer.set_RechargeSpeed(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.PowerContainer.get_Efficiency() end

---@param value System.Single
function CS.Barotrauma.Items.Components.PowerContainer.set_Efficiency(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.PowerContainer.get_FlipIndicator() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.PowerContainer.set_FlipIndicator(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.PowerContainer.get_RechargeRatio() end

---@param picker Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.PowerContainer.Pick(picker) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.PowerContainer.Update(deltaTime, cam) end

---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single
function CS.Barotrauma.Items.Components.PowerContainer.GetCurrentPowerConsumption(connection) end

---@param connection Barotrauma.Items.Components.Connection
---@param load? System.Single
---@return Barotrauma.Items.Components.PowerRange
function CS.Barotrauma.Items.Components.PowerContainer.MinMaxPowerOut(connection, load) end

---@param connection Barotrauma.Items.Components.Connection
---@param power System.Single
---@param minMaxPower Barotrauma.Items.Components.PowerRange
---@param load System.Single
---@return System.Single
function CS.Barotrauma.Items.Components.PowerContainer.GetConnectionPowerOut(connection, power, minMaxPower, load) end

---@param conn Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.PowerContainer.GridResolved(conn) end

---@param deltaTime System.Single
---@param character Barotrauma.Character
---@param objective Barotrauma.AIObjectiveOperateItem
---@return System.Boolean
function CS.Barotrauma.Items.Components.PowerContainer.CrewAIOperate(deltaTime, character, objective) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.PowerContainer.ReceiveSignal(signal, connection) end

---@return System.Single
function CS.Barotrauma.Items.Components.PowerContainer.GetCapacity() end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.PowerContainer
function CS.Barotrauma.Items.Components.PowerContainer(item, element) end

---@class Barotrauma.Items.Components.PowerDistributor: Barotrauma.Items.Components.PowerTransfer
---@field protected Priority Barotrauma.Items.Components.PowerPriority
---@field private powerGroups userdata | { [System.Int32]: Barotrauma.Items.Components.PowerDistributor.PowerGroup } | (fun(): Barotrauma.Items.Components.PowerDistributor.PowerGroup)
---@field private cachedGroupData userdata | { [System.Int32]: System.Xml.Linq.XElement } | (fun(): System.Xml.Linq.XElement)
---@field private MaxNameLength System.Int32
---@field private SupplyRatioSteps System.Int32
---@field private SupplyRatioStep System.Single
CS.Barotrauma.Items.Components.PowerDistributor = {}

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.PowerDistributor.ServerEventRead(msg, c) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.PowerDistributor.ServerEventWrite(msg, c, extraData) end

---@protected
---@return Barotrauma.Items.Components.PowerPriority
function CS.Barotrauma.Items.Components.PowerDistributor.get_Priority() end

function CS.Barotrauma.Items.Components.PowerDistributor.OnItemLoaded() end

---@param original Barotrauma.Items.Components.ItemComponent
function CS.Barotrauma.Items.Components.PowerDistributor.Clone(original) end

---@protected
function CS.Barotrauma.Items.Components.PowerDistributor.SendSignals() end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.PowerDistributor.ReceiveSignal(signal, connection) end

---@private
---@param conn Barotrauma.Items.Components.Connection
---@return System.Boolean
function CS.Barotrauma.Items.Components.PowerDistributor.IsShortCircuited(conn) end

---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single
function CS.Barotrauma.Items.Components.PowerDistributor.GetCurrentPowerConsumption(connection) end

---@private
---@param group Barotrauma.Items.Components.PowerDistributor.PowerGroup
---@return System.Single
function CS.Barotrauma.Items.Components.PowerDistributor.CalculatePowerOut(group) end

---@param connection Barotrauma.Items.Components.Connection
---@param power System.Single
---@param minMaxPower Barotrauma.Items.Components.PowerRange
---@param load System.Single
---@return System.Single
function CS.Barotrauma.Items.Components.PowerDistributor.GetConnectionPowerOut(connection, power, minMaxPower, load) end

---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
function CS.Barotrauma.Items.Components.PowerDistributor.Save(parentElement) end

---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean
---@param idRemap Barotrauma.IdRemap
---@param isItemSwap System.Boolean
function CS.Barotrauma.Items.Components.PowerDistributor.Load(componentElement, usePrefabValues, idRemap, isItemSwap) end

---@private
---@param msg Barotrauma.Networking.IWriteMessage
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.PowerDistributor.SharedEventWrite(msg, extraData) end

---@private
---@param msg Barotrauma.Networking.IReadMessage
---@param eventType Barotrauma.Items.Components.PowerDistributor.EventType
---@param powerGroup Barotrauma.Items.Components.PowerDistributor.PowerGroup
---@param newName System.String
---@param newRatio System.Single
function CS.Barotrauma.Items.Components.PowerDistributor.SharedEventRead(msg, eventType, powerGroup, newName, newRatio) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.PowerDistributor
function CS.Barotrauma.Items.Components.PowerDistributor(item, element) end

---@class Barotrauma.Items.Components.Projectile: Barotrauma.Items.Components.ItemComponent
---@field SpreadCounter System.Byte
---@field Attack Barotrauma.Attack
---@field User Barotrauma.Character
---@field Attacker Barotrauma.Character
---@field Hits userdata | (fun(): FarseerPhysics.Dynamics.Body)
---@field LaunchImpulse System.Single
---@field ImpulseSpread System.Single
---@field LaunchRotation System.Single
---@field LaunchRotationRadians System.Single
---@field DoesStick System.Boolean
---@field StickToCharacters System.Boolean
---@field StickToStructures System.Boolean
---@field StickToItems System.Boolean
---@field StickToDoors System.Boolean
---@field StickToDeflective System.Boolean
---@field StickToLightTargets System.Boolean
---@field GoThroughLightTargets System.Boolean
---@field LightTargetMassThreshold System.Single
---@field Hitscan System.Boolean
---@field HitScanCount System.Int32
---@field MaxTargetsToHit System.Int32
---@field RemoveOnHit System.Boolean
---@field Spread System.Single
---@field StaticSpread System.Boolean
---@field FriendlyFire System.Boolean
---@field DeactivationTime System.Single
---@field StickDuration System.Single
---@field MaxJointTranslation System.Single
---@field JointBreakPoint System.Single
---@field Prismatic System.Boolean
---@field IgnoreProjectilesWhileActive System.Boolean
---@field StickTarget FarseerPhysics.Dynamics.Body
---@field DamageDoors System.Boolean
---@field DamageUser System.Boolean
---@field IsStuckToTarget System.Boolean
---@field private launchRot System.Single
---@field private impactQueue userdata | (fun(): Barotrauma.Items.Components.Projectile.Impact)
---@field private removePending System.Boolean
---@field private spreadIndex System.Byte
---@field private stickJoint FarseerPhysics.Dynamics.Joints.Joint
---@field private jointAxis Microsoft.Xna.Framework.Vector2
---@field private launchPos Microsoft.Xna.Framework.Vector2
---@field LaunchSub Barotrauma.Submarine
---@field private hits userdata | (fun(): FarseerPhysics.Dynamics.Body)
---@field IgnoredBodies userdata | { [System.Int32]: FarseerPhysics.Dynamics.Body } | (fun(): FarseerPhysics.Dynamics.Body)
---@field Launcher Barotrauma.Item
---@field private stickTargetCharacter Barotrauma.Character
---@field private _user Barotrauma.Character
---@field private deactivationTimer System.Single
---@field private stickTimer System.Single
---@field private maxJointTranslationInSimUnits System.Single
---@field private originalCollisionCategories FarseerPhysics.Dynamics.Category
---@field private originalCollisionTargets FarseerPhysics.Dynamics.Category
---@field private targets userdata | { [System.Int32]: Barotrauma.ISerializableEntity } | (fun(): Barotrauma.ISerializableEntity)
---@field private lastTarget FarseerPhysics.Dynamics.Fixture
---@field private spreadPool userdata | { [System.Int32]: System.Single } | (fun(): System.Single)
---@field WaterDragCoefficient System.Single
---@field private ContinuousCollisionThreshold System.Single
CS.Barotrauma.Items.Components.Projectile = {}

---@param data Barotrauma.Networking.NetEntityEvent.IData
---@return System.Boolean
function CS.Barotrauma.Items.Components.Projectile.ValidateEventData(data) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.Projectile.ServerEventWrite(msg, c, extraData) end

function CS.Barotrauma.Items.Components.Projectile.ResetSpreadCounter() end

---@return Barotrauma.Character
function CS.Barotrauma.Items.Components.Projectile.get_User() end

---@param value Barotrauma.Character
function CS.Barotrauma.Items.Components.Projectile.set_User(value) end

---@return userdata | (fun(): FarseerPhysics.Dynamics.Body)
function CS.Barotrauma.Items.Components.Projectile.get_Hits() end

---@return System.Single
function CS.Barotrauma.Items.Components.Projectile.get_LaunchRotation() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Projectile.set_LaunchRotation(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Projectile.get_IsStuckToTarget() end

function CS.Barotrauma.Items.Components.Projectile.OnItemLoaded() end

---@return System.Single
function CS.Barotrauma.Items.Components.Projectile.GetSpreadFromPool() end

---@private
---@param user Barotrauma.Character
---@param simPosition Microsoft.Xna.Framework.Vector2
---@param rotation System.Single
---@param damageMultiplier? System.Single
---@param launchImpulseModifier? System.Single
function CS.Barotrauma.Items.Components.Projectile.Launch(user, simPosition, rotation, damageMultiplier, launchImpulseModifier) end

---@param user Barotrauma.Character
---@param weaponPos Microsoft.Xna.Framework.Vector2
---@param spawnPos Microsoft.Xna.Framework.Vector2
---@param rotation System.Single
---@param ignoredBodies userdata | { [System.Int32]: FarseerPhysics.Dynamics.Body } | (fun(): FarseerPhysics.Dynamics.Body)
---@param createNetworkEvent System.Boolean
---@param damageMultiplier? System.Single
---@param launchImpulseModifier? System.Single
function CS.Barotrauma.Items.Components.Projectile.Shoot(user, weaponPos, spawnPos, rotation, ignoredBodies, createNetworkEvent, damageMultiplier, launchImpulseModifier) end

---@overload fun(deltaTime: System.Single, character?: Barotrauma.Character): System.Boolean
---@param character? Barotrauma.Character
---@param launchImpulseModifier? System.Single
---@return System.Boolean
function CS.Barotrauma.Items.Components.Projectile.Use(character, launchImpulseModifier) end

---@private
---@param unmodifiedLaunchRotation System.Single
---@return System.Single
function CS.Barotrauma.Items.Components.Projectile.GetLaunchRotation(unmodifiedLaunchRotation) end

---@private
---@param impulse Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Projectile.DoLaunch(impulse) end

---@private
---@param dir Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Projectile.DoHitscan(dir) end

---@private
---@param rayStart Microsoft.Xna.Framework.Vector2
---@param rayEnd Microsoft.Xna.Framework.Vector2
---@param submarine Barotrauma.Submarine
---@return userdata | { [System.Int32]: Barotrauma.Items.Components.Projectile.HitscanResult } | (fun(): Barotrauma.Items.Components.Projectile.HitscanResult)
function CS.Barotrauma.Items.Components.Projectile.DoRayCast(rayStart, rayEnd, submarine) end

---@param dropper Barotrauma.Character
---@param setTransform? System.Boolean
function CS.Barotrauma.Items.Components.Projectile.Drop(dropper, setTransform) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Projectile.Update(deltaTime, cam) end

---@private
---@return System.Boolean
function CS.Barotrauma.Items.Components.Projectile.StickTargetRemoved() end

---@private
---@param f1 FarseerPhysics.Dynamics.Fixture
---@param target FarseerPhysics.Dynamics.Fixture
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
---@return System.Boolean
function CS.Barotrauma.Items.Components.Projectile.OnProjectileCollision(f1, target, contact) end

---@private
---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Projectile.ShouldIgnoreCharacterCollision(character) end

---@param target FarseerPhysics.Dynamics.Fixture
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
---@return System.Boolean
function CS.Barotrauma.Items.Components.Projectile.ShouldIgnoreSubmarineCollision(target, contact) end

---@private
---@param target FarseerPhysics.Dynamics.Fixture
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
---@return System.Boolean
function CS.Barotrauma.Items.Components.Projectile.ShouldIgnoreSubmarineCollision(target, contact) end

---@private
---@param target FarseerPhysics.Dynamics.Fixture
---@param collisionNormal Microsoft.Xna.Framework.Vector2
---@param velocity Microsoft.Xna.Framework.Vector2
---@return System.Boolean
function CS.Barotrauma.Items.Components.Projectile.HandleProjectileCollision(target, collisionNormal, velocity) end

---@private
---@return System.Single
function CS.Barotrauma.Items.Components.Projectile.GetLightTargetMassThreshold() end

---@private
function CS.Barotrauma.Items.Components.Projectile.EnableProjectileCollisions() end

---@private
function CS.Barotrauma.Items.Components.Projectile.DisableProjectileCollisions() end

---@param body Barotrauma.PhysicsBody
---@return System.Boolean
function CS.Barotrauma.Items.Components.Projectile.IsAttachedTo(body) end

---@private
---@param targetBody FarseerPhysics.Dynamics.Body
---@param axis Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Projectile.StickToTarget(targetBody, axis) end

function CS.Barotrauma.Items.Components.Projectile.Unstick() end

---@protected
function CS.Barotrauma.Items.Components.Projectile.RemoveComponentSpecific() end

---@private
---@overload fun(item: Barotrauma.Item, element: Barotrauma.ContentXElement): Barotrauma.Items.Components.Projectile
---@return Barotrauma.Items.Components.Projectile
function CS.Barotrauma.Items.Components.Projectile() end

---@class Barotrauma.Items.Components.Repairable: Barotrauma.Items.Components.ItemComponent
---@field ForceDeteriorationTimer System.Single
---@field DeteriorationSpeed System.Single
---@field MinDeteriorationDelay System.Single
---@field MaxDeteriorationDelay System.Single
---@field MinDeteriorationCondition System.Single
---@field MinSabotageCondition System.Single
---@field SabotageDeteriorationDuration System.Single
---@field RepairThreshold System.Single
---@field MaxStressDeteriorationMultiplier System.Single
---@field StressDeteriorationThreshold System.Single
---@field StressDeteriorationIncreaseSpeed System.Single
---@field StressDeteriorationDecreaseSpeed System.Single
---@field FixDurationLowSkill System.Single
---@field FixDurationHighSkill System.Single
---@field SkillRequirementMultiplier System.Single
---@field IsTinkering System.Boolean
---@field CurrentFixer Barotrauma.Character
---@field StressDeteriorationMultiplier System.Single
---@field TinkeringStrength System.Single
---@field TinkeringPowersDevices System.Boolean
---@field IsBelowRepairThreshold System.Boolean
---@field IsBelowRepairIconThreshold System.Boolean
---@field CurrentFixerAction Barotrauma.Items.Components.Repairable.FixActions
---@field private prevLoggedFixer Barotrauma.Character
---@field private prevLoggedFixAction Barotrauma.Items.Components.Repairable.FixActions
---@field private header Barotrauma.LocalizedString
---@field private deteriorationTimer System.Single
---@field private updateDeteriorationCounter System.Int32
---@field private prevSentConditionValue System.Int32
---@field private conditionSignal System.String
---@field private wasBroken System.Boolean
---@field private wasGoodCondition System.Boolean
---@field LastActiveTime System.Single
---@field private skillRequirementMultiplier System.Single
---@field private isTinkering System.Boolean
---@field private currentRepairItem Barotrauma.Item
---@field private tinkeringDuration System.Single
---@field private tinkeringStrength System.Single
---@field private tinkeringPowersDevices System.Boolean
---@field private currentFixerAction Barotrauma.Items.Components.Repairable.FixActions
---@field private UpdateDeteriorationInterval System.Int32
CS.Barotrauma.Items.Components.Repairable = {}

function CS.Barotrauma.Items.Components.Repairable.OnMapLoaded() end

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.Repairable.ServerEventRead(msg, c) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.Repairable.ServerEventWrite(msg, c, extraData) end

---@return System.Single
function CS.Barotrauma.Items.Components.Repairable.get_SkillRequirementMultiplier() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Repairable.set_SkillRequirementMultiplier(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Repairable.get_IsTinkering() end

---@private
---@param value System.Boolean
function CS.Barotrauma.Items.Components.Repairable.set_IsTinkering(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Repairable.get_TinkeringStrength() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Repairable.get_TinkeringPowersDevices() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Repairable.get_IsBelowRepairThreshold() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Repairable.get_IsBelowRepairIconThreshold() end

---@return Barotrauma.Items.Components.Repairable.FixActions
function CS.Barotrauma.Items.Components.Repairable.get_CurrentFixerAction() end

---@private
---@param value Barotrauma.Items.Components.Repairable.FixActions
function CS.Barotrauma.Items.Components.Repairable.set_CurrentFixerAction(value) end

function CS.Barotrauma.Items.Components.Repairable.OnItemLoaded() end

---@param character Barotrauma.Character
---@param bestRepairItem Barotrauma.Item
---@return System.Boolean
function CS.Barotrauma.Items.Components.Repairable.CheckCharacterSuccess(character, bestRepairItem) end

---@return System.Single
function CS.Barotrauma.Items.Components.Repairable.GetSkillMultiplier() end

---@param character Barotrauma.Character
---@param skills userdata | { [System.Int32]: Barotrauma.Skill } | (fun(): Barotrauma.Skill)
---@return System.Single
function CS.Barotrauma.Items.Components.Repairable.RepairDegreeOfSuccess(character, skills) end

---@param qteSuccess System.Boolean
function CS.Barotrauma.Items.Components.Repairable.RepairBoost(qteSuccess) end

---@param character Barotrauma.Character
---@param action Barotrauma.Items.Components.Repairable.FixActions
---@return System.Boolean
function CS.Barotrauma.Items.Components.Repairable.StartRepairing(character, action) end

---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Repairable.StopRepairing(character) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Repairable.UpdateBroken(deltaTime, cam) end

function CS.Barotrauma.Items.Components.Repairable.ResetDeterioration() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Repairable.Update(deltaTime, cam) end

---@private
---@param deltaTime System.Single
function CS.Barotrauma.Items.Components.Repairable.UpdateDeterioration(deltaTime) end

---@private
---@param character Barotrauma.Character
---@return System.Single
function CS.Barotrauma.Items.Components.Repairable.GetMaxRepairConditionMultiplier(character) end

---@private
---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Repairable.IsTinkerable(character) end

---@private
---@param character Barotrauma.Character
---@return Barotrauma.Affliction
function CS.Barotrauma.Items.Components.Repairable.GetTinkerExhaustion(character) end

---@private
---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Repairable.CanTinker(character) end

---@param powerConsumption System.Single
function CS.Barotrauma.Items.Components.Repairable.AdjustPowerConsumption(powerConsumption) end

---@private
---@return System.Boolean
function CS.Barotrauma.Items.Components.Repairable.ShouldDeteriorate() end

---@private
---@return System.Single
function CS.Barotrauma.Items.Components.Repairable.GetDeteriorationDelayMultiplier() end

---@private
---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.Repairable.UpdateFixAnimation(character) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.Repairable.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Repairable
function CS.Barotrauma.Items.Components.Repairable(item, element) end

---@class Barotrauma.Items.Components.Rope: Barotrauma.Items.Components.ItemComponent
---@field SnapAnimDuration System.Single
---@field ProjectilePullForce System.Single
---@field TargetPullForce System.Single
---@field SourcePullForce System.Single
---@field MaxLength System.Single
---@field MinPullDistance System.Single
---@field MaxAngle System.Single
---@field SnapOnCollision System.Boolean
---@field SnapWhenNotAimed System.Boolean
---@field SnapWhenWeaponFiredAgain System.Boolean
---@field BarrelLengthMultiplier System.Single
---@field TargetMinMass System.Single
---@field LerpForces System.Boolean
---@field IncreaseForceForEscapingTargets System.Boolean
---@field Snapped System.Boolean
---@field private source Barotrauma.ISpatialEntity
---@field private target Barotrauma.Item
---@field private launchDir Microsoft.Xna.Framework.Vector2|nil
---@field private currentRopeLength System.Single
---@field private snapTimer System.Single
---@field private raycastTimer System.Single
---@field private isReelingIn System.Boolean
---@field private snapped System.Boolean
---@field private RayCastInterval System.Single
CS.Barotrauma.Items.Components.Rope = {}

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.Rope.ServerEventWrite(msg, c, extraData) end

---@private
---@param source Barotrauma.ISpatialEntity
function CS.Barotrauma.Items.Components.Rope.SetSource(source) end

---@private
function CS.Barotrauma.Items.Components.Rope.ResetSource() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Rope.get_Snapped() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Rope.set_Snapped(value) end

function CS.Barotrauma.Items.Components.Rope.Snap() end

---@param source Barotrauma.ISpatialEntity
---@param target Barotrauma.Item
function CS.Barotrauma.Items.Components.Rope.Attach(source, target) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Rope.Update(deltaTime, cam) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Rope.UpdateBroken(deltaTime, cam) end

---@private
---@param useDrawPosition? System.Boolean
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Rope.GetSourcePos(useDrawPosition) end

---@private
---@param target Barotrauma.ISpatialEntity
---@return Barotrauma.PhysicsBody
function CS.Barotrauma.Items.Components.Rope.GetBodyToPull(target) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Rope
function CS.Barotrauma.Items.Components.Rope(item, element) end

---@class Barotrauma.Items.Components.Scanner: Barotrauma.Items.Components.ItemComponent
---@field private LastSentScanTimer System.Single
---@field ScanDuration System.Single
---@field ScanTimer System.Single
---@field ScanRadius System.Single
---@field AlwaysDisplayProgressBar System.Boolean
---@field private Holdable Barotrauma.Items.Components.Holdable
---@field DisplayProgressBar System.Boolean
---@field private IsScanCompleted System.Boolean
---@field private scanTimer System.Single
---@field OnScanStarted fun(obj: Barotrauma.Items.Components.Scanner)
---@field OnScanCompleted fun(obj: Barotrauma.Items.Components.Scanner)
CS.Barotrauma.Items.Components.Scanner = {}

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.Scanner.ServerEventWrite(msg, c, extraData) end

---@return System.Single
function CS.Barotrauma.Items.Components.Scanner.get_ScanTimer() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Scanner.set_ScanTimer(value) end

---@private
---@return System.Boolean
function CS.Barotrauma.Items.Components.Scanner.get_IsScanCompleted() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Scanner.Update(deltaTime, cam) end

function CS.Barotrauma.Items.Components.Scanner.OnItemLoaded() end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Scanner
function CS.Barotrauma.Items.Components.Scanner(item, element) end

---@class Barotrauma.Items.Components.ButtonTerminal: Barotrauma.Items.Components.ItemComponent
---@field Signals System.String[]
---@field ActivatingItems System.String
---@field private Container Barotrauma.Items.Components.ItemContainer
---@field private ActivatingItemPrefabs userdata | (fun(): Barotrauma.ItemPrefab)
---@field private IsActivated System.Boolean
---@field private requiredSignalCount System.Int32
---@field private buttonSignalDefinitions userdata | { [System.Int32]: System.String } | (fun(): System.String)
CS.Barotrauma.Items.Components.ButtonTerminal = {}

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.ButtonTerminal.ServerEventRead(msg, c) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.ButtonTerminal.ServerEventWrite(msg, c, extraData) end

---@private
---@return System.Boolean
function CS.Barotrauma.Items.Components.ButtonTerminal.get_IsActivated() end

function CS.Barotrauma.Items.Components.ButtonTerminal.OnItemLoaded() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.ButtonTerminal.Update(deltaTime, cam) end

---@private
function CS.Barotrauma.Items.Components.ButtonTerminal.LoadSignals() end

---@private
function CS.Barotrauma.Items.Components.ButtonTerminal.LoadActivatingItems() end

function CS.Barotrauma.Items.Components.ButtonTerminal.Reset() end

---@private
---@param signalIndex System.Int32
---@param sender Barotrauma.Character
---@param ignoreState? System.Boolean
---@param overrideSignal? System.String
---@return System.Boolean
function CS.Barotrauma.Items.Components.ButtonTerminal.SendSignal(signalIndex, sender, ignoreState, overrideSignal) end

---@param data Barotrauma.Networking.NetEntityEvent.IData
---@return System.Boolean
function CS.Barotrauma.Items.Components.ButtonTerminal.ValidateEventData(data) end

---@private
---@param msg Barotrauma.Networking.IWriteMessage
---@param extraData Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.ButtonTerminal.Write(msg, extraData) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ButtonTerminal
function CS.Barotrauma.Items.Components.ButtonTerminal(item, element) end

---@class Barotrauma.Items.Components.CircuitBox: Barotrauma.Items.Components.ItemComponent
---@field IsActive System.Boolean
---@field DontTransferInventoryBetweenSubs System.Boolean
---@field DisallowSellingItemsFromContainer System.Boolean
---@field ComponentContainer Barotrauma.Items.Components.ItemContainer
---@field WireContainer Barotrauma.Items.Components.ItemContainer
---@field IsFull System.Boolean
---@field Locked System.Boolean
---@field private needsServerInitialization System.Boolean
---@field Inputs userdata | { [System.Int32]: Barotrauma.CircuitBoxInputConnection } | (fun(): Barotrauma.CircuitBoxInputConnection)
---@field Outputs userdata | { [System.Int32]: Barotrauma.CircuitBoxOutputConnection } | (fun(): Barotrauma.CircuitBoxOutputConnection)
---@field Components userdata | { [System.Int32]: Barotrauma.CircuitBoxComponent } | (fun(): Barotrauma.CircuitBoxComponent)
---@field InputOutputNodes userdata | { [System.Int32]: Barotrauma.CircuitBoxInputOutputNode } | (fun(): Barotrauma.CircuitBoxInputOutputNode)
---@field Labels userdata | { [System.Int32]: Barotrauma.CircuitBoxLabelNode } | (fun(): Barotrauma.CircuitBoxLabelNode)
---@field Wires userdata | { [System.Int32]: Barotrauma.CircuitBoxWire } | (fun(): Barotrauma.CircuitBoxWire)
---@field containers Barotrauma.Items.Components.ItemContainer[]
---@field TemporarilyLocked System.Boolean
---@field private delayedElementToLoad userdata
---@field UnrealiableOpcodes userdata | (fun(): Barotrauma.CircuitBoxOpcode)
---@field private ComponentContainerIndex System.Int32
---@field private WireContainerIndex System.Int32
CS.Barotrauma.Items.Components.CircuitBox = {}

function CS.Barotrauma.Items.Components.CircuitBox.MarkServerRequiredInitialization() end

---@param data Barotrauma.INetSerializableStruct
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.CircuitBox.ServerRead(data, c) end

---@private
---@param data Barotrauma.NetCircuitBoxCursorInfo
---@param sender Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.CircuitBox.RelayCursorState(data, sender) end

---@param opcode Barotrauma.CircuitBoxOpcode
---@param data Barotrauma.INetSerializableStruct
---@param targetClient Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.CircuitBox.SendToClient(opcode, data, targetClient) end

---@param opcode Barotrauma.CircuitBoxOpcode
---@param data Barotrauma.INetSerializableStruct
---@param predicate? fun(arg: Barotrauma.Networking.Client): System.Boolean
function CS.Barotrauma.Items.Components.CircuitBox.SendToAll(opcode, data, predicate) end

---@private
---@param opcode Barotrauma.CircuitBoxOpcode
---@param data Barotrauma.INetSerializableStruct
---@return userdata
function CS.Barotrauma.Items.Components.CircuitBox.PrepareToSend(opcode, data) end

---@param data Barotrauma.INetSerializableStruct
function CS.Barotrauma.Items.Components.CircuitBox.CreateServerEvent(data) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.CircuitBox.ServerEventWrite(msg, c, extraData) end

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.CircuitBox.ServerEventRead(msg, c) end

function CS.Barotrauma.Items.Components.CircuitBox.CreateInitializationEvent() end

---@private
---@param message System.String
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.CircuitBox.ThrowError(message, c) end

---@private
function CS.Barotrauma.Items.Components.CircuitBox.BroadcastSelectionStatus() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.CircuitBox.get_IsActive() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.CircuitBox.get_DontTransferInventoryBetweenSubs() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.CircuitBox.get_DisallowSellingItemsFromContainer() end

---@overload fun(connection: Barotrauma.Items.Components.Connection): userdata
---@param connectionName Barotrauma.Identifier
---@return userdata
function CS.Barotrauma.Items.Components.CircuitBox.FindInputOutputConnection(connectionName) end

---@return Barotrauma.Items.Components.ItemContainer
function CS.Barotrauma.Items.Components.CircuitBox.get_ComponentContainer() end

---@return Barotrauma.Items.Components.ItemContainer
function CS.Barotrauma.Items.Components.CircuitBox.get_WireContainer() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.CircuitBox.get_IsFull() end

---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean
---@param idRemap Barotrauma.IdRemap
---@param isItemSwap System.Boolean
function CS.Barotrauma.Items.Components.CircuitBox.Load(componentElement, usePrefabValues, idRemap, isItemSwap) end

function CS.Barotrauma.Items.Components.CircuitBox.OnInventoryChanged() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.CircuitBox.Update(deltaTime, cam) end

function CS.Barotrauma.Items.Components.CircuitBox.OnMapLoaded() end

---@private
function CS.Barotrauma.Items.Components.CircuitBox.TryInitializeNodes() end

---@param loadElement Barotrauma.ContentXElement
function CS.Barotrauma.Items.Components.CircuitBox.LoadFromXML(loadElement) end

---@param original Barotrauma.Items.Components.CircuitBox
---@param clonedContainedItems userdata | { [System.UInt16]: Barotrauma.Item } | (fun(): userdata)
function CS.Barotrauma.Items.Components.CircuitBox.CloneFrom(original, clonedContainedItems) end

---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
function CS.Barotrauma.Items.Components.CircuitBox.Save(parentElement) end

---@param c Barotrauma.Character
function CS.Barotrauma.Items.Components.CircuitBox.OnDeselected(c) end

---@param one Barotrauma.CircuitBoxConnection
---@param two Barotrauma.CircuitBoxConnection
---@param onCreated fun(obj: Barotrauma.Items.Components.CircuitBox.CreatedWire)
---@param selectedWirePrefab Barotrauma.ItemPrefab
---@return System.Boolean
function CS.Barotrauma.Items.Components.CircuitBox.Connect(one, two, onCreated, selectedWirePrefab) end

---@private
---@param one Barotrauma.CircuitBoxConnection
---@param two Barotrauma.CircuitBoxConnection
---@return System.Boolean
function CS.Barotrauma.Items.Components.CircuitBox.VerifyConnection(one, two) end

---@private
---@param id System.UInt16
---@param color Microsoft.Xna.Framework.Color
---@param pos Microsoft.Xna.Framework.Vector2
---@param header Barotrauma.NetLimitedString
---@param body Barotrauma.NetLimitedString
function CS.Barotrauma.Items.Components.CircuitBox.AddLabelInternal(id, color, pos, header, body) end

---@private
---@param ids userdata | (fun(): System.UInt16)
function CS.Barotrauma.Items.Components.CircuitBox.RemoveLabelInternal(ids) end

---@private
---@param id System.UInt16
---@param pos Microsoft.Xna.Framework.Vector2
---@param size Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.CircuitBox.ResizeLabelInternal(id, pos, size) end

---@private
---@param type Barotrauma.CircuitBoxInputOutputNode.Type
---@param overrides userdata | { [System.String]: System.String } | (fun(): userdata)
function CS.Barotrauma.Items.Components.CircuitBox.RenameConnectionLabelsInternal(type, overrides) end

---@private
---@param conn Barotrauma.CircuitBoxConnection
---@return System.Boolean
function CS.Barotrauma.Items.Components.CircuitBox.IsExternalConnection(conn) end

---@private
---@param one Barotrauma.CircuitBoxConnection
---@param two Barotrauma.CircuitBoxConnection
---@param id System.UInt16
---@param prefab Barotrauma.ItemPrefab
function CS.Barotrauma.Items.Components.CircuitBox.CreateWireWithoutItem(one, two, id, prefab) end

---@private
---@overload fun(one: Barotrauma.CircuitBoxConnection, two: Barotrauma.CircuitBoxConnection, wireId: System.UInt16, it: Barotrauma.Item)
---@param one Barotrauma.CircuitBoxConnection
---@param two Barotrauma.CircuitBoxConnection
---@param prefab Barotrauma.ItemPrefab
---@param wireId System.UInt16
---@param onItemSpawned fun(obj: Barotrauma.Item)
function CS.Barotrauma.Items.Components.CircuitBox.CreateWireWithItem(one, two, prefab, wireId, onItemSpawned) end

---@private
---@param id System.UInt16
---@param prefab Barotrauma.ItemPrefab
---@param backingItem userdata
---@param one Barotrauma.CircuitBoxConnection
---@param two Barotrauma.CircuitBoxConnection
function CS.Barotrauma.Items.Components.CircuitBox.AddWireDirect(id, prefab, backingItem, one, two) end

---@private
---@param id System.UInt16
---@param color Microsoft.Xna.Framework.Color
---@param header Barotrauma.NetLimitedString
---@param body Barotrauma.NetLimitedString
function CS.Barotrauma.Items.Components.CircuitBox.RenameLabelInternal(id, color, header, body) end

---@private
---@param id System.UInt16
---@param prefab Barotrauma.ItemPrefab
---@param usedResource Barotrauma.ItemPrefab
---@param pos Microsoft.Xna.Framework.Vector2
---@param user Barotrauma.Character
---@param onItemSpawned fun(obj: Barotrauma.Item)
---@return System.Boolean
function CS.Barotrauma.Items.Components.CircuitBox.AddComponentInternal(id, prefab, usedResource, pos, user, onItemSpawned) end

---@private
---@param id System.UInt16
---@param backingItem Barotrauma.Item
---@param usedResource Barotrauma.ItemPrefab
---@param pos Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.CircuitBox.AddComponentInternalUnsafe(id, backingItem, usedResource, pos) end

---@private
---@param characterId System.UInt16
---@param nodes userdata | (fun(): Barotrauma.CircuitBoxSelectable)
function CS.Barotrauma.Items.Components.CircuitBox.ClearSelectionFor(characterId, nodes) end

---@private
---@param characterId System.UInt16
function CS.Barotrauma.Items.Components.CircuitBox.ClearAllSelectionsInternal(characterId) end

---@private
---@param ids userdata | (fun(): System.UInt16)
---@param characterId System.UInt16
---@param overwrite System.Boolean
function CS.Barotrauma.Items.Components.CircuitBox.SelectLabelsInternal(ids, characterId, overwrite) end

---@private
---@param ids userdata | (fun(): System.UInt16)
---@param characterId System.UInt16
---@param overwrite System.Boolean
function CS.Barotrauma.Items.Components.CircuitBox.SelectComponentsInternal(ids, characterId, overwrite) end

---@private
---@param nodeIds userdata | { [System.UInt16]: userdata } | (fun(): userdata)
---@param wireIds userdata | { [System.UInt16]: userdata } | (fun(): userdata)
---@param inputOutputs userdata | { [Barotrauma.CircuitBoxInputOutputNode.Type]: userdata } | (fun(): userdata)
---@param labels userdata | { [System.UInt16]: userdata } | (fun(): userdata)
function CS.Barotrauma.Items.Components.CircuitBox.UpdateSelections(nodeIds, wireIds, inputOutputs, labels) end

---@private
---@param ids userdata | (fun(): System.UInt16)
---@param characterId System.UInt16
---@param overwrite System.Boolean
function CS.Barotrauma.Items.Components.CircuitBox.SelectWiresInternal(ids, characterId, overwrite) end

---@private
---@param io userdata | (fun(): Barotrauma.CircuitBoxInputOutputNode.Type)
---@param characterId System.UInt16
---@param overwrite System.Boolean
function CS.Barotrauma.Items.Components.CircuitBox.SelectInputOutputInternal(io, characterId, overwrite) end

---@private
---@param ids userdata | (fun(): System.UInt16)
function CS.Barotrauma.Items.Components.CircuitBox.RemoveComponentInternal(ids) end

---@private
---@param ids userdata | (fun(): System.UInt16)
function CS.Barotrauma.Items.Components.CircuitBox.RemoveWireInternal(ids) end

---@param wireItem Barotrauma.Items.Components.Wire
function CS.Barotrauma.Items.Components.CircuitBox.RemoveWire(wireItem) end

---@private
---@param wire Barotrauma.CircuitBoxWire
function CS.Barotrauma.Items.Components.CircuitBox.RemoveWireCollectionUnsafe(wire) end

---@private
---@param ids userdata | (fun(): System.UInt16)
---@param ios userdata | (fun(): Barotrauma.CircuitBoxInputOutputNode.Type)
---@param labels userdata | (fun(): System.UInt16)
---@param moveAmount Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.CircuitBox.MoveNodesInternal(ids, ios, labels, moveAmount) end

---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.CircuitBox.Select(character) end

function CS.Barotrauma.Items.Components.CircuitBox.OnViewUpdateProjSpecific() end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.CircuitBox.ReceiveSignal(signal, connection) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.CircuitBox.IsRoundRunning() end

---@param itemId System.UInt16
---@param componentIndex System.Byte
---@return userdata
function CS.Barotrauma.Items.Components.CircuitBox.FindCircuitBox(itemId, componentIndex) end

---@private
---@param index System.Int32
---@return Barotrauma.Items.Components.ItemContainer
function CS.Barotrauma.Items.Components.CircuitBox.GetContainerOrNull(index) end

---@param ids userdata | (fun(): System.UInt16)
---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.CircuitBox.CreateRefundItemsForUsedResources(ids, character) end

---@param character Barotrauma.Character
---@return userdata | { [System.Int32]: Barotrauma.Item } | (fun(): Barotrauma.Item)
function CS.Barotrauma.Items.Components.CircuitBox.GetSortedCircuitBoxItemsFromPlayer(character) end

---@param item Barotrauma.Item
---@return System.Boolean
function CS.Barotrauma.Items.Components.CircuitBox.CanItemBeAccessed(item) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.CircuitBox.IsLocked() end

---@overload fun(prefab: Barotrauma.ItemPrefab, playerItems: (userdata | { [System.Int32]: Barotrauma.Item } | (fun(): Barotrauma.Item))): userdata
---@param prefab Barotrauma.ItemPrefab
---@param character Barotrauma.Character
---@return userdata
function CS.Barotrauma.Items.Components.CircuitBox.GetApplicableResourcePlayerHas(prefab, character) end

---@param prefab Barotrauma.ItemPrefab
---@param user Barotrauma.Character
---@param container Barotrauma.Items.Components.ItemContainer
---@param onSpawned fun(obj: Barotrauma.Item)
function CS.Barotrauma.Items.Components.CircuitBox.SpawnItem(prefab, user, container, onSpawned) end

---@param item Barotrauma.Item
function CS.Barotrauma.Items.Components.CircuitBox.RemoveItem(item) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.CircuitBox.IsInGame() end

---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.CircuitBox.IsCircuitBoxSelected(character) end

---@overload fun(): Barotrauma.Items.Components.CircuitBox
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.CircuitBox
function CS.Barotrauma.Items.Components.CircuitBox(item, element) end

---@class Barotrauma.Items.Components.ConnectionPanel: Barotrauma.Items.Components.ItemComponent
---@field AlwaysAllowRewiring System.Boolean
---@field Locked System.Boolean
---@field TemporarilyLocked System.Boolean
---@field IsActive System.Boolean
---@field User Barotrauma.Character
---@field Connections userdata | { [System.Int32]: Barotrauma.Items.Components.Connection } | (fun(): Barotrauma.Items.Components.Connection)
---@field private user Barotrauma.Character
---@field DisconnectedWires userdata | (fun(): Barotrauma.Items.Components.Wire)
---@field private disconnectedWireIds userdata | { [System.Int32]: System.UInt16 } | (fun(): System.UInt16)
---@field private linksInitialized System.Boolean
---@field private MaxConnectionCount System.Int32
CS.Barotrauma.Items.Components.ConnectionPanel = {}

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.ConnectionPanel.ServerEventRead(msg, c) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.ConnectionPanel.ServerEventWrite(msg, c, extraData) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.ConnectionPanel.get_AlwaysAllowRewiring() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.ConnectionPanel.get_TemporarilyLocked() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.ConnectionPanel.get_IsActive() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.ConnectionPanel.set_IsActive(value) end

---@return Barotrauma.Character
function CS.Barotrauma.Items.Components.ConnectionPanel.get_User() end

function CS.Barotrauma.Items.Components.ConnectionPanel.OnMapLoaded() end

function CS.Barotrauma.Items.Components.ConnectionPanel.InitializeLinks() end

function CS.Barotrauma.Items.Components.ConnectionPanel.OnItemLoaded() end

---@param amount Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.ConnectionPanel.MoveConnectedWires(amount) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.ConnectionPanel.Update(deltaTime, cam) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.ConnectionPanel.UpdateBroken(deltaTime, cam) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.ConnectionPanel.CanRewire() end

---@param picker Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.ConnectionPanel.Select(picker) end

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.ConnectionPanel.Use(deltaTime, character) end

---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.ConnectionPanel.CheckCharacterSuccess(character) end

---@param element Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean
---@param idRemap Barotrauma.IdRemap
---@param isItemSwap System.Boolean
function CS.Barotrauma.Items.Components.ConnectionPanel.Load(element, usePrefabValues, idRemap, isItemSwap) end

---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
function CS.Barotrauma.Items.Components.ConnectionPanel.Save(parentElement) end

---@protected
function CS.Barotrauma.Items.Components.ConnectionPanel.ShallowRemoveComponentSpecific() end

---@protected
function CS.Barotrauma.Items.Components.ConnectionPanel.RemoveComponentSpecific() end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.ConnectionPanel.ReceiveSignal(signal, connection) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.ConnectionPanel.ClientEventWrite(msg, extraData) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ConnectionPanel
function CS.Barotrauma.Items.Components.ConnectionPanel(item, element) end

---@class Barotrauma.Items.Components.ConnectionSelectorComponent: Barotrauma.Items.Components.ItemComponent
---@field SelectedConnection System.Int32
---@field WrapAround System.Boolean
---@field SkipEmptyConnections System.Boolean
---@field protected InputNameSetConnection System.String
---@field protected InputNameMoveInput System.String
---@field private sendStateCoroutine Barotrauma.CoroutineHandle
---@field private lastSentConnectionIndex System.Int32
---@field private sendStateTimer System.Single
---@field protected selectedConnectionIndex System.Int32
---@field protected selectedConnectionIndexStr System.String
---@field protected selectedConnectionName System.String
---@field private connectionCount System.Int32
CS.Barotrauma.Items.Components.ConnectionSelectorComponent = {}

---@private
---@return userdata | (fun(): Barotrauma.CoroutineStatus)
function CS.Barotrauma.Items.Components.ConnectionSelectorComponent.SendStateAfterDelay() end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.ConnectionSelectorComponent.ServerEventWrite(msg, c, extraData) end

---@return System.Int32
function CS.Barotrauma.Items.Components.ConnectionSelectorComponent.get_SelectedConnection() end

---@param value System.Int32
function CS.Barotrauma.Items.Components.ConnectionSelectorComponent.set_SelectedConnection(value) end

---@private
function CS.Barotrauma.Items.Components.ConnectionSelectorComponent.OnStateChanged() end

---@protected
---@param connectionIndex System.Int32
---@return System.String
function CS.Barotrauma.Items.Components.ConnectionSelectorComponent.GetConnectionName(connectionIndex) end

---@protected
---@return System.String
function CS.Barotrauma.Items.Components.ConnectionSelectorComponent.get_InputNameSetConnection() end

---@protected
---@return System.String
function CS.Barotrauma.Items.Components.ConnectionSelectorComponent.get_InputNameMoveInput() end

---@protected
---@return userdata | (fun(): Barotrauma.Items.Components.Connection)
function CS.Barotrauma.Items.Components.ConnectionSelectorComponent.GetConnections() end

function CS.Barotrauma.Items.Components.ConnectionSelectorComponent.OnItemLoaded() end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.ConnectionSelectorComponent.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ConnectionSelectorComponent
function CS.Barotrauma.Items.Components.ConnectionSelectorComponent(item, element) end

---@class Barotrauma.Items.Components.CustomInterface: Barotrauma.Items.Components.ItemComponent
---@field Labels System.String
---@field Signals System.String
---@field ElementStates System.String
---@field ShowInsufficientPowerWarning System.Boolean
---@field private labels System.String[]
---@field private signals System.String[]
---@field private elementStates System.Boolean[]
---@field private customInterfaceElementList userdata | { [System.Int32]: Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement } | (fun(): Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement)
CS.Barotrauma.Items.Components.CustomInterface = {}

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.CustomInterface.ServerEventRead(msg, c) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.CustomInterface.ServerEventWrite(msg, c, extraData) end

---@return System.String
function CS.Barotrauma.Items.Components.CustomInterface.get_Labels() end

---@param value System.String
function CS.Barotrauma.Items.Components.CustomInterface.set_Labels(value) end

---@return System.String
function CS.Barotrauma.Items.Components.CustomInterface.get_Signals() end

---@param value System.String
function CS.Barotrauma.Items.Components.CustomInterface.set_Signals(value) end

---@return System.String
function CS.Barotrauma.Items.Components.CustomInterface.get_ElementStates() end

---@param value System.String
function CS.Barotrauma.Items.Components.CustomInterface.set_ElementStates(value) end

---@private
---@param newLabels System.String[]
function CS.Barotrauma.Items.Components.CustomInterface.UpdateLabels(newLabels) end

---@private
---@param newSignals System.String[]
function CS.Barotrauma.Items.Components.CustomInterface.UpdateSignals(newSignals) end

---@private
---@param element Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement
function CS.Barotrauma.Items.Components.CustomInterface.SetPropertyValueToSignal(element) end

---@private
---@param element Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement
function CS.Barotrauma.Items.Components.CustomInterface.SetSignalToPropertyValue(element) end

function CS.Barotrauma.Items.Components.CustomInterface.OnItemLoaded() end

---@private
---@param btnElement Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement
function CS.Barotrauma.Items.Components.CustomInterface.ButtonClicked(btnElement) end

---@private
---@param tickBoxElement Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement
---@param state System.Boolean
function CS.Barotrauma.Items.Components.CustomInterface.TickBoxToggled(tickBoxElement, state) end

---@private
---@param textElement Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement
---@param text System.String
function CS.Barotrauma.Items.Components.CustomInterface.TextChanged(textElement, text) end

---@private
---@overload fun(numberInputElement: Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement, value: System.Single)
---@param numberInputElement Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement
---@param value System.Int32
function CS.Barotrauma.Items.Components.CustomInterface.ValueChanged(numberInputElement, value) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.CustomInterface.Update(deltaTime, cam) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.CustomInterface.UpdateBroken(deltaTime, cam) end

---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
function CS.Barotrauma.Items.Components.CustomInterface.Save(parentElement) end

---@private
---@param s System.String
---@param f System.Single
---@return System.Boolean
function CS.Barotrauma.Items.Components.CustomInterface.TryParseFloatInvariantCulture(s, f) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.CustomInterface
function CS.Barotrauma.Items.Components.CustomInterface(item, element) end

---@class Barotrauma.Items.Components.MemoryComponent: Barotrauma.Items.Components.ItemComponent
---@field MaxValueLength System.Int32
---@field Value System.String
---@field Writeable System.Boolean
---@field private sendStateCoroutine Barotrauma.CoroutineHandle
---@field private lastSentValue System.String
---@field private sendStateTimer System.Single
---@field private maxValueLength System.Int32
---@field private value System.String
CS.Barotrauma.Items.Components.MemoryComponent = {}

---@private
---@return userdata | (fun(): Barotrauma.CoroutineStatus)
function CS.Barotrauma.Items.Components.MemoryComponent.SendStateAfterDelay() end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.MemoryComponent.ServerEventWrite(msg, c, extraData) end

---@return System.Int32
function CS.Barotrauma.Items.Components.MemoryComponent.get_MaxValueLength() end

---@param value System.Int32
function CS.Barotrauma.Items.Components.MemoryComponent.set_MaxValueLength(value) end

---@return System.String
function CS.Barotrauma.Items.Components.MemoryComponent.get_Value() end

---@param value System.String
function CS.Barotrauma.Items.Components.MemoryComponent.set_Value(value) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.MemoryComponent.Update(deltaTime, cam) end

---@private
function CS.Barotrauma.Items.Components.MemoryComponent.OnStateChanged() end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.MemoryComponent.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.MemoryComponent
function CS.Barotrauma.Items.Components.MemoryComponent(item, element) end

---@class Barotrauma.Items.Components.Terminal: Barotrauma.Items.Components.ItemComponent
---@field DisplayedWelcomeMessage Barotrauma.LocalizedString
---@field WelcomeMessage System.String
---@field ShowMessage System.String
---@field UseMonospaceFont System.Boolean
---@field AutoHideScrollbar System.Boolean
---@field WelcomeMessageDisplayed System.Boolean
---@field TextColor Microsoft.Xna.Framework.Color
---@field LineStartSymbol System.String
---@field Readonly System.Boolean
---@field AutoScrollToBottom System.Boolean
---@field private OutputValue System.String
---@field private messageHistory userdata | { [System.Int32]: Barotrauma.Items.Components.TerminalMessage } | (fun(): Barotrauma.Items.Components.TerminalMessage)
---@field private welcomeMessage System.String
---@field private textColor Microsoft.Xna.Framework.Color
---@field private _readonly System.Boolean
---@field private prevColorSignal System.String
---@field private MaxMessageLength System.Int32
---@field private MaxMessages System.Int32
CS.Barotrauma.Items.Components.Terminal = {}

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.Terminal.ServerEventRead(msg, c) end

function CS.Barotrauma.Items.Components.Terminal.SyncHistory() end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.Terminal.ServerEventWrite(msg, c, extraData) end

---@return System.String
function CS.Barotrauma.Items.Components.Terminal.get_WelcomeMessage() end

---@param value System.String
function CS.Barotrauma.Items.Components.Terminal.set_WelcomeMessage(value) end

---@return System.String
function CS.Barotrauma.Items.Components.Terminal.get_ShowMessage() end

---@param value System.String
function CS.Barotrauma.Items.Components.Terminal.set_ShowMessage(value) end

---@return Microsoft.Xna.Framework.Color
function CS.Barotrauma.Items.Components.Terminal.get_TextColor() end

---@param value Microsoft.Xna.Framework.Color
function CS.Barotrauma.Items.Components.Terminal.set_TextColor(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Terminal.get_Readonly() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Terminal.set_Readonly(value) end

---@private
---@param input System.String
---@param addToHistory System.Boolean
---@param color Microsoft.Xna.Framework.Color
---@param isWelcomeMessage System.Boolean
function CS.Barotrauma.Items.Components.Terminal.ShowOnDisplay(input, addToHistory, color, isWelcomeMessage) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.Terminal.ReceiveSignal(signal, connection) end

function CS.Barotrauma.Items.Components.Terminal.OnItemLoaded() end

---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
function CS.Barotrauma.Items.Components.Terminal.Save(parentElement) end

---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean
---@param idRemap Barotrauma.IdRemap
---@param isItemSwap System.Boolean
function CS.Barotrauma.Items.Components.Terminal.Load(componentElement, usePrefabValues, idRemap, isItemSwap) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Terminal
function CS.Barotrauma.Items.Components.Terminal(item, element) end

---@class Barotrauma.Items.Components.WifiComponent: Barotrauma.Items.Components.ItemComponent
---@field TeamID Barotrauma.CharacterTeamType
---@field Range System.Single
---@field Channel System.Int32
---@field AllowCrossTeamCommunication System.Boolean
---@field LinkToChat System.Boolean
---@field MinChatMessageInterval System.Single
---@field DiscardDuplicateChatMessages System.Boolean
---@field JamTimer System.Single
---@field private networkReceivedChannelMemory System.Int32[]
---@field private range System.Single
---@field private channel System.Int32
---@field private chatMsgCooldown System.Single
---@field private prevSignal System.String
---@field private channelMemory System.Int32[]
---@field private signalInConnection Barotrauma.Items.Components.Connection
---@field private signalOutConnection Barotrauma.Items.Components.Connection
---@field private jamTimer System.Single
---@field private list userdata | { [System.Int32]: Barotrauma.Items.Components.WifiComponent } | (fun(): Barotrauma.Items.Components.WifiComponent)
---@field private ChannelMemorySize System.Int32
---@field private MinChannel System.Int32
---@field private MaxChannel System.Int32
CS.Barotrauma.Items.Components.WifiComponent = {}

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.WifiComponent.ServerEventWrite(msg, c, extraData) end

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.WifiComponent.ServerEventRead(msg, c) end

---@return System.Single
function CS.Barotrauma.Items.Components.WifiComponent.get_Range() end

---@param value System.Single
function CS.Barotrauma.Items.Components.WifiComponent.set_Range(value) end

---@return System.Int32
function CS.Barotrauma.Items.Components.WifiComponent.get_Channel() end

---@param value System.Int32
function CS.Barotrauma.Items.Components.WifiComponent.set_Channel(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.WifiComponent.get_JamTimer() end

---@param value System.Single
function CS.Barotrauma.Items.Components.WifiComponent.set_JamTimer(value) end

---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean
---@param idRemap Barotrauma.IdRemap
---@param isItemSwap System.Boolean
function CS.Barotrauma.Items.Components.WifiComponent.Load(componentElement, usePrefabValues, idRemap, isItemSwap) end

function CS.Barotrauma.Items.Components.WifiComponent.OnItemLoaded() end

---@overload fun(sender: Barotrauma.Items.Components.WifiComponent): System.Boolean
---@param ignoreJamming? System.Boolean
---@return System.Boolean
function CS.Barotrauma.Items.Components.WifiComponent.CanTransmit(ignoreJamming) end

---@return userdata | (fun(): Barotrauma.Items.Components.WifiComponent)
function CS.Barotrauma.Items.Components.WifiComponent.GetReceiversInRange() end

---@param sender Barotrauma.Items.Components.WifiComponent
---@return System.Boolean
function CS.Barotrauma.Items.Components.WifiComponent.CanReceive(sender) end

---@return userdata | (fun(): Barotrauma.Items.Components.WifiComponent)
function CS.Barotrauma.Items.Components.WifiComponent.GetTransmittersInRange() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.WifiComponent.Update(deltaTime, cam) end

---@param index System.Int32
---@return System.Int32
function CS.Barotrauma.Items.Components.WifiComponent.GetChannelMemory(index) end

---@param index System.Int32
---@param value System.Int32
function CS.Barotrauma.Items.Components.WifiComponent.SetChannelMemory(index, value) end

---@param signal Barotrauma.Items.Components.Signal
---@param sentFromChat System.Boolean
function CS.Barotrauma.Items.Components.WifiComponent.TransmitSignal(signal, sentFromChat) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.WifiComponent.ReceiveSignal(signal, connection) end

---@protected
function CS.Barotrauma.Items.Components.WifiComponent.RemoveComponentSpecific() end

---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
function CS.Barotrauma.Items.Components.WifiComponent.Save(parentElement) end

---@protected
---@param msg Barotrauma.Networking.IWriteMessage
function CS.Barotrauma.Items.Components.WifiComponent.SharedEventWrite(msg) end

---@protected
---@param msg Barotrauma.Networking.IReadMessage
function CS.Barotrauma.Items.Components.WifiComponent.SharedEventRead(msg) end

---@overload fun(): Barotrauma.Items.Components.WifiComponent
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.WifiComponent
function CS.Barotrauma.Items.Components.WifiComponent(item, element) end

---@class Barotrauma.Items.Components.Wire: Barotrauma.Items.Components.ItemComponent
---@field Locked System.Boolean
---@field Connections Barotrauma.Items.Components.Connection[]
---@field Length System.Single
---@field Width System.Single
---@field MaxLength System.Single
---@field HiddenInGame System.Boolean
---@field NoAutoLock System.Boolean
---@field UseSpriteDepth System.Boolean
---@field DropOnConnect System.Boolean
---@field private shouldClearConnections System.Boolean
---@field private nodes userdata | { [System.Int32]: Microsoft.Xna.Framework.Vector2 } | (fun(): Microsoft.Xna.Framework.Vector2)
---@field private sections userdata | { [System.Int32]: Barotrauma.Items.Components.Wire.WireSection } | (fun(): Barotrauma.Items.Components.Wire.WireSection)
---@field private connections Barotrauma.Items.Components.Connection[]
---@field private canPlaceNode System.Boolean
---@field private newNodePos Microsoft.Xna.Framework.Vector2
---@field private sectionExtents Microsoft.Xna.Framework.Vector2
---@field private currLength System.Single
---@field Hidden System.Boolean
---@field private editNodeDelay System.Single
---@field private locked System.Boolean
---@field private MaxAttachDistance System.Single
---@field private MinNodeDistance System.Single
---@field private MaxNodeCount System.Int32
---@field private MaxNodesPerNetworkEvent System.Int32
CS.Barotrauma.Items.Components.Wire = {}

function CS.Barotrauma.Items.Components.Wire.CreateNetworkEvent() end

---@param data Barotrauma.Networking.NetEntityEvent.IData
---@return System.Boolean
function CS.Barotrauma.Items.Components.Wire.ValidateEventData(data) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.Wire.ServerEventWrite(msg, c, extraData) end

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.Wire.ServerEventRead(msg, c) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Wire.get_Locked() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Wire.set_Locked(value) end

---@return Barotrauma.Items.Components.Connection[]
function CS.Barotrauma.Items.Components.Wire.get_Connections() end

---@param connection Barotrauma.Items.Components.Connection
---@return Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.Wire.OtherConnection(connection) end

---@param item Barotrauma.Item
---@return System.Boolean
function CS.Barotrauma.Items.Components.Wire.IsConnectedTo(item) end

---@overload fun(connection: Barotrauma.Items.Components.Connection)
---@param item Barotrauma.Item
function CS.Barotrauma.Items.Components.Wire.RemoveConnection(item) end

---@param newConnection Barotrauma.Items.Components.Connection
---@param addNode? System.Boolean
---@param sendNetworkEvent? System.Boolean
---@return System.Boolean
function CS.Barotrauma.Items.Components.Wire.TryConnect(newConnection, addNode, sendNetworkEvent) end

---@param newConnection Barotrauma.Items.Components.Connection
---@param connectionIndex System.Int32
---@param addNode? System.Boolean
---@param sendNetworkEvent? System.Boolean
---@return System.Boolean
function CS.Barotrauma.Items.Components.Wire.Connect(newConnection, connectionIndex, addNode, sendNetworkEvent) end

---@private
---@param newConnection Barotrauma.Items.Components.Connection
---@param selectedIndex System.Int32
function CS.Barotrauma.Items.Components.Wire.AddNode(newConnection, selectedIndex) end

---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.Wire.Equip(character) end

---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.Wire.Unequip(character) end

---@param dropper Barotrauma.Character
---@param setTransform? System.Boolean
function CS.Barotrauma.Items.Components.Wire.Drop(dropper, setTransform) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Wire.Update(deltaTime, cam) end

---@private
---@param user Barotrauma.Character
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Wire.GetAttachPosition(user) end

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Wire.Use(deltaTime, character) end

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Wire.SecondaryUse(deltaTime, character) end

---@param picker Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Wire.Pick(picker) end

---@return userdata | { [System.Int32]: Microsoft.Xna.Framework.Vector2 } | (fun(): Microsoft.Xna.Framework.Vector2)
function CS.Barotrauma.Items.Components.Wire.GetNodes() end

---@param nodes userdata | (fun(): Microsoft.Xna.Framework.Vector2)
function CS.Barotrauma.Items.Components.Wire.SetNodes(nodes) end

---@param index System.Int32
---@param amount Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Wire.MoveNode(index, amount) end

---@param amount Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Wire.MoveNodes(amount) end

function CS.Barotrauma.Items.Components.Wire.UpdateSections() end

---@private
function CS.Barotrauma.Items.Components.Wire.CalculateExtents() end

---@param user? Barotrauma.Character
function CS.Barotrauma.Items.Components.Wire.ClearConnections(user) end

---@private
---@param position Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Wire.RoundNode(position) end

function CS.Barotrauma.Items.Components.Wire.SetConnectedDirty() end

---@private
function CS.Barotrauma.Items.Components.Wire.CleanNodes() end

function CS.Barotrauma.Items.Components.Wire.FixNodeEnds() end

---@private
---@param pos Microsoft.Xna.Framework.Vector2
---@param maxDist System.Single
---@param closestDist System.Single
---@return System.Int32
function CS.Barotrauma.Items.Components.Wire.GetClosestNodeIndex(pos, maxDist, closestDist) end

---@private
---@param mousePos Microsoft.Xna.Framework.Vector2
---@param maxDist System.Single
---@param closestDist System.Single
---@return System.Int32
function CS.Barotrauma.Items.Components.Wire.GetClosestSectionIndex(mousePos, maxDist, closestDist) end

---@param relativeToSub System.Boolean
function CS.Barotrauma.Items.Components.Wire.FlipX(relativeToSub) end

---@param relativeToSub System.Boolean
function CS.Barotrauma.Items.Components.Wire.FlipY(relativeToSub) end

---@param element System.Xml.Linq.XElement
---@return userdata | (fun(): Microsoft.Xna.Framework.Vector2)
function CS.Barotrauma.Items.Components.Wire.ExtractNodes(element) end

---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean
---@param idRemap Barotrauma.IdRemap
---@param isItemSwap System.Boolean
function CS.Barotrauma.Items.Components.Wire.Load(componentElement, usePrefabValues, idRemap, isItemSwap) end

---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
function CS.Barotrauma.Items.Components.Wire.Save(parentElement) end

---@protected
function CS.Barotrauma.Items.Components.Wire.ShallowRemoveComponentSpecific() end

---@protected
function CS.Barotrauma.Items.Components.Wire.RemoveComponentSpecific() end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Wire
function CS.Barotrauma.Items.Components.Wire(item, element) end

---@class Barotrauma.Items.Components.TriggerComponent: Barotrauma.Items.Components.ItemComponent
---@field Force System.Single
---@field DirectionalForce Microsoft.Xna.Framework.Vector2
---@field RelativeDirectionalForce System.Boolean
---@field VerticalForce System.Boolean
---@field HorizontalForce System.Boolean
---@field DistanceBasedForce System.Boolean
---@field ForceFluctuation System.Boolean
---@field ForceFluctuationStrength System.Single
---@field ForceFluctuationFrequency System.Single
---@field ForceFluctuationInterval System.Single
---@field PhysicsBody Barotrauma.PhysicsBody
---@field Radius System.Single
---@field Width System.Single
---@field Height System.Single
---@field BodyOffset Microsoft.Xna.Framework.Vector2
---@field private RadiusInDisplayUnits System.Single
---@field private TriggeredOnce System.Boolean
---@field private CurrentForceFluctuation System.Single
---@field TriggerActive System.Boolean
---@field private ForceFluctuationTimer System.Single
---@field private TimeInLevel System.Single
---@field ApplyEffectsToCharactersInsideSub System.Boolean
---@field MoveOutsideSub System.Boolean
---@field IsActive System.Boolean
---@field private radius System.Single
---@field private width System.Single
---@field private height System.Single
---@field private currentRadius System.Single
---@field private currentWidth System.Single
---@field private currentHeight System.Single
---@field private bodyOffset Microsoft.Xna.Framework.Vector2
---@field private triggeredBy Barotrauma.LevelTrigger.TriggererType
---@field private triggerSpeciesOrGroup Barotrauma.Identifier
---@field private conditionals Barotrauma.PropertyConditional.LogicalComparison
---@field private triggerers userdata | (fun(): Barotrauma.Entity)
---@field private triggerOnce System.Boolean
---@field private statusEffectTargets userdata | { [System.Int32]: Barotrauma.ISerializableEntity } | (fun(): Barotrauma.ISerializableEntity)
---@field private statusEffects userdata | { [System.Int32]: Barotrauma.StatusEffect } | (fun(): Barotrauma.StatusEffect)
---@field private attacks userdata | { [System.Int32]: Barotrauma.Attack } | (fun(): Barotrauma.Attack)
---@field private forceFluctuationStrength System.Single
---@field private forceFluctuationFrequency System.Single
---@field private forceFluctuationInterval System.Single
CS.Barotrauma.Items.Components.TriggerComponent = {}

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.TriggerComponent.ServerEventWrite(msg, c, extraData) end

---@return System.Single
function CS.Barotrauma.Items.Components.TriggerComponent.get_ForceFluctuationStrength() end

---@param value System.Single
function CS.Barotrauma.Items.Components.TriggerComponent.set_ForceFluctuationStrength(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.TriggerComponent.get_ForceFluctuationFrequency() end

---@param value System.Single
function CS.Barotrauma.Items.Components.TriggerComponent.set_ForceFluctuationFrequency(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.TriggerComponent.get_ForceFluctuationInterval() end

---@param value System.Single
function CS.Barotrauma.Items.Components.TriggerComponent.set_ForceFluctuationInterval(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.TriggerComponent.get_Radius() end

---@param value System.Single
function CS.Barotrauma.Items.Components.TriggerComponent.set_Radius(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.TriggerComponent.get_Width() end

---@param value System.Single
function CS.Barotrauma.Items.Components.TriggerComponent.set_Width(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.TriggerComponent.get_Height() end

---@param value System.Single
function CS.Barotrauma.Items.Components.TriggerComponent.set_Height(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.TriggerComponent.get_BodyOffset() end

---@param value Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.TriggerComponent.set_BodyOffset(value) end

---@private
---@return System.Single
function CS.Barotrauma.Items.Components.TriggerComponent.get_TimeInLevel() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.TriggerComponent.get_IsActive() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.TriggerComponent.set_IsActive(value) end

function CS.Barotrauma.Items.Components.TriggerComponent.OnItemLoaded() end

---@private
function CS.Barotrauma.Items.Components.TriggerComponent.RefreshPhysicsBodySize() end

---@param ignoreContacts? System.Boolean
function CS.Barotrauma.Items.Components.TriggerComponent.SetPhysicsBodyPosition(ignoreContacts) end

---@param relativeToSub System.Boolean
function CS.Barotrauma.Items.Components.TriggerComponent.FlipX(relativeToSub) end

---@param relativeToSub System.Boolean
function CS.Barotrauma.Items.Components.TriggerComponent.FlipY(relativeToSub) end

function CS.Barotrauma.Items.Components.TriggerComponent.OnMapLoaded() end

---@private
---@param sender FarseerPhysics.Dynamics.Fixture
---@param other FarseerPhysics.Dynamics.Fixture
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
---@return System.Boolean
function CS.Barotrauma.Items.Components.TriggerComponent.OnCollision(sender, other, contact) end

---@private
---@param sender FarseerPhysics.Dynamics.Fixture
---@param other FarseerPhysics.Dynamics.Fixture
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
function CS.Barotrauma.Items.Components.TriggerComponent.OnSeparation(sender, other, contact) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.TriggerComponent.Update(deltaTime, cam) end

---@private
---@param body Barotrauma.PhysicsBody
---@param multiplier? System.Single
function CS.Barotrauma.Items.Components.TriggerComponent.ApplyForce(body, multiplier) end

---@param amount Microsoft.Xna.Framework.Vector2
---@param ignoreContacts? System.Boolean
function CS.Barotrauma.Items.Components.TriggerComponent.Move(amount, ignoreContacts) end

---@protected
function CS.Barotrauma.Items.Components.TriggerComponent.RemoveComponentSpecific() end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.TriggerComponent.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.TriggerComponent
function CS.Barotrauma.Items.Components.TriggerComponent(item, element) end

---@class Barotrauma.Items.Components.Signal: System.ValueType
---@field TimeSinceCreated System.Double
---@field value System.String
---@field stepsTaken System.Int32
---@field sender Barotrauma.Character
---@field source Barotrauma.Item
---@field power System.Single
---@field strength System.Single
---@field CreationTime System.Double
CS.Barotrauma.Items.Components.Signal = {}

---@param value System.String
---@param stepsTaken? System.Int32
---@param sender? Barotrauma.Character
---@param source? Barotrauma.Item
---@param power? System.Single
---@param strength? System.Single
---@return Barotrauma.Items.Components.Signal
function CS.Barotrauma.Items.Components.Signal.Create(value, stepsTaken, sender, source, power, strength) end

---@return System.Double
function CS.Barotrauma.Items.Components.Signal.get_TimeSinceCreated() end

---@package
---@param stepsTaken System.Int32
---@return Barotrauma.Items.Components.Signal
function CS.Barotrauma.Items.Components.Signal.WithStepsTaken(stepsTaken) end

---@param a Barotrauma.Items.Components.Signal
---@param b Barotrauma.Items.Components.Signal
---@return System.Boolean
function CS.Barotrauma.Items.Components.Signal.op_Equality(a, b) end

---@param a Barotrauma.Items.Components.Signal
---@param b Barotrauma.Items.Components.Signal
---@return System.Boolean
function CS.Barotrauma.Items.Components.Signal.op_Inequality(a, b) end

---@param value System.String
---@param stepsTaken? System.Int32
---@param sender? Barotrauma.Character
---@param source? Barotrauma.Item
---@param power? System.Single
---@param strength? System.Single
---@return Barotrauma.Items.Components.Signal
function CS.Barotrauma.Items.Components.Signal(value, stepsTaken, sender, source, power, strength) end

---@class Barotrauma.Items.Components.Quality: Barotrauma.Items.Components.ItemComponent
---@field QualityLevel System.Int32
---@field private statValues userdata | { [Barotrauma.Items.Components.Quality.StatType]: System.Single } | (fun(): userdata)
---@field private qualityLevel System.Int32
---@field MaxQuality System.Int32
CS.Barotrauma.Items.Components.Quality = {}

---@param statType Barotrauma.Items.Components.Quality.StatType
---@param value System.Single
function CS.Barotrauma.Items.Components.Quality.SetValue(statType, value) end

---@return System.Int32
function CS.Barotrauma.Items.Components.Quality.get_QualityLevel() end

---@param value System.Int32
function CS.Barotrauma.Items.Components.Quality.set_QualityLevel(value) end

---@param statType Barotrauma.Items.Components.Quality.StatType
---@return System.Single
function CS.Barotrauma.Items.Components.Quality.GetValue(statType) end

---@param submarine Barotrauma.Submarine
---@param level Barotrauma.Level
---@param randSync? Barotrauma.Rand.RandSync
---@return System.Int32
function CS.Barotrauma.Items.Components.Quality.GetSpawnedItemQuality(submarine, level, randSync) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Quality
function CS.Barotrauma.Items.Components.Quality(item, element) end

---@class Barotrauma.Items.Components.ElectricalDischarger: Barotrauma.Items.Components.Powered
---@field List userdata | (fun(): Barotrauma.Items.Components.ElectricalDischarger)
---@field IsActive System.Boolean
---@field Range System.Single
---@field RangeMultiplierInWalls System.Single
---@field RaycastRange System.Single
---@field Duration System.Single
---@field Reload System.Single
---@field OutdoorsOnly System.Boolean
---@field IgnoreUser System.Boolean
---@field Nodes userdata | (fun(): Barotrauma.Items.Components.ElectricalDischarger.Node)
---@field private nodes userdata | { [System.Int32]: Barotrauma.Items.Components.ElectricalDischarger.Node } | (fun(): Barotrauma.Items.Components.ElectricalDischarger.Node)
---@field private charactersInRange userdata | { [System.Int32]: userdata } | (fun(): userdata)
---@field private charging System.Boolean
---@field private timer System.Single
---@field private attack Barotrauma.Attack
---@field private user Barotrauma.Character
---@field private reloadTimer System.Single
---@field private list userdata | { [System.Int32]: Barotrauma.Items.Components.ElectricalDischarger } | (fun(): Barotrauma.Items.Components.ElectricalDischarger)
---@field private MaxNodes System.Int32
---@field private MaxNodeDistance System.Single
CS.Barotrauma.Items.Components.ElectricalDischarger = {}

---@return userdata | (fun(): Barotrauma.Items.Components.ElectricalDischarger)
function CS.Barotrauma.Items.Components.ElectricalDischarger.get_List() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.ElectricalDischarger.get_IsActive() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.ElectricalDischarger.set_IsActive(value) end

---@return userdata | (fun(): Barotrauma.Items.Components.ElectricalDischarger.Node)
function CS.Barotrauma.Items.Components.ElectricalDischarger.get_Nodes() end

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.ElectricalDischarger.Use(deltaTime, character) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.ElectricalDischarger.Update(deltaTime, cam) end

---@param conn? Barotrauma.Items.Components.Connection
---@return System.Single
function CS.Barotrauma.Items.Components.ElectricalDischarger.GetCurrentPowerConsumption(conn) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.ElectricalDischarger.UpdateBroken(deltaTime, cam) end

---@private
function CS.Barotrauma.Items.Components.ElectricalDischarger.Discharge() end

---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param range System.Single
function CS.Barotrauma.Items.Components.ElectricalDischarger.FindNodes(worldPosition, range) end

---@private
---@param entitiesInRange userdata | { [System.Int32]: Barotrauma.Entity } | (fun(): Barotrauma.Entity)
---@param currPos Microsoft.Xna.Framework.Vector2
---@param parentNodeIndex System.Int32
---@param currentRange System.Single
function CS.Barotrauma.Items.Components.ElectricalDischarger.FindNodes(entitiesInRange, currPos, parentNodeIndex, currentRange) end

---@private
---@param currPos Microsoft.Xna.Framework.Vector2
---@param targetPos Microsoft.Xna.Framework.Vector2
---@param variance System.Single
---@param parentNodeIndex System.Int32
function CS.Barotrauma.Items.Components.ElectricalDischarger.AddNodesBetweenPoints(currPos, targetPos, variance, parentNodeIndex) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.ElectricalDischarger.ReceiveSignal(signal, connection) end

---@protected
function CS.Barotrauma.Items.Components.ElectricalDischarger.RemoveComponentSpecific() end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.ElectricalDischarger.ServerEventWrite(msg, c, extraData) end

---@overload fun(): Barotrauma.Items.Components.ElectricalDischarger
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ElectricalDischarger
function CS.Barotrauma.Items.Components.ElectricalDischarger(item, element) end

---@class Barotrauma.Items.Components.EntitySpawnerComponent: Barotrauma.Items.Components.ItemComponent
---@field ItemIdentifier System.String
---@field SpeciesName System.String
---@field OnlySpawnWhenCrewInRange System.Boolean
---@field CrewAreaShape Barotrauma.Items.Components.EntitySpawnerComponent.AreaShape
---@field CrewAreaBounds Microsoft.Xna.Framework.Vector2
---@field CrewAreaRadius System.Single
---@field CrewAreaOffset Microsoft.Xna.Framework.Vector2
---@field SpawnAreaShape Barotrauma.Items.Components.EntitySpawnerComponent.AreaShape
---@field SpawnAreaBounds Microsoft.Xna.Framework.Vector2
---@field SpawnAreaRadius System.Single
---@field SpawnAreaOffset Microsoft.Xna.Framework.Vector2
---@field SpawnTimerRange Microsoft.Xna.Framework.Vector2
---@field SpawnAmountRange Microsoft.Xna.Framework.Vector2
---@field MaximumAmount System.Int32
---@field MaximumAmountInArea System.Int32
---@field MaximumAmountRangePadding System.Single
---@field CanSpawn System.Boolean
---@field PreloadCharacter System.Boolean
---@field AffectedByPvPSpawnMonstersSetting System.Boolean
---@field private DisabledByByPvPSpawnMonstersSetting System.Boolean
---@field private spawnTimer System.Single
---@field private spawnTimerGoal System.Single|nil
---@field private spawnedAmount System.Int32
---@field private preloadedCharacter Barotrauma.Character
---@field private preloadInitiated System.Boolean
CS.Barotrauma.Items.Components.EntitySpawnerComponent = {}

---@private
---@return System.Boolean
function CS.Barotrauma.Items.Components.EntitySpawnerComponent.get_DisabledByByPvPSpawnMonstersSetting() end

function CS.Barotrauma.Items.Components.EntitySpawnerComponent.OnItemLoaded() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.EntitySpawnerComponent.Update(deltaTime, cam) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.EntitySpawnerComponent.ReceiveSignal(signal, connection) end

---@private
---@param size Microsoft.Xna.Framework.Vector2
---@param offset Microsoft.Xna.Framework.Vector2
---@param draw System.Boolean
---@return Microsoft.Xna.Framework.RectangleF
function CS.Barotrauma.Items.Components.EntitySpawnerComponent.GetAreaRectangle(size, offset, draw) end

---@private
---@return System.Boolean
function CS.Barotrauma.Items.Components.EntitySpawnerComponent.CanSpawnMore() end

---@private
---@param worldPos Microsoft.Xna.Framework.Vector2
---@param crewArea? System.Boolean
---@param rangePad? System.Boolean
---@return System.Boolean
function CS.Barotrauma.Items.Components.EntitySpawnerComponent.IsInRange(worldPos, crewArea, rangePad) end

function CS.Barotrauma.Items.Components.EntitySpawnerComponent.Spawn() end

---@private
---@param pos Microsoft.Xna.Framework.Vector2
---@param onSpawn? fun(obj: Barotrauma.Character)
function CS.Barotrauma.Items.Components.EntitySpawnerComponent.SpawnCharacter(pos, onSpawn) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.EntitySpawnerComponent
function CS.Barotrauma.Items.Components.EntitySpawnerComponent(item, element) end

---@class Barotrauma.Items.Components.ProducedItem: System.Object
---@field Probability System.Single
---@field StatusEffects userdata | { [System.Int32]: Barotrauma.StatusEffect } | (fun(): Barotrauma.StatusEffect)
---@field Producer Barotrauma.Item
---@field Prefab Barotrauma.ItemPrefab
CS.Barotrauma.Items.Components.ProducedItem = {}

---@private
---@param element Barotrauma.ContentXElement
function CS.Barotrauma.Items.Components.ProducedItem.LoadSubElements(element) end

---@overload fun(producer: Barotrauma.Item, element: Barotrauma.ContentXElement): Barotrauma.Items.Components.ProducedItem
---@param producer Barotrauma.Item
---@param prefab Barotrauma.ItemPrefab
---@param probability System.Single
---@return Barotrauma.Items.Components.ProducedItem
function CS.Barotrauma.Items.Components.ProducedItem(producer, prefab, probability) end

---@enum Barotrauma.Items.Components.VineTileType
CS.Barotrauma.Items.Components.VineTileType = {
    Stem = 0,
    StumpTop = 1,
    StumpLeft = 2,
    TurnTopLeft = 3,
    StumpBottom = 4,
    VerticalLine = 5,
    HorizontalLane = 5,
    TurnBottomLeft = 6,
    TSectionLeft = 7,
    StumpRight = 8,
    TurnTopRight = 9,
    VerticalLane = 10,
    HorizontalLine = 10,
    TSectionTop = 11,
    TurnBottomRight = 12,
    TSectionRight = 13,
    TSectionBottom = 14,
    CrossJunction = 15
}

---@enum Barotrauma.Items.Components.TileSide
CS.Barotrauma.Items.Components.TileSide = {
    None = 0,
    Top = 1,
    Left = 2,
    Bottom = 4,
    Right = 8
}

---@class Barotrauma.Items.Components.FoliageConfig: System.ValueType
---@field Variant System.Int32
---@field Rotation System.Single
---@field Scale System.Single
---@field EmptyConfig Barotrauma.Items.Components.FoliageConfig
---@field EmptyConfigValue System.Int32
CS.Barotrauma.Items.Components.FoliageConfig = {}

---@return System.Int32
function CS.Barotrauma.Items.Components.FoliageConfig.Serialize() end

---@param value System.Int32
---@return Barotrauma.Items.Components.FoliageConfig
function CS.Barotrauma.Items.Components.FoliageConfig.Deserialize(value) end

---@param maxVariants System.Int32
---@param minScale System.Single
---@param maxScale System.Single
---@param random? System.Random
---@return Barotrauma.Items.Components.FoliageConfig
function CS.Barotrauma.Items.Components.FoliageConfig.CreateRandomConfig(maxVariants, minScale, maxScale, random) end

---@private
---@return Barotrauma.Items.Components.FoliageConfig
function CS.Barotrauma.Items.Components.FoliageConfig() end

---@class Barotrauma.Items.Components.VineTile: System.Object
---@field GrowthStep System.Single
---@field Sides Barotrauma.Items.Components.TileSide
---@field BlockedSides Barotrauma.Items.Components.TileSide
---@field FlowerConfig Barotrauma.Items.Components.FoliageConfig
---@field LeafConfig Barotrauma.Items.Components.FoliageConfig
---@field FailedGrowthAttempts System.Int32
---@field Rect Microsoft.Xna.Framework.Rectangle
---@field Position Microsoft.Xna.Framework.Vector2
---@field private diameter System.Single
---@field offset Microsoft.Xna.Framework.Vector2
---@field Type Barotrauma.Items.Components.VineTileType
---@field AdjacentPositions userdata | { [Barotrauma.Items.Components.TileSide]: Microsoft.Xna.Framework.Vector2 } | (fun(): userdata)
---@field VineStep System.Single
---@field FlowerStep System.Single
---@field private growthStep System.Single
---@field HealthColor Microsoft.Xna.Framework.Color
---@field DecayDelay System.Single
---@field private Parent Barotrauma.Items.Components.Growable
---@field Size System.Int32
CS.Barotrauma.Items.Components.VineTile = {}

---@return System.Single
function CS.Barotrauma.Items.Components.VineTile.get_GrowthStep() end

---@param value System.Single
function CS.Barotrauma.Items.Components.VineTile.set_GrowthStep(value) end

---@param deltaTime System.Single
function CS.Barotrauma.Items.Components.VineTile.UpdateScale(deltaTime) end

---@param planter Barotrauma.Items.Components.Planter
---@param slotOffset Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.VineTile.GetWorldPosition(planter, slotOffset) end

function CS.Barotrauma.Items.Components.VineTile.UpdateType() end

---@param random? System.Random
---@return Barotrauma.Items.Components.TileSide
function CS.Barotrauma.Items.Components.VineTile.GetRandomFreeSide(random) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.VineTile.CanGrowMore() end

---@param side Barotrauma.Items.Components.TileSide
---@return System.Boolean
function CS.Barotrauma.Items.Components.VineTile.IsSideBlocked(side) end

---@param pos Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Rectangle
function CS.Barotrauma.Items.Components.VineTile.CreatePlantRect(pos) end

---@overload fun(): Barotrauma.Items.Components.VineTile
---@param parent Barotrauma.Items.Components.Growable
---@param position Microsoft.Xna.Framework.Vector2
---@param type Barotrauma.Items.Components.VineTileType
---@param flowerConfig? Barotrauma.Items.Components.FoliageConfig|nil
---@param leafConfig? Barotrauma.Items.Components.FoliageConfig|nil
---@param rect? Microsoft.Xna.Framework.Rectangle|nil
---@return Barotrauma.Items.Components.VineTile
function CS.Barotrauma.Items.Components.VineTile(parent, position, type, flowerConfig, leafConfig, rect) end

---@class Barotrauma.Items.Components.GrowthSideExtension: System.Object
CS.Barotrauma.Items.Components.GrowthSideExtension = {}

---@param side Barotrauma.Items.Components.TileSide
---@return System.Int32
function CS.Barotrauma.Items.Components.GrowthSideExtension.Count(side) end

---@param side Barotrauma.Items.Components.TileSide
---@return Barotrauma.Items.Components.TileSide
function CS.Barotrauma.Items.Components.GrowthSideExtension.GetOppositeSide(side) end


---@class Barotrauma.Items.Components.IdCard: Barotrauma.Items.Components.Pickable
---@field TeamID Barotrauma.CharacterTeamType
---@field SubmarineSpecificID System.Int32
---@field OwnerTags System.String
---@field Description System.String
---@field OwnerTagSet userdata | (fun(): Barotrauma.Identifier)
---@field OwnerName System.String
---@field OwnerNameLocalized System.String
---@field OwnerJobId Barotrauma.Identifier
---@field OwnerJob Barotrauma.JobPrefab
---@field OwnerHairIndex System.Int32
---@field OwnerBeardIndex System.Int32
---@field OwnerMoustacheIndex System.Int32
---@field OwnerFaceAttachmentIndex System.Int32
---@field OwnerHairColor Microsoft.Xna.Framework.Color
---@field OwnerFacialHairColor Microsoft.Xna.Framework.Color
---@field OwnerSkinColor Microsoft.Xna.Framework.Color
---@field OwnerSheetIndex Microsoft.Xna.Framework.Vector2
---@field private ownerNameLocalized System.String
CS.Barotrauma.Items.Components.IdCard = {}

---@return System.String
function CS.Barotrauma.Items.Components.IdCard.get_OwnerTags() end

---@param value System.String
function CS.Barotrauma.Items.Components.IdCard.set_OwnerTags(value) end

---@return System.String
function CS.Barotrauma.Items.Components.IdCard.get_OwnerNameLocalized() end

---@param value System.String
function CS.Barotrauma.Items.Components.IdCard.set_OwnerNameLocalized(value) end

---@return Barotrauma.JobPrefab
function CS.Barotrauma.Items.Components.IdCard.get_OwnerJob() end

---@param spawnPoint Barotrauma.WayPoint
---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.IdCard.Initialize(spawnPoint, character) end

---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.IdCard.Equip(character) end

---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.IdCard.Unequip(character) end

function CS.Barotrauma.Items.Components.IdCard.OnItemLoaded() end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.IdCard
function CS.Barotrauma.Items.Components.IdCard(item, element) end

---@class Barotrauma.Items.Components.MeleeWeapon: Barotrauma.Items.Components.Holdable
---@field Attack Barotrauma.Attack
---@field User Barotrauma.Character
---@field Range System.Single
---@field Reload System.Single
---@field AllowHitMultiple System.Boolean
---@field HitOnlyCharacters System.Boolean
---@field Swing System.Boolean
---@field SwingPos Microsoft.Xna.Framework.Vector2
---@field SwingForce Microsoft.Xna.Framework.Vector2
---@field Hitting System.Boolean
---@field private hitPos System.Single
---@field private hitting System.Boolean
---@field private range System.Single
---@field private reload System.Single
---@field private reloadTimer System.Single
---@field private hitTargets userdata | (fun(): Barotrauma.Entity)
---@field private impactQueue userdata | (fun(): FarseerPhysics.Dynamics.Fixture)
---@field PreferredContainedItems userdata | (fun(): Barotrauma.Identifier)
---@field private serverLogger System.Text.StringBuilder
CS.Barotrauma.Items.Components.MeleeWeapon = {}

---@return System.Single
function CS.Barotrauma.Items.Components.MeleeWeapon.get_Range() end

---@param value System.Single
function CS.Barotrauma.Items.Components.MeleeWeapon.set_Range(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.MeleeWeapon.get_Reload() end

---@param value System.Single
function CS.Barotrauma.Items.Components.MeleeWeapon.set_Reload(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.MeleeWeapon.get_Hitting() end

---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.MeleeWeapon.Equip(character) end

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.MeleeWeapon.Use(deltaTime, character) end

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.MeleeWeapon.SecondaryUse(deltaTime, character) end

---@param dropper Barotrauma.Character
---@param setTransform? System.Boolean
function CS.Barotrauma.Items.Components.MeleeWeapon.Drop(dropper, setTransform) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.MeleeWeapon.UpdateBroken(deltaTime, cam) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.MeleeWeapon.Update(deltaTime, cam) end

---@private
function CS.Barotrauma.Items.Components.MeleeWeapon.ActivateNearbySleepingCharacters() end

---@private
---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.MeleeWeapon.SetUser(character) end

---@private
function CS.Barotrauma.Items.Components.MeleeWeapon.EndHit() end

---@private
function CS.Barotrauma.Items.Components.MeleeWeapon.RestoreCollision() end

---@private
---@param f1 FarseerPhysics.Dynamics.Fixture
---@param f2 FarseerPhysics.Dynamics.Fixture
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
---@return System.Boolean
function CS.Barotrauma.Items.Components.MeleeWeapon.OnCollision(f1, f2, contact) end

---@private
---@param targetFixture FarseerPhysics.Dynamics.Fixture
function CS.Barotrauma.Items.Components.MeleeWeapon.HandleImpact(targetFixture) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.MeleeWeapon
function CS.Barotrauma.Items.Components.MeleeWeapon(item, element) end

---@class Barotrauma.Items.Components.Pickable: Barotrauma.Items.Components.ItemComponent
---@field IsAttached System.Boolean
---@field AllowedSlots userdata | { [System.Int32]: Barotrauma.InvSlotType } | (fun(): Barotrauma.InvSlotType)
---@field PickingDone System.Boolean
---@field Picker Barotrauma.Character
---@field protected picker Barotrauma.Character
---@field protected allowedSlots userdata | { [System.Int32]: Barotrauma.InvSlotType } | (fun(): Barotrauma.InvSlotType)
---@field private pickTimer System.Single
---@field private activePicker Barotrauma.Character
---@field private pickingCoroutine Barotrauma.CoroutineHandle
CS.Barotrauma.Items.Components.Pickable = {}

---@return System.Boolean
function CS.Barotrauma.Items.Components.Pickable.get_IsAttached() end

---@return userdata | { [System.Int32]: Barotrauma.InvSlotType } | (fun(): Barotrauma.InvSlotType)
function CS.Barotrauma.Items.Components.Pickable.get_AllowedSlots() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Pickable.get_PickingDone() end

---@return Barotrauma.Character
function CS.Barotrauma.Items.Components.Pickable.get_Picker() end

---@param picker Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Pickable.Pick(picker) end

---@overload fun(picker: Barotrauma.Character, pickDroppedStack: System.Boolean): System.Boolean
---@param picker Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Pickable.OnPicked(picker) end

---@private
---@param picker Barotrauma.Character
---@param requiredTime System.Single
---@return userdata | (fun(): Barotrauma.CoroutineStatus)
function CS.Barotrauma.Items.Components.Pickable.WaitForPick(picker, requiredTime) end

---@protected
---@param picker Barotrauma.Character
function CS.Barotrauma.Items.Components.Pickable.StopPicking(picker) end

---@protected
---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.Pickable.DropConnectedWires(character) end

---@param dropper Barotrauma.Character
---@param setTransform? System.Boolean
function CS.Barotrauma.Items.Components.Pickable.Drop(dropper, setTransform) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.Pickable.ServerEventWrite(msg, c, extraData) end

---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single
function CS.Barotrauma.Items.Components.Pickable.ClientEventRead(msg, sendingTime) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Pickable
function CS.Barotrauma.Items.Components.Pickable(item, element) end

---@class Barotrauma.Items.Components.AbilityItemPickingTime: Barotrauma.Abilities.AbilityObject
---@field Value System.Single
---@field ItemPrefab Barotrauma.ItemPrefab
CS.Barotrauma.Items.Components.AbilityItemPickingTime = {}

---@param pickingTime System.Single
---@param itemPrefab Barotrauma.ItemPrefab
---@return Barotrauma.Items.Components.AbilityItemPickingTime
function CS.Barotrauma.Items.Components.AbilityItemPickingTime(pickingTime, itemPrefab) end

---@class Barotrauma.Items.Components.Propulsion: Barotrauma.Items.Components.ItemComponent
---@field UsableIn Barotrauma.Items.Components.Propulsion.UseEnvironment
---@field Force System.Single
---@field ApplyToHands System.Boolean
---@field private useState System.Single
CS.Barotrauma.Items.Components.Propulsion = {}

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Propulsion.Use(deltaTime, character) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Propulsion.Update(deltaTime, cam) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Propulsion
function CS.Barotrauma.Items.Components.Propulsion(item, element) end

---@class Barotrauma.Items.Components.RangedWeapon: Barotrauma.Items.Components.ItemComponent
---@field ReloadTimer System.Single
---@field BarrelPos System.String
---@field Reload System.Single
---@field ReloadSkillRequirement System.Single
---@field ReloadNoSkill System.Single
---@field HoldTrigger System.Boolean
---@field ProjectileCount System.Int32
---@field Spread System.Single
---@field UnskilledSpread System.Single
---@field LaunchImpulse System.Single
---@field Penetration System.Single
---@field WeaponDamageModifier System.Single
---@field MaxChargeTime System.Single
---@field DualWieldReloadTimePenaltyMultiplier System.Single
---@field DualWieldAccuracyPenalty System.Single
---@field TransformedBarrelPos Microsoft.Xna.Framework.Vector2
---@field LastProjectile Barotrauma.Items.Components.Projectile
---@field private reload System.Single
---@field private barrelPos Microsoft.Xna.Framework.Vector2
---@field private suitableProjectiles userdata | (fun(): Barotrauma.Identifier)
---@field private currentChargingState Barotrauma.Items.Components.RangedWeapon.ChargingState
---@field private currentChargeTime System.Single
---@field private tryingToCharge System.Boolean
---@field private ignoredBodies userdata | { [System.Int32]: FarseerPhysics.Dynamics.Body } | (fun(): FarseerPhysics.Dynamics.Body)
CS.Barotrauma.Items.Components.RangedWeapon = {}

---@return System.String
function CS.Barotrauma.Items.Components.RangedWeapon.get_BarrelPos() end

---@param value System.String
function CS.Barotrauma.Items.Components.RangedWeapon.set_BarrelPos(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.RangedWeapon.get_Reload() end

---@param value System.Single
function CS.Barotrauma.Items.Components.RangedWeapon.set_Reload(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.RangedWeapon.get_TransformedBarrelPos() end

---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.RangedWeapon.Equip(character) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.RangedWeapon.Update(deltaTime, cam) end

---@private
---@param user Barotrauma.Character
---@return System.Single
function CS.Barotrauma.Items.Components.RangedWeapon.GetSpread(user) end

---@private
---@param character Barotrauma.Character
---@param originalPenalty System.Single
---@param neutralValue System.Single
---@return System.Single
function CS.Barotrauma.Items.Components.RangedWeapon.ApplyDualWieldPenaltyReduction(character, originalPenalty, neutralValue) end

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.RangedWeapon.Use(deltaTime, character) end

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.RangedWeapon.SecondaryUse(deltaTime, character) end

---@param triggerOnUseOnContainers? System.Boolean
---@return Barotrauma.Items.Components.Projectile
function CS.Barotrauma.Items.Components.RangedWeapon.FindProjectile(triggerOnUseOnContainers) end

---@private
---@param projectile Barotrauma.Items.Components.Projectile
---@return System.Boolean
function CS.Barotrauma.Items.Components.RangedWeapon.IsSuitableProjectile(projectile) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.RangedWeapon
function CS.Barotrauma.Items.Components.RangedWeapon(item, element) end

---@class Barotrauma.Items.Components.AbilityRangedWeapon: Barotrauma.Abilities.AbilityObject
---@field Item Barotrauma.Item
CS.Barotrauma.Items.Components.AbilityRangedWeapon = {}

---@param item Barotrauma.Item
---@return Barotrauma.Items.Components.AbilityRangedWeapon
function CS.Barotrauma.Items.Components.AbilityRangedWeapon(item) end

---@class Barotrauma.Items.Components.RepairTool: Barotrauma.Items.Components.ItemComponent
---@field UsableIn Barotrauma.Items.Components.RepairTool.UseEnvironment
---@field Range System.Single
---@field Spread System.Single
---@field UnskilledSpread System.Single
---@field StructureFixAmount System.Single
---@field FireDamage System.Single
---@field LevelWallFixAmount System.Single
---@field ExtinguishAmount System.Single
---@field WaterAmount System.Single
---@field BarrelPos Microsoft.Xna.Framework.Vector2
---@field RepairThroughWalls System.Boolean
---@field RepairMultiple System.Boolean
---@field RepairMultipleWalls System.Boolean
---@field RepairThroughHoles System.Boolean
---@field MaxOverlappingWallDist System.Single
---@field DeattachSpeed System.Single
---@field HitItems System.Boolean
---@field HitBrokenDoors System.Boolean
---@field IgnoreCharacters System.Boolean
---@field FireProbability System.Single
---@field TargetForce System.Single
---@field BarrelRotation System.Single
---@field TransformedBarrelPos Microsoft.Xna.Framework.Vector2
---@field private fixableEntities userdata | (fun(): Barotrauma.Identifier)
---@field private nonFixableEntities userdata | (fun(): Barotrauma.Identifier)
---@field private pickedPosition Microsoft.Xna.Framework.Vector2
---@field private activeTimer System.Single
---@field private debugRayStartPos Microsoft.Xna.Framework.Vector2
---@field private debugRayEndPos Microsoft.Xna.Framework.Vector2
---@field private ignoredBodies userdata | { [System.Int32]: FarseerPhysics.Dynamics.Body } | (fun(): FarseerPhysics.Dynamics.Body)
---@field private hitCharacters userdata | (fun(): Barotrauma.Character)
---@field private fireSourcesInRange userdata | { [System.Int32]: Barotrauma.FireSource } | (fun(): Barotrauma.FireSource)
---@field private sinTime System.Single
---@field private repairTimer System.Single
---@field private previousGap Barotrauma.Gap
---@field private repairTimeOut System.Single
---@field private hitBodies userdata | { [System.Int32]: FarseerPhysics.Dynamics.Body } | (fun(): FarseerPhysics.Dynamics.Body)
---@field private currentTargets userdata | { [System.Int32]: Barotrauma.ISerializableEntity } | (fun(): Barotrauma.ISerializableEntity)
CS.Barotrauma.Items.Components.RepairTool = {}

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.RepairTool.get_TransformedBarrelPos() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.RepairTool.Update(deltaTime, cam) end

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.RepairTool.Use(deltaTime, character) end

---@private
---@param rayStart Microsoft.Xna.Framework.Vector2
---@param rayEnd Microsoft.Xna.Framework.Vector2
---@param deltaTime System.Single
---@param user Barotrauma.Character
---@param degreeOfSuccess System.Single
---@param ignoredBodies userdata | { [System.Int32]: FarseerPhysics.Dynamics.Body } | (fun(): FarseerPhysics.Dynamics.Body)
function CS.Barotrauma.Items.Components.RepairTool.Repair(rayStart, rayEnd, deltaTime, user, degreeOfSuccess, ignoredBodies) end

---@private
---@param user Barotrauma.Character
---@param hitPosition Microsoft.Xna.Framework.Vector2
---@param deltaTime System.Single
---@param degreeOfSuccess System.Single
---@param targetBody FarseerPhysics.Dynamics.Body
---@return System.Boolean
function CS.Barotrauma.Items.Components.RepairTool.FixBody(user, hitPosition, deltaTime, degreeOfSuccess, targetBody) end

---@param deltaTime System.Single
---@param character Barotrauma.Character
---@param objective Barotrauma.AIObjectiveOperateItem
---@return System.Boolean
function CS.Barotrauma.Items.Components.RepairTool.CrewAIOperate(deltaTime, character, objective) end

---@private
---@param user Barotrauma.Character
---@param deltaTime System.Single
---@param actionType Barotrauma.ActionType
---@param targetItem? Barotrauma.Item
---@param character? Barotrauma.Character
---@param limb? Barotrauma.Limb
---@param structure? Barotrauma.Structure
function CS.Barotrauma.Items.Components.RepairTool.ApplyStatusEffectsOnTarget(user, deltaTime, actionType, targetItem, character, limb, structure) end

---@overload fun(): Barotrauma.Items.Components.RepairTool
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.RepairTool
function CS.Barotrauma.Items.Components.RepairTool(item, element) end

---@class Barotrauma.Items.Components.Sprayer: Barotrauma.Items.Components.RangedWeapon
---@field Range System.Single
---@field SprayStrength System.Single
---@field LiquidContainer Barotrauma.Items.Components.ItemContainer
---@field LiquidColors userdata | { [Barotrauma.Identifier]: Microsoft.Xna.Framework.Color } | (fun(): userdata)
CS.Barotrauma.Items.Components.Sprayer = {}

function CS.Barotrauma.Items.Components.Sprayer.OnItemLoaded() end

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Sprayer.Use(deltaTime, character) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Sprayer
function CS.Barotrauma.Items.Components.Sprayer(item, element) end

---@class Barotrauma.Items.Components.Throwable: Barotrauma.Items.Components.Holdable
---@field CurrentThrower Barotrauma.Character
---@field ThrowForce System.Single
---@field private throwAngle System.Single
---@field private midAir System.Boolean
---@field private throwState Barotrauma.Items.Components.Throwable.ThrowState
---@field private ThrowAngleStart System.Single
---@field private ThrowAngleEnd System.Single
---@field private ContinuousCollisionThreshold System.Single
---@field WaterDragCoefficient System.Single
CS.Barotrauma.Items.Components.Throwable = {}

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Throwable.Use(deltaTime, character) end

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Throwable.SecondaryUse(deltaTime, character) end

---@param dropper Barotrauma.Character
---@param setTransform? System.Boolean
function CS.Barotrauma.Items.Components.Throwable.Drop(dropper, setTransform) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Throwable.UpdateBroken(deltaTime, cam) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Throwable.Update(deltaTime, cam) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Throwable
function CS.Barotrauma.Items.Components.Throwable(item, element) end

---@class Barotrauma.Items.Components.IDrawableComponent
CS.Barotrauma.Items.Components.IDrawableComponent = {}


---@class Barotrauma.Items.Components.ItemContainer: Barotrauma.Items.Components.ItemComponent
---@field Capacity System.Int32
---@field MainContainerCapacity System.Int32
---@field MaxStackSize System.Int32
---@field HideItems System.Boolean
---@field ItemPos Microsoft.Xna.Framework.Vector2
---@field ItemInterval Microsoft.Xna.Framework.Vector2
---@field ItemsPerRow System.Int32
---@field ItemsUseInventoryPlacement System.Boolean
---@field DrawInventory System.Boolean
---@field AllowDragAndDrop System.Boolean
---@field AllowSwappingContainedItems System.Boolean
---@field ShowSortButton System.Boolean
---@field ShowMergeButton System.Boolean
---@field QuickUseMovesItemsInside System.Boolean
---@field AutoInteractWithContained System.Boolean
---@field AutoInteractWithContainedTags System.String
---@field AllowAccess System.Boolean
---@field AccessOnlyWhenBroken System.Boolean
---@field AllowAccessWhenDropped System.Boolean
---@field SlotsPerRow System.Int32
---@field ContainableRestrictions System.String
---@field AutoFill System.Boolean
---@field ItemRotation System.Single
---@field SpawnWithId System.String
---@field SpawnWithIdWhenBroken System.Boolean
---@field AutoInject System.Boolean
---@field AutoInjectThreshold System.Single
---@field RemoveContainedItemsOnDeconstruct System.Boolean
---@field Locked System.Boolean
---@field ContainedItemCount System.Int32
---@field ContainedNonBrokenItemCount System.Int32
---@field ExtraStackSize System.Int32
---@field ContainableItemIdentifiers userdata | (fun(): Barotrauma.Identifier)
---@field ContainableItems userdata | { [System.Int32]: Barotrauma.RelatedItem } | (fun(): Barotrauma.RelatedItem)
---@field AllSubContainableItems userdata | { [System.Int32]: Barotrauma.RelatedItem } | (fun(): Barotrauma.RelatedItem)
---@field OnContainedItemsChanged userdata
---@field private alwaysContainedItemsSpawned System.Boolean
---@field Inventory Barotrauma.ItemInventory
---@field private activeContainedItems userdata | { [System.Int32]: Barotrauma.Items.Components.ItemContainer.ActiveContainedItem } | (fun(): Barotrauma.Items.Components.ItemContainer.ActiveContainedItem)
---@field private containedItems userdata | { [System.Int32]: Barotrauma.Items.Components.ItemContainer.ContainedItem } | (fun(): Barotrauma.Items.Components.ItemContainer.ContainedItem)
---@field private itemIds (userdata | { [System.Int32]: System.UInt16 } | (fun(): System.UInt16))[]
---@field private capacity System.Int32
---@field private maxStackSize System.Int32
---@field private hideItems System.Boolean
---@field private autoInteractWithContainedTags userdata | (fun(): Barotrauma.Identifier)
---@field private containableRestrictions userdata | (fun(): Barotrauma.Identifier)
---@field private itemRotation System.Single
---@field private slotRestrictions userdata | { [System.Int32]: Barotrauma.Items.Components.ItemContainer.SlotRestrictions } | (fun(): Barotrauma.Items.Components.ItemContainer.SlotRestrictions)
---@field private targets userdata | { [System.Int32]: Barotrauma.ISerializableEntity } | (fun(): Barotrauma.ISerializableEntity)
---@field private prevContainedItemRefreshRotation System.Single
---@field private prevContainedItemRefreshPosition Microsoft.Xna.Framework.Vector2
---@field private autoInjectCooldown System.Single
---@field private subContainersCanAutoInject System.Boolean
---@field private containableItemIdentifiers userdata | (fun(): Barotrauma.Identifier)
---@field HasSubContainers System.Boolean
---@field hasSignalConnections System.Boolean
---@field private totalConditionValueString System.String
---@field private totalConditionPercentageString System.String
---@field private totalItemsString System.String
---@field private prevTotalConditionValue System.Single
---@field private prevTotalConditionPercentage System.Single
---@field private prevTotalItems System.Int32
---@field private initializingLoadedItems System.Boolean
---@field private AutoInjectInterval System.Single
CS.Barotrauma.Items.Components.ItemContainer = {}

---@return System.Int32
function CS.Barotrauma.Items.Components.ItemContainer.get_Capacity() end

---@private
---@param value System.Int32
function CS.Barotrauma.Items.Components.ItemContainer.set_Capacity(value) end

---@return System.Int32
function CS.Barotrauma.Items.Components.ItemContainer.get_MaxStackSize() end

---@param value System.Int32
function CS.Barotrauma.Items.Components.ItemContainer.set_MaxStackSize(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.get_HideItems() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.set_HideItems(value) end

---@return System.String
function CS.Barotrauma.Items.Components.ItemContainer.get_AutoInteractWithContainedTags() end

---@param value System.String
function CS.Barotrauma.Items.Components.ItemContainer.set_AutoInteractWithContainedTags(value) end

---@return System.String
function CS.Barotrauma.Items.Components.ItemContainer.get_ContainableRestrictions() end

---@param value System.String
function CS.Barotrauma.Items.Components.ItemContainer.set_ContainableRestrictions(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.ItemContainer.get_ItemRotation() end

---@param value System.Single
function CS.Barotrauma.Items.Components.ItemContainer.set_ItemRotation(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.get_Locked() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.set_Locked(value) end

---@return System.Int32
function CS.Barotrauma.Items.Components.ItemContainer.get_ContainedItemCount() end

---@return System.Int32
function CS.Barotrauma.Items.Components.ItemContainer.get_ContainedNonBrokenItemCount() end

---@return System.Int32
function CS.Barotrauma.Items.Components.ItemContainer.get_ExtraStackSize() end

---@param value System.Int32
function CS.Barotrauma.Items.Components.ItemContainer.set_ExtraStackSize(value) end

---@overload fun(item: Barotrauma.Item, isRestrictionsDefined: System.Boolean): System.Boolean
---@param identifiersOrTags System.String[]
---@param isRestrictionsDefined System.Boolean
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.ShouldBeContained(identifiersOrTags, isRestrictionsDefined) end

---@return userdata | (fun(): Barotrauma.Identifier)
function CS.Barotrauma.Items.Components.ItemContainer.get_ContainableItemIdentifiers() end

---@param element Barotrauma.ContentXElement
function CS.Barotrauma.Items.Components.ItemContainer.ReloadContainableRestrictions(element) end

---@param slotIndex System.Int32
---@return System.Int32
function CS.Barotrauma.Items.Components.ItemContainer.GetMaxStackSize(slotIndex) end

---@param containedItem Barotrauma.Item
function CS.Barotrauma.Items.Components.ItemContainer.OnItemContained(containedItem) end

---@param amount Microsoft.Xna.Framework.Vector2
---@param ignoreContacts? System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.Move(amount, ignoreContacts) end

---@param containedItem Barotrauma.Item
function CS.Barotrauma.Items.Components.ItemContainer.OnItemRemoved(containedItem) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.BlameEquipperForDeath() end

---@overload fun(item: Barotrauma.Item, index: System.Int32): System.Boolean
---@overload fun(itemPrefab: Barotrauma.ItemPrefab): System.Boolean
---@overload fun(itemPrefab: Barotrauma.ItemPrefab, index: System.Int32): System.Boolean
---@param item Barotrauma.Item
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.CanBeContained(item) end

---@param item Barotrauma.Item
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.ContainsItemsWithSameIdentifier(item) end

---@param relativeToSub System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.FlipX(relativeToSub) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.ItemContainer.Update(deltaTime, cam) end

---@private
---@param activeContainedItem Barotrauma.Items.Components.ItemContainer.ActiveContainedItem
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.ShouldApplyEffects(activeContainedItem) end

---@private
function CS.Barotrauma.Items.Components.ItemContainer.SetContainedItemPositionsIfNeeded() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.ItemContainer.UpdateBroken(deltaTime, cam) end

---@param character Barotrauma.Character
---@param addMessage System.Boolean
---@param msg? Barotrauma.LocalizedString
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.HasRequiredItems(character, addMessage, msg) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.IsAccessible() end

---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.Select(character) end

---@param picker Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.Pick(picker) end

---@param item Barotrauma.Item
---@param user Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.Combine(item, user) end

---@param dropper Barotrauma.Character
---@param setTransform? System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.Drop(dropper, setTransform) end

---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.ItemContainer.Equip(character) end

---@private
---@param containedItem Barotrauma.Item
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.CanAutoInteractWithContained(containedItem) end

---@private
---@param active System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.SetContainedActive(active) end

---@private
---@param item Barotrauma.Item
---@return Barotrauma.RelatedItem
function CS.Barotrauma.Items.Components.ItemContainer.FindContainableItem(item) end

---@param itemTagOrIdentifier Barotrauma.Identifier
---@return System.Int32|nil
function CS.Barotrauma.Items.Components.ItemContainer.FindSuitableSubContainerIndex(itemTagOrIdentifier) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.ItemContainer.ReceiveSignal(signal, connection) end

function CS.Barotrauma.Items.Components.ItemContainer.SetContainedItemPositions() end

---@private
---@param drawPosition System.Boolean
---@param transformedItemIntervalHorizontal Microsoft.Xna.Framework.Vector2
---@param transformedItemIntervalVertical Microsoft.Xna.Framework.Vector2
---@param flippedX System.Boolean
---@param flippedY System.Boolean
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.ItemContainer.GetContainedPosition(drawPosition, transformedItemIntervalHorizontal, transformedItemIntervalVertical, flippedX, flippedY) end

function CS.Barotrauma.Items.Components.ItemContainer.OnItemLoaded() end

function CS.Barotrauma.Items.Components.ItemContainer.OnMapLoaded() end

---@private
function CS.Barotrauma.Items.Components.ItemContainer.SpawnAlwaysContainedItems() end

---@protected
function CS.Barotrauma.Items.Components.ItemContainer.ShallowRemoveComponentSpecific() end

---@protected
function CS.Barotrauma.Items.Components.ItemContainer.RemoveComponentSpecific() end

---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean
---@param idRemap Barotrauma.IdRemap
---@param isItemSwap System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.Load(componentElement, usePrefabValues, idRemap, isItemSwap) end

---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
function CS.Barotrauma.Items.Components.ItemContainer.Save(parentElement) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ItemContainer
function CS.Barotrauma.Items.Components.ItemContainer(item, element) end

---@class Barotrauma.Items.Components.AbilityItemContainer: Barotrauma.Abilities.AbilityObject
---@field Item Barotrauma.Item
CS.Barotrauma.Items.Components.AbilityItemContainer = {}

---@param item Barotrauma.Item
---@return Barotrauma.Items.Components.AbilityItemContainer
function CS.Barotrauma.Items.Components.AbilityItemContainer(item) end

---@class Barotrauma.Items.Components.Ladder: Barotrauma.Items.Components.ItemComponent
---@field List userdata | { [System.Int32]: Barotrauma.Items.Components.Ladder } | (fun(): Barotrauma.Items.Components.Ladder)
CS.Barotrauma.Items.Components.Ladder = {}

---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Ladder.Select(character) end

---@protected
function CS.Barotrauma.Items.Components.Ladder.RemoveComponentSpecific() end

---@overload fun(): Barotrauma.Items.Components.Ladder
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Ladder
function CS.Barotrauma.Items.Components.Ladder(item, element) end

---@class Barotrauma.Items.Components.LimbPos: System.Object
---@field LimbType Barotrauma.LimbType
---@field Position Microsoft.Xna.Framework.Vector2
---@field Name System.String
---@field SerializableProperties userdata | { [Barotrauma.Identifier]: Barotrauma.SerializableProperty } | (fun(): userdata)
---@field AllowUsingLimb System.Boolean
CS.Barotrauma.Items.Components.LimbPos = {}

---@return System.String
function CS.Barotrauma.Items.Components.LimbPos.get_Name() end

---@return userdata | { [Barotrauma.Identifier]: Barotrauma.SerializableProperty } | (fun(): userdata)
function CS.Barotrauma.Items.Components.LimbPos.get_SerializableProperties() end

---@param limbType Barotrauma.LimbType
---@param position Microsoft.Xna.Framework.Vector2
---@param allowUsingLimb System.Boolean
---@return Barotrauma.Items.Components.LimbPos
function CS.Barotrauma.Items.Components.LimbPos(limbType, position, allowUsingLimb) end

---@class Barotrauma.Items.Components.AbilityDeconstructedItem: Barotrauma.Abilities.AbilityObject
---@field Item Barotrauma.Item
---@field Character Barotrauma.Character
CS.Barotrauma.Items.Components.AbilityDeconstructedItem = {}

---@param item Barotrauma.Item
---@param character Barotrauma.Character
---@return Barotrauma.Items.Components.AbilityDeconstructedItem
function CS.Barotrauma.Items.Components.AbilityDeconstructedItem(item, character) end

---@class Barotrauma.Items.Components.AbilityItemCreationMultiplier: Barotrauma.Abilities.AbilityObject
---@field ItemPrefab Barotrauma.ItemPrefab
---@field Value System.Single
CS.Barotrauma.Items.Components.AbilityItemCreationMultiplier = {}

---@param itemPrefab Barotrauma.ItemPrefab
---@param itemAmountMultiplier System.Single
---@return Barotrauma.Items.Components.AbilityItemCreationMultiplier
function CS.Barotrauma.Items.Components.AbilityItemCreationMultiplier(itemPrefab, itemAmountMultiplier) end

---@class Barotrauma.Items.Components.AbilityItemDeconstructedInventory: Barotrauma.Abilities.AbilityObject
---@field ItemPrefab Barotrauma.ItemPrefab
---@field Item Barotrauma.Item
CS.Barotrauma.Items.Components.AbilityItemDeconstructedInventory = {}

---@param itemPrefab Barotrauma.ItemPrefab
---@param item Barotrauma.Item
---@return Barotrauma.Items.Components.AbilityItemDeconstructedInventory
function CS.Barotrauma.Items.Components.AbilityItemDeconstructedInventory(itemPrefab, item) end

---@class Barotrauma.Items.Components.InheritConditionFromLinkedWall: Barotrauma.Items.Components.ItemComponent
---@field private linkedWalls userdata | { [System.Int32]: Barotrauma.Structure } | (fun(): Barotrauma.Structure)
CS.Barotrauma.Items.Components.InheritConditionFromLinkedWall = {}

function CS.Barotrauma.Items.Components.InheritConditionFromLinkedWall.OnMapLoaded() end

---@private
function CS.Barotrauma.Items.Components.InheritConditionFromLinkedWall.UpdateCondition() end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.InheritConditionFromLinkedWall
function CS.Barotrauma.Items.Components.InheritConditionFromLinkedWall(item, element) end

---@class Barotrauma.Items.Components.MiniMap: Barotrauma.Items.Components.Powered
---@field RequireWaterDetectors System.Boolean
---@field RequireOxygenDetectors System.Boolean
---@field ShowHullIntegrity System.Boolean
---@field EnableHullStatus System.Boolean
---@field EnableElectricalView System.Boolean
---@field EnableItemFinder System.Boolean
---@field private hasPower System.Boolean
CS.Barotrauma.Items.Components.MiniMap = {}

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.MiniMap.Update(deltaTime, cam) end

---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single
function CS.Barotrauma.Items.Components.MiniMap.GetCurrentPowerConsumption(connection) end

---@param picker Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.MiniMap.Pick(picker) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.MiniMap
function CS.Barotrauma.Items.Components.MiniMap(item, element) end

---@class Barotrauma.Items.Components.OutpostTerminal: Barotrauma.Items.Components.ItemComponent
CS.Barotrauma.Items.Components.OutpostTerminal = {}

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.OutpostTerminal
function CS.Barotrauma.Items.Components.OutpostTerminal(item, element) end

---@class Barotrauma.Items.Components.OxygenGenerator: Barotrauma.Items.Components.Powered
---@field CurrFlow System.Single
---@field GeneratedAmount System.Single
---@field private generatedAmount System.Single
---@field private ventList userdata | { [System.Int32]: userdata } | (fun(): userdata)
---@field private totalHullVolume System.Single
---@field private ventUpdateTimer System.Single
---@field private VentUpdateInterval System.Single
CS.Barotrauma.Items.Components.OxygenGenerator = {}

---@return System.Single
function CS.Barotrauma.Items.Components.OxygenGenerator.get_GeneratedAmount() end

---@param value System.Single
function CS.Barotrauma.Items.Components.OxygenGenerator.set_GeneratedAmount(value) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.OxygenGenerator.Update(deltaTime, cam) end

---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single
function CS.Barotrauma.Items.Components.OxygenGenerator.GetCurrentPowerConsumption(connection) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.OxygenGenerator.UpdateBroken(deltaTime, cam) end

function CS.Barotrauma.Items.Components.OxygenGenerator.GetVents() end

---@private
---@param deltaOxygen System.Single
---@param deltaTime System.Single
function CS.Barotrauma.Items.Components.OxygenGenerator.UpdateVents(deltaOxygen, deltaTime) end

---@param targetVent Barotrauma.Items.Components.Vent
---@return System.Single
function CS.Barotrauma.Items.Components.OxygenGenerator.GetVentOxygenFlow(targetVent) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.OxygenGenerator
function CS.Barotrauma.Items.Components.OxygenGenerator(item, element) end

---@class Barotrauma.Items.Components.Sonar: Barotrauma.Items.Components.Powered
---@field UseDirectionalPing System.Boolean
---@field ConnectedTransducers userdata | (fun(): Barotrauma.Items.Components.SonarTransducer)
---@field Range System.Single
---@field DetectSubmarineWalls System.Boolean
---@field UseTransducers System.Boolean
---@field CenterOnTransducers System.Boolean
---@field HasMineralScanner System.Boolean
---@field UseMineralScanner System.Boolean
---@field Zoom System.Single
---@field CurrentMode Barotrauma.Items.Components.Sonar.Mode
---@field private range System.Single
---@field private currentMode Barotrauma.Items.Components.Sonar.Mode
---@field private activePings Barotrauma.Items.Components.Sonar.ActivePing[]
---@field private activePingsCount System.Int32
---@field private currentPingIndex System.Int32
---@field private zoom System.Single
---@field private useDirectionalPing System.Boolean
---@field private pingDirection Microsoft.Xna.Framework.Vector2
---@field private aiPingCheckPending System.Boolean
---@field private connectedTransducers userdata | { [System.Int32]: Barotrauma.Items.Components.Sonar.ConnectedTransducer } | (fun(): Barotrauma.Items.Components.Sonar.ConnectedTransducer)
---@field private hasMineralScanner System.Boolean
---@field SonarList userdata | { [System.Int32]: Barotrauma.Items.Components.Sonar } | (fun(): Barotrauma.Items.Components.Sonar)
---@field private DirectionalPingDotProduct System.Single
---@field private targetGroups userdata | { [System.String]: userdata | { [System.Int32]: Barotrauma.Character } | (fun(): Barotrauma.Character) } | (fun(): userdata)
---@field DefaultSonarRange System.Single
---@field PassivePowerConsumption System.Single
---@field private DirectionalPingSector System.Single
---@field private PingFrequency System.Single
---@field private MinZoom System.Single
---@field private MaxZoom System.Single
CS.Barotrauma.Items.Components.Sonar = {}

---@return System.Boolean
function CS.Barotrauma.Items.Components.Sonar.get_UseDirectionalPing() end

---@return userdata | (fun(): Barotrauma.Items.Components.SonarTransducer)
function CS.Barotrauma.Items.Components.Sonar.get_ConnectedTransducers() end

---@return System.Single
function CS.Barotrauma.Items.Components.Sonar.get_Range() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Sonar.set_Range(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Sonar.get_HasMineralScanner() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Sonar.set_HasMineralScanner(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Sonar.get_Zoom() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Sonar.set_Zoom(value) end

---@return Barotrauma.Items.Components.Sonar.Mode
function CS.Barotrauma.Items.Components.Sonar.get_CurrentMode() end

---@param value Barotrauma.Items.Components.Sonar.Mode
function CS.Barotrauma.Items.Components.Sonar.set_CurrentMode(value) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Sonar.Update(deltaTime, cam) end

---@private
---@return userdata | (fun(): Barotrauma.AITarget)
function CS.Barotrauma.Items.Components.Sonar.GetAITargets() end

---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single
function CS.Barotrauma.Items.Components.Sonar.GetCurrentPowerConsumption(connection) end

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Sonar.Use(deltaTime, character) end

---@param deltaTime System.Single
---@param character Barotrauma.Character
---@param objective Barotrauma.AIObjectiveOperateItem
---@return System.Boolean
function CS.Barotrauma.Items.Components.Sonar.CrewAIOperate(deltaTime, character, objective) end

---@private
---@param dir Microsoft.Xna.Framework.Vector2
---@return Barotrauma.LocalizedString
function CS.Barotrauma.Items.Components.Sonar.GetDirectionName(dir) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.Sonar.ReceiveSignal(signal, connection) end

---@protected
function CS.Barotrauma.Items.Components.Sonar.RemoveComponentSpecific() end

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Items.Components.Sonar.ServerEventRead(msg, c) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.Sonar.ServerEventWrite(msg, c, extraData) end

---@private
---@overload fun(item: Barotrauma.Item, element: Barotrauma.ContentXElement): Barotrauma.Items.Components.Sonar
---@return Barotrauma.Items.Components.Sonar
function CS.Barotrauma.Items.Components.Sonar() end

---@class Barotrauma.Items.Components.SonarTransducer: Barotrauma.Items.Components.Powered
---@field private sendSignalTimer System.Single
---@field ConnectedSonar Barotrauma.Items.Components.Sonar
---@field private SendSignalInterval System.Single
CS.Barotrauma.Items.Components.SonarTransducer = {}

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.SonarTransducer.Update(deltaTime, cam) end

---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single
function CS.Barotrauma.Items.Components.SonarTransducer.GetCurrentPowerConsumption(connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.SonarTransducer
function CS.Barotrauma.Items.Components.SonarTransducer(item, element) end

---@class Barotrauma.Items.Components.Vent: Barotrauma.Items.Components.ItemComponent
---@field OxygenFlow System.Single
---@field private oxygenFlow System.Single
CS.Barotrauma.Items.Components.Vent = {}

---@return System.Single
function CS.Barotrauma.Items.Components.Vent.get_OxygenFlow() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Vent.set_OxygenFlow(value) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Vent.Update(deltaTime, cam) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Vent
function CS.Barotrauma.Items.Components.Vent(item, element) end

---@class Barotrauma.Items.Components.NameTag: Barotrauma.Items.Components.ItemComponent
---@field WrittenName System.String
CS.Barotrauma.Items.Components.NameTag = {}

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.NameTag
function CS.Barotrauma.Items.Components.NameTag(item, element) end

---@enum Barotrauma.Items.Components.PlantItemType
CS.Barotrauma.Items.Components.PlantItemType = {
    Seed = 0,
    Fertilizer = 1
}

---@class Barotrauma.Items.Components.SuitablePlantItem: System.ValueType
---@field Item Barotrauma.Item
---@field Type Barotrauma.Items.Components.PlantItemType
---@field ProgressBarMessage System.String
CS.Barotrauma.Items.Components.SuitablePlantItem = {}

---@return System.Boolean
function CS.Barotrauma.Items.Components.SuitablePlantItem.IsNull() end

---@param item Barotrauma.Item
---@param type Barotrauma.Items.Components.PlantItemType
---@param progressBarMessage System.String
---@return Barotrauma.Items.Components.SuitablePlantItem
function CS.Barotrauma.Items.Components.SuitablePlantItem(item, type, progressBarMessage) end

---@class Barotrauma.Items.Components.PlantSlot: System.ValueType
---@field Offset Microsoft.Xna.Framework.Vector2
---@field Size System.Single
CS.Barotrauma.Items.Components.PlantSlot = {}

---@overload fun(offset: Microsoft.Xna.Framework.Vector2, size: System.Single): Barotrauma.Items.Components.PlantSlot
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.PlantSlot
function CS.Barotrauma.Items.Components.PlantSlot(element) end

---@class Barotrauma.Items.Components.Planter: Barotrauma.Items.Components.Pickable
---@field Fertilizer System.Single
---@field FertilizerCapacity System.Single
---@field DontTransferInventoryBetweenSubs System.Boolean
---@field PlantSlots userdata | { [System.Int32]: Barotrauma.Items.Components.PlantSlot } | (fun(): userdata)
---@field private fertilizer System.Single
---@field GrowableSeeds Barotrauma.Items.Components.Growable[]
---@field private SuitableFertilizer userdata | { [System.Int32]: Barotrauma.RelatedItem } | (fun(): Barotrauma.RelatedItem)
---@field private SuitableSeeds userdata | { [System.Int32]: Barotrauma.RelatedItem } | (fun(): Barotrauma.RelatedItem)
---@field private container Barotrauma.Items.Components.ItemContainer
---@field private growthTickTimer System.Single
---@field private lightComponents userdata | { [System.Int32]: Barotrauma.Items.Components.LightComponent } | (fun(): Barotrauma.Items.Components.LightComponent)
---@field NullSlot Barotrauma.Items.Components.PlantSlot
---@field private NullItem Barotrauma.Items.Components.SuitablePlantItem
---@field GrowthTickDelay System.Single
---@field private MsgFertilizer System.String
---@field private MsgSeed System.String
---@field private MsgHarvest System.String
---@field private MsgUprooting System.String
---@field private MsgFertilizing System.String
---@field private MsgPlanting System.String
CS.Barotrauma.Items.Components.Planter = {}

---@return System.Single
function CS.Barotrauma.Items.Components.Planter.get_Fertilizer() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Planter.set_Fertilizer(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Planter.get_DontTransferInventoryBetweenSubs() end

function CS.Barotrauma.Items.Components.Planter.OnItemLoaded() end

---@param character Barotrauma.Character
---@param addMessage System.Boolean
---@param msg? Barotrauma.LocalizedString
---@return System.Boolean
function CS.Barotrauma.Items.Components.Planter.HasRequiredItems(character, addMessage, msg) end

---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Planter.Pick(character) end

---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Planter.OnPicked(character) end

---@private
---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Planter.TryHarvest(character) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Planter.Update(deltaTime, cam) end

---@private
---@param character Barotrauma.Character
---@return Barotrauma.Items.Components.SuitablePlantItem
function CS.Barotrauma.Items.Components.Planter.GetSuitableItem(character) end

---@private
---@return System.Boolean
function CS.Barotrauma.Items.Components.Planter.HasAnyFinishedGrowing() end

---@overload fun(): Barotrauma.Items.Components.Planter
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Planter
function CS.Barotrauma.Items.Components.Planter(item, element) end

---@enum Barotrauma.Items.Components.PowerPriority
CS.Barotrauma.Items.Components.PowerPriority = {
    Default = 0,
    Reactor = 1,
    Relay = 3,
    Battery = 5
}

---@class Barotrauma.Items.Components.PowerRange: System.ValueType
---@field Min System.Single
---@field Max System.Single
---@field ReactorMaxOutput System.Single
---@field Zero Barotrauma.Items.Components.PowerRange
---@operator add(Barotrauma.Items.Components.PowerRange): Barotrauma.Items.Components.PowerRange
---@operator sub(Barotrauma.Items.Components.PowerRange): Barotrauma.Items.Components.PowerRange
CS.Barotrauma.Items.Components.PowerRange = {}

---@param a Barotrauma.Items.Components.PowerRange
---@param b Barotrauma.Items.Components.PowerRange
---@return Barotrauma.Items.Components.PowerRange
function CS.Barotrauma.Items.Components.PowerRange.op_Addition(a, b) end

---@param a Barotrauma.Items.Components.PowerRange
---@param b Barotrauma.Items.Components.PowerRange
---@return Barotrauma.Items.Components.PowerRange
function CS.Barotrauma.Items.Components.PowerRange.op_Subtraction(a, b) end

---@overload fun(min: System.Single, max: System.Single, reactorMaxOutput: System.Single): Barotrauma.Items.Components.PowerRange
---@overload fun(): Barotrauma.Items.Components.PowerRange
---@param min System.Single
---@param max System.Single
---@return Barotrauma.Items.Components.PowerRange
function CS.Barotrauma.Items.Components.PowerRange(min, max) end

---@class Barotrauma.Items.Components.Powered: Barotrauma.Items.Components.ItemComponent
---@field PoweredList userdata | (fun(): Barotrauma.Items.Components.Powered)
---@field protected powerOut Barotrauma.Items.Components.Connection
---@field protected powerInIsPowerOut System.Boolean
---@field protected Priority Barotrauma.Items.Components.PowerPriority
---@field MinVoltage System.Single
---@field PowerConsumption System.Single
---@field IsActive System.Boolean
---@field CurrPowerConsumption System.Single
---@field Voltage System.Single
---@field RelativeVoltage System.Single
---@field HasPower System.Boolean
---@field PoweredByTinkering System.Boolean
---@field VulnerableToEMP System.Boolean
---@field protected currPowerConsumption System.Single
---@field private voltage System.Single
---@field private minVoltage System.Single
---@field protected powerConsumption System.Single
---@field protected powerIn Barotrauma.Items.Components.Connection
---@field protected powerOuts userdata | { [System.Int32]: Barotrauma.Items.Components.Connection } | (fun(): Barotrauma.Items.Components.Connection)
---@field private poweredList userdata | { [System.Int32]: Barotrauma.Items.Components.Powered } | (fun(): Barotrauma.Items.Components.Powered)
---@field ChangedConnections userdata | (fun(): Barotrauma.Items.Components.Connection)
---@field Grids userdata | { [System.Int32]: Barotrauma.Items.Components.GridInfo } | (fun(): userdata)
---@field protected UpdateInterval System.Single
---@field protected MaxOverVoltageFactor System.Single
CS.Barotrauma.Items.Components.Powered = {}

---@return userdata | (fun(): Barotrauma.Items.Components.Powered)
function CS.Barotrauma.Items.Components.Powered.get_PoweredList() end

---@protected
---@return Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.Powered.get_powerOut() end

---@protected
---@return System.Boolean
function CS.Barotrauma.Items.Components.Powered.get_powerInIsPowerOut() end

---@protected
---@return Barotrauma.Items.Components.PowerPriority
function CS.Barotrauma.Items.Components.Powered.get_Priority() end

---@return System.Single
function CS.Barotrauma.Items.Components.Powered.get_MinVoltage() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Powered.set_MinVoltage(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Powered.get_PowerConsumption() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Powered.set_PowerConsumption(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Powered.get_IsActive() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.Powered.set_IsActive(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Powered.get_CurrPowerConsumption() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Powered.set_CurrPowerConsumption(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Powered.get_Voltage() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Powered.set_Voltage(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Powered.get_RelativeVoltage() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Powered.get_HasPower() end

---@protected
---@param deltaTime System.Single
function CS.Barotrauma.Items.Components.Powered.UpdateOnActiveEffects(deltaTime) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Powered.Update(deltaTime, cam) end

function CS.Barotrauma.Items.Components.Powered.OnItemLoaded() end

---@param useCache? System.Boolean
function CS.Barotrauma.Items.Components.Powered.UpdateGrids(useCache) end

---@private
---@overload fun(conn: Barotrauma.Items.Components.Connection, gridID: System.Int32): Barotrauma.Items.Components.GridInfo
---@param conn Barotrauma.Items.Components.Connection
---@return Barotrauma.Items.Components.GridInfo
function CS.Barotrauma.Items.Components.Powered.PropagateGrid(conn) end

---@param deltaTime System.Single
function CS.Barotrauma.Items.Components.Powered.UpdatePower(deltaTime) end

---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single
function CS.Barotrauma.Items.Components.Powered.GetCurrentPowerConsumption(connection) end

---@param conn Barotrauma.Items.Components.Connection
---@param load? System.Single
---@return Barotrauma.Items.Components.PowerRange
function CS.Barotrauma.Items.Components.Powered.MinMaxPowerOut(conn, load) end

---@param conn Barotrauma.Items.Components.Connection
---@param power System.Single
---@param minMaxPower Barotrauma.Items.Components.PowerRange
---@param load System.Single
---@return System.Single
function CS.Barotrauma.Items.Components.Powered.GetConnectionPowerOut(conn, power, minMaxPower, load) end

---@param conn Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.Powered.GridResolved(conn) end

---@param conn1 Barotrauma.Items.Components.Connection
---@param conn2 Barotrauma.Items.Components.Connection
---@return System.Boolean
function CS.Barotrauma.Items.Components.Powered.ValidPowerConnection(conn1, conn2) end

---@protected
---@return System.Single
function CS.Barotrauma.Items.Components.Powered.GetAvailableInstantaneousBatteryPower() end

---@protected
---@return userdata | (fun(): Barotrauma.Items.Components.PowerContainer)
function CS.Barotrauma.Items.Components.Powered.GetDirectlyConnectedBatteries() end

---@protected
function CS.Barotrauma.Items.Components.Powered.RemoveComponentSpecific() end

---@overload fun(): Barotrauma.Items.Components.Powered
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Powered
function CS.Barotrauma.Items.Components.Powered(item, element) end

---@class Barotrauma.Items.Components.GridInfo: System.Object
---@field ID System.Int32
---@field Voltage System.Single
---@field Load System.Single
---@field Power System.Single
---@field Connections userdata | { [System.Int32]: Barotrauma.Items.Components.Connection } | (fun(): Barotrauma.Items.Components.Connection)
---@field PowerSourceGroups userdata | { [Barotrauma.Items.Components.PowerPriority]: Barotrauma.Items.Components.PowerSourceGroup } | (fun(): userdata)
CS.Barotrauma.Items.Components.GridInfo = {}

---@param c Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.GridInfo.RemoveConnection(c) end

---@param c Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.GridInfo.AddConnection(c) end

---@param c Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.GridInfo.AddSrc(c) end

---@param id System.Int32
---@return Barotrauma.Items.Components.GridInfo
function CS.Barotrauma.Items.Components.GridInfo(id) end

---@class Barotrauma.Items.Components.PowerSourceGroup: System.Object
---@field MinMaxPower Barotrauma.Items.Components.PowerRange
---@field Connections userdata | { [System.Int32]: Barotrauma.Items.Components.Connection } | (fun(): Barotrauma.Items.Components.Connection)
CS.Barotrauma.Items.Components.PowerSourceGroup = {}

---@return Barotrauma.Items.Components.PowerSourceGroup
function CS.Barotrauma.Items.Components.PowerSourceGroup() end

---@class Barotrauma.Items.Components.PowerTransfer: Barotrauma.Items.Components.Powered
---@field PowerConnections userdata | { [System.Int32]: Barotrauma.Items.Components.Connection } | (fun(): Barotrauma.Items.Components.Connection)
---@field PowerLoad System.Single
---@field CanBeOverloaded System.Boolean
---@field OverloadVoltage System.Single
---@field FireProbability System.Single
---@field Overload System.Boolean
---@field ExtraLoad System.Single
---@field CanTransfer System.Boolean
---@field IsActive System.Boolean
---@field private signalConnections userdata | (fun(): Barotrauma.Items.Components.Connection)
---@field private connectionDirty userdata | { [Barotrauma.Items.Components.Connection]: System.Boolean } | (fun(): userdata)
---@field private connectedRecipients userdata | { [Barotrauma.Items.Components.Connection]: userdata | (fun(): Barotrauma.Items.Components.Connection) } | (fun(): userdata)
---@field private overloadCooldownTimer System.Single
---@field protected powerLoad System.Single
---@field protected isBroken System.Boolean
---@field private extraLoad System.Single
---@field private extraLoadSetTime System.Single
---@field private canTransfer System.Boolean
---@field private prevSentPowerValue System.Int32
---@field private powerSignal System.String
---@field private prevSentLoadValue System.Int32
---@field private loadSignal System.String
---@field private recipientsToRefresh userdata | (fun(): Barotrauma.Items.Components.PowerTransfer)
---@field private OverloadCooldown System.Single
CS.Barotrauma.Items.Components.PowerTransfer = {}

---@return System.Single
function CS.Barotrauma.Items.Components.PowerTransfer.get_PowerLoad() end

---@param value System.Single
function CS.Barotrauma.Items.Components.PowerTransfer.set_PowerLoad(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.PowerTransfer.get_ExtraLoad() end

---@param value System.Single
function CS.Barotrauma.Items.Components.PowerTransfer.set_ExtraLoad(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.PowerTransfer.get_CanTransfer() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.PowerTransfer.set_CanTransfer(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.PowerTransfer.get_IsActive() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.PowerTransfer.set_IsActive(value) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.PowerTransfer.UpdateBroken(deltaTime, cam) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.PowerTransfer.Update(deltaTime, cam) end

---@protected
---@param deltaTime System.Single
function CS.Barotrauma.Items.Components.PowerTransfer.UpdateExtraLoad(deltaTime) end

---@protected
function CS.Barotrauma.Items.Components.PowerTransfer.SendSignals() end

---@protected
---@param deltaTime System.Single
function CS.Barotrauma.Items.Components.PowerTransfer.UpdateOvervoltage(deltaTime) end

---@param conn Barotrauma.Items.Components.Connection
---@param power System.Single
---@param minMaxPower Barotrauma.Items.Components.PowerRange
---@param load System.Single
---@return System.Single
function CS.Barotrauma.Items.Components.PowerTransfer.GetConnectionPowerOut(conn, power, minMaxPower, load) end

---@param picker Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.PowerTransfer.Pick(picker) end

---@protected
function CS.Barotrauma.Items.Components.PowerTransfer.RefreshConnections() end

---@private
---@param c Barotrauma.Items.Components.Connection
---@param connected userdata | (fun(): Barotrauma.Items.Components.Connection)
function CS.Barotrauma.Items.Components.PowerTransfer.GetConnected(c, connected) end

function CS.Barotrauma.Items.Components.PowerTransfer.SetAllConnectionsDirty() end

---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.PowerTransfer.SetConnectionDirty(connection) end

function CS.Barotrauma.Items.Components.PowerTransfer.OnItemLoaded() end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.PowerTransfer.ReceiveSignal(signal, connection) end

---@protected
function CS.Barotrauma.Items.Components.PowerTransfer.RemoveComponentSpecific() end

---@overload fun(): Barotrauma.Items.Components.PowerTransfer
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.PowerTransfer
function CS.Barotrauma.Items.Components.PowerTransfer(item, element) end

---@class Barotrauma.Items.Components.RemoteController: Barotrauma.Items.Components.ItemComponent
---@field Target Barotrauma.Identifier
---@field OnlyInOwnSub System.Boolean
---@field Range System.Single
---@field TargetItem Barotrauma.Item
---@field private currentTarget Barotrauma.Item
---@field private currentUser Barotrauma.Character
---@field private currentSub Barotrauma.Submarine
CS.Barotrauma.Items.Components.RemoteController = {}

---@return Barotrauma.Item
function CS.Barotrauma.Items.Components.RemoteController.get_TargetItem() end

---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.RemoteController.Select(character) end

---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.RemoteController.Equip(character) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.RemoteController.Update(deltaTime, cam) end

---@private
---@param user Barotrauma.Character
function CS.Barotrauma.Items.Components.RemoteController.FindTarget(user) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.RemoteController
function CS.Barotrauma.Items.Components.RemoteController(item, element) end

---@class Barotrauma.Items.Components.IDeteriorateUnderStress
---@field CurrentStress System.Single
CS.Barotrauma.Items.Components.IDeteriorateUnderStress = {}

---@return System.Single
function CS.Barotrauma.Items.Components.IDeteriorateUnderStress.get_CurrentStress() end


---@class Barotrauma.Items.Components.AbilityRepairable: Barotrauma.Abilities.AbilityObject
---@field Item Barotrauma.Item
CS.Barotrauma.Items.Components.AbilityRepairable = {}

---@param item Barotrauma.Item
---@return Barotrauma.Items.Components.AbilityRepairable
function CS.Barotrauma.Items.Components.AbilityRepairable(item) end

---@class Barotrauma.Items.Components.AdderComponent: Barotrauma.Items.Components.ArithmeticComponent
CS.Barotrauma.Items.Components.AdderComponent = {}

---@protected
---@param signal1 System.Single
---@param signal2 System.Single
---@return System.Single
function CS.Barotrauma.Items.Components.AdderComponent.Calculate(signal1, signal2) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.AdderComponent
function CS.Barotrauma.Items.Components.AdderComponent(item, element) end

---@class Barotrauma.Items.Components.ArithmeticComponent: Barotrauma.Items.Components.ItemComponent
---@field ClampMax System.Single
---@field ClampMin System.Single
---@field TimeFrame System.Single
---@field protected timeSinceReceived System.Single[]
---@field protected receivedSignal System.Single[]
---@field protected timeFrame System.Single
---@field protected signalSender Barotrauma.Character[]
CS.Barotrauma.Items.Components.ArithmeticComponent = {}

---@return System.Single
function CS.Barotrauma.Items.Components.ArithmeticComponent.get_TimeFrame() end

---@param value System.Single
function CS.Barotrauma.Items.Components.ArithmeticComponent.set_TimeFrame(value) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.ArithmeticComponent.Update(deltaTime, cam) end

---@protected
---@param signal1 System.Single
---@param signal2 System.Single
---@return System.Single
function CS.Barotrauma.Items.Components.ArithmeticComponent.Calculate(signal1, signal2) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.ArithmeticComponent.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ArithmeticComponent
function CS.Barotrauma.Items.Components.ArithmeticComponent(item, element) end

---@class Barotrauma.Items.Components.AndComponent: Barotrauma.Items.Components.BooleanOperatorComponent
CS.Barotrauma.Items.Components.AndComponent = {}

---@protected
---@param numTrueInputs System.Int32
---@return System.Boolean
function CS.Barotrauma.Items.Components.AndComponent.GetOutput(numTrueInputs) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.AndComponent
function CS.Barotrauma.Items.Components.AndComponent(item, element) end

---@class Barotrauma.Items.Components.BooleanOperatorComponent: Barotrauma.Items.Components.ItemComponent
---@field TimeFrame System.Single
---@field MaxOutputLength System.Int32
---@field Output System.String
---@field FalseOutput System.String
---@field protected output System.String
---@field protected falseOutput System.String
---@field protected timeSinceReceived System.Single[]
---@field protected timeFrame System.Single
---@field protected signalSender Barotrauma.Character[]
---@field private maxOutputLength System.Int32
CS.Barotrauma.Items.Components.BooleanOperatorComponent = {}

---@return System.Single
function CS.Barotrauma.Items.Components.BooleanOperatorComponent.get_TimeFrame() end

---@param value System.Single
function CS.Barotrauma.Items.Components.BooleanOperatorComponent.set_TimeFrame(value) end

---@return System.Int32
function CS.Barotrauma.Items.Components.BooleanOperatorComponent.get_MaxOutputLength() end

---@param value System.Int32
function CS.Barotrauma.Items.Components.BooleanOperatorComponent.set_MaxOutputLength(value) end

---@return System.String
function CS.Barotrauma.Items.Components.BooleanOperatorComponent.get_Output() end

---@param value System.String
function CS.Barotrauma.Items.Components.BooleanOperatorComponent.set_Output(value) end

---@return System.String
function CS.Barotrauma.Items.Components.BooleanOperatorComponent.get_FalseOutput() end

---@param value System.String
function CS.Barotrauma.Items.Components.BooleanOperatorComponent.set_FalseOutput(value) end

---@protected
---@param numTrueInputs System.Int32
---@return System.Boolean
function CS.Barotrauma.Items.Components.BooleanOperatorComponent.GetOutput(numTrueInputs) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.BooleanOperatorComponent.Update(deltaTime, cam) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.BooleanOperatorComponent.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.BooleanOperatorComponent
function CS.Barotrauma.Items.Components.BooleanOperatorComponent(item, element) end

---@class Barotrauma.Items.Components.OrComponent: Barotrauma.Items.Components.BooleanOperatorComponent
CS.Barotrauma.Items.Components.OrComponent = {}

---@protected
---@param numTrueInputs System.Int32
---@return System.Boolean
function CS.Barotrauma.Items.Components.OrComponent.GetOutput(numTrueInputs) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.OrComponent
function CS.Barotrauma.Items.Components.OrComponent(item, element) end

---@class Barotrauma.Items.Components.XorComponent: Barotrauma.Items.Components.BooleanOperatorComponent
CS.Barotrauma.Items.Components.XorComponent = {}

---@protected
---@param numTrueInputs System.Int32
---@return System.Boolean
function CS.Barotrauma.Items.Components.XorComponent.GetOutput(numTrueInputs) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.XorComponent
function CS.Barotrauma.Items.Components.XorComponent(item, element) end

---@class Barotrauma.Items.Components.ColorComponent: Barotrauma.Items.Components.ItemComponent
---@field UseHSV System.Boolean
---@field protected receivedSignal System.Single[]
---@field private output System.String
CS.Barotrauma.Items.Components.ColorComponent = {}

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.ColorComponent.Update(deltaTime, cam) end

---@private
function CS.Barotrauma.Items.Components.ColorComponent.UpdateOutput() end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.ColorComponent.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ColorComponent
function CS.Barotrauma.Items.Components.ColorComponent(item, element) end

---@class Barotrauma.Items.Components.ConcatComponent: Barotrauma.Items.Components.StringComponent
---@field MaxOutputLength System.Int32
---@field Separator System.String
---@field private maxOutputLength System.Int32
CS.Barotrauma.Items.Components.ConcatComponent = {}

---@return System.Int32
function CS.Barotrauma.Items.Components.ConcatComponent.get_MaxOutputLength() end

---@param value System.Int32
function CS.Barotrauma.Items.Components.ConcatComponent.set_MaxOutputLength(value) end

---@protected
---@param signal1 System.String
---@param signal2 System.String
---@return System.String
function CS.Barotrauma.Items.Components.ConcatComponent.Calculate(signal1, signal2) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ConcatComponent
function CS.Barotrauma.Items.Components.ConcatComponent(item, element) end

---@class Barotrauma.Items.Components.Connection: System.Object
---@field DisplayName Barotrauma.LocalizedString
---@field Wires userdata | (fun(): Barotrauma.Items.Components.Wire)
---@field LastSentSignal Barotrauma.Items.Components.Signal
---@field LastReceivedSignal Barotrauma.Items.Components.Signal
---@field IsPower System.Boolean
---@field Recipients userdata | { [System.Int32]: Barotrauma.Items.Components.Connection } | (fun(): Barotrauma.Items.Components.Connection)
---@field Item Barotrauma.Item
---@field ConnectionPanel Barotrauma.Items.Components.ConnectionPanel
---@field MaxPlayerConnectableWires System.Int32
---@field MaxWires System.Int32
---@field DisplayOrder System.Int32
---@field Name System.String
---@field private _displayName Barotrauma.LocalizedString
---@field DisplayNameOverride Barotrauma.LocalizedString
---@field private wires userdata | (fun(): Barotrauma.Items.Components.Wire)
---@field CircuitBoxConnections userdata | { [System.Int32]: Barotrauma.CircuitBoxConnection } | (fun(): Barotrauma.CircuitBoxConnection)
---@field private enumeratingWires System.Boolean
---@field private removedWires userdata | (fun(): Barotrauma.Items.Components.Wire)
---@field private item Barotrauma.Item
---@field IsOutput System.Boolean
---@field Effects userdata | { [System.Int32]: Barotrauma.StatusEffect } | (fun(): Barotrauma.StatusEffect)
---@field LoadedWires userdata | { [System.Int32]: userdata } | (fun(): userdata)
---@field Grid Barotrauma.Items.Components.GridInfo
---@field Priority Barotrauma.Items.Components.PowerPriority
---@field private recipientsDirty System.Boolean
---@field private recipients userdata | { [System.Int32]: Barotrauma.Items.Components.Connection } | (fun(): Barotrauma.Items.Components.Connection)
---@field private DefaultMaxWires System.Int32
CS.Barotrauma.Items.Components.Connection = {}

---@return Barotrauma.LocalizedString
function CS.Barotrauma.Items.Components.Connection.get_DisplayName() end

---@private
---@param value Barotrauma.LocalizedString
function CS.Barotrauma.Items.Components.Connection.set_DisplayName(value) end

---@return userdata | (fun(): Barotrauma.Items.Components.Wire)
function CS.Barotrauma.Items.Components.Connection.get_Wires() end

---@return userdata | { [System.Int32]: Barotrauma.Items.Components.Connection } | (fun(): Barotrauma.Items.Components.Connection)
function CS.Barotrauma.Items.Components.Connection.get_Recipients() end

---@return Barotrauma.Item
function CS.Barotrauma.Items.Components.Connection.get_Item() end

---@return System.String
function CS.Barotrauma.Items.Components.Connection.ToString() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Connection.IsConnectedToSomething() end

function CS.Barotrauma.Items.Components.Connection.SetRecipientsDirty() end

---@private
function CS.Barotrauma.Items.Components.Connection.RefreshRecipients() end

---@param it Barotrauma.Item
---@return Barotrauma.Items.Components.Wire
function CS.Barotrauma.Items.Components.Connection.FindWireByItem(it) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Connection.WireSlotsAvailable() end

---@param wire Barotrauma.Items.Components.Wire
---@return System.Boolean
function CS.Barotrauma.Items.Components.Connection.TryAddLink(wire) end

---@param wire Barotrauma.Items.Components.Wire
function CS.Barotrauma.Items.Components.Connection.DisconnectWire(wire) end

---@param wire Barotrauma.Items.Components.Wire
function CS.Barotrauma.Items.Components.Connection.ConnectWire(wire) end

---@param signal Barotrauma.Items.Components.Signal
function CS.Barotrauma.Items.Components.Connection.SendSignal(signal) end

---@param signal Barotrauma.Items.Components.Signal
---@param conn Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.Connection.SendSignalIntoConnection(signal, conn) end

function CS.Barotrauma.Items.Components.Connection.ClearConnections() end

function CS.Barotrauma.Items.Components.Connection.InitializeFromLoaded() end

---@param parentElement System.Xml.Linq.XElement
function CS.Barotrauma.Items.Components.Connection.Save(parentElement) end

---@param element Barotrauma.ContentXElement
---@param connectionIndex System.Int32
---@param connectionPanel Barotrauma.Items.Components.ConnectionPanel
---@param idRemap Barotrauma.IdRemap
---@param isItemSwap System.Boolean
---@return Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.Connection(element, connectionIndex, connectionPanel, idRemap, isItemSwap) end

---@class Barotrauma.Items.Components.DelayComponent: Barotrauma.Items.Components.ItemComponent
---@field Delay System.Single
---@field ResetWhenSignalReceived System.Boolean
---@field ResetWhenDifferentSignalReceived System.Boolean
---@field private signalQueueSize System.Int32
---@field private delayTicks System.Int32
---@field private signalQueue userdata | (fun(): Barotrauma.Items.Components.DelayComponent.DelayedSignal)
---@field private prevQueuedSignal Barotrauma.Items.Components.DelayComponent.DelayedSignal
---@field private delay System.Single
CS.Barotrauma.Items.Components.DelayComponent = {}

---@return System.Single
function CS.Barotrauma.Items.Components.DelayComponent.get_Delay() end

---@param value System.Single
function CS.Barotrauma.Items.Components.DelayComponent.set_Delay(value) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.DelayComponent.Update(deltaTime, cam) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.DelayComponent.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.DelayComponent
function CS.Barotrauma.Items.Components.DelayComponent(item, element) end

---@class Barotrauma.Items.Components.DemultiplexerComponent: Barotrauma.Items.Components.ConnectionSelectorComponent
---@field protected InputNameSetConnection System.String
---@field protected InputNameMoveInput System.String
CS.Barotrauma.Items.Components.DemultiplexerComponent = {}

---@protected
---@return System.String
function CS.Barotrauma.Items.Components.DemultiplexerComponent.get_InputNameSetConnection() end

---@protected
---@return System.String
function CS.Barotrauma.Items.Components.DemultiplexerComponent.get_InputNameMoveInput() end

function CS.Barotrauma.Items.Components.DemultiplexerComponent.OnItemLoaded() end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.DemultiplexerComponent.ReceiveSignal(signal, connection) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.DemultiplexerComponent.Update(deltaTime, cam) end

---@protected
---@param connectionIndex System.Int32
---@return System.String
function CS.Barotrauma.Items.Components.DemultiplexerComponent.GetConnectionName(connectionIndex) end

---@protected
---@return userdata | (fun(): Barotrauma.Items.Components.Connection)
function CS.Barotrauma.Items.Components.DemultiplexerComponent.GetConnections() end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.DemultiplexerComponent
function CS.Barotrauma.Items.Components.DemultiplexerComponent(item, element) end

---@class Barotrauma.Items.Components.DivideComponent: Barotrauma.Items.Components.ArithmeticComponent
CS.Barotrauma.Items.Components.DivideComponent = {}

---@protected
---@param signal1 System.Single
---@param signal2 System.Single
---@return System.Single
function CS.Barotrauma.Items.Components.DivideComponent.Calculate(signal1, signal2) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.DivideComponent
function CS.Barotrauma.Items.Components.DivideComponent(item, element) end

---@class Barotrauma.Items.Components.EqualsComponent: Barotrauma.Items.Components.ItemComponent
---@field MaxOutputLength System.Int32
---@field Output System.String
---@field FalseOutput System.String
---@field TimeFrame System.Single
---@field protected output System.String
---@field protected falseOutput System.String
---@field protected timeSinceReceived System.Single[]
---@field protected receivedSignal System.String[]
---@field private signalSender Barotrauma.Character[]
---@field protected timeFrame System.Single
---@field private maxOutputLength System.Int32
CS.Barotrauma.Items.Components.EqualsComponent = {}

---@return System.Int32
function CS.Barotrauma.Items.Components.EqualsComponent.get_MaxOutputLength() end

---@param value System.Int32
function CS.Barotrauma.Items.Components.EqualsComponent.set_MaxOutputLength(value) end

---@return System.String
function CS.Barotrauma.Items.Components.EqualsComponent.get_Output() end

---@param value System.String
function CS.Barotrauma.Items.Components.EqualsComponent.set_Output(value) end

---@return System.String
function CS.Barotrauma.Items.Components.EqualsComponent.get_FalseOutput() end

---@param value System.String
function CS.Barotrauma.Items.Components.EqualsComponent.set_FalseOutput(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.EqualsComponent.get_TimeFrame() end

---@param value System.Single
function CS.Barotrauma.Items.Components.EqualsComponent.set_TimeFrame(value) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.EqualsComponent.Update(deltaTime, cam) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.EqualsComponent.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.EqualsComponent
function CS.Barotrauma.Items.Components.EqualsComponent(item, element) end

---@class Barotrauma.Items.Components.ExponentiationComponent: Barotrauma.Items.Components.ItemComponent
---@field Exponent System.Single
---@field private exponent System.Single
CS.Barotrauma.Items.Components.ExponentiationComponent = {}

---@return System.Single
function CS.Barotrauma.Items.Components.ExponentiationComponent.get_Exponent() end

---@param value System.Single
function CS.Barotrauma.Items.Components.ExponentiationComponent.set_Exponent(value) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.ExponentiationComponent.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ExponentiationComponent
function CS.Barotrauma.Items.Components.ExponentiationComponent(item, element) end

---@class Barotrauma.Items.Components.FunctionComponent: Barotrauma.Items.Components.ItemComponent
---@field Function Barotrauma.Items.Components.FunctionComponent.FunctionType
CS.Barotrauma.Items.Components.FunctionComponent = {}

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.FunctionComponent.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.FunctionComponent
function CS.Barotrauma.Items.Components.FunctionComponent(item, element) end

---@class Barotrauma.Items.Components.GreaterComponent: Barotrauma.Items.Components.EqualsComponent
---@field private val1 System.Single
---@field private val2 System.Single
CS.Barotrauma.Items.Components.GreaterComponent = {}

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.GreaterComponent.Update(deltaTime, cam) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.GreaterComponent.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.GreaterComponent
function CS.Barotrauma.Items.Components.GreaterComponent(item, element) end

---@class Barotrauma.Items.Components.ModuloComponent: Barotrauma.Items.Components.ItemComponent
---@field Modulus System.Single
---@field private modulus System.Single
CS.Barotrauma.Items.Components.ModuloComponent = {}

---@return System.Single
function CS.Barotrauma.Items.Components.ModuloComponent.get_Modulus() end

---@param value System.Single
function CS.Barotrauma.Items.Components.ModuloComponent.set_Modulus(value) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.ModuloComponent.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ModuloComponent
function CS.Barotrauma.Items.Components.ModuloComponent(item, element) end

---@class Barotrauma.Items.Components.MotionSensor: Barotrauma.Items.Components.ItemComponent
---@field MotionDetected System.Boolean
---@field Target Barotrauma.Items.Components.MotionSensor.TargetType
---@field TargetCharacters System.String
---@field IgnoreDead System.Boolean
---@field RangeX System.Single
---@field RangeY System.Single
---@field DetectOffset Microsoft.Xna.Framework.Vector2
---@field TransformedDetectOffset Microsoft.Xna.Framework.Vector2
---@field UpdateInterval System.Single
---@field MaxOutputLength System.Int32
---@field Output System.String
---@field FalseOutput System.String
---@field MinimumVelocity System.Single
---@field DetectOwnMotion System.Boolean
---@field private rangeX System.Single
---@field private rangeY System.Single
---@field private detectOffset Microsoft.Xna.Framework.Vector2
---@field private updateTimer System.Single
---@field private triggerFromHumans System.Boolean
---@field private triggerFromPets System.Boolean
---@field private triggerFromMonsters System.Boolean
---@field private _target Barotrauma.Items.Components.MotionSensor.TargetType
---@field private targetCharacters userdata | (fun(): Barotrauma.Identifier)
---@field private maxOutputLength System.Int32
---@field private output System.String
---@field private falseOutput System.String
CS.Barotrauma.Items.Components.MotionSensor = {}

---@return Barotrauma.Items.Components.MotionSensor.TargetType
function CS.Barotrauma.Items.Components.MotionSensor.get_Target() end

---@param value Barotrauma.Items.Components.MotionSensor.TargetType
function CS.Barotrauma.Items.Components.MotionSensor.set_Target(value) end

---@return System.String
function CS.Barotrauma.Items.Components.MotionSensor.get_TargetCharacters() end

---@param value System.String
function CS.Barotrauma.Items.Components.MotionSensor.set_TargetCharacters(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.MotionSensor.get_RangeX() end

---@param value System.Single
function CS.Barotrauma.Items.Components.MotionSensor.set_RangeX(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.MotionSensor.get_RangeY() end

---@param value System.Single
function CS.Barotrauma.Items.Components.MotionSensor.set_RangeY(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.MotionSensor.get_DetectOffset() end

---@param value Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.MotionSensor.set_DetectOffset(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.MotionSensor.get_TransformedDetectOffset() end

---@return System.Int32
function CS.Barotrauma.Items.Components.MotionSensor.get_MaxOutputLength() end

---@param value System.Int32
function CS.Barotrauma.Items.Components.MotionSensor.set_MaxOutputLength(value) end

---@return System.String
function CS.Barotrauma.Items.Components.MotionSensor.get_Output() end

---@param value System.String
function CS.Barotrauma.Items.Components.MotionSensor.set_Output(value) end

---@return System.String
function CS.Barotrauma.Items.Components.MotionSensor.get_FalseOutput() end

---@param value System.String
function CS.Barotrauma.Items.Components.MotionSensor.set_FalseOutput(value) end

---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean
---@param idRemap Barotrauma.IdRemap
---@param isItemSwap System.Boolean
function CS.Barotrauma.Items.Components.MotionSensor.Load(componentElement, usePrefabValues, idRemap, isItemSwap) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.MotionSensor.Update(deltaTime, cam) end

---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.MotionSensor.TriggersOn(character) end

---@private
---@param character Barotrauma.Character
---@param triggerFromHumans System.Boolean
---@param triggerFromPets System.Boolean
---@param triggerFromMonsters System.Boolean
---@return System.Boolean
function CS.Barotrauma.Items.Components.MotionSensor.TriggersOn(character, triggerFromHumans, triggerFromPets, triggerFromMonsters) end

---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
function CS.Barotrauma.Items.Components.MotionSensor.Save(parentElement) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.MotionSensor
function CS.Barotrauma.Items.Components.MotionSensor(item, element) end

---@class Barotrauma.Items.Components.MultiplexerComponent: Barotrauma.Items.Components.ConnectionSelectorComponent
---@field protected InputNameSetConnection System.String
---@field protected InputNameMoveInput System.String
CS.Barotrauma.Items.Components.MultiplexerComponent = {}

---@protected
---@return System.String
function CS.Barotrauma.Items.Components.MultiplexerComponent.get_InputNameSetConnection() end

---@protected
---@return System.String
function CS.Barotrauma.Items.Components.MultiplexerComponent.get_InputNameMoveInput() end

function CS.Barotrauma.Items.Components.MultiplexerComponent.OnItemLoaded() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.MultiplexerComponent.Update(deltaTime, cam) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.MultiplexerComponent.ReceiveSignal(signal, connection) end

---@protected
---@param connectionIndex System.Int32
---@return System.String
function CS.Barotrauma.Items.Components.MultiplexerComponent.GetConnectionName(connectionIndex) end

---@protected
---@return userdata | (fun(): Barotrauma.Items.Components.Connection)
function CS.Barotrauma.Items.Components.MultiplexerComponent.GetConnections() end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.MultiplexerComponent
function CS.Barotrauma.Items.Components.MultiplexerComponent(item, element) end

---@class Barotrauma.Items.Components.MultiplyComponent: Barotrauma.Items.Components.ArithmeticComponent
CS.Barotrauma.Items.Components.MultiplyComponent = {}

---@protected
---@param signal1 System.Single
---@param signal2 System.Single
---@return System.Single
function CS.Barotrauma.Items.Components.MultiplyComponent.Calculate(signal1, signal2) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.MultiplyComponent
function CS.Barotrauma.Items.Components.MultiplyComponent(item, element) end

---@class Barotrauma.Items.Components.NotComponent: Barotrauma.Items.Components.ItemComponent
---@field ContinuousOutput System.Boolean
---@field private signalReceived System.Boolean
---@field private continuousOutput System.Boolean
CS.Barotrauma.Items.Components.NotComponent = {}

---@return System.Boolean
function CS.Barotrauma.Items.Components.NotComponent.get_ContinuousOutput() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.NotComponent.set_ContinuousOutput(value) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.NotComponent.Update(deltaTime, cam) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.NotComponent.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.NotComponent
function CS.Barotrauma.Items.Components.NotComponent(item, element) end

---@class Barotrauma.Items.Components.OscillatorComponent: Barotrauma.Items.Components.ItemComponent
---@field OutputType Barotrauma.Items.Components.OscillatorComponent.WaveType
---@field Frequency System.Single
---@field private frequency System.Single
---@field private phase System.Single
CS.Barotrauma.Items.Components.OscillatorComponent = {}

---@return System.Single
function CS.Barotrauma.Items.Components.OscillatorComponent.get_Frequency() end

---@param value System.Single
function CS.Barotrauma.Items.Components.OscillatorComponent.set_Frequency(value) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.OscillatorComponent.Update(deltaTime, cam) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.OscillatorComponent.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.OscillatorComponent
function CS.Barotrauma.Items.Components.OscillatorComponent(item, element) end

---@class Barotrauma.Items.Components.OxygenDetector: Barotrauma.Items.Components.ItemComponent
---@field OxygenSignal System.String
---@field private prevSentOxygenValue System.Int32
---@field LowOxygenPercentage System.Int32
CS.Barotrauma.Items.Components.OxygenDetector = {}

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.OxygenDetector.Update(deltaTime, cam) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.OxygenDetector
function CS.Barotrauma.Items.Components.OxygenDetector(item, element) end

---@class Barotrauma.Items.Components.RegExFindComponent: Barotrauma.Items.Components.ItemComponent
---@field MaxOutputLength System.Int32
---@field Output System.String
---@field UseCaptureGroup System.Boolean
---@field OutputEmptyCaptureGroup System.Boolean
---@field FalseOutput System.String
---@field ContinuousOutput System.Boolean
---@field Expression System.String
---@field private stopwatch System.Diagnostics.Stopwatch
---@field private timedOut System.Boolean
---@field private timeOutsInARow System.Int32
---@field private expression System.String
---@field private receivedSignal System.String
---@field private previousReceivedSignal System.String
---@field private previousResult System.Boolean
---@field private previousGroups System.Text.RegularExpressions.GroupCollection
---@field private regex System.Text.RegularExpressions.Regex
---@field private nonContinuousOutputSent System.Boolean
---@field private maxOutputLength System.Int32
---@field private output System.String
---@field private timeout System.TimeSpan
---@field private shortTimeout System.TimeSpan
---@field private MaxTimeOutsInARow System.Int32
CS.Barotrauma.Items.Components.RegExFindComponent = {}

---@return System.Int32
function CS.Barotrauma.Items.Components.RegExFindComponent.get_MaxOutputLength() end

---@param value System.Int32
function CS.Barotrauma.Items.Components.RegExFindComponent.set_MaxOutputLength(value) end

---@return System.String
function CS.Barotrauma.Items.Components.RegExFindComponent.get_Output() end

---@param value System.String
function CS.Barotrauma.Items.Components.RegExFindComponent.set_Output(value) end

---@return System.String
function CS.Barotrauma.Items.Components.RegExFindComponent.get_Expression() end

---@param value System.String
function CS.Barotrauma.Items.Components.RegExFindComponent.set_Expression(value) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.RegExFindComponent.Update(deltaTime, cam) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.RegExFindComponent.ReceiveSignal(signal, connection) end

---@overload fun(): Barotrauma.Items.Components.RegExFindComponent
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.RegExFindComponent
function CS.Barotrauma.Items.Components.RegExFindComponent(item, element) end

---@class Barotrauma.Items.Components.RelayComponent: Barotrauma.Items.Components.PowerTransfer
---@field protected Priority Barotrauma.Items.Components.PowerPriority
---@field DisplayLoad System.Single
---@field MaxPower System.Single
---@field IsOn System.Boolean
---@field private maxPower System.Single
---@field private isOn System.Boolean
---@field private prevVoltage System.Single
---@field private newVoltage System.Single|nil
---@field private internalLoadBuffer System.Single
---@field private prevInternalLoad System.Single
---@field private prevExternalLoad System.Single
---@field private bufferDiff System.Single
---@field private thirdInverseMax System.Single
---@field private loadEqnConstant System.Single
---@field private connectionPairs userdata | { [System.String]: System.String } | (fun(): userdata)
CS.Barotrauma.Items.Components.RelayComponent = {}

---@protected
---@return Barotrauma.Items.Components.PowerPriority
function CS.Barotrauma.Items.Components.RelayComponent.get_Priority() end

---@return System.Single
function CS.Barotrauma.Items.Components.RelayComponent.get_DisplayLoad() end

---@return System.Single
function CS.Barotrauma.Items.Components.RelayComponent.get_MaxPower() end

---@param value System.Single
function CS.Barotrauma.Items.Components.RelayComponent.set_MaxPower(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.RelayComponent.get_IsOn() end

---@param value System.Boolean
function CS.Barotrauma.Items.Components.RelayComponent.set_IsOn(value) end

---@private
function CS.Barotrauma.Items.Components.RelayComponent.SetLoadFormulaValues() end

function CS.Barotrauma.Items.Components.RelayComponent.OnItemLoaded() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.RelayComponent.Update(deltaTime, cam) end

---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single
function CS.Barotrauma.Items.Components.RelayComponent.GetCurrentPowerConsumption(connection) end

---@private
---@return System.Boolean
function CS.Barotrauma.Items.Components.RelayComponent.RelayCanOutput() end

---@param connection Barotrauma.Items.Components.Connection
---@param load? System.Single
---@return Barotrauma.Items.Components.PowerRange
function CS.Barotrauma.Items.Components.RelayComponent.MinMaxPowerOut(connection, load) end

---@param connection Barotrauma.Items.Components.Connection
---@param power System.Single
---@param minMaxPower Barotrauma.Items.Components.PowerRange
---@param load System.Single
---@return System.Single
function CS.Barotrauma.Items.Components.RelayComponent.GetConnectionPowerOut(connection, power, minMaxPower, load) end

---@param conn Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.RelayComponent.GridResolved(conn) end

---@private
---@param addToBuffer System.Single
---@param newVoltage System.Single
function CS.Barotrauma.Items.Components.RelayComponent.UpdateBuffer(addToBuffer, newVoltage) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.RelayComponent.ReceiveSignal(signal, connection) end

---@param on System.Boolean
---@param isNetworkMessage System.Boolean
function CS.Barotrauma.Items.Components.RelayComponent.SetState(on, isNetworkMessage) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.RelayComponent.ServerEventWrite(msg, c, extraData) end

---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single
function CS.Barotrauma.Items.Components.RelayComponent.ClientEventRead(msg, sendingTime) end

---@overload fun(): Barotrauma.Items.Components.RelayComponent
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.RelayComponent
function CS.Barotrauma.Items.Components.RelayComponent(item, element) end

---@class Barotrauma.Items.Components.SignalCheckComponent: Barotrauma.Items.Components.ItemComponent
---@field MaxOutputLength System.Int32
---@field Output System.String
---@field FalseOutput System.String
---@field TargetSignal System.String
---@field private maxOutputLength System.Int32
---@field private output System.String
---@field private falseOutput System.String
CS.Barotrauma.Items.Components.SignalCheckComponent = {}

---@return System.Int32
function CS.Barotrauma.Items.Components.SignalCheckComponent.get_MaxOutputLength() end

---@param value System.Int32
function CS.Barotrauma.Items.Components.SignalCheckComponent.set_MaxOutputLength(value) end

---@return System.String
function CS.Barotrauma.Items.Components.SignalCheckComponent.get_Output() end

---@param value System.String
function CS.Barotrauma.Items.Components.SignalCheckComponent.set_Output(value) end

---@return System.String
function CS.Barotrauma.Items.Components.SignalCheckComponent.get_FalseOutput() end

---@param value System.String
function CS.Barotrauma.Items.Components.SignalCheckComponent.set_FalseOutput(value) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.SignalCheckComponent.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.SignalCheckComponent
function CS.Barotrauma.Items.Components.SignalCheckComponent(item, element) end

---@class Barotrauma.Items.Components.SmokeDetector: Barotrauma.Items.Components.ItemComponent
---@field FireInRange System.Boolean
---@field MaxOutputLength System.Int32
---@field Output System.String
---@field FalseOutput System.String
---@field private fireCheckTimer System.Single
---@field private maxOutputLength System.Int32
---@field private output System.String
---@field private falseOutput System.String
---@field private FireCheckInterval System.Single
CS.Barotrauma.Items.Components.SmokeDetector = {}

---@return System.Int32
function CS.Barotrauma.Items.Components.SmokeDetector.get_MaxOutputLength() end

---@param value System.Int32
function CS.Barotrauma.Items.Components.SmokeDetector.set_MaxOutputLength(value) end

---@return System.String
function CS.Barotrauma.Items.Components.SmokeDetector.get_Output() end

---@param value System.String
function CS.Barotrauma.Items.Components.SmokeDetector.set_Output(value) end

---@return System.String
function CS.Barotrauma.Items.Components.SmokeDetector.get_FalseOutput() end

---@param value System.String
function CS.Barotrauma.Items.Components.SmokeDetector.set_FalseOutput(value) end

---@private
---@return System.Boolean
function CS.Barotrauma.Items.Components.SmokeDetector.IsFireInRange() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.SmokeDetector.Update(deltaTime, cam) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.SmokeDetector
function CS.Barotrauma.Items.Components.SmokeDetector(item, element) end

---@class Barotrauma.Items.Components.StringComponent: Barotrauma.Items.Components.ItemComponent
---@field TimeFrame System.Single
---@field protected timeSinceReceived System.Single[]
---@field protected receivedSignal System.String[]
---@field protected timeFrame System.Single
CS.Barotrauma.Items.Components.StringComponent = {}

---@return System.Single
function CS.Barotrauma.Items.Components.StringComponent.get_TimeFrame() end

---@param value System.Single
function CS.Barotrauma.Items.Components.StringComponent.set_TimeFrame(value) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.StringComponent.Update(deltaTime, cam) end

---@protected
---@param signal1 System.String
---@param signal2 System.String
---@return System.String
function CS.Barotrauma.Items.Components.StringComponent.Calculate(signal1, signal2) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.StringComponent.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.StringComponent
function CS.Barotrauma.Items.Components.StringComponent(item, element) end

---@class Barotrauma.Items.Components.SubtractComponent: Barotrauma.Items.Components.ArithmeticComponent
CS.Barotrauma.Items.Components.SubtractComponent = {}

---@protected
---@param signal1 System.Single
---@param signal2 System.Single
---@return System.Single
function CS.Barotrauma.Items.Components.SubtractComponent.Calculate(signal1, signal2) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.SubtractComponent
function CS.Barotrauma.Items.Components.SubtractComponent(item, element) end

---@class Barotrauma.Items.Components.TerminalMessage: System.ValueType
---@field Text System.String
---@field Color Microsoft.Xna.Framework.Color
---@field IsWelcomeMessage System.Boolean
CS.Barotrauma.Items.Components.TerminalMessage = {}

---@param text System.String
---@param color Microsoft.Xna.Framework.Color
function CS.Barotrauma.Items.Components.TerminalMessage.Deconstruct(text, color) end

---@param text System.String
---@param color Microsoft.Xna.Framework.Color
---@param isWelcomeMessage System.Boolean
---@return Barotrauma.Items.Components.TerminalMessage
function CS.Barotrauma.Items.Components.TerminalMessage(text, color, isWelcomeMessage) end

---@class Barotrauma.Items.Components.TrigonometricFunctionComponent: Barotrauma.Items.Components.ItemComponent
---@field Function Barotrauma.Items.Components.TrigonometricFunctionComponent.FunctionType
---@field UseRadians System.Boolean
---@field private receivedSignal System.Single[]
---@field private timeSinceReceived System.Single[]
---@field protected signalSender Barotrauma.Character
CS.Barotrauma.Items.Components.TrigonometricFunctionComponent = {}

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.TrigonometricFunctionComponent.Update(deltaTime, cam) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.TrigonometricFunctionComponent.ReceiveSignal(signal, connection) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.TrigonometricFunctionComponent
function CS.Barotrauma.Items.Components.TrigonometricFunctionComponent(item, element) end

---@class Barotrauma.Items.Components.WaterDetector: Barotrauma.Items.Components.ItemComponent
---@field MaxOutputLength System.Int32
---@field Output System.String
---@field FalseOutput System.String
---@field WaterDetected System.Boolean
---@field WaterPercentage System.Int32
---@field private prevSentWaterPercentageValue System.Int32
---@field private waterPercentageSignal System.String
---@field private isInWater System.Boolean
---@field private stateSwitchDelay System.Single
---@field private maxOutputLength System.Int32
---@field private output System.String
---@field private falseOutput System.String
---@field private StateSwitchInterval System.Single
CS.Barotrauma.Items.Components.WaterDetector = {}

---@return System.Int32
function CS.Barotrauma.Items.Components.WaterDetector.get_MaxOutputLength() end

---@param value System.Int32
function CS.Barotrauma.Items.Components.WaterDetector.set_MaxOutputLength(value) end

---@return System.String
function CS.Barotrauma.Items.Components.WaterDetector.get_Output() end

---@param value System.String
function CS.Barotrauma.Items.Components.WaterDetector.set_Output(value) end

---@return System.String
function CS.Barotrauma.Items.Components.WaterDetector.get_FalseOutput() end

---@param value System.String
function CS.Barotrauma.Items.Components.WaterDetector.set_FalseOutput(value) end

---@return System.Boolean
function CS.Barotrauma.Items.Components.WaterDetector.get_WaterDetected() end

---@return System.Int32
function CS.Barotrauma.Items.Components.WaterDetector.get_WaterPercentage() end

---@param hull Barotrauma.Hull
---@return System.Int32
function CS.Barotrauma.Items.Components.WaterDetector.GetWaterPercentage(hull) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.WaterDetector.Update(deltaTime, cam) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.WaterDetector
function CS.Barotrauma.Items.Components.WaterDetector(item, element) end

---@class Barotrauma.Items.Components.StatusHUD: Barotrauma.Items.Components.ItemComponent
CS.Barotrauma.Items.Components.StatusHUD = {}

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.StatusHUD
function CS.Barotrauma.Items.Components.StatusHUD(item, element) end

---@class Barotrauma.Items.Components.Turret: Barotrauma.Items.Components.Powered
---@field ActiveProjectiles userdata | (fun(): Barotrauma.Item)
---@field Rotation System.Single
---@field BarrelPos Microsoft.Xna.Framework.Vector2
---@field FiringOffset Microsoft.Xna.Framework.Vector2
---@field AlternatingFiringOffset System.Boolean
---@field TransformedBarrelPos Microsoft.Xna.Framework.Vector2
---@field LaunchImpulse System.Single
---@field DamageMultiplier System.Single
---@field ProjectileCount System.Int32
---@field LaunchWithoutProjectile System.Boolean
---@field Spread System.Single
---@field FiringRotationSpeedModifier System.Single
---@field SingleChargedShot System.Boolean
---@field BaseRotation System.Single
---@field AIRange System.Single
---@field MaxAngleOffset System.Single
---@field AICurrentTargetPriorityMultiplier System.Single
---@field MaxActiveProjectiles System.Int32
---@field MaxChargeTime System.Single
---@field Reload System.Single
---@field ShotsPerBurst System.Int32
---@field DelayBetweenBursts System.Single
---@field RetractionDurationMultiplier System.Single
---@field RecoilTime System.Single
---@field RetractionDelay System.Single
---@field RotationLimits Microsoft.Xna.Framework.Vector2
---@field SpringStiffnessLowSkill System.Single
---@field SpringStiffnessHighSkill System.Single
---@field SpringDampingLowSkill System.Single
---@field SpringDampingHighSkill System.Single
---@field RotationSpeedLowSkill System.Single
---@field RotationSpeedHighSkill System.Single
---@field HudTint Microsoft.Xna.Framework.Color
---@field AutoOperate System.Boolean
---@field AllowAutoOperateWithWiring System.Boolean
---@field RandomAimAmount System.Single
---@field RandomAimMinTime System.Single
---@field RandomAimMaxTime System.Single
---@field RandomMovement System.Boolean
---@field AimDelay System.Boolean
---@field TargetCharacters System.Boolean
---@field TargetMonsters System.Boolean
---@field TargetHumans System.Boolean
---@field TargetSubmarines System.Boolean
---@field TargetItems System.Boolean
---@field FriendlyTag Barotrauma.Identifier
---@field FriendlyTeamType Barotrauma.Items.Components.Turret.TeamType
---@field private barrelSprite Barotrauma.Sprite
---@field private railSprite Barotrauma.Sprite
---@field private barrelSpriteBroken Barotrauma.Sprite
---@field private railSpriteBroken Barotrauma.Sprite
---@field private chargeSprites userdata | { [System.Int32]: userdata } | (fun(): userdata)
---@field private spinningBarrelSprites userdata | { [System.Int32]: Barotrauma.Sprite } | (fun(): Barotrauma.Sprite)
---@field private barrelPos Microsoft.Xna.Framework.Vector2
---@field private transformedBarrelPos Microsoft.Xna.Framework.Vector2
---@field private targetRotation System.Single
---@field private reload System.Single
---@field private shotCounter System.Int32
---@field private minRotation System.Single
---@field private maxRotation System.Single
---@field private cam Barotrauma.Camera
---@field private angularVelocity System.Single
---@field private failedLaunchAttempts System.Int32
---@field private currentChargeTime System.Single
---@field private tryingToCharge System.Boolean
---@field private currentChargingState Barotrauma.Items.Components.Turret.ChargingState
---@field private activeProjectiles userdata | { [System.Int32]: Barotrauma.Item } | (fun(): Barotrauma.Item)
---@field private user Barotrauma.Character
---@field private resetUserTimer System.Single
---@field private aiFindTargetTimer System.Single
---@field private currentTarget Barotrauma.ISpatialEntity
---@field private projectileSpeed System.Single
---@field private previousAmmo Barotrauma.Item
---@field private currentLoaderIndex System.Int32
---@field ActiveUser Barotrauma.Character
---@field private resetActiveUserTimer System.Single
---@field private lightComponents userdata | { [System.Int32]: Barotrauma.Items.Components.LightComponent } | (fun(): Barotrauma.Items.Components.LightComponent)
---@field private lastProjectile Barotrauma.Items.Components.Projectile
---@field private isSlowTurret System.Boolean
---@field private flipFiringOffset System.Boolean
---@field private prevScale System.Single
---@field private prevBaseRotation System.Single
---@field private _maxAngleOffset System.Single
---@field private isUseBeingCalled System.Boolean
---@field private waitTimer System.Single
---@field private randomAimTimer System.Single
---@field private prevTargetRotation System.Single
---@field private updateTimer System.Single
---@field private updatePending System.Boolean
---@field private loadedRotationLimits Microsoft.Xna.Framework.Vector2|nil
---@field private loadedBaseRotation System.Single|nil
---@field private loadedFriendlyTeamType Barotrauma.Items.Components.Turret.TeamType|nil
---@field private LaunchWithoutProjectileId System.UInt16
---@field private CrewAiFindTargetMaxInterval System.Single
---@field private CrewAIFindTargetMinInverval System.Single
---@field private MinimumProjectileVelocityForAimAhead System.Single
---@field private MaximumAimAhead System.Single
---@field private TinkeringPowerCostReduction System.Single
---@field private TinkeringDamageIncrease System.Single
---@field private TinkeringReloadDecrease System.Single
---@field private SetAutoOperateConnection System.String
---@field private ToggleAutoOperateConnection System.String
CS.Barotrauma.Items.Components.Turret = {}

---@return userdata | (fun(): Barotrauma.Item)
function CS.Barotrauma.Items.Components.Turret.get_ActiveProjectiles() end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Turret.get_BarrelPos() end

---@param value Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Turret.set_BarrelPos(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Turret.get_TransformedBarrelPos() end

---@return System.Single
function CS.Barotrauma.Items.Components.Turret.get_BaseRotation() end

---@param value System.Single
function CS.Barotrauma.Items.Components.Turret.set_BaseRotation(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.Turret.get_MaxAngleOffset() end

---@private
---@param value System.Single
function CS.Barotrauma.Items.Components.Turret.set_MaxAngleOffset(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Turret.get_RotationLimits() end

---@param value Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Turret.set_RotationLimits(value) end

---@private
function CS.Barotrauma.Items.Components.Turret.UpdateTransformedBarrelPos() end

function CS.Barotrauma.Items.Components.Turret.OnMapLoaded() end

---@private
function CS.Barotrauma.Items.Components.Turret.FindLightComponents() end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Turret.Update(deltaTime, cam) end

function CS.Barotrauma.Items.Components.Turret.UpdateLightComponents() end

---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Items.Components.Turret.Use(deltaTime, character) end

---@return System.Single
function CS.Barotrauma.Items.Components.Turret.GetPowerRequiredToShoot() end

---@return System.Boolean
function CS.Barotrauma.Items.Components.Turret.HasPowerToShoot() end

---@private
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Turret.GetBarrelDir() end

---@private
---@param deltaTime System.Single
---@param character? Barotrauma.Character
---@param ignorePower? System.Boolean
---@return System.Boolean
function CS.Barotrauma.Items.Components.Turret.TryLaunch(deltaTime, character, ignorePower) end

---@private
---@param projectile Barotrauma.Item
---@param user? Barotrauma.Character
---@param launchRotation? System.Single|nil
---@param tinkeringStrength? System.Single
function CS.Barotrauma.Items.Components.Turret.Launch(projectile, user, launchRotation, tinkeringStrength) end

---@private
---@param projectile Barotrauma.Items.Components.Projectile
function CS.Barotrauma.Items.Components.Turret.TryDetermineProjectileSpeed(projectile) end

---@private
---@param container Barotrauma.Items.Components.ItemContainer
function CS.Barotrauma.Items.Components.Turret.ShiftItemsInProjectileContainer(container) end

---@private
---@return System.Single
function CS.Barotrauma.Items.Components.Turret.GetTargetPriorityModifier() end

---@param deltaTime System.Single
---@param ignorePower System.Boolean
---@param friendlyTag? Barotrauma.Identifier
function CS.Barotrauma.Items.Components.Turret.UpdateAutoOperate(deltaTime, ignorePower, friendlyTag) end

---@param deltaTime System.Single
---@param character Barotrauma.Character
---@param objective Barotrauma.AIObjectiveOperateItem
---@return System.Boolean
function CS.Barotrauma.Items.Components.Turret.CrewAIOperate(deltaTime, character, objective) end

---@private
---@param targetPos Microsoft.Xna.Framework.Vector2
---@return System.Boolean
function CS.Barotrauma.Items.Components.Turret.IsPointingTowards(targetPos) end

---@private
---@param target Barotrauma.Item
---@param sqrDist System.Single
---@return System.Boolean
function CS.Barotrauma.Items.Components.Turret.IsTargetItemCloseEnough(target, sqrDist) end

---@param conn? Barotrauma.Items.Components.Connection
---@return System.Single
function CS.Barotrauma.Items.Components.Turret.GetCurrentPowerConsumption(conn) end

---@private
---@param target Barotrauma.ISpatialEntity
---@return System.Boolean
function CS.Barotrauma.Items.Components.Turret.IsValidTarget(target) end

---@private
---@return Barotrauma.CharacterTeamType
function CS.Barotrauma.Items.Components.Turret.GetFriendlyTeam() end

---@private
---@param target Barotrauma.Character
---@param friendlyTag Barotrauma.Identifier
---@return System.Boolean
function CS.Barotrauma.Items.Components.Turret.IsValidTargetForAutoOperate(target, friendlyTag) end

---@private
---@param targetBody FarseerPhysics.Dynamics.Body
---@param user? Barotrauma.Character
---@param friendlyTag? Barotrauma.Identifier
---@param targetSubmarines? System.Boolean
---@param allowShootingIfNothingInWay? System.Boolean
---@return System.Boolean
function CS.Barotrauma.Items.Components.Turret.CanShoot(targetBody, user, friendlyTag, targetSubmarines, allowShootingIfNothingInWay) end

---@private
---@param start Microsoft.Xna.Framework.Vector2
---@param __end__ Microsoft.Xna.Framework.Vector2
---@return FarseerPhysics.Dynamics.Body
function CS.Barotrauma.Items.Components.Turret.CheckLineOfSight(start, __end__) end

---@private
---@param useOffset? System.Boolean
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Turret.GetRelativeFiringPosition(useOffset) end

---@private
---@param angle System.Single
---@return System.Boolean
function CS.Barotrauma.Items.Components.Turret.IsWithinAimingRadius(angle) end

---@param target Microsoft.Xna.Framework.Vector2
---@return System.Boolean
function CS.Barotrauma.Items.Components.Turret.IsWithinAimingRadius(target) end

---@protected
function CS.Barotrauma.Items.Components.Turret.RemoveComponentSpecific() end

---@private
---@return userdata | { [System.Int32]: Barotrauma.Items.Components.Projectile } | (fun(): Barotrauma.Items.Components.Projectile)
function CS.Barotrauma.Items.Components.Turret.GetLoadedProjectiles() end

---@private
---@param projectileContainer Barotrauma.Item
---@param projectiles userdata | { [System.Int32]: Barotrauma.Items.Components.Projectile } | (fun(): Barotrauma.Items.Components.Projectile)
---@param stopSearching System.Boolean
function CS.Barotrauma.Items.Components.Turret.CheckProjectileContainer(projectileContainer, projectiles, stopSearching) end

---@param relativeToSub System.Boolean
function CS.Barotrauma.Items.Components.Turret.FlipX(relativeToSub) end

---@param relativeToSub System.Boolean
function CS.Barotrauma.Items.Components.Turret.FlipY(relativeToSub) end

---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
function CS.Barotrauma.Items.Components.Turret.ReceiveSignal(signal, connection) end

---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean
---@param idRemap Barotrauma.IdRemap
---@param isItemSwap System.Boolean
function CS.Barotrauma.Items.Components.Turret.Load(componentElement, usePrefabValues, idRemap, isItemSwap) end

function CS.Barotrauma.Items.Components.Turret.OnItemLoaded() end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.Turret.ServerEventWrite(msg, c, extraData) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Turret
function CS.Barotrauma.Items.Components.Turret(item, element) end

---@class Barotrauma.Items.Components.Wearable: Barotrauma.Items.Components.Pickable
---@field DamageModifiers userdata | (fun(): Barotrauma.DamageModifier)
---@field AutoEquipWhenFull System.Boolean
---@field DisplayContainedStatus System.Boolean
---@field AllowUseWhenWorn System.Boolean
---@field Variant System.Int32
---@field private wearableElements Barotrauma.ContentXElement[]
---@field private wearableSprites Barotrauma.WearableSprite[]
---@field private limbType Barotrauma.LimbType[]
---@field private limb Barotrauma.Limb[]
---@field private damageModifiers userdata | { [System.Int32]: Barotrauma.DamageModifier } | (fun(): Barotrauma.DamageModifier)
---@field SkillModifiers userdata | { [Barotrauma.Identifier]: System.Single } | (fun(): userdata)
---@field WearableStatValues userdata | { [Barotrauma.StatTypes]: System.Single } | (fun(): userdata)
---@field Variants System.Int32
---@field private variant System.Int32
---@field PressureProtection System.Single
---@field private loadedVariant System.Int32
CS.Barotrauma.Items.Components.Wearable = {}

---@return userdata | (fun(): Barotrauma.DamageModifier)
function CS.Barotrauma.Items.Components.Wearable.get_DamageModifiers() end

---@return System.Int32
function CS.Barotrauma.Items.Components.Wearable.get_Variant() end

---@param value System.Int32
function CS.Barotrauma.Items.Components.Wearable.set_Variant(value) end

---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.Wearable.Equip(character) end

---@param dropper Barotrauma.Character
---@param setTransform? System.Boolean
function CS.Barotrauma.Items.Components.Wearable.Drop(dropper, setTransform) end

---@param character Barotrauma.Character
function CS.Barotrauma.Items.Components.Wearable.Unequip(character) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Wearable.UpdateBroken(deltaTime, cam) end

---@param deltaTime System.Single
---@param cam Barotrauma.Camera
function CS.Barotrauma.Items.Components.Wearable.Update(deltaTime, cam) end

---@protected
function CS.Barotrauma.Items.Components.Wearable.RemoveComponentSpecific() end

---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
function CS.Barotrauma.Items.Components.Wearable.Save(parentElement) end

---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean
---@param idRemap Barotrauma.IdRemap
---@param isItemSwap System.Boolean
function CS.Barotrauma.Items.Components.Wearable.Load(componentElement, usePrefabValues, idRemap, isItemSwap) end

function CS.Barotrauma.Items.Components.Wearable.OnItemLoaded() end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Items.Components.Wearable.ServerEventWrite(msg, c, extraData) end

---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single
function CS.Barotrauma.Items.Components.Wearable.ClientEventRead(msg, sendingTime) end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Wearable
function CS.Barotrauma.Items.Components.Wearable(item, element) end

---@enum Barotrauma.Items.Components.DockingPort.DirectionType
CS.Barotrauma.Items.Components.DockingPort.DirectionType = {
    None = 0,
    Top = 1,
    Bottom = 2,
    Left = 3,
    Right = 4
}

---@enum Barotrauma.Items.Components.DockingPort.AllowOutpostAutoDocking
CS.Barotrauma.Items.Components.DockingPort.AllowOutpostAutoDocking = {
    Ask = 0,
    Yes = 1,
    No = 2
}

---@class Barotrauma.Items.Components.Door.EventData: System.ValueType
---@field ForcedOpen System.Boolean
CS.Barotrauma.Items.Components.Door.EventData = {}

---@param forcedOpen System.Boolean
---@return Barotrauma.Items.Components.Door.EventData
function CS.Barotrauma.Items.Components.Door.EventData(forcedOpen) end

---@enum Barotrauma.Items.Components.GeneticMaterial.CombineResult
CS.Barotrauma.Items.Components.GeneticMaterial.CombineResult = {
    None = 0,
    Refined = 1,
    Combined = 2
}

---@class Barotrauma.Items.Components.Growable.EventData: System.ValueType
---@field Offset System.Int32
CS.Barotrauma.Items.Components.Growable.EventData = {}

---@param offset System.Int32
---@return Barotrauma.Items.Components.Growable.EventData
function CS.Barotrauma.Items.Components.Growable.EventData(offset) end

---@class Barotrauma.Items.Components.Holdable.AttachEventData: System.ValueType
---@field AttachPos Microsoft.Xna.Framework.Vector2
---@field Attacher Barotrauma.Character
CS.Barotrauma.Items.Components.Holdable.AttachEventData = {}

---@param attachPos Microsoft.Xna.Framework.Vector2
---@param attacher Barotrauma.Character
---@return Barotrauma.Items.Components.Holdable.AttachEventData
function CS.Barotrauma.Items.Components.Holdable.AttachEventData(attachPos, attacher) end

---@class Barotrauma.Items.Components.ItemComponent.ItemUseInfo: System.ValueType
---@field Item Barotrauma.Item
---@field User Barotrauma.Character
CS.Barotrauma.Items.Components.ItemComponent.ItemUseInfo = {}

---@param Item Barotrauma.Item
---@param User Barotrauma.Character
---@return Barotrauma.Items.Components.ItemComponent.ItemUseInfo
function CS.Barotrauma.Items.Components.ItemComponent.ItemUseInfo(Item, User) end

---@class Barotrauma.Items.Components.ItemComponent.IEventData
CS.Barotrauma.Items.Components.ItemComponent.IEventData = {}


---@enum Barotrauma.Items.Components.Controller.UseEnvironment
CS.Barotrauma.Items.Components.Controller.UseEnvironment = {
    Air = 0,
    Water = 1,
    Both = 2
}

---@class Barotrauma.Items.Components.Fabricator.EventData: System.ValueType
---@field ServerEventId System.UInt64
---@field State Barotrauma.Items.Components.Fabricator.FabricatorState
CS.Barotrauma.Items.Components.Fabricator.EventData = {}

---@param serverEventId System.UInt64
---@param state Barotrauma.Items.Components.Fabricator.FabricatorState
---@return Barotrauma.Items.Components.Fabricator.EventData
function CS.Barotrauma.Items.Components.Fabricator.EventData(serverEventId, state) end

---@enum Barotrauma.Items.Components.Fabricator.FabricatorState
CS.Barotrauma.Items.Components.Fabricator.FabricatorState = {
    Stopped = 0,
    Active = 1,
    Paused = 2
}

---@class Barotrauma.Items.Components.Fabricator.QualityResult: System.ValueType
---@field Quality System.Int32
---@field HasRandomQuality System.Boolean
---@field PlusOnePercentage System.Single
---@field PlusTwoPercentage System.Single
---@field HasRandomQualityRollChance System.Boolean
---@field TotalPlusOnePercentage System.Single
---@field TotalPlusTwoPercentage System.Single
---@field Empty Barotrauma.Items.Components.Fabricator.QualityResult
CS.Barotrauma.Items.Components.Fabricator.QualityResult = {}

---@return System.Boolean
function CS.Barotrauma.Items.Components.Fabricator.QualityResult.get_HasRandomQualityRollChance() end

---@return System.Single
function CS.Barotrauma.Items.Components.Fabricator.QualityResult.get_TotalPlusOnePercentage() end

---@return System.Single
function CS.Barotrauma.Items.Components.Fabricator.QualityResult.get_TotalPlusTwoPercentage() end

---@return System.Int32
function CS.Barotrauma.Items.Components.Fabricator.QualityResult.RollQuality() end

---@overload fun(): Barotrauma.Items.Components.Fabricator.QualityResult
---@param Quality System.Int32
---@param HasRandomQuality System.Boolean
---@param PlusOnePercentage System.Single
---@param PlusTwoPercentage System.Single
---@return Barotrauma.Items.Components.Fabricator.QualityResult
function CS.Barotrauma.Items.Components.Fabricator.QualityResult(Quality, HasRandomQuality, PlusOnePercentage, PlusTwoPercentage) end

---@class Barotrauma.Items.Components.Fabricator.AbilityFabricatorSkillGain: Barotrauma.Abilities.AbilityObject
---@field Value System.Single
---@field SkillIdentifier Barotrauma.Identifier
CS.Barotrauma.Items.Components.Fabricator.AbilityFabricatorSkillGain = {}

---@param skillIdentifier Barotrauma.Identifier
---@param skillAmount System.Single
---@return Barotrauma.Items.Components.Fabricator.AbilityFabricatorSkillGain
function CS.Barotrauma.Items.Components.Fabricator.AbilityFabricatorSkillGain(skillIdentifier, skillAmount) end

---@class Barotrauma.Items.Components.Fabricator.AbilityFabricationItemAmount: Barotrauma.Abilities.AbilityObject
---@field Value System.Single
---@field ItemPrefab Barotrauma.ItemPrefab
CS.Barotrauma.Items.Components.Fabricator.AbilityFabricationItemAmount = {}

---@param itemPrefab Barotrauma.ItemPrefab
---@param itemAmount System.Single
---@return Barotrauma.Items.Components.Fabricator.AbilityFabricationItemAmount
function CS.Barotrauma.Items.Components.Fabricator.AbilityFabricationItemAmount(itemPrefab, itemAmount) end

---@class Barotrauma.Items.Components.Fabricator.AbilityFabricationItemIngredients: Barotrauma.Abilities.AbilityObject
---@field Items userdata | { [System.Int32]: Barotrauma.Item } | (fun(): Barotrauma.Item)
CS.Barotrauma.Items.Components.Fabricator.AbilityFabricationItemIngredients = {}

---@param items userdata | { [System.Int32]: Barotrauma.Item } | (fun(): Barotrauma.Item)
---@return Barotrauma.Items.Components.Fabricator.AbilityFabricationItemIngredients
function CS.Barotrauma.Items.Components.Fabricator.AbilityFabricationItemIngredients(items) end

---@class Barotrauma.Items.Components.Steering.EventData: System.ValueType
---@field DockingButtonClicked System.Boolean
CS.Barotrauma.Items.Components.Steering.EventData = {}

---@param dockingButtonClicked System.Boolean
---@return Barotrauma.Items.Components.Steering.EventData
function CS.Barotrauma.Items.Components.Steering.EventData(dockingButtonClicked) end

---@class Barotrauma.Items.Components.Steering.ObstacleDebugInfo: System.ValueType
---@field Point1 Microsoft.Xna.Framework.Vector2
---@field Point2 Microsoft.Xna.Framework.Vector2
---@field Intersection Microsoft.Xna.Framework.Vector2|nil
---@field Dot System.Single
---@field AvoidStrength Microsoft.Xna.Framework.Vector2
CS.Barotrauma.Items.Components.Steering.ObstacleDebugInfo = {}

---@param edge Voronoi2.GraphEdge
---@param intersection Microsoft.Xna.Framework.Vector2|nil
---@param dot System.Single
---@param avoidStrength Microsoft.Xna.Framework.Vector2
---@param translation Microsoft.Xna.Framework.Vector2
---@return Barotrauma.Items.Components.Steering.ObstacleDebugInfo
function CS.Barotrauma.Items.Components.Steering.ObstacleDebugInfo(edge, intersection, dot, avoidStrength, translation) end

---@class Barotrauma.Items.Components.PowerDistributor.PowerGroup: System.Object
---@field Name System.String
---@field DisplayName Barotrauma.LocalizedString
---@field SupplyRatio System.Single
---@field DisplayRatio System.Single
---@field ModifiedLoad System.Single
---@field private distributor Barotrauma.Items.Components.PowerDistributor
---@field PowerOut Barotrauma.Items.Components.Connection
---@field RatioInput Barotrauma.Items.Components.Connection
---@field RatioOutput Barotrauma.Items.Components.Connection
---@field private name System.String
---@field private supplyRatio System.Single
---@field Load System.Single
CS.Barotrauma.Items.Components.PowerDistributor.PowerGroup = {}

---@return System.String
function CS.Barotrauma.Items.Components.PowerDistributor.PowerGroup.get_Name() end

---@param value System.String
function CS.Barotrauma.Items.Components.PowerDistributor.PowerGroup.set_Name(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.PowerDistributor.PowerGroup.get_SupplyRatio() end

---@param value System.Single
function CS.Barotrauma.Items.Components.PowerDistributor.PowerGroup.set_SupplyRatio(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.PowerDistributor.PowerGroup.get_DisplayRatio() end

---@param value System.Single
function CS.Barotrauma.Items.Components.PowerDistributor.PowerGroup.set_DisplayRatio(value) end

---@return System.Single
function CS.Barotrauma.Items.Components.PowerDistributor.PowerGroup.get_ModifiedLoad() end

---@param signal Barotrauma.Items.Components.Signal
function CS.Barotrauma.Items.Components.PowerDistributor.PowerGroup.ReceiveRatioSignal(signal) end

function CS.Barotrauma.Items.Components.PowerDistributor.PowerGroup.SendRatioSignal() end

---@param distributor Barotrauma.Items.Components.PowerDistributor
---@param power Barotrauma.Items.Components.Connection
---@param element? System.Xml.Linq.XElement
---@param ratioInput? Barotrauma.Items.Components.Connection
---@param ratioOutput? Barotrauma.Items.Components.Connection
---@return Barotrauma.Items.Components.PowerDistributor.PowerGroup
function CS.Barotrauma.Items.Components.PowerDistributor.PowerGroup(distributor, power, element, ratioInput, ratioOutput) end

---@enum Barotrauma.Items.Components.PowerDistributor.EventType
CS.Barotrauma.Items.Components.PowerDistributor.EventType = {
    NameChange = 0,
    RatioChange = 1
}

---@class Barotrauma.Items.Components.PowerDistributor.EventData: System.ValueType
---@field PowerGroup Barotrauma.Items.Components.PowerDistributor.PowerGroup
---@field EventType Barotrauma.Items.Components.PowerDistributor.EventType
CS.Barotrauma.Items.Components.PowerDistributor.EventData = {}

---@param PowerGroup Barotrauma.Items.Components.PowerDistributor.PowerGroup
---@param EventType Barotrauma.Items.Components.PowerDistributor.EventType
---@return Barotrauma.Items.Components.PowerDistributor.EventData
function CS.Barotrauma.Items.Components.PowerDistributor.EventData(PowerGroup, EventType) end

---@class Barotrauma.Items.Components.Projectile.EventData: System.ValueType
---@field Launch System.Boolean
---@field SpreadCounter System.Byte
CS.Barotrauma.Items.Components.Projectile.EventData = {}

---@param launch System.Boolean
---@param spreadCounter? System.Byte
---@return Barotrauma.Items.Components.Projectile.EventData
function CS.Barotrauma.Items.Components.Projectile.EventData(launch, spreadCounter) end

---@class Barotrauma.Items.Components.Projectile.HitscanResult: System.ValueType
---@field Fixture FarseerPhysics.Dynamics.Fixture
---@field Point Microsoft.Xna.Framework.Vector2
---@field Normal Microsoft.Xna.Framework.Vector2
---@field Fraction System.Single
---@field Submarine Barotrauma.Submarine
CS.Barotrauma.Items.Components.Projectile.HitscanResult = {}

---@param fixture FarseerPhysics.Dynamics.Fixture
---@param point Microsoft.Xna.Framework.Vector2
---@param normal Microsoft.Xna.Framework.Vector2
---@param fraction System.Single
---@param sub Barotrauma.Submarine
---@return Barotrauma.Items.Components.Projectile.HitscanResult
function CS.Barotrauma.Items.Components.Projectile.HitscanResult(fixture, point, normal, fraction, sub) end

---@class Barotrauma.Items.Components.Projectile.Impact: System.ValueType
---@field Fixture FarseerPhysics.Dynamics.Fixture
---@field Normal Microsoft.Xna.Framework.Vector2
---@field LinearVelocity Microsoft.Xna.Framework.Vector2
CS.Barotrauma.Items.Components.Projectile.Impact = {}

---@param fixture FarseerPhysics.Dynamics.Fixture
---@param normal Microsoft.Xna.Framework.Vector2
---@param velocity Microsoft.Xna.Framework.Vector2
---@return Barotrauma.Items.Components.Projectile.Impact
function CS.Barotrauma.Items.Components.Projectile.Impact(fixture, normal, velocity) end

---@enum Barotrauma.Items.Components.Projectile.StickTargetType
CS.Barotrauma.Items.Components.Projectile.StickTargetType = {
    Structure = 0,
    Limb = 1,
    Item = 2,
    Submarine = 3,
    LevelWall = 4,
    Unknown = 5
}

---@enum Barotrauma.Items.Components.Repairable.FixActions
CS.Barotrauma.Items.Components.Repairable.FixActions = {
    None = 0,
    Repair = 1,
    Sabotage = 2,
    Tinker = 3
}

---@class Barotrauma.Items.Components.ButtonTerminal.EventData: System.ValueType
---@field SignalIndex System.Int32
CS.Barotrauma.Items.Components.ButtonTerminal.EventData = {}

---@param signalIndex System.Int32
---@return Barotrauma.Items.Components.ButtonTerminal.EventData
function CS.Barotrauma.Items.Components.ButtonTerminal.EventData(signalIndex) end

---@class Barotrauma.Items.Components.CircuitBox.CreatedWire: System.ValueType
---@field Start Barotrauma.CircuitBoxConnectorIdentifier
---@field End Barotrauma.CircuitBoxConnectorIdentifier
---@field Item userdata
---@field ID System.UInt16
CS.Barotrauma.Items.Components.CircuitBox.CreatedWire = {}

---@param Start Barotrauma.CircuitBoxConnectorIdentifier
---@param __End__ Barotrauma.CircuitBoxConnectorIdentifier
---@param Item userdata
---@param ID System.UInt16
---@return Barotrauma.Items.Components.CircuitBox.CreatedWire
function CS.Barotrauma.Items.Components.CircuitBox.CreatedWire(Start, __End__, Item, ID) end

---@class Barotrauma.Items.Components.CustomInterface.EventData: System.ValueType
---@field BtnElement Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement
CS.Barotrauma.Items.Components.CustomInterface.EventData = {}

---@param btnElement Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement
---@return Barotrauma.Items.Components.CustomInterface.EventData
function CS.Barotrauma.Items.Components.CustomInterface.EventData(btnElement) end

---@class Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement: System.Object
---@field Label System.String
---@field Signal System.String
---@field PropertyName Barotrauma.Identifier
---@field TargetItemComponent Barotrauma.Identifier
---@field TargetOnlyParentProperty System.Boolean
---@field NumberInputMin System.String
---@field NumberInputMax System.String
---@field NumberInputStep System.String
---@field NumberInputDecimalPlaces System.Int32
---@field MaxTextLength System.Int32
---@field InputType Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement.InputTypeOption
---@field NumberType Barotrauma.NumberType|nil
---@field HasPropertyName System.Boolean
---@field ShouldSetProperty System.Boolean
---@field GetValueInterval System.Single
---@field Name System.String
---@field SerializableProperties userdata | { [Barotrauma.Identifier]: Barotrauma.SerializableProperty } | (fun(): userdata)
---@field ContinuousSignal System.Boolean
---@field State System.Boolean
---@field ConnectionName System.String
---@field Connection Barotrauma.Items.Components.Connection
---@field GetValueTimer System.Single
---@field StatusEffects userdata | { [System.Int32]: Barotrauma.StatusEffect } | (fun(): Barotrauma.StatusEffect)
---@field DefaultNumberInputMin System.String
---@field DefaultNumberInputMax System.String
---@field DefaultNumberInputStep System.String
---@field DefaultNumberInputDecimalPlaces System.Int32
CS.Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement = {}

---@return System.String
function CS.Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement.get_Name() end

---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@param parent Barotrauma.Items.Components.CustomInterface
---@param inputType Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement.InputTypeOption
---@return Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement
function CS.Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement(item, element, parent, inputType) end

---@class Barotrauma.Items.Components.Terminal.ServerEventData: System.ValueType
---@field MsgIndex System.Int32
---@field MsgToSend System.String
CS.Barotrauma.Items.Components.Terminal.ServerEventData = {}

---@param msgIndex System.Int32
---@param msgToSend System.String
---@return Barotrauma.Items.Components.Terminal.ServerEventData
function CS.Barotrauma.Items.Components.Terminal.ServerEventData(msgIndex, msgToSend) end

---@class Barotrauma.Items.Components.Wire.ServerEventData: System.ValueType
---@field EventIndex System.Int32
CS.Barotrauma.Items.Components.Wire.ServerEventData = {}

---@param eventIndex System.Int32
---@return Barotrauma.Items.Components.Wire.ServerEventData
function CS.Barotrauma.Items.Components.Wire.ServerEventData(eventIndex) end

---@class Barotrauma.Items.Components.Wire.WireSection: System.Object
---@field Start Microsoft.Xna.Framework.Vector2
---@field End Microsoft.Xna.Framework.Vector2
---@field private start Microsoft.Xna.Framework.Vector2
---@field private end Microsoft.Xna.Framework.Vector2
---@field private angle System.Single
---@field Length System.Single
CS.Barotrauma.Items.Components.Wire.WireSection = {}

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Wire.WireSection.get_Start() end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Items.Components.Wire.WireSection.get_End() end

---@param start Microsoft.Xna.Framework.Vector2
---@param __end__ Microsoft.Xna.Framework.Vector2
---@return Barotrauma.Items.Components.Wire.WireSection
function CS.Barotrauma.Items.Components.Wire.WireSection(start, __end__) end

---@enum Barotrauma.Items.Components.Quality.StatType
CS.Barotrauma.Items.Components.Quality.StatType = {
    Condition = 0,
    ExplosionRadius = 1,
    ExplosionDamage = 2,
    RepairSpeed = 3,
    RepairToolStructureRepairMultiplier = 4,
    RepairToolStructureDamageMultiplier = 5,
    RepairToolDeattachTimeMultiplier = 6,
    FirepowerMultiplier = 7,
    StrikingPowerMultiplier = 8,
    StrikingSpeedMultiplier = 9,
    FiringRateMultiplier = 10
}

---@class Barotrauma.Items.Components.ElectricalDischarger.Node: System.ValueType
---@field WorldPosition Microsoft.Xna.Framework.Vector2
---@field ParentIndex System.Int32
---@field Length System.Single
---@field Angle System.Single
CS.Barotrauma.Items.Components.ElectricalDischarger.Node = {}

---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param parentIndex System.Int32
---@param length? System.Single
---@param angle? System.Single
---@return Barotrauma.Items.Components.ElectricalDischarger.Node
function CS.Barotrauma.Items.Components.ElectricalDischarger.Node(worldPosition, parentIndex, length, angle) end

---@enum Barotrauma.Items.Components.EntitySpawnerComponent.AreaShape
CS.Barotrauma.Items.Components.EntitySpawnerComponent.AreaShape = {
    Rectangle = 0,
    Circle = 1
}

---@enum Barotrauma.Items.Components.Propulsion.UseEnvironment
CS.Barotrauma.Items.Components.Propulsion.UseEnvironment = {
    Air = 0,
    Water = 1,
    Both = 2,
    None = 3
}

---@enum Barotrauma.Items.Components.RangedWeapon.ChargingState
CS.Barotrauma.Items.Components.RangedWeapon.ChargingState = {
    Inactive = 0,
    WindingUp = 1,
    WindingDown = 2
}

---@enum Barotrauma.Items.Components.RepairTool.UseEnvironment
CS.Barotrauma.Items.Components.RepairTool.UseEnvironment = {
    Air = 0,
    Water = 1,
    Both = 2,
    None = 3
}

---@enum Barotrauma.Items.Components.Throwable.ThrowState
CS.Barotrauma.Items.Components.Throwable.ThrowState = {
    None = 0,
    Initiated = 1,
    Throwing = 2
}

---@class Barotrauma.Items.Components.ItemContainer.ActiveContainedItem: System.ValueType
---@field Item Barotrauma.Item
---@field StatusEffect Barotrauma.StatusEffect
---@field ExcludeBroken System.Boolean
---@field ExcludeFullCondition System.Boolean
---@field BlameEquipperForDeath System.Boolean
CS.Barotrauma.Items.Components.ItemContainer.ActiveContainedItem = {}

---@param Item Barotrauma.Item
---@param StatusEffect Barotrauma.StatusEffect
---@param ExcludeBroken System.Boolean
---@param ExcludeFullCondition System.Boolean
---@param BlameEquipperForDeath System.Boolean
---@return Barotrauma.Items.Components.ItemContainer.ActiveContainedItem
function CS.Barotrauma.Items.Components.ItemContainer.ActiveContainedItem(Item, StatusEffect, ExcludeBroken, ExcludeFullCondition, BlameEquipperForDeath) end

---@class Barotrauma.Items.Components.ItemContainer.ContainedItem: System.ValueType
---@field Item Barotrauma.Item
---@field Hide System.Boolean
---@field ItemPos Microsoft.Xna.Framework.Vector2|nil
---@field Rotation System.Single
CS.Barotrauma.Items.Components.ItemContainer.ContainedItem = {}

---@param Item Barotrauma.Item
---@param Hide System.Boolean
---@param ItemPos Microsoft.Xna.Framework.Vector2|nil
---@param Rotation System.Single
---@return Barotrauma.Items.Components.ItemContainer.ContainedItem
function CS.Barotrauma.Items.Components.ItemContainer.ContainedItem(Item, Hide, ItemPos, Rotation) end

---@class Barotrauma.Items.Components.ItemContainer.SlotRestrictions: System.Object
---@field MaxStackSize System.Int32
---@field ContainableItems userdata | { [System.Int32]: Barotrauma.RelatedItem } | (fun(): Barotrauma.RelatedItem)
---@field AutoInject System.Boolean
CS.Barotrauma.Items.Components.ItemContainer.SlotRestrictions = {}

---@overload fun(itemPrefab: Barotrauma.ItemPrefab): System.Boolean
---@overload fun(identifierOrTag: Barotrauma.Identifier): System.Boolean
---@param item Barotrauma.Item
---@return System.Boolean
function CS.Barotrauma.Items.Components.ItemContainer.SlotRestrictions.MatchesItem(item) end

---@param maxStackSize System.Int32
---@param containableItems userdata | { [System.Int32]: Barotrauma.RelatedItem } | (fun(): Barotrauma.RelatedItem)
---@param autoInject System.Boolean
---@return Barotrauma.Items.Components.ItemContainer.SlotRestrictions
function CS.Barotrauma.Items.Components.ItemContainer.SlotRestrictions(maxStackSize, containableItems, autoInject) end

---@class Barotrauma.Items.Components.MiniMap.HullData: System.Object
---@field HullOxygenAmount System.Single|nil
---@field HullWaterAmount System.Single|nil
---@field ReceivedOxygenAmount System.Single|nil
---@field ReceivedWaterAmount System.Single|nil
---@field LastOxygenDataTime System.Double
---@field LastWaterDataTime System.Double
---@field Cards userdata | (fun(): Barotrauma.Items.Components.IdCard)
---@field Distort System.Boolean
---@field DistortionTimer System.Single
---@field LinkedHulls userdata | { [System.Int32]: Barotrauma.Hull } | (fun(): Barotrauma.Hull)
CS.Barotrauma.Items.Components.MiniMap.HullData = {}

---@return Barotrauma.Items.Components.MiniMap.HullData
function CS.Barotrauma.Items.Components.MiniMap.HullData() end

---@enum Barotrauma.Items.Components.Sonar.Mode
CS.Barotrauma.Items.Components.Sonar.Mode = {
    Active = 0,
    Passive = 1
}

---@class Barotrauma.Items.Components.Sonar.ConnectedTransducer: System.Object
---@field Transducer Barotrauma.Items.Components.SonarTransducer
---@field SignalStrength System.Single
---@field DisconnectTimer System.Single
CS.Barotrauma.Items.Components.Sonar.ConnectedTransducer = {}

---@param transducer Barotrauma.Items.Components.SonarTransducer
---@param signalStrength System.Single
---@param disconnectTimer System.Single
---@return Barotrauma.Items.Components.Sonar.ConnectedTransducer
function CS.Barotrauma.Items.Components.Sonar.ConnectedTransducer(transducer, signalStrength, disconnectTimer) end

---@class Barotrauma.Items.Components.Sonar.ActivePing: System.Object
---@field State System.Single
---@field IsDirectional System.Boolean
---@field Direction Microsoft.Xna.Framework.Vector2
---@field PrevPingRadius System.Single
CS.Barotrauma.Items.Components.Sonar.ActivePing = {}

---@return Barotrauma.Items.Components.Sonar.ActivePing
function CS.Barotrauma.Items.Components.Sonar.ActivePing() end

---@class Barotrauma.Items.Components.DelayComponent.DelayedSignal: System.Object
---@field Signal Barotrauma.Items.Components.Signal
---@field SendTimer System.Int32
---@field SendDuration System.Int32
CS.Barotrauma.Items.Components.DelayComponent.DelayedSignal = {}

---@param signal Barotrauma.Items.Components.Signal
---@param sendTimer System.Int32
---@return Barotrauma.Items.Components.DelayComponent.DelayedSignal
function CS.Barotrauma.Items.Components.DelayComponent.DelayedSignal(signal, sendTimer) end

---@enum Barotrauma.Items.Components.FunctionComponent.FunctionType
CS.Barotrauma.Items.Components.FunctionComponent.FunctionType = {
    Round = 0,
    Ceil = 1,
    Floor = 2,
    Factorial = 3,
    AbsoluteValue = 4,
    SquareRoot = 5
}

---@enum Barotrauma.Items.Components.MotionSensor.TargetType
CS.Barotrauma.Items.Components.MotionSensor.TargetType = {
    Human = 1,
    Monster = 2,
    Wall = 4,
    Pet = 8,
    Any = 15
}

---@enum Barotrauma.Items.Components.OscillatorComponent.WaveType
CS.Barotrauma.Items.Components.OscillatorComponent.WaveType = {
    Pulse = 0,
    Sawtooth = 1,
    Sine = 2,
    Square = 3,
    Triangle = 4
}

---@enum Barotrauma.Items.Components.TrigonometricFunctionComponent.FunctionType
CS.Barotrauma.Items.Components.TrigonometricFunctionComponent.FunctionType = {
    Sin = 0,
    Cos = 1,
    Tan = 2,
    Asin = 3,
    Acos = 4,
    Atan = 5
}

---@enum Barotrauma.Items.Components.Turret.ChargingState
CS.Barotrauma.Items.Components.Turret.ChargingState = {
    Inactive = 0,
    WindingUp = 1,
    WindingDown = 2
}

---@enum Barotrauma.Items.Components.Turret.TeamType
CS.Barotrauma.Items.Components.Turret.TeamType = {
    OwnSub = 0,
    Team1 = 1,
    Team2 = 2,
    FriendlyNPC = 3,
    NoneTeam = 4
}

---@class Barotrauma.Items.Components.Turret.EventData: System.ValueType
---@field Projectile Barotrauma.Item
CS.Barotrauma.Items.Components.Turret.EventData = {}

---@param projectile Barotrauma.Item
---@param turret Barotrauma.Items.Components.Turret
---@return Barotrauma.Items.Components.Turret.EventData
function CS.Barotrauma.Items.Components.Turret.EventData(projectile, turret) end

---@enum Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement.InputTypeOption
CS.Barotrauma.Items.Components.CustomInterface.CustomInterfaceElement.InputTypeOption = {
    Number = 0,
    Text = 1,
    Button = 2,
    TickBox = 3
}


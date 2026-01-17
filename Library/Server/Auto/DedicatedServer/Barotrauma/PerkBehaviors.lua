---@meta
---Auto-generated from DedicatedServer
---Namespace: Barotrauma.PerkBehaviors

---@class Barotrauma.PerkBehaviors.GiveTalentPointPerk: Barotrauma.PerkBehaviors.PerkBase
---@field Amount System.Int32
CS.Barotrauma.PerkBehaviors.GiveTalentPointPerk = {}

---@param teamCharacters userdata | (fun(): Barotrauma.Character)
---@param teamSubmarine Barotrauma.Submarine
function CS.Barotrauma.PerkBehaviors.GiveTalentPointPerk.ApplyOnRoundStart(teamCharacters, teamSubmarine) end

---@param element Barotrauma.ContentXElement
---@param prefab Barotrauma.DisembarkPerkPrefab
---@return Barotrauma.PerkBehaviors.GiveTalentPointPerk
function CS.Barotrauma.PerkBehaviors.GiveTalentPointPerk(element, prefab) end

---@enum Barotrauma.PerkBehaviors.PerkSimulation
CS.Barotrauma.PerkBehaviors.PerkSimulation = {
    ServerOnly = 0,
    ServerAndClients = 1
}

---@class Barotrauma.PerkBehaviors.PerkBase: System.Object
---@field Name System.String
---@field SerializableProperties userdata | { [Barotrauma.Identifier]: Barotrauma.SerializableProperty } | (fun(): userdata)
---@field Simulation Barotrauma.PerkBehaviors.PerkSimulation
---@field Prefab Barotrauma.DisembarkPerkPrefab
CS.Barotrauma.PerkBehaviors.PerkBase = {}

---@return Barotrauma.PerkBehaviors.PerkSimulation
function CS.Barotrauma.PerkBehaviors.PerkBase.get_Simulation() end

---@param submarine Barotrauma.SubmarineInfo
---@return System.Boolean
function CS.Barotrauma.PerkBehaviors.PerkBase.CanApply(submarine) end

---@return System.Boolean
function CS.Barotrauma.PerkBehaviors.PerkBase.CanApplyWithoutSubmarine() end

---@param teamCharacters userdata | (fun(): Barotrauma.Character)
---@param teamSubmarine Barotrauma.Submarine
function CS.Barotrauma.PerkBehaviors.PerkBase.ApplyOnRoundStart(teamCharacters, teamSubmarine) end

---@param element Barotrauma.ContentXElement
---@param prefab Barotrauma.DisembarkPerkPrefab
---@param perk Barotrauma.PerkBehaviors.PerkBase
---@return System.Boolean
function CS.Barotrauma.PerkBehaviors.PerkBase.TryLoadFromXml(element, prefab, perk) end

---@protected
---@param element Barotrauma.ContentXElement
---@param prefab Barotrauma.DisembarkPerkPrefab
---@return Barotrauma.PerkBehaviors.PerkBase
function CS.Barotrauma.PerkBehaviors.PerkBase(element, prefab) end

---@class Barotrauma.PerkBehaviors.SpawnItemPerk: Barotrauma.PerkBehaviors.PerkBase
---@field Simulation Barotrauma.PerkBehaviors.PerkSimulation
---@field Identifier Barotrauma.Identifier
---@field Tag Barotrauma.Identifier
---@field MinAmount System.Int32
---@field PerPlayer System.Single
---@field PriorityContainerTag Barotrauma.Identifier
CS.Barotrauma.PerkBehaviors.SpawnItemPerk = {}

---@return Barotrauma.PerkBehaviors.PerkSimulation
function CS.Barotrauma.PerkBehaviors.SpawnItemPerk.get_Simulation() end

---@param teamCharacters userdata | (fun(): Barotrauma.Character)
---@param teamSubmarine Barotrauma.Submarine
function CS.Barotrauma.PerkBehaviors.SpawnItemPerk.ApplyOnRoundStart(teamCharacters, teamSubmarine) end

---@private
---@param prefab Barotrauma.ItemPrefab
---@param submarine Barotrauma.Submarine
---@return Barotrauma.PerkBehaviors.SpawnItemPerk.SuitableContainers
function CS.Barotrauma.PerkBehaviors.SpawnItemPerk.FindSuitableContainers(prefab, submarine) end

---@private
---@param prefab Barotrauma.ItemPrefab
---@param submarine Barotrauma.Submarine
---@param amount System.Int32
function CS.Barotrauma.PerkBehaviors.SpawnItemPerk.SpawnItemInCrate(prefab, submarine, amount) end

---@private
---@param prefab Barotrauma.ItemPrefab
---@param amount System.Int32
---@param containers Barotrauma.PerkBehaviors.SpawnItemPerk.SuitableContainers
---@param submarine Barotrauma.Submarine
function CS.Barotrauma.PerkBehaviors.SpawnItemPerk.SpawnInContainer(prefab, amount, containers, submarine) end

---@param element Barotrauma.ContentXElement
---@param prefab Barotrauma.DisembarkPerkPrefab
---@return Barotrauma.PerkBehaviors.SpawnItemPerk
function CS.Barotrauma.PerkBehaviors.SpawnItemPerk(element, prefab) end

---@class Barotrauma.PerkBehaviors.SubItemSwapPerk: Barotrauma.PerkBehaviors.PerkBase
---@field TargetItem Barotrauma.Identifier
---@field ReplacementItem Barotrauma.Identifier
---@field Simulation Barotrauma.PerkBehaviors.PerkSimulation
CS.Barotrauma.PerkBehaviors.SubItemSwapPerk = {}

---@return Barotrauma.PerkBehaviors.PerkSimulation
function CS.Barotrauma.PerkBehaviors.SubItemSwapPerk.get_Simulation() end

---@param submarine Barotrauma.SubmarineInfo
---@return System.Boolean
function CS.Barotrauma.PerkBehaviors.SubItemSwapPerk.CanApply(submarine) end

---@param teamCharacters userdata | (fun(): Barotrauma.Character)
---@param teamSubmarine Barotrauma.Submarine
function CS.Barotrauma.PerkBehaviors.SubItemSwapPerk.ApplyOnRoundStart(teamCharacters, teamSubmarine) end

---@param element Barotrauma.ContentXElement
---@param prefab Barotrauma.DisembarkPerkPrefab
---@return Barotrauma.PerkBehaviors.SubItemSwapPerk
function CS.Barotrauma.PerkBehaviors.SubItemSwapPerk(element, prefab) end

---@class Barotrauma.PerkBehaviors.UpgradeSubmarinePerk: Barotrauma.PerkBehaviors.PerkBase
---@field UpgradeIdentifier Barotrauma.Identifier
---@field CategoryIdentifier Barotrauma.Identifier
---@field Level System.Int32
---@field Simulation Barotrauma.PerkBehaviors.PerkSimulation
CS.Barotrauma.PerkBehaviors.UpgradeSubmarinePerk = {}

---@return Barotrauma.PerkBehaviors.PerkSimulation
function CS.Barotrauma.PerkBehaviors.UpgradeSubmarinePerk.get_Simulation() end

---@param teamCharacters userdata | (fun(): Barotrauma.Character)
---@param teamSubmarine Barotrauma.Submarine
function CS.Barotrauma.PerkBehaviors.UpgradeSubmarinePerk.ApplyOnRoundStart(teamCharacters, teamSubmarine) end

---@param element Barotrauma.ContentXElement
---@param prefab Barotrauma.DisembarkPerkPrefab
---@return Barotrauma.PerkBehaviors.UpgradeSubmarinePerk
function CS.Barotrauma.PerkBehaviors.UpgradeSubmarinePerk(element, prefab) end

---@class Barotrauma.PerkBehaviors.SpawnItemPerk.SuitableContainers: System.ValueType
---@field PriorityContainers userdata | (fun(): Barotrauma.Items.Components.ItemContainer)
---@field PreferredContainers userdata | (fun(): Barotrauma.Items.Components.ItemContainer)
---@field SecondaryContainers userdata | (fun(): Barotrauma.Items.Components.ItemContainer)
CS.Barotrauma.PerkBehaviors.SpawnItemPerk.SuitableContainers = {}

---@return System.Boolean
function CS.Barotrauma.PerkBehaviors.SpawnItemPerk.SuitableContainers.Any() end

---@param PriorityContainers userdata | (fun(): Barotrauma.Items.Components.ItemContainer)
---@param PreferredContainers userdata | (fun(): Barotrauma.Items.Components.ItemContainer)
---@param SecondaryContainers userdata | (fun(): Barotrauma.Items.Components.ItemContainer)
---@return Barotrauma.PerkBehaviors.SpawnItemPerk.SuitableContainers
function CS.Barotrauma.PerkBehaviors.SpawnItemPerk.SuitableContainers(PriorityContainers, PreferredContainers, SecondaryContainers) end


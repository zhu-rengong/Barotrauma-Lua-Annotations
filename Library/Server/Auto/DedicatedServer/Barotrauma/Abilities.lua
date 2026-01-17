---@meta
---Auto-generated from DedicatedServer
---Namespace: Barotrauma.Abilities

---@class Barotrauma.Abilities.AbilityConditionInFriendlySubmarine: Barotrauma.Abilities.AbilityConditionDataless
CS.Barotrauma.Abilities.AbilityConditionInFriendlySubmarine = {}

---@protected
---@return System.Boolean
function CS.Barotrauma.Abilities.AbilityConditionInFriendlySubmarine.MatchesConditionSpecific() end

do
---@param characterTalent Barotrauma.CharacterTalent
---@param conditionElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.AbilityConditionInFriendlySubmarine
local __ctor = function(characterTalent, conditionElement) end
CS.Barotrauma.Abilities.AbilityConditionInFriendlySubmarine = __ctor
CS.Barotrauma.Abilities.AbilityConditionInFriendlySubmarine.__new = __ctor
end

---@class Barotrauma.Abilities.AbilityConditionNearbyCharacterCount: Barotrauma.Abilities.AbilityConditionDataless
---@field private distance System.Single
---@field private count System.Int32
---@field private targetTypes userdata | (fun(): Barotrauma.Abilities.AbilityCondition.TargetType)
CS.Barotrauma.Abilities.AbilityConditionNearbyCharacterCount = {}

---@protected
---@return System.Boolean
function CS.Barotrauma.Abilities.AbilityConditionNearbyCharacterCount.MatchesConditionSpecific() end

do
---@param characterTalent Barotrauma.CharacterTalent
---@param conditionElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.AbilityConditionNearbyCharacterCount
local __ctor = function(characterTalent, conditionElement) end
CS.Barotrauma.Abilities.AbilityConditionNearbyCharacterCount = __ctor
CS.Barotrauma.Abilities.AbilityConditionNearbyCharacterCount.__new = __ctor
end

---@class Barotrauma.Abilities.AbilityConditionOnMission: Barotrauma.Abilities.AbilityConditionDataless
CS.Barotrauma.Abilities.AbilityConditionOnMission = {}

---@protected
---@return System.Boolean
function CS.Barotrauma.Abilities.AbilityConditionOnMission.MatchesConditionSpecific() end

do
---@param characterTalent Barotrauma.CharacterTalent
---@param conditionElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.AbilityConditionOnMission
local __ctor = function(characterTalent, conditionElement) end
CS.Barotrauma.Abilities.AbilityConditionOnMission = __ctor
CS.Barotrauma.Abilities.AbilityConditionOnMission.__new = __ctor
end

---@class Barotrauma.Abilities.AbilityConditionCharacter: Barotrauma.Abilities.AbilityConditionData
---@field private targetTypes userdata | { [System.Int32]: Barotrauma.Abilities.AbilityCondition.TargetType } | (fun(): Barotrauma.Abilities.AbilityCondition.TargetType)
---@field private conditionals userdata | { [System.Int32]: Barotrauma.PropertyConditional } | (fun(): Barotrauma.PropertyConditional)
---@field private targetAbilityTarget System.Boolean
CS.Barotrauma.Abilities.AbilityConditionCharacter = {}

---@overload fun(abilityObject: Barotrauma.Abilities.AbilityObject): System.Boolean
---@return System.Boolean
function CS.Barotrauma.Abilities.AbilityConditionCharacter.MatchesCondition() end

---@protected
---@param abilityObject Barotrauma.Abilities.AbilityObject
---@return System.Boolean
function CS.Barotrauma.Abilities.AbilityConditionCharacter.MatchesConditionSpecific(abilityObject) end

---@protected
---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Abilities.AbilityConditionCharacter.MatchesCharacter(character) end

do
---@param characterTalent Barotrauma.CharacterTalent
---@param conditionElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.AbilityConditionCharacter
local __ctor = function(characterTalent, conditionElement) end
CS.Barotrauma.Abilities.AbilityConditionCharacter = __ctor
CS.Barotrauma.Abilities.AbilityConditionCharacter.__new = __ctor
end

---@class Barotrauma.Abilities.AbilityConditionCharacterNotLooted: Barotrauma.Abilities.AbilityConditionCharacter
---@field private identifier Barotrauma.Identifier
CS.Barotrauma.Abilities.AbilityConditionCharacterNotLooted = {}

---@protected
---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Abilities.AbilityConditionCharacterNotLooted.MatchesCharacter(character) end

do
---@param characterTalent Barotrauma.CharacterTalent
---@param conditionElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.AbilityConditionCharacterNotLooted
local __ctor = function(characterTalent, conditionElement) end
CS.Barotrauma.Abilities.AbilityConditionCharacterNotLooted = __ctor
CS.Barotrauma.Abilities.AbilityConditionCharacterNotLooted.__new = __ctor
end

---@class Barotrauma.Abilities.AbilityConditionCharacterUnconcious: Barotrauma.Abilities.AbilityConditionCharacter
CS.Barotrauma.Abilities.AbilityConditionCharacterUnconcious = {}

---@protected
---@param character Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Abilities.AbilityConditionCharacterUnconcious.MatchesCharacter(character) end

do
---@param characterTalent Barotrauma.CharacterTalent
---@param conditionElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.AbilityConditionCharacterUnconcious
local __ctor = function(characterTalent, conditionElement) end
CS.Barotrauma.Abilities.AbilityConditionCharacterUnconcious = __ctor
CS.Barotrauma.Abilities.AbilityConditionCharacterUnconcious.__new = __ctor
end

---@class Barotrauma.Abilities.AbilityConditionInSubmarine: Barotrauma.Abilities.AbilityConditionData
---@field private submarineType Barotrauma.SubmarineType|nil
CS.Barotrauma.Abilities.AbilityConditionInSubmarine = {}

---@protected
---@param abilityObject Barotrauma.Abilities.AbilityObject
---@return System.Boolean
function CS.Barotrauma.Abilities.AbilityConditionInSubmarine.MatchesConditionSpecific(abilityObject) end

---@return System.Boolean
function CS.Barotrauma.Abilities.AbilityConditionInSubmarine.MatchesCondition() end

do
---@param characterTalent Barotrauma.CharacterTalent
---@param conditionElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.AbilityConditionInSubmarine
local __ctor = function(characterTalent, conditionElement) end
CS.Barotrauma.Abilities.AbilityConditionInSubmarine = __ctor
CS.Barotrauma.Abilities.AbilityConditionInSubmarine.__new = __ctor
end

---@class Barotrauma.Abilities.AbilityConditionMission: Barotrauma.Abilities.AbilityConditionData
---@field private missionType userdata | (fun(): Barotrauma.Identifier)
---@field private isAffiliated System.Boolean
CS.Barotrauma.Abilities.AbilityConditionMission = {}

---@protected
---@param abilityObject Barotrauma.Abilities.AbilityObject
---@return System.Boolean
function CS.Barotrauma.Abilities.AbilityConditionMission.MatchesConditionSpecific(abilityObject) end

do
---@param characterTalent Barotrauma.CharacterTalent
---@param conditionElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.AbilityConditionMission
local __ctor = function(characterTalent, conditionElement) end
CS.Barotrauma.Abilities.AbilityConditionMission = __ctor
CS.Barotrauma.Abilities.AbilityConditionMission.__new = __ctor
end

---@class Barotrauma.Abilities.IAbilityItemPrefab
---@field ItemPrefab Barotrauma.ItemPrefab
CS.Barotrauma.Abilities.IAbilityItemPrefab = {}

---@return Barotrauma.ItemPrefab
function CS.Barotrauma.Abilities.IAbilityItemPrefab.get_ItemPrefab() end

---@param value Barotrauma.ItemPrefab
function CS.Barotrauma.Abilities.IAbilityItemPrefab.set_ItemPrefab(value) end


---@class Barotrauma.Abilities.IAbilityMission
---@field Mission Barotrauma.Mission
CS.Barotrauma.Abilities.IAbilityMission = {}

---@return Barotrauma.Mission
function CS.Barotrauma.Abilities.IAbilityMission.get_Mission() end

---@param value Barotrauma.Mission
function CS.Barotrauma.Abilities.IAbilityMission.set_Mission(value) end


---@class Barotrauma.Abilities.IAbilityCharacter
---@field Character Barotrauma.Character
CS.Barotrauma.Abilities.IAbilityCharacter = {}

---@return Barotrauma.Character
function CS.Barotrauma.Abilities.IAbilityCharacter.get_Character() end

---@param value Barotrauma.Character
function CS.Barotrauma.Abilities.IAbilityCharacter.set_Character(value) end


---@class Barotrauma.Abilities.IAbilitySubmarine
---@field Submarine Barotrauma.Submarine
CS.Barotrauma.Abilities.IAbilitySubmarine = {}

---@return Barotrauma.Submarine
function CS.Barotrauma.Abilities.IAbilitySubmarine.get_Submarine() end

---@param value Barotrauma.Submarine
function CS.Barotrauma.Abilities.IAbilitySubmarine.set_Submarine(value) end


---@class Barotrauma.Abilities.AbilityCharacter: Barotrauma.Abilities.AbilityObject
---@field Character Barotrauma.Character
CS.Barotrauma.Abilities.AbilityCharacter = {}

do
---@param character Barotrauma.Character
---@return Barotrauma.Abilities.AbilityCharacter
local __ctor = function(character) end
CS.Barotrauma.Abilities.AbilityCharacter = __ctor
CS.Barotrauma.Abilities.AbilityCharacter.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbility: System.Object
---@field CharacterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@field CharacterTalent Barotrauma.CharacterTalent
---@field Character Barotrauma.Character
---@field RequiresAlive System.Boolean
---@field AllowClientSimulation System.Boolean
---@field AppliesEffectOnIntervalUpdate System.Boolean
---@field protected EffectDeltaTime System.Single
---@field private DefaultEffectTime System.Single
CS.Barotrauma.Abilities.CharacterAbility = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbility.get_AllowClientSimulation() end

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbility.get_AppliesEffectOnIntervalUpdate() end

---@protected
---@return System.Single
function CS.Barotrauma.Abilities.CharacterAbility.get_EffectDeltaTime() end

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbility.IsViable() end

---@param addingFirstTime System.Boolean
function CS.Barotrauma.Abilities.CharacterAbility.InitializeAbility(addingFirstTime) end

---@param conditionsMatched System.Boolean
---@param timeSinceLastUpdate System.Single
function CS.Barotrauma.Abilities.CharacterAbility.UpdateCharacterAbility(conditionsMatched, timeSinceLastUpdate) end

---@protected
---@param conditionsMatched System.Boolean
---@param timeSinceLastUpdate System.Single
function CS.Barotrauma.Abilities.CharacterAbility.VerifyState(conditionsMatched, timeSinceLastUpdate) end

---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbility.ApplyAbilityEffect(abilityObject) end

---@protected
---@overload fun(abilityObject: Barotrauma.Abilities.AbilityObject)
function CS.Barotrauma.Abilities.CharacterAbility.ApplyEffect() end

---@protected
function CS.Barotrauma.Abilities.CharacterAbility.LogAbilityObjectMismatch() end

---@param abilityElement Barotrauma.ContentXElement
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param errorMessages? System.Boolean
---@return Barotrauma.Abilities.CharacterAbility
function CS.Barotrauma.Abilities.CharacterAbility.Load(abilityElement, characterAbilityGroup, errorMessages) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbility
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbility = __ctor
CS.Barotrauma.Abilities.CharacterAbility.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityApplyForce: Barotrauma.Abilities.CharacterAbility
---@field AppliesEffectOnIntervalUpdate System.Boolean
---@field private force System.Single
---@field private maxVelocity System.Single
---@field private afflictionIdentifier System.String
---@field private limbTypes userdata | (fun(): Barotrauma.LimbType)
CS.Barotrauma.Abilities.CharacterAbilityApplyForce = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityApplyForce.get_AppliesEffectOnIntervalUpdate() end

---@protected
function CS.Barotrauma.Abilities.CharacterAbilityApplyForce.ApplyEffect() end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityApplyForce
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityApplyForce = __ctor
CS.Barotrauma.Abilities.CharacterAbilityApplyForce.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityApplyStatusEffects: Barotrauma.Abilities.CharacterAbility
---@field AppliesEffectOnIntervalUpdate System.Boolean
---@field AllowClientSimulation System.Boolean
---@field protected statusEffects userdata | { [System.Int32]: Barotrauma.StatusEffect } | (fun(): Barotrauma.StatusEffect)
---@field private applyToSelf System.Boolean
---@field private nearbyCharactersAppliesToSelf System.Boolean
---@field private nearbyCharactersAppliesToAllies System.Boolean
---@field private nearbyCharactersAppliesToEnemies System.Boolean
---@field private applyToSelected System.Boolean
---@field private targets userdata | { [System.Int32]: Barotrauma.ISerializableEntity } | (fun(): Barotrauma.ISerializableEntity)
---@field private effectBeingApplied System.Boolean
---@field private setUser System.Boolean
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffects = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffects.get_AppliesEffectOnIntervalUpdate() end

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffects.get_AllowClientSimulation() end

---@protected
---@param targetCharacter Barotrauma.Character
---@param targetLimb? Barotrauma.Limb
function CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffects.ApplyEffectSpecific(targetCharacter, targetLimb) end

---@protected
---@overload fun(abilityObject: Barotrauma.Abilities.AbilityObject)
function CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffects.ApplyEffect() end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityApplyStatusEffects
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffects = __ctor
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffects.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToAllies: Barotrauma.Abilities.CharacterAbilityApplyStatusEffects
---@field AllowClientSimulation System.Boolean
---@field private allowSelf System.Boolean
---@field private maxDistance System.Single
---@field private inSameRoom System.Boolean
---@field private jobIdentifiers userdata | (fun(): Barotrauma.Identifier)
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToAllies = {}

---@protected
---@overload fun(abilityObject: Barotrauma.Abilities.AbilityObject)
function CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToAllies.ApplyEffect() end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToAllies
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToAllies = __ctor
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToAllies.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToApprenticeship: Barotrauma.Abilities.CharacterAbilityApplyStatusEffects
---@field private invert System.Boolean
---@field private jobPrefabList userdata | (fun(): Barotrauma.JobPrefab)
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToApprenticeship = {}

---@protected
---@overload fun(abilityObject: Barotrauma.Abilities.AbilityObject)
function CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToApprenticeship.ApplyEffect() end

---@param character Barotrauma.Character
---@param jobList userdata | (fun(): Barotrauma.JobPrefab)
---@return Barotrauma.JobPrefab
function CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToApprenticeship.GetApprenticeJob(character, jobList) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToApprenticeship
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToApprenticeship = __ctor
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToApprenticeship.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToAttacker: Barotrauma.Abilities.CharacterAbilityApplyStatusEffects
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToAttacker = {}

---@protected
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToAttacker.ApplyEffect(abilityObject) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToAttacker
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToAttacker = __ctor
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToAttacker.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToLastOrderedCharacter: Barotrauma.Abilities.CharacterAbilityApplyStatusEffects
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToLastOrderedCharacter = {}

---@protected
function CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToLastOrderedCharacter.ApplyEffect() end

---@private
---@param targetCharacter Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToLastOrderedCharacter.IsViableTarget(targetCharacter) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToLastOrderedCharacter
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToLastOrderedCharacter = __ctor
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToLastOrderedCharacter.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToNearestAlly: Barotrauma.Abilities.CharacterAbilityApplyStatusEffects
---@field protected squaredMaxDistance System.Single
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToNearestAlly = {}

---@protected
function CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToNearestAlly.ApplyEffect() end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToNearestAlly
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToNearestAlly = __ctor
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToNearestAlly.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToRandomAlly: Barotrauma.Abilities.CharacterAbilityApplyStatusEffects
---@field AllowClientSimulation System.Boolean
---@field private squaredMaxDistance System.Single
---@field private allowDifferentSub System.Boolean
---@field private allowSelf System.Boolean
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToRandomAlly = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToRandomAlly.get_AllowClientSimulation() end

---@protected
---@overload fun(abilityObject: Barotrauma.Abilities.AbilityObject)
function CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToRandomAlly.ApplyEffect() end

---@private
---@param thisCharacter Barotrauma.Character
function CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToRandomAlly.ApplyEffect(thisCharacter) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToRandomAlly
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToRandomAlly = __ctor
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToRandomAlly.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityApplyStatusEffectToNonHumans: Barotrauma.Abilities.CharacterAbilityApplyStatusEffects
---@field private maxDistance System.Single
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectToNonHumans = {}

---@protected
---@overload fun(abilityObject: Barotrauma.Abilities.AbilityObject)
function CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectToNonHumans.ApplyEffect() end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityApplyStatusEffectToNonHumans
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectToNonHumans = __ctor
CS.Barotrauma.Abilities.CharacterAbilityApplyStatusEffectToNonHumans.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityGainSimultaneousSkill: Barotrauma.Abilities.CharacterAbility
---@field private skillIdentifier Barotrauma.Identifier
---@field private ignoreAbilitySkillGain System.Boolean
---@field private targetAllies System.Boolean
CS.Barotrauma.Abilities.CharacterAbilityGainSimultaneousSkill = {}

---@protected
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityGainSimultaneousSkill.ApplyEffect(abilityObject) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityGainSimultaneousSkill
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityGainSimultaneousSkill = __ctor
CS.Barotrauma.Abilities.CharacterAbilityGainSimultaneousSkill.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityGiveAffliction: Barotrauma.Abilities.CharacterAbility
---@field private afflictionId Barotrauma.Identifier
---@field private strength System.Single
---@field private multiplyStrengthBySkill Barotrauma.Identifier
---@field private setValue System.Boolean
CS.Barotrauma.Abilities.CharacterAbilityGiveAffliction = {}

---@protected
---@param conditionsMatched System.Boolean
---@param timeSinceLastUpdate System.Single
function CS.Barotrauma.Abilities.CharacterAbilityGiveAffliction.VerifyState(conditionsMatched, timeSinceLastUpdate) end

---@protected
---@overload fun(abilityObject: Barotrauma.Abilities.AbilityObject)
function CS.Barotrauma.Abilities.CharacterAbilityGiveAffliction.ApplyEffect() end

---@private
---@param character Barotrauma.Character
function CS.Barotrauma.Abilities.CharacterAbilityGiveAffliction.ApplyAfflictionToCharacter(character) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityGiveAffliction
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityGiveAffliction = __ctor
CS.Barotrauma.Abilities.CharacterAbilityGiveAffliction.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityGiveExperience: Barotrauma.Abilities.CharacterAbility
---@field AppliesEffectOnIntervalUpdate System.Boolean
---@field private amount System.Int32
---@field private level System.Int32
CS.Barotrauma.Abilities.CharacterAbilityGiveExperience = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityGiveExperience.get_AppliesEffectOnIntervalUpdate() end

---@private
---@param targetCharacter Barotrauma.Character
function CS.Barotrauma.Abilities.CharacterAbilityGiveExperience.ApplyEffectSpecific(targetCharacter) end

---@protected
---@overload fun()
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityGiveExperience.ApplyEffect(abilityObject) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityGiveExperience
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityGiveExperience = __ctor
CS.Barotrauma.Abilities.CharacterAbilityGiveExperience.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityGiveFlag: Barotrauma.Abilities.CharacterAbility
---@field private abilityFlag Barotrauma.AbilityFlags
CS.Barotrauma.Abilities.CharacterAbilityGiveFlag = {}

---@param addingFirstTime System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityGiveFlag.InitializeAbility(addingFirstTime) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityGiveFlag
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityGiveFlag = __ctor
CS.Barotrauma.Abilities.CharacterAbilityGiveFlag.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityGiveItemStat: Barotrauma.Abilities.CharacterAbility
---@field private stat Barotrauma.ItemTalentStats
---@field private value System.Single
---@field private stackable System.Boolean
---@field private save System.Boolean
CS.Barotrauma.Abilities.CharacterAbilityGiveItemStat = {}

---@protected
---@param conditionsMatched System.Boolean
---@param timeSinceLastUpdate System.Single
function CS.Barotrauma.Abilities.CharacterAbilityGiveItemStat.VerifyState(conditionsMatched, timeSinceLastUpdate) end

---@protected
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityGiveItemStat.ApplyEffect(abilityObject) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityGiveItemStat
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityGiveItemStat = __ctor
CS.Barotrauma.Abilities.CharacterAbilityGiveItemStat.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityGiveItemStatToTags: Barotrauma.Abilities.CharacterAbility
---@field private stat Barotrauma.ItemTalentStats
---@field private value System.Single
---@field private tags userdata | (fun(): Barotrauma.Identifier)
---@field private stackable System.Boolean
---@field private save System.Boolean
CS.Barotrauma.Abilities.CharacterAbilityGiveItemStatToTags = {}

---@param addingFirstTime System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityGiveItemStatToTags.InitializeAbility(addingFirstTime) end

---@protected
---@param conditionsMatched System.Boolean
---@param timeSinceLastUpdate System.Single
function CS.Barotrauma.Abilities.CharacterAbilityGiveItemStatToTags.VerifyState(conditionsMatched, timeSinceLastUpdate) end

---@protected
function CS.Barotrauma.Abilities.CharacterAbilityGiveItemStatToTags.ApplyEffect() end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityGiveItemStatToTags
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityGiveItemStatToTags = __ctor
CS.Barotrauma.Abilities.CharacterAbilityGiveItemStatToTags.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityGiveMoney: Barotrauma.Abilities.CharacterAbility
---@field AppliesEffectOnIntervalUpdate System.Boolean
---@field private amount System.Int32
---@field private scalingStatIdentifier Barotrauma.Identifier
CS.Barotrauma.Abilities.CharacterAbilityGiveMoney = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityGiveMoney.get_AppliesEffectOnIntervalUpdate() end

---@private
---@param targetCharacter Barotrauma.Character
function CS.Barotrauma.Abilities.CharacterAbilityGiveMoney.ApplyEffectSpecific(targetCharacter) end

---@protected
---@overload fun()
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityGiveMoney.ApplyEffect(abilityObject) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityGiveMoney
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityGiveMoney = __ctor
CS.Barotrauma.Abilities.CharacterAbilityGiveMoney.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityGivePermanentStat: Barotrauma.Abilities.CharacterAbility
---@field AllowClientSimulation System.Boolean
---@field AppliesEffectOnIntervalUpdate System.Boolean
---@field private statIdentifier Barotrauma.Identifier
---@field private statType Barotrauma.StatTypes
---@field private value System.Single
---@field private maxValue System.Single
---@field private targetAllies System.Boolean
---@field private removeOnDeath System.Boolean
---@field private giveOnAddingFirstTime System.Boolean
---@field private setValue System.Boolean
---@field private placeholder Barotrauma.Abilities.PermanentStatPlaceholder
---@field private targetAbilityTarget System.Boolean
CS.Barotrauma.Abilities.CharacterAbilityGivePermanentStat = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityGivePermanentStat.get_AllowClientSimulation() end

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityGivePermanentStat.get_AppliesEffectOnIntervalUpdate() end

---@param addingFirstTime System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityGivePermanentStat.InitializeAbility(addingFirstTime) end

---@protected
---@overload fun()
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityGivePermanentStat.ApplyEffect(abilityObject) end

---@private
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityGivePermanentStat.ApplyEffectSpecific(abilityObject) end

---@param placeholder Barotrauma.Abilities.PermanentStatPlaceholder
---@param original Barotrauma.Identifier
---@return Barotrauma.Identifier
function CS.Barotrauma.Abilities.CharacterAbilityGivePermanentStat.HandlePlaceholders(placeholder, original) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityGivePermanentStat
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityGivePermanentStat = __ctor
CS.Barotrauma.Abilities.CharacterAbilityGivePermanentStat.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityGiveReputation: Barotrauma.Abilities.CharacterAbility
---@field private factionIdentifier Barotrauma.Identifier
---@field private amount System.Single
CS.Barotrauma.Abilities.CharacterAbilityGiveReputation = {}

---@protected
---@overload fun(abilityObject: Barotrauma.Abilities.AbilityObject)
function CS.Barotrauma.Abilities.CharacterAbilityGiveReputation.ApplyEffect() end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityGiveReputation
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityGiveReputation = __ctor
CS.Barotrauma.Abilities.CharacterAbilityGiveReputation.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityGiveResistance: Barotrauma.Abilities.CharacterAbility
---@field private resistanceId Barotrauma.Identifier
---@field private multiplier System.Single
CS.Barotrauma.Abilities.CharacterAbilityGiveResistance = {}

---@param addingFirstTime System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityGiveResistance.InitializeAbility(addingFirstTime) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityGiveResistance
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityGiveResistance = __ctor
CS.Barotrauma.Abilities.CharacterAbilityGiveResistance.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityGiveStat: Barotrauma.Abilities.CharacterAbility
---@field private statType Barotrauma.StatTypes
---@field private value System.Single
CS.Barotrauma.Abilities.CharacterAbilityGiveStat = {}

---@param addingFirstTime System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityGiveStat.InitializeAbility(addingFirstTime) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityGiveStat
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityGiveStat = __ctor
CS.Barotrauma.Abilities.CharacterAbilityGiveStat.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityGiveTalentPoints: Barotrauma.Abilities.CharacterAbility
---@field private amount System.Int32
CS.Barotrauma.Abilities.CharacterAbilityGiveTalentPoints = {}

---@param addingFirstTime System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityGiveTalentPoints.InitializeAbility(addingFirstTime) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityGiveTalentPoints
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityGiveTalentPoints = __ctor
CS.Barotrauma.Abilities.CharacterAbilityGiveTalentPoints.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityGiveTalentPointsToAllies: Barotrauma.Abilities.CharacterAbility
---@field private amount System.Int32
CS.Barotrauma.Abilities.CharacterAbilityGiveTalentPointsToAllies = {}

---@param addingFirstTime System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityGiveTalentPointsToAllies.InitializeAbility(addingFirstTime) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityGiveTalentPointsToAllies
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityGiveTalentPointsToAllies = __ctor
CS.Barotrauma.Abilities.CharacterAbilityGiveTalentPointsToAllies.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityIncreaseSkill: Barotrauma.Abilities.CharacterAbility
---@field AppliesEffectOnIntervalUpdate System.Boolean
---@field private skillIdentifier Barotrauma.Identifier
---@field private skillIncrease System.Single
CS.Barotrauma.Abilities.CharacterAbilityIncreaseSkill = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityIncreaseSkill.get_AppliesEffectOnIntervalUpdate() end

---@protected
---@overload fun(abilityObject: Barotrauma.Abilities.AbilityObject)
function CS.Barotrauma.Abilities.CharacterAbilityIncreaseSkill.ApplyEffect() end

---@private
---@param character Barotrauma.Character
function CS.Barotrauma.Abilities.CharacterAbilityIncreaseSkill.ApplyEffectSpecific(character) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityIncreaseSkill
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityIncreaseSkill = __ctor
CS.Barotrauma.Abilities.CharacterAbilityIncreaseSkill.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityMarkAsLooted: Barotrauma.Abilities.CharacterAbility
---@field private identifier Barotrauma.Identifier
CS.Barotrauma.Abilities.CharacterAbilityMarkAsLooted = {}

---@protected
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityMarkAsLooted.ApplyEffect(abilityObject) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityMarkAsLooted
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityMarkAsLooted = __ctor
CS.Barotrauma.Abilities.CharacterAbilityMarkAsLooted.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityModifyAffliction: Barotrauma.Abilities.CharacterAbility
---@field private afflictionIdentifiers Barotrauma.Identifier[]
---@field private replaceWith Barotrauma.Identifier
---@field private addedMultiplier System.Single
CS.Barotrauma.Abilities.CharacterAbilityModifyAffliction = {}

---@protected
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityModifyAffliction.ApplyEffect(abilityObject) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityModifyAffliction
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityModifyAffliction = __ctor
CS.Barotrauma.Abilities.CharacterAbilityModifyAffliction.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityModifyAttackData: Barotrauma.Abilities.CharacterAbility
---@field private afflictions userdata | { [System.Int32]: Barotrauma.Affliction } | (fun(): Barotrauma.Affliction)
---@field private addedDamageMultiplier System.Single
---@field private addedPenetration System.Single
---@field private implode System.Boolean
CS.Barotrauma.Abilities.CharacterAbilityModifyAttackData = {}

---@protected
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityModifyAttackData.ApplyEffect(abilityObject) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityModifyAttackData
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityModifyAttackData = __ctor
CS.Barotrauma.Abilities.CharacterAbilityModifyAttackData.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityModifyFlag: Barotrauma.Abilities.CharacterAbility
---@field AllowClientSimulation System.Boolean
---@field private abilityFlag Barotrauma.AbilityFlags
---@field private lastState System.Boolean
CS.Barotrauma.Abilities.CharacterAbilityModifyFlag = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityModifyFlag.get_AllowClientSimulation() end

---@protected
---@param conditionsMatched System.Boolean
---@param timeSinceLastUpdate System.Single
function CS.Barotrauma.Abilities.CharacterAbilityModifyFlag.VerifyState(conditionsMatched, timeSinceLastUpdate) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityModifyFlag
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityModifyFlag = __ctor
CS.Barotrauma.Abilities.CharacterAbilityModifyFlag.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityModifyResistance: Barotrauma.Abilities.CharacterAbility
---@field AllowClientSimulation System.Boolean
---@field private resistanceId Barotrauma.Identifier
---@field private multiplier System.Single
---@field private lastState System.Boolean
CS.Barotrauma.Abilities.CharacterAbilityModifyResistance = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityModifyResistance.get_AllowClientSimulation() end

---@param conditionsMatched System.Boolean
---@param timeSinceLastUpdate System.Single
function CS.Barotrauma.Abilities.CharacterAbilityModifyResistance.UpdateCharacterAbility(conditionsMatched, timeSinceLastUpdate) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityModifyResistance
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityModifyResistance = __ctor
CS.Barotrauma.Abilities.CharacterAbilityModifyResistance.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityModifyStat: Barotrauma.Abilities.CharacterAbility
---@field AllowClientSimulation System.Boolean
---@field private statType Barotrauma.StatTypes
---@field private value System.Single
---@field private lastState System.Boolean
CS.Barotrauma.Abilities.CharacterAbilityModifyStat = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityModifyStat.get_AllowClientSimulation() end

---@param addingFirstTime System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityModifyStat.InitializeAbility(addingFirstTime) end

---@protected
---@param conditionsMatched System.Boolean
---@param timeSinceLastUpdate System.Single
function CS.Barotrauma.Abilities.CharacterAbilityModifyStat.VerifyState(conditionsMatched, timeSinceLastUpdate) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityModifyStat
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityModifyStat = __ctor
CS.Barotrauma.Abilities.CharacterAbilityModifyStat.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityModifyStatToFlooding: Barotrauma.Abilities.CharacterAbility
---@field AllowClientSimulation System.Boolean
---@field private statType Barotrauma.StatTypes
---@field private maxValue System.Single
---@field private lastValue System.Single
CS.Barotrauma.Abilities.CharacterAbilityModifyStatToFlooding = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityModifyStatToFlooding.get_AllowClientSimulation() end

---@protected
---@param conditionsMatched System.Boolean
---@param timeSinceLastUpdate System.Single
function CS.Barotrauma.Abilities.CharacterAbilityModifyStatToFlooding.VerifyState(conditionsMatched, timeSinceLastUpdate) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityModifyStatToFlooding
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityModifyStatToFlooding = __ctor
CS.Barotrauma.Abilities.CharacterAbilityModifyStatToFlooding.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityModifyStatToLevel: Barotrauma.Abilities.CharacterAbility
---@field AllowClientSimulation System.Boolean
---@field private statType Barotrauma.StatTypes
---@field private statPerLevel System.Single
---@field private maxLevel System.Int32
---@field private lastValue System.Single
CS.Barotrauma.Abilities.CharacterAbilityModifyStatToLevel = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityModifyStatToLevel.get_AllowClientSimulation() end

---@protected
---@param conditionsMatched System.Boolean
---@param timeSinceLastUpdate System.Single
function CS.Barotrauma.Abilities.CharacterAbilityModifyStatToLevel.VerifyState(conditionsMatched, timeSinceLastUpdate) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityModifyStatToLevel
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityModifyStatToLevel = __ctor
CS.Barotrauma.Abilities.CharacterAbilityModifyStatToLevel.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityModifyStatToSkill: Barotrauma.Abilities.CharacterAbility
---@field AllowClientSimulation System.Boolean
---@field private statType Barotrauma.StatTypes
---@field private maxValue System.Single
---@field private skillIdentifier Barotrauma.Identifier
---@field private useAll System.Boolean
---@field private lastValue System.Single
CS.Barotrauma.Abilities.CharacterAbilityModifyStatToSkill = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityModifyStatToSkill.get_AllowClientSimulation() end

---@protected
---@param conditionsMatched System.Boolean
---@param timeSinceLastUpdate System.Single
function CS.Barotrauma.Abilities.CharacterAbilityModifyStatToSkill.VerifyState(conditionsMatched, timeSinceLastUpdate) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityModifyStatToSkill
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityModifyStatToSkill = __ctor
CS.Barotrauma.Abilities.CharacterAbilityModifyStatToSkill.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityModifyValue: Barotrauma.Abilities.CharacterAbility
---@field AllowClientSimulation System.Boolean
---@field private addedValue System.Single
---@field private multiplyValue System.Single
CS.Barotrauma.Abilities.CharacterAbilityModifyValue = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityModifyValue.get_AllowClientSimulation() end

---@protected
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityModifyValue.ApplyEffect(abilityObject) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityModifyValue
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityModifyValue = __ctor
CS.Barotrauma.Abilities.CharacterAbilityModifyValue.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityPutItem: Barotrauma.Abilities.CharacterAbility
---@field AppliesEffectOnIntervalUpdate System.Boolean
---@field private itemIdentifier Barotrauma.Identifier
---@field private amount System.Int32
CS.Barotrauma.Abilities.CharacterAbilityPutItem = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityPutItem.get_AppliesEffectOnIntervalUpdate() end

---@protected
function CS.Barotrauma.Abilities.CharacterAbilityPutItem.ApplyEffect() end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityPutItem
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityPutItem = __ctor
CS.Barotrauma.Abilities.CharacterAbilityPutItem.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityReduceAffliction: Barotrauma.Abilities.CharacterAbility
---@field private afflictionId Barotrauma.Identifier
---@field private amount System.Single
CS.Barotrauma.Abilities.CharacterAbilityReduceAffliction = {}

---@protected
---@overload fun(abilityObject: Barotrauma.Abilities.AbilityObject)
function CS.Barotrauma.Abilities.CharacterAbilityReduceAffliction.ApplyEffect() end

---@private
---@param character Barotrauma.Character
function CS.Barotrauma.Abilities.CharacterAbilityReduceAffliction.ApplyEffectToCharacter(character) end

---@protected
---@param conditionsMatched System.Boolean
---@param timeSinceLastUpdate System.Single
function CS.Barotrauma.Abilities.CharacterAbilityReduceAffliction.VerifyState(conditionsMatched, timeSinceLastUpdate) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityReduceAffliction
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityReduceAffliction = __ctor
CS.Barotrauma.Abilities.CharacterAbilityReduceAffliction.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityRemoveRandomIngredient: Barotrauma.Abilities.CharacterAbility
---@field private condition Barotrauma.Abilities.AbilityConditionItem
CS.Barotrauma.Abilities.CharacterAbilityRemoveRandomIngredient = {}

---@protected
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityRemoveRandomIngredient.ApplyEffect(abilityObject) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityRemoveRandomIngredient
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityRemoveRandomIngredient = __ctor
CS.Barotrauma.Abilities.CharacterAbilityRemoveRandomIngredient.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityReplaceAffliction: Barotrauma.Abilities.CharacterAbility
---@field private afflictionId Barotrauma.Identifier
---@field private newAfflictionId Barotrauma.Identifier
---@field private strengthMultiplier System.Single
CS.Barotrauma.Abilities.CharacterAbilityReplaceAffliction = {}

---@protected
function CS.Barotrauma.Abilities.CharacterAbilityReplaceAffliction.ApplyEffect() end

---@protected
---@param conditionsMatched System.Boolean
---@param timeSinceLastUpdate System.Single
function CS.Barotrauma.Abilities.CharacterAbilityReplaceAffliction.VerifyState(conditionsMatched, timeSinceLastUpdate) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityReplaceAffliction
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityReplaceAffliction = __ctor
CS.Barotrauma.Abilities.CharacterAbilityReplaceAffliction.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityResetPermanentStat: Barotrauma.Abilities.CharacterAbility
---@field AppliesEffectOnIntervalUpdate System.Boolean
---@field AllowClientSimulation System.Boolean
---@field private statIdentifier Barotrauma.Identifier
CS.Barotrauma.Abilities.CharacterAbilityResetPermanentStat = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityResetPermanentStat.get_AppliesEffectOnIntervalUpdate() end

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityResetPermanentStat.get_AllowClientSimulation() end

---@protected
---@overload fun()
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityResetPermanentStat.ApplyEffect(abilityObject) end

---@private
function CS.Barotrauma.Abilities.CharacterAbilityResetPermanentStat.ApplyEffectSpecific() end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityResetPermanentStat
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityResetPermanentStat = __ctor
CS.Barotrauma.Abilities.CharacterAbilityResetPermanentStat.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilitySetMetadataInt: Barotrauma.Abilities.CharacterAbility
---@field private identifier Barotrauma.Identifier
---@field private value System.Int32
CS.Barotrauma.Abilities.CharacterAbilitySetMetadataInt = {}

---@param addingFirstTime System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilitySetMetadataInt.InitializeAbility(addingFirstTime) end

---@protected
---@overload fun(abilityObject: Barotrauma.Abilities.AbilityObject)
function CS.Barotrauma.Abilities.CharacterAbilitySetMetadataInt.ApplyEffect() end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilitySetMetadataInt
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilitySetMetadataInt = __ctor
CS.Barotrauma.Abilities.CharacterAbilitySetMetadataInt.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilitySpawnItemsToContainer: Barotrauma.Abilities.CharacterAbility
---@field private statusEffects userdata | { [System.Int32]: Barotrauma.StatusEffect } | (fun(): Barotrauma.StatusEffect)
---@field private openedContainers userdata | { [System.Int32]: Barotrauma.Item } | (fun(): Barotrauma.Item)
---@field private randomChance System.Single
---@field private oncePerContainer System.Boolean
CS.Barotrauma.Abilities.CharacterAbilitySpawnItemsToContainer = {}

---@protected
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilitySpawnItemsToContainer.ApplyEffect(abilityObject) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilitySpawnItemsToContainer
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilitySpawnItemsToContainer = __ctor
CS.Barotrauma.Abilities.CharacterAbilitySpawnItemsToContainer.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityUpgradeSubmarine: Barotrauma.Abilities.CharacterAbility
---@field AllowClientSimulation System.Boolean
---@field private upgradePrefab Barotrauma.UpgradePrefab
---@field private upgradeCategory Barotrauma.UpgradeCategory
---@field level System.Int32
---@field private giveOnAddingFirstTime System.Boolean
CS.Barotrauma.Abilities.CharacterAbilityUpgradeSubmarine = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityUpgradeSubmarine.get_AllowClientSimulation() end

---@protected
---@overload fun()
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityUpgradeSubmarine.ApplyEffect(abilityObject) end

---@param addingFirstTime System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityUpgradeSubmarine.InitializeAbility(addingFirstTime) end

---@private
function CS.Barotrauma.Abilities.CharacterAbilityUpgradeSubmarine.ApplyEffectSpecific() end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityUpgradeSubmarine
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityUpgradeSubmarine = __ctor
CS.Barotrauma.Abilities.CharacterAbilityUpgradeSubmarine.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityAlienHoarder: Barotrauma.Abilities.CharacterAbility
---@field private addedDamageMultiplierPerItem System.Single
---@field private maxAddedDamageMultiplier System.Single
---@field private tags System.String[]
CS.Barotrauma.Abilities.CharacterAbilityAlienHoarder = {}

---@protected
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityAlienHoarder.ApplyEffect(abilityObject) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityAlienHoarder
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityAlienHoarder = __ctor
CS.Barotrauma.Abilities.CharacterAbilityAlienHoarder.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityApprenticeship: Barotrauma.Abilities.CharacterAbility
---@field private ignoreAbilitySkillGain System.Boolean
CS.Barotrauma.Abilities.CharacterAbilityApprenticeship = {}

---@protected
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityApprenticeship.ApplyEffect(abilityObject) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityApprenticeship
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityApprenticeship = __ctor
CS.Barotrauma.Abilities.CharacterAbilityApprenticeship.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityAtmosMachine: Barotrauma.Abilities.CharacterAbility
---@field private addedValue System.Single
---@field private tags Barotrauma.Identifier[]
---@field private maxMultiplyCount System.Int32
CS.Barotrauma.Abilities.CharacterAbilityAtmosMachine = {}

---@protected
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityAtmosMachine.ApplyEffect(abilityObject) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityAtmosMachine
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityAtmosMachine = __ctor
CS.Barotrauma.Abilities.CharacterAbilityAtmosMachine.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityBountyHunter: Barotrauma.Abilities.CharacterAbility
---@field private vitalityPercentage System.Single
CS.Barotrauma.Abilities.CharacterAbilityBountyHunter = {}

---@protected
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityBountyHunter.ApplyEffect(abilityObject) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityBountyHunter
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityBountyHunter = __ctor
CS.Barotrauma.Abilities.CharacterAbilityBountyHunter.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityByTheBook: Barotrauma.Abilities.CharacterAbility
---@field private moneyAmount System.Int32
---@field private experienceAmount System.Int32
---@field private max System.Int32
CS.Barotrauma.Abilities.CharacterAbilityByTheBook = {}

---@protected
function CS.Barotrauma.Abilities.CharacterAbilityByTheBook.ApplyEffect() end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityByTheBook
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityByTheBook = __ctor
CS.Barotrauma.Abilities.CharacterAbilityByTheBook.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityInsurancePolicy: Barotrauma.Abilities.CharacterAbility
---@field AppliesEffectOnIntervalUpdate System.Boolean
---@field private moneyPerMission System.Int32
CS.Barotrauma.Abilities.CharacterAbilityInsurancePolicy = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityInsurancePolicy.get_AppliesEffectOnIntervalUpdate() end

---@protected
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityInsurancePolicy.ApplyEffect(abilityObject) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityInsurancePolicy
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityInsurancePolicy = __ctor
CS.Barotrauma.Abilities.CharacterAbilityInsurancePolicy.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityMultitasker: Barotrauma.Abilities.CharacterAbility
---@field private lastSkillIdentifier Barotrauma.Identifier
CS.Barotrauma.Abilities.CharacterAbilityMultitasker = {}

---@protected
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityMultitasker.ApplyEffect(abilityObject) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityMultitasker
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityMultitasker = __ctor
CS.Barotrauma.Abilities.CharacterAbilityMultitasker.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityPsychoClown: Barotrauma.Abilities.CharacterAbility
---@field AllowClientSimulation System.Boolean
---@field private statType Barotrauma.StatTypes
---@field private minValue System.Single
---@field private maxValue System.Single
---@field private afflictionIdentifier System.String
---@field private lastValue System.Single
CS.Barotrauma.Abilities.CharacterAbilityPsychoClown = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityPsychoClown.get_AllowClientSimulation() end

---@protected
---@param conditionsMatched System.Boolean
---@param timeSinceLastUpdate System.Single
function CS.Barotrauma.Abilities.CharacterAbilityPsychoClown.VerifyState(conditionsMatched, timeSinceLastUpdate) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityPsychoClown
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityPsychoClown = __ctor
CS.Barotrauma.Abilities.CharacterAbilityPsychoClown.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityRegenerateLoot: Barotrauma.Abilities.CharacterAbility
---@field private randomChance System.Single
---@field private randomChancePerItem System.Single
---@field private openedContainers userdata | (fun(): Barotrauma.Item)
CS.Barotrauma.Abilities.CharacterAbilityRegenerateLoot = {}

---@protected
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityRegenerateLoot.ApplyEffect(abilityObject) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityRegenerateLoot
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityRegenerateLoot = __ctor
CS.Barotrauma.Abilities.CharacterAbilityRegenerateLoot.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityTandemFire: Barotrauma.Abilities.CharacterAbilityApplyStatusEffectsToNearestAlly
---@field private tag Barotrauma.Identifier
CS.Barotrauma.Abilities.CharacterAbilityTandemFire = {}

---@protected
function CS.Barotrauma.Abilities.CharacterAbilityTandemFire.ApplyEffect() end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityTandemFire
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityTandemFire = __ctor
CS.Barotrauma.Abilities.CharacterAbilityTandemFire.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityUnlockApprenticeshipTalentTree: Barotrauma.Abilities.CharacterAbility
---@field AllowClientSimulation System.Boolean
CS.Barotrauma.Abilities.CharacterAbilityUnlockApprenticeshipTalentTree = {}

---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityUnlockApprenticeshipTalentTree.get_AllowClientSimulation() end

---@param addingFirstTime System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityUnlockApprenticeshipTalentTree.InitializeAbility(addingFirstTime) end

---@protected
---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityUnlockApprenticeshipTalentTree.ApplyEffect(abilityObject) end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityUnlockApprenticeshipTalentTree
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityUnlockApprenticeshipTalentTree = __ctor
CS.Barotrauma.Abilities.CharacterAbilityUnlockApprenticeshipTalentTree.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityWarStories: Barotrauma.Abilities.CharacterAbility
---@field private targetStat Barotrauma.Identifier
---@field private normalQualityThreshold System.Single
---@field private goodQualityThreshold System.Single
---@field private excellentQualityThreshold System.Single
---@field private masterworkQualityThreshold System.Single
---@field private prefab Barotrauma.ItemPrefab
CS.Barotrauma.Abilities.CharacterAbilityWarStories = {}

---@protected
---@overload fun(abilityObject: Barotrauma.Abilities.AbilityObject)
function CS.Barotrauma.Abilities.CharacterAbilityWarStories.ApplyEffect() end

do
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroup
---@param abilityElement Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityWarStories
local __ctor = function(characterAbilityGroup, abilityElement) end
CS.Barotrauma.Abilities.CharacterAbilityWarStories = __ctor
CS.Barotrauma.Abilities.CharacterAbilityWarStories.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityGroup: System.Object
---@field CharacterTalent Barotrauma.CharacterTalent
---@field Character Barotrauma.Character
---@field IsActive System.Boolean
---@field AbilityEffectType Barotrauma.AbilityEffectType
---@field protected maxTriggerCount System.Int32
---@field protected timesTriggered System.Int32
---@field protected abilityConditions userdata | { [System.Int32]: Barotrauma.Abilities.AbilityCondition } | (fun(): Barotrauma.Abilities.AbilityCondition)
---@field protected characterAbilities userdata | { [System.Int32]: Barotrauma.Abilities.CharacterAbility } | (fun(): Barotrauma.Abilities.CharacterAbility)
---@field protected fallbackAbilities userdata | { [System.Int32]: Barotrauma.Abilities.CharacterAbility } | (fun(): Barotrauma.Abilities.CharacterAbility)
CS.Barotrauma.Abilities.CharacterAbilityGroup = {}

---@param addingFirstTime System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityGroup.ActivateAbilityGroup(addingFirstTime) end

---@private
---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityGroup.CheckActivatingCondition() end

---@param conditionElements Barotrauma.ContentXElement
function CS.Barotrauma.Abilities.CharacterAbilityGroup.LoadConditions(conditionElements) end

---@param characterAbility Barotrauma.Abilities.CharacterAbility
function CS.Barotrauma.Abilities.CharacterAbilityGroup.AddAbility(characterAbility) end

---@param characterAbility Barotrauma.Abilities.CharacterAbility
function CS.Barotrauma.Abilities.CharacterAbilityGroup.AddFallbackAbility(characterAbility) end

---@private
---@param characterTalent Barotrauma.CharacterTalent
---@param conditionElement Barotrauma.ContentXElement
---@param errorMessages? System.Boolean
---@return Barotrauma.Abilities.AbilityCondition
function CS.Barotrauma.Abilities.CharacterAbilityGroup.ConstructCondition(characterTalent, conditionElement, errorMessages) end

---@private
---@param abilityElements Barotrauma.ContentXElement
function CS.Barotrauma.Abilities.CharacterAbilityGroup.LoadAbilities(abilityElements) end

---@private
---@param abilityElements Barotrauma.ContentXElement
function CS.Barotrauma.Abilities.CharacterAbilityGroup.LoadFallbackAbilities(abilityElements) end

---@private
---@param abilityElement Barotrauma.ContentXElement
---@param characterTalent Barotrauma.CharacterTalent
---@return Barotrauma.Abilities.CharacterAbility
function CS.Barotrauma.Abilities.CharacterAbilityGroup.ConstructAbility(abilityElement, characterTalent) end

---@param characterTalent Barotrauma.CharacterTalent
---@param statusEffectElements Barotrauma.ContentXElement
---@return userdata | { [System.Int32]: Barotrauma.StatusEffect } | (fun(): Barotrauma.StatusEffect)
function CS.Barotrauma.Abilities.CharacterAbilityGroup.ParseStatusEffects(characterTalent, statusEffectElements) end

---@param statTypeString System.String
---@param debugIdentifier System.String
---@return Barotrauma.StatTypes
function CS.Barotrauma.Abilities.CharacterAbilityGroup.ParseStatType(statTypeString, debugIdentifier) end

---@param characterTalent Barotrauma.CharacterTalent
---@param afflictionElements Barotrauma.ContentXElement
---@return userdata | { [System.Int32]: Barotrauma.Affliction } | (fun(): Barotrauma.Affliction)
function CS.Barotrauma.Abilities.CharacterAbilityGroup.ParseAfflictions(characterTalent, afflictionElements) end

---@param flagTypeString System.String
---@param debugIdentifier System.String
---@return Barotrauma.AbilityFlags
function CS.Barotrauma.Abilities.CharacterAbilityGroup.ParseFlagType(flagTypeString, debugIdentifier) end

do
---@param abilityEffectType Barotrauma.AbilityEffectType
---@param characterTalent Barotrauma.CharacterTalent
---@param abilityElementGroup Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityGroup
local __ctor = function(abilityEffectType, characterTalent, abilityElementGroup) end
CS.Barotrauma.Abilities.CharacterAbilityGroup = __ctor
CS.Barotrauma.Abilities.CharacterAbilityGroup.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityGroupEffect: Barotrauma.Abilities.CharacterAbilityGroup
---@field private IsOverTriggerCount System.Boolean
CS.Barotrauma.Abilities.CharacterAbilityGroupEffect = {}

---@param abilityObject Barotrauma.Abilities.AbilityObject
function CS.Barotrauma.Abilities.CharacterAbilityGroupEffect.CheckAbilityGroup(abilityObject) end

---@private
---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityGroupEffect.get_IsOverTriggerCount() end

---@private
---@param abilityObject Barotrauma.Abilities.AbilityObject
---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityGroupEffect.IsApplicable(abilityObject) end

do
---@param abilityEffectType Barotrauma.AbilityEffectType
---@param characterTalent Barotrauma.CharacterTalent
---@param abilityElementGroup Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityGroupEffect
local __ctor = function(abilityEffectType, characterTalent, abilityElementGroup) end
CS.Barotrauma.Abilities.CharacterAbilityGroupEffect = __ctor
CS.Barotrauma.Abilities.CharacterAbilityGroupEffect.__new = __ctor
end

---@class Barotrauma.Abilities.CharacterAbilityGroupInterval: Barotrauma.Abilities.CharacterAbilityGroup
---@field TimeSinceLastUpdate System.Single
---@field private interval System.Single
---@field private effectDelay System.Single
---@field private effectDelayTimer System.Single
CS.Barotrauma.Abilities.CharacterAbilityGroupInterval = {}

---@param deltaTime System.Single
function CS.Barotrauma.Abilities.CharacterAbilityGroupInterval.UpdateAbilityGroup(deltaTime) end

---@private
---@return System.Boolean
function CS.Barotrauma.Abilities.CharacterAbilityGroupInterval.AllConditionsMatched() end

do
---@param abilityEffectType Barotrauma.AbilityEffectType
---@param characterTalent Barotrauma.CharacterTalent
---@param abilityElementGroup Barotrauma.ContentXElement
---@return Barotrauma.Abilities.CharacterAbilityGroupInterval
local __ctor = function(abilityEffectType, characterTalent, abilityElementGroup) end
CS.Barotrauma.Abilities.CharacterAbilityGroupInterval = __ctor
CS.Barotrauma.Abilities.CharacterAbilityGroupInterval.__new = __ctor
end

---@enum Barotrauma.Abilities.AbilityConditionAllyNearby.NearbyCharacterTruthy
CS.Barotrauma.Abilities.AbilityConditionAllyNearby.NearbyCharacterTruthy = {
    OneCharacterMatches = 0,
    NoCharacterMatches = 1
}


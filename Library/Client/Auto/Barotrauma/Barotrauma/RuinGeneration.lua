---@meta
---Auto-generated from Barotrauma
---Namespace: Barotrauma.RuinGeneration

---@class Barotrauma.RuinGeneration.RuinGenerationParams: Barotrauma.OutpostGenerationParams
---@field Name System.String
---@field IsMissionReady System.Boolean
---@field RuinParams userdata | { [Barotrauma.Identifier]: Barotrauma.RuinGeneration.RuinGenerationParams } | { [System.String]: Barotrauma.RuinGeneration.RuinGenerationParams } | (fun(): Barotrauma.RuinGeneration.RuinGenerationParams)
CS.Barotrauma.RuinGeneration.RuinGenerationParams = {}

---@return System.String
function CS.Barotrauma.RuinGeneration.RuinGenerationParams.get_Name() end

function CS.Barotrauma.RuinGeneration.RuinGenerationParams.SaveAll() end

function CS.Barotrauma.RuinGeneration.RuinGenerationParams.Dispose() end

do
---@overload fun(): Barotrauma.RuinGeneration.RuinGenerationParams
---@param element Barotrauma.ContentXElement
---@param file Barotrauma.RuinConfigFile
---@return Barotrauma.RuinGeneration.RuinGenerationParams
local __ctor = function(element, file) end
CS.Barotrauma.RuinGeneration.RuinGenerationParams = __ctor
CS.Barotrauma.RuinGeneration.RuinGenerationParams.__new = __ctor
end


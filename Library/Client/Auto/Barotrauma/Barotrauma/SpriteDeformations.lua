---@meta
---Auto-generated from Barotrauma
---Namespace: Barotrauma.SpriteDeformations

---@class Barotrauma.SpriteDeformations.CustomDeformationParams: Barotrauma.SpriteDeformations.SpriteDeformationParams
---@field Frequency System.Single
---@field Amplitude System.Single
CS.Barotrauma.SpriteDeformations.CustomDeformationParams = {}

---@param element System.Xml.Linq.XElement
---@return Barotrauma.SpriteDeformations.CustomDeformationParams
function CS.Barotrauma.SpriteDeformations.CustomDeformationParams(element) end

---@class Barotrauma.SpriteDeformations.CustomDeformation: Barotrauma.SpriteDeformations.SpriteDeformation
---@field private CustomDeformationParams Barotrauma.SpriteDeformations.CustomDeformationParams
---@field Phase System.Single
---@field private deformRows userdata | { [System.Int32]: Microsoft.Xna.Framework.Vector2[] } | (fun(): Microsoft.Xna.Framework.Vector2[])
---@field private flippedDeformation Microsoft.Xna.Framework.Vector2[]
---@field private phase System.Single
CS.Barotrauma.SpriteDeformations.CustomDeformation = {}

---@private
---@return Barotrauma.SpriteDeformations.CustomDeformationParams
function CS.Barotrauma.SpriteDeformations.CustomDeformation.get_CustomDeformationParams() end

---@return System.Single
function CS.Barotrauma.SpriteDeformations.CustomDeformation.get_Phase() end

---@param value System.Single
function CS.Barotrauma.SpriteDeformations.CustomDeformation.set_Phase(value) end

---@protected
---@param deformation Microsoft.Xna.Framework.Vector2[]
---@param multiplier System.Single
---@param flippedHorizontally System.Boolean
---@param inverseY System.Boolean
function CS.Barotrauma.SpriteDeformations.CustomDeformation.GetDeformation(deformation, multiplier, flippedHorizontally, inverseY) end

---@param deltaTime System.Single
function CS.Barotrauma.SpriteDeformations.CustomDeformation.Update(deltaTime) end

---@param element System.Xml.Linq.XElement
function CS.Barotrauma.SpriteDeformations.CustomDeformation.Save(element) end

---@param element System.Xml.Linq.XElement
---@return Barotrauma.SpriteDeformations.CustomDeformation
function CS.Barotrauma.SpriteDeformations.CustomDeformation(element) end

---@class Barotrauma.SpriteDeformations.InflateParams: Barotrauma.SpriteDeformations.SpriteDeformationParams
---@field Frequency System.Single
---@field Scale System.Single
CS.Barotrauma.SpriteDeformations.InflateParams = {}

---@param element System.Xml.Linq.XElement
---@return Barotrauma.SpriteDeformations.InflateParams
function CS.Barotrauma.SpriteDeformations.InflateParams(element) end

---@class Barotrauma.SpriteDeformations.Inflate: Barotrauma.SpriteDeformations.SpriteDeformation
---@field Phase System.Single
---@field private InflateParams Barotrauma.SpriteDeformations.InflateParams
---@field private phase System.Single
---@field private deformation Microsoft.Xna.Framework.Vector2[]
CS.Barotrauma.SpriteDeformations.Inflate = {}

---@return System.Single
function CS.Barotrauma.SpriteDeformations.Inflate.get_Phase() end

---@param value System.Single
function CS.Barotrauma.SpriteDeformations.Inflate.set_Phase(value) end

---@private
---@return Barotrauma.SpriteDeformations.InflateParams
function CS.Barotrauma.SpriteDeformations.Inflate.get_InflateParams() end

---@protected
---@param deformation Microsoft.Xna.Framework.Vector2[]
---@param multiplier System.Single
---@param flippedHorizontally System.Boolean
---@param inverseY? System.Boolean
function CS.Barotrauma.SpriteDeformations.Inflate.GetDeformation(deformation, multiplier, flippedHorizontally, inverseY) end

---@param deltaTime System.Single
function CS.Barotrauma.SpriteDeformations.Inflate.Update(deltaTime) end

---@param element System.Xml.Linq.XElement
---@return Barotrauma.SpriteDeformations.Inflate
function CS.Barotrauma.SpriteDeformations.Inflate(element) end

---@class Barotrauma.SpriteDeformations.JointBendDeformationParams: Barotrauma.SpriteDeformations.SpriteDeformationParams
CS.Barotrauma.SpriteDeformations.JointBendDeformationParams = {}

---@param element System.Xml.Linq.XElement
---@return Barotrauma.SpriteDeformations.JointBendDeformationParams
function CS.Barotrauma.SpriteDeformations.JointBendDeformationParams(element) end

---@class Barotrauma.SpriteDeformations.JointBendDeformation: Barotrauma.SpriteDeformations.SpriteDeformation
---@field BendRight System.Single
---@field BendLeft System.Single
---@field BendUp System.Single
---@field BendDown System.Single
---@field private MaxRotationInRadians System.Single
---@field private bendRight System.Single
---@field BendRightRefPos Microsoft.Xna.Framework.Vector2
---@field private bendLeft System.Single
---@field BendLeftRefPos Microsoft.Xna.Framework.Vector2
---@field private bendUp System.Single
---@field BendUpRefPos Microsoft.Xna.Framework.Vector2
---@field private bendDown System.Single
---@field BendDownRefPos Microsoft.Xna.Framework.Vector2
---@field Scale Microsoft.Xna.Framework.Vector2
CS.Barotrauma.SpriteDeformations.JointBendDeformation = {}

---@return System.Single
function CS.Barotrauma.SpriteDeformations.JointBendDeformation.get_BendRight() end

---@param value System.Single
function CS.Barotrauma.SpriteDeformations.JointBendDeformation.set_BendRight(value) end

---@return System.Single
function CS.Barotrauma.SpriteDeformations.JointBendDeformation.get_BendLeft() end

---@param value System.Single
function CS.Barotrauma.SpriteDeformations.JointBendDeformation.set_BendLeft(value) end

---@return System.Single
function CS.Barotrauma.SpriteDeformations.JointBendDeformation.get_BendUp() end

---@param value System.Single
function CS.Barotrauma.SpriteDeformations.JointBendDeformation.set_BendUp(value) end

---@return System.Single
function CS.Barotrauma.SpriteDeformations.JointBendDeformation.get_BendDown() end

---@param value System.Single
function CS.Barotrauma.SpriteDeformations.JointBendDeformation.set_BendDown(value) end

---@private
---@return System.Single
function CS.Barotrauma.SpriteDeformations.JointBendDeformation.get_MaxRotationInRadians() end

---@protected
---@param deformation Microsoft.Xna.Framework.Vector2[]
---@param multiplier System.Single
---@param flippedHorizontally System.Boolean
---@param inverseY? System.Boolean
function CS.Barotrauma.SpriteDeformations.JointBendDeformation.GetDeformation(deformation, multiplier, flippedHorizontally, inverseY) end

---@param deltaTime System.Single
function CS.Barotrauma.SpriteDeformations.JointBendDeformation.Update(deltaTime) end

---@overload fun(point: Microsoft.Xna.Framework.Vector2, target: Microsoft.Xna.Framework.Vector2, sin: System.Single, cos: System.Single): Microsoft.Xna.Framework.Vector2
---@param point Microsoft.Xna.Framework.Vector2
---@param target Microsoft.Xna.Framework.Vector2
---@param angle System.Single
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.SpriteDeformations.JointBendDeformation.RotatePointAroundTarget(point, target, angle) end

---@param element System.Xml.Linq.XElement
---@return Barotrauma.SpriteDeformations.JointBendDeformation
function CS.Barotrauma.SpriteDeformations.JointBendDeformation(element) end

---@class Barotrauma.SpriteDeformations.NoiseDeformationParams: Barotrauma.SpriteDeformations.SpriteDeformationParams
---@field Frequency System.Single
---@field Amplitude System.Single
---@field ChangeSpeed System.Single
CS.Barotrauma.SpriteDeformations.NoiseDeformationParams = {}

---@param element System.Xml.Linq.XElement
---@return Barotrauma.SpriteDeformations.NoiseDeformationParams
function CS.Barotrauma.SpriteDeformations.NoiseDeformationParams(element) end

---@class Barotrauma.SpriteDeformations.NoiseDeformation: Barotrauma.SpriteDeformations.SpriteDeformation
---@field private NoiseDeformationParams Barotrauma.SpriteDeformations.NoiseDeformationParams
---@field private phase System.Single
CS.Barotrauma.SpriteDeformations.NoiseDeformation = {}

---@private
---@return Barotrauma.SpriteDeformations.NoiseDeformationParams
function CS.Barotrauma.SpriteDeformations.NoiseDeformation.get_NoiseDeformationParams() end

---@private
function CS.Barotrauma.SpriteDeformations.NoiseDeformation.UpdateNoise() end

---@protected
---@param deformation Microsoft.Xna.Framework.Vector2[]
---@param multiplier System.Single
---@param flippedHorizontally System.Boolean
---@param inverseY? System.Boolean
function CS.Barotrauma.SpriteDeformations.NoiseDeformation.GetDeformation(deformation, multiplier, flippedHorizontally, inverseY) end

---@param deltaTime System.Single
function CS.Barotrauma.SpriteDeformations.NoiseDeformation.Update(deltaTime) end

---@param element System.Xml.Linq.XElement
---@return Barotrauma.SpriteDeformations.NoiseDeformation
function CS.Barotrauma.SpriteDeformations.NoiseDeformation(element) end

---@class Barotrauma.SpriteDeformations.PositionalDeformationParams: Barotrauma.SpriteDeformations.SpriteDeformationParams
---@field Falloff System.Single
---@field MaxDeformation System.Single
---@field ReactionSpeed System.Single
---@field RecoverSpeed System.Single
CS.Barotrauma.SpriteDeformations.PositionalDeformationParams = {}

---@param element System.Xml.Linq.XElement
---@return Barotrauma.SpriteDeformations.PositionalDeformationParams
function CS.Barotrauma.SpriteDeformations.PositionalDeformationParams(element) end

---@class Barotrauma.SpriteDeformations.PositionalDeformation: Barotrauma.SpriteDeformations.SpriteDeformation
---@field private positionalDeformationParams Barotrauma.SpriteDeformations.PositionalDeformationParams
---@field Type Barotrauma.SpriteDeformations.PositionalDeformation.ReactionType
CS.Barotrauma.SpriteDeformations.PositionalDeformation = {}

---@private
---@return Barotrauma.SpriteDeformations.PositionalDeformationParams
function CS.Barotrauma.SpriteDeformations.PositionalDeformation.get_positionalDeformationParams() end

---@param deltaTime System.Single
function CS.Barotrauma.SpriteDeformations.PositionalDeformation.Update(deltaTime) end

---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param amount Microsoft.Xna.Framework.Vector2
---@param deltaTime System.Single
---@param transformMatrix Microsoft.Xna.Framework.Matrix
function CS.Barotrauma.SpriteDeformations.PositionalDeformation.Deform(worldPosition, amount, deltaTime, transformMatrix) end

---@protected
---@param deformation Microsoft.Xna.Framework.Vector2[]
---@param multiplier System.Single
---@param flippedHorizontally System.Boolean
---@param inverseY System.Boolean
function CS.Barotrauma.SpriteDeformations.PositionalDeformation.GetDeformation(deformation, multiplier, flippedHorizontally, inverseY) end

---@param element System.Xml.Linq.XElement
---@return Barotrauma.SpriteDeformations.PositionalDeformation
function CS.Barotrauma.SpriteDeformations.PositionalDeformation(element) end

---@class Barotrauma.SpriteDeformations.SpriteDeformationParams: System.Object
---@field Sync System.Int32
---@field Type System.String
---@field BlendMode Barotrauma.SpriteDeformations.SpriteDeformation.DeformationBlendMode
---@field Name System.String
---@field Strength System.Single
---@field MaxRotation System.Single
---@field UseMovementSine System.Boolean
---@field StopWhenHostIsDead System.Boolean
---@field OnlyInWater System.Boolean
---@field SineOffset System.Single
---@field Frequency System.Single
---@field SerializableProperties userdata | { [Barotrauma.Identifier]: Barotrauma.SerializableProperty } | (fun(): userdata)
---@field Resolution Microsoft.Xna.Framework.Point
---@field private _resolution Microsoft.Xna.Framework.Point
---@field ShaderMaxResolution Microsoft.Xna.Framework.Point
CS.Barotrauma.SpriteDeformations.SpriteDeformationParams = {}

---@return System.String
function CS.Barotrauma.SpriteDeformations.SpriteDeformationParams.get_Name() end

---@return Microsoft.Xna.Framework.Point
function CS.Barotrauma.SpriteDeformations.SpriteDeformationParams.get_Resolution() end

---@param value Microsoft.Xna.Framework.Point
function CS.Barotrauma.SpriteDeformations.SpriteDeformationParams.set_Resolution(value) end

---@overload fun(): Barotrauma.SpriteDeformations.SpriteDeformationParams
---@param element System.Xml.Linq.XElement
---@return Barotrauma.SpriteDeformations.SpriteDeformationParams
function CS.Barotrauma.SpriteDeformations.SpriteDeformationParams(element) end

---@class Barotrauma.SpriteDeformations.SpriteDeformation: System.Object
---@field Phase System.Single
---@field protected Deformation Microsoft.Xna.Framework.Vector2[]
---@field Params Barotrauma.SpriteDeformations.SpriteDeformationParams
---@field DeformationTypes userdata | (fun(): System.String)
---@field Resolution Microsoft.Xna.Framework.Point
---@field TypeName System.String
---@field Sync System.Int32
---@field private deformationTypes System.String[]
---@field private yValues userdata | { [System.Int32]: System.Int32 } | (fun(): System.Int32)
CS.Barotrauma.SpriteDeformations.SpriteDeformation = {}

---@return userdata | (fun(): System.String)
function CS.Barotrauma.SpriteDeformations.SpriteDeformation.get_DeformationTypes() end

---@return Microsoft.Xna.Framework.Point
function CS.Barotrauma.SpriteDeformations.SpriteDeformation.get_Resolution() end

---@param value Microsoft.Xna.Framework.Point
function CS.Barotrauma.SpriteDeformations.SpriteDeformation.set_Resolution(value) end

---@return System.String
function CS.Barotrauma.SpriteDeformations.SpriteDeformation.get_TypeName() end

---@return System.Int32
function CS.Barotrauma.SpriteDeformations.SpriteDeformation.get_Sync() end

---@overload fun(element: System.Xml.Linq.XElement, parentDebugName: System.String): Barotrauma.SpriteDeformations.SpriteDeformation
---@param deformationType System.String
---@param parentDebugName System.String
---@return Barotrauma.SpriteDeformations.SpriteDeformation
function CS.Barotrauma.SpriteDeformations.SpriteDeformation.Load(deformationType, parentDebugName) end

---@private
---@param element System.Xml.Linq.XElement
---@param deformationType System.String
---@param parentDebugName System.String
---@return Barotrauma.SpriteDeformations.SpriteDeformation
function CS.Barotrauma.SpriteDeformations.SpriteDeformation.Load(element, deformationType, parentDebugName) end

---@param resolution Microsoft.Xna.Framework.Point
function CS.Barotrauma.SpriteDeformations.SpriteDeformation.SetResolution(resolution) end

---@protected
---@param deformation Microsoft.Xna.Framework.Vector2[]
---@param multiplier System.Single
---@param flippedHorizontally System.Boolean
---@param inverseY System.Boolean
function CS.Barotrauma.SpriteDeformations.SpriteDeformation.GetDeformation(deformation, multiplier, flippedHorizontally, inverseY) end

---@param deltaTime System.Single
function CS.Barotrauma.SpriteDeformations.SpriteDeformation.Update(deltaTime) end

---@param animations userdata | (fun(): Barotrauma.SpriteDeformations.SpriteDeformation)
---@param scale Microsoft.Xna.Framework.Vector2
---@param flippedHorizontally System.Boolean
---@param inverseY? System.Boolean
---@return Microsoft.Xna.Framework.Vector2[]
function CS.Barotrauma.SpriteDeformations.SpriteDeformation.GetDeformation(animations, scale, flippedHorizontally, inverseY) end

---@param element System.Xml.Linq.XElement
function CS.Barotrauma.SpriteDeformations.SpriteDeformation.Save(element) end

---@protected
---@overload fun(): Barotrauma.SpriteDeformations.SpriteDeformation
---@param element System.Xml.Linq.XElement
---@param deformationParams Barotrauma.SpriteDeformations.SpriteDeformationParams
---@return Barotrauma.SpriteDeformations.SpriteDeformation
function CS.Barotrauma.SpriteDeformations.SpriteDeformation(element, deformationParams) end

---@enum Barotrauma.SpriteDeformations.PositionalDeformation.ReactionType
CS.Barotrauma.SpriteDeformations.PositionalDeformation.ReactionType = {
    ReactToTriggerers = 0
}

---@enum Barotrauma.SpriteDeformations.SpriteDeformation.DeformationBlendMode
CS.Barotrauma.SpriteDeformations.SpriteDeformation.DeformationBlendMode = {
    Add = 0,
    Multiply = 1,
    Override = 2
}


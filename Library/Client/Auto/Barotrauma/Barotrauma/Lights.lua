---@meta
---Auto-generated from Barotrauma
---Namespace: Barotrauma.Lights

---@class Barotrauma.Lights.LightManager: System.Object
---@field ViewTarget Barotrauma.Entity
---@field LightMap Microsoft.Xna.Framework.Graphics.RenderTarget2D
---@field LimbLightMap Microsoft.Xna.Framework.Graphics.RenderTarget2D
---@field LosTexture Microsoft.Xna.Framework.Graphics.RenderTarget2D
---@field HighlightMap Microsoft.Xna.Framework.Graphics.RenderTarget2D
---@field LosEffect Microsoft.Xna.Framework.Graphics.Effect
---@field SolidColorEffect Microsoft.Xna.Framework.Graphics.Effect
---@field Lights userdata | (fun(): Barotrauma.Lights.LightSource)
---@field ActiveLightCount System.Int32
---@field private rayCastThread System.Threading.Thread
---@field private pendingRayCasts userdata | (fun(): Barotrauma.Lights.LightManager.RayCastTask)
---@field private currLightMapScale System.Single
---@field AmbientLight Microsoft.Xna.Framework.Color
---@field private highlightRaster Microsoft.Xna.Framework.Graphics.Texture2D
---@field private lightEffect Microsoft.Xna.Framework.Graphics.BasicEffect
---@field private lights userdata | { [System.Int32]: Barotrauma.Lights.LightSource } | (fun(): Barotrauma.Lights.LightSource)
---@field DebugLos System.Boolean
---@field LosEnabled System.Boolean
---@field LosAlpha System.Single
---@field LosMode Barotrauma.LosMode
---@field LightingEnabled System.Boolean
---@field ObstructVisionAmount System.Single
---@field private visionCircle Microsoft.Xna.Framework.Graphics.Texture2D
---@field private gapGlowTexture Microsoft.Xna.Framework.Graphics.Texture2D
---@field private losOffset Microsoft.Xna.Framework.Vector2
---@field private recalculationCount System.Int32
---@field private time System.Single
---@field private activeLights userdata | { [System.Int32]: Barotrauma.Lights.LightSource } | (fun(): Barotrauma.Lights.LightSource)
---@field private activeShadowCastingLights userdata | { [System.Int32]: Barotrauma.Lights.LightSource } | (fun(): Barotrauma.Lights.LightSource)
---@field private highlightedEntities userdata | { [System.Int32]: Barotrauma.Entity } | (fun(): Barotrauma.Entity)
---@field private visibleHulls userdata | { [Barotrauma.Hull]: Microsoft.Xna.Framework.Rectangle } | (fun(): userdata)
---@field private mutex System.Object
---@field private ShadowVertices userdata | { [System.Int32]: Microsoft.Xna.Framework.Graphics.VertexPositionColor } | (fun(): Microsoft.Xna.Framework.Graphics.VertexPositionColor)
---@field private PenumbraVertices userdata | { [System.Int32]: Microsoft.Xna.Framework.Graphics.VertexPositionTexture } | (fun(): Microsoft.Xna.Framework.Graphics.VertexPositionTexture)
---@field private MaxLightVolumeRecalculationsPerFrame System.Int32
---@field private ObstructLightsBehindCharactersZoomThreshold System.Single
CS.Barotrauma.Lights.LightManager = {}

---@return userdata | (fun(): Barotrauma.Lights.LightSource)
function CS.Barotrauma.Lights.LightManager.get_Lights() end

---@private
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
function CS.Barotrauma.Lights.LightManager.CreateRenderTargets(graphics) end

---@param light Barotrauma.Lights.LightSource
function CS.Barotrauma.Lights.LightManager.AddLight(light) end

---@param light Barotrauma.Lights.LightSource
function CS.Barotrauma.Lights.LightManager.RemoveLight(light) end

function CS.Barotrauma.Lights.LightManager.OnMapLoaded() end

---@param deltaTime System.Single
function CS.Barotrauma.Lights.LightManager.Update(deltaTime) end

---@param lightSource Barotrauma.Lights.LightSource
---@param drawPos Microsoft.Xna.Framework.Vector2
---@param rotation System.Single
function CS.Barotrauma.Lights.LightManager.AddRayCastTask(lightSource, drawPos, rotation) end

---@private
function CS.Barotrauma.Lights.LightManager.UpdateRayCasts() end

---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
function CS.Barotrauma.Lights.LightManager.DebugDrawVertices(spriteBatch) end

---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param cam Barotrauma.Camera
---@param backgroundObstructor? Microsoft.Xna.Framework.Graphics.RenderTarget2D
function CS.Barotrauma.Lights.LightManager.RenderLightMap(graphics, spriteBatch, cam, backgroundObstructor) end

---@private
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param spriteBatchTransform Microsoft.Xna.Framework.Matrix
---@param cam Barotrauma.Camera
---@return System.Boolean
function CS.Barotrauma.Lights.LightManager.UpdateHighlights(graphics, spriteBatch, spriteBatchTransform, cam) end

---@private
---@param cam Barotrauma.Camera
---@return userdata | { [Barotrauma.Hull]: Microsoft.Xna.Framework.Rectangle } | (fun(): userdata)
function CS.Barotrauma.Lights.LightManager.GetVisibleHulls(cam) end

---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param cam Barotrauma.Camera
---@param lookAtPosition Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Lights.LightManager.UpdateObstructVision(graphics, spriteBatch, cam, lookAtPosition) end

---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param cam Barotrauma.Camera
function CS.Barotrauma.Lights.LightManager.DebugDrawLos(spriteBatch, cam) end

function CS.Barotrauma.Lights.LightManager.ClearLights() end

do
---@overload fun(): Barotrauma.Lights.LightManager
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@return Barotrauma.Lights.LightManager
local __ctor = function(graphics) end
CS.Barotrauma.Lights.LightManager = __ctor
CS.Barotrauma.Lights.LightManager.__new = __ctor
end

---@class Barotrauma.Lights.LightSourceParams: System.Object
---@field Name System.String
---@field SerializableProperties userdata | { [Barotrauma.Identifier]: Barotrauma.SerializableProperty } | (fun(): userdata)
---@field Color Microsoft.Xna.Framework.Color
---@field Range System.Single
---@field Scale System.Single
---@field Offset Microsoft.Xna.Framework.Vector2
---@field Rotation System.Single
---@field Directional System.Boolean
---@field Flicker System.Single
---@field FlickerSpeed System.Single
---@field PulseFrequency System.Single
---@field PulseAmount System.Single
---@field BlinkFrequency System.Single
---@field TextureRange System.Single
---@field OverrideLightTexture Barotrauma.Sprite
---@field LightSprite Barotrauma.Sprite
---@field DeformableLightSpriteElement Barotrauma.ContentXElement
---@field Persistent System.Boolean
---@field private range System.Single
---@field private flicker System.Single
---@field private pulseFrequency System.Single
---@field private pulseAmount System.Single
---@field private blinkFrequency System.Single
---@field OverrideLightSpriteAlpha System.Single|nil
CS.Barotrauma.Lights.LightSourceParams = {}

---@return System.String
function CS.Barotrauma.Lights.LightSourceParams.get_Name() end

---@return System.Single
function CS.Barotrauma.Lights.LightSourceParams.get_Range() end

---@param value System.Single
function CS.Barotrauma.Lights.LightSourceParams.set_Range(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Lights.LightSourceParams.GetOffset() end

---@return System.Single
function CS.Barotrauma.Lights.LightSourceParams.get_Flicker() end

---@param value System.Single
function CS.Barotrauma.Lights.LightSourceParams.set_Flicker(value) end

---@return System.Single
function CS.Barotrauma.Lights.LightSourceParams.get_PulseFrequency() end

---@param value System.Single
function CS.Barotrauma.Lights.LightSourceParams.set_PulseFrequency(value) end

---@return System.Single
function CS.Barotrauma.Lights.LightSourceParams.get_PulseAmount() end

---@param value System.Single
function CS.Barotrauma.Lights.LightSourceParams.set_PulseAmount(value) end

---@return System.Single
function CS.Barotrauma.Lights.LightSourceParams.get_BlinkFrequency() end

---@param value System.Single
function CS.Barotrauma.Lights.LightSourceParams.set_BlinkFrequency(value) end

---@param element System.Xml.Linq.XElement
---@return System.Boolean
function CS.Barotrauma.Lights.LightSourceParams.Deserialize(element) end

---@param element System.Xml.Linq.XElement
function CS.Barotrauma.Lights.LightSourceParams.Serialize(element) end

do
---@overload fun(range: System.Single, color: Microsoft.Xna.Framework.Color): Barotrauma.Lights.LightSourceParams
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Lights.LightSourceParams
local __ctor = function(element) end
CS.Barotrauma.Lights.LightSourceParams = __ctor
CS.Barotrauma.Lights.LightSourceParams.__new = __ctor
end

---@class Barotrauma.Lights.LightSource: System.Object
---@field CastShadows System.Boolean
---@field NeedsRecalculation System.Boolean
---@field LastRecalculationTime System.Single
---@field LightSourceParams Barotrauma.Lights.LightSourceParams
---@field Position Microsoft.Xna.Framework.Vector2
---@field Rotation System.Single
---@field SpriteScale Microsoft.Xna.Framework.Vector2
---@field OverrideLightSpriteAlpha System.Single|nil
---@field WorldPosition Microsoft.Xna.Framework.Vector2
---@field LightTexture Microsoft.Xna.Framework.Graphics.Texture2D
---@field OverrideLightTexture Barotrauma.Sprite
---@field LightSprite Barotrauma.Sprite
---@field private OverrideLightTextureOrigin Microsoft.Xna.Framework.Vector2
---@field Color Microsoft.Xna.Framework.Color
---@field CurrentBrightness System.Single
---@field Range System.Single
---@field LightTextureTargetSize Microsoft.Xna.Framework.Vector2
---@field LightTextureOffset Microsoft.Xna.Framework.Vector2
---@field LightTextureScale Microsoft.Xna.Framework.Vector2
---@field TextureRange System.Single
---@field IsBackground System.Boolean
---@field ParentBody Barotrauma.PhysicsBody
---@field DeformableLightSprite Barotrauma.DeformableSprite
---@field private vertices Microsoft.Xna.Framework.Graphics.VertexPositionColorTexture[]
---@field private indices System.Int16[]
---@field private convexHullsInRange userdata | { [System.Int32]: Barotrauma.Lights.ConvexHullList } | (fun(): Barotrauma.Lights.ConvexHullList)
---@field private visibleConvexHulls userdata | (fun(): Barotrauma.Lights.ConvexHull)
---@field texture Microsoft.Xna.Framework.Graphics.Texture2D
---@field LightSpriteEffect Microsoft.Xna.Framework.Graphics.SpriteEffects
---@field ParentSub Barotrauma.Submarine
---@field private castShadows System.Boolean
---@field private prevCalculatedRange System.Single
---@field private prevCalculatedPosition Microsoft.Xna.Framework.Vector2
---@field HullsUpToDate userdata | (fun(): Barotrauma.Submarine)
---@field private needsRecalculation System.Boolean
---@field private needsRecalculationWhenUpToDate System.Boolean
---@field private state Barotrauma.Lights.LightSource.LightVertexState
---@field private calculatedDrawPos Microsoft.Xna.Framework.Vector2
---@field private diffToSub userdata | { [Barotrauma.Submarine]: Microsoft.Xna.Framework.Vector2 } | (fun(): userdata)
---@field private lightVolumeBuffer Microsoft.Xna.Framework.Graphics.DynamicVertexBuffer
---@field private lightVolumeIndexBuffer Microsoft.Xna.Framework.Graphics.DynamicIndexBuffer
---@field private vertexCount System.Int32
---@field private indexCount System.Int32
---@field private translateVertices Microsoft.Xna.Framework.Vector2
---@field private lightSourceParams Barotrauma.Lights.LightSourceParams
---@field private position Microsoft.Xna.Framework.Vector2
---@field private prevCalculatedRotation System.Single
---@field private rotation System.Single
---@field private dir Microsoft.Xna.Framework.Vector2
---@field private _spriteScale Microsoft.Xna.Framework.Vector2
---@field Priority System.Single
---@field PriorityMultiplier System.Single
---@field private lightTextureTargetSize Microsoft.Xna.Framework.Vector2
---@field OffsetFromBody Microsoft.Xna.Framework.Vector2
---@field Enabled System.Boolean
---@field private conditionalTarget Barotrauma.ISerializableEntity
---@field private logicalOperator Barotrauma.PropertyConditional.LogicalOperatorType
---@field private conditionals userdata | { [System.Int32]: Barotrauma.PropertyConditional } | (fun(): Barotrauma.PropertyConditional)
---@field private visibleSegments userdata | { [System.Int32]: Barotrauma.Lights.Segment } | (fun(): Barotrauma.Lights.Segment)
---@field private points userdata | { [System.Int32]: Barotrauma.Lights.SegmentPoint } | (fun(): Barotrauma.Lights.SegmentPoint)
---@field private verts userdata | { [System.Int32]: Microsoft.Xna.Framework.Vector2 } | (fun(): Microsoft.Xna.Framework.Vector2)
---@field private boundaryCorners Barotrauma.Lights.SegmentPoint[]
---@field private lightTexture Microsoft.Xna.Framework.Graphics.Texture2D
---@field private mutex System.Object
---@field private MovementRecalculationThreshold System.Single
---@field private RotationRecalculationThreshold System.Single
---@field private MinPointDistance System.Single
CS.Barotrauma.Lights.LightSource = {}

---@return System.Boolean
function CS.Barotrauma.Lights.LightSource.get_CastShadows() end

---@param value System.Boolean
function CS.Barotrauma.Lights.LightSource.set_CastShadows(value) end

---@return System.Boolean
function CS.Barotrauma.Lights.LightSource.get_NeedsRecalculation() end

---@param value System.Boolean
function CS.Barotrauma.Lights.LightSource.set_NeedsRecalculation(value) end

---@return Barotrauma.Lights.LightSourceParams
function CS.Barotrauma.Lights.LightSource.get_LightSourceParams() end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Lights.LightSource.get_Position() end

---@param value Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Lights.LightSource.set_Position(value) end

---@return System.Single
function CS.Barotrauma.Lights.LightSource.get_Rotation() end

---@param value System.Single
function CS.Barotrauma.Lights.LightSource.set_Rotation(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Lights.LightSource.get_SpriteScale() end

---@param value Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Lights.LightSource.set_SpriteScale(value) end

---@return System.Single|nil
function CS.Barotrauma.Lights.LightSource.get_OverrideLightSpriteAlpha() end

---@param value System.Single|nil
function CS.Barotrauma.Lights.LightSource.set_OverrideLightSpriteAlpha(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Lights.LightSource.get_WorldPosition() end

---@return Microsoft.Xna.Framework.Graphics.Texture2D
function CS.Barotrauma.Lights.LightSource.get_LightTexture() end

---@return Barotrauma.Sprite
function CS.Barotrauma.Lights.LightSource.get_OverrideLightTexture() end

---@return Barotrauma.Sprite
function CS.Barotrauma.Lights.LightSource.get_LightSprite() end

---@private
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Lights.LightSource.get_OverrideLightTextureOrigin() end

---@return Microsoft.Xna.Framework.Color
function CS.Barotrauma.Lights.LightSource.get_Color() end

---@param value Microsoft.Xna.Framework.Color
function CS.Barotrauma.Lights.LightSource.set_Color(value) end

---@return System.Single
function CS.Barotrauma.Lights.LightSource.get_Range() end

---@param value System.Single
function CS.Barotrauma.Lights.LightSource.set_Range(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Lights.LightSource.get_LightTextureTargetSize() end

---@param value Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Lights.LightSource.set_LightTextureTargetSize(value) end

---@return System.Single
function CS.Barotrauma.Lights.LightSource.get_TextureRange() end

---@param time System.Single
function CS.Barotrauma.Lights.LightSource.Update(time) end

---@private
---@param chList Barotrauma.Lights.ConvexHullList
---@param lightPos Microsoft.Xna.Framework.Vector2
---@param sub Barotrauma.Submarine
function CS.Barotrauma.Lights.LightSource.RefreshConvexHullList(chList, lightPos, sub) end

---@private
function CS.Barotrauma.Lights.LightSource.CheckConvexHullsInRange() end

---@private
---@param sub Barotrauma.Submarine
function CS.Barotrauma.Lights.LightSource.CheckHullsInRange(sub) end

---@private
function CS.Barotrauma.Lights.LightSource.FindRaycastHits() end

---@param drawPos Microsoft.Xna.Framework.Vector2
---@param rotation System.Single
function CS.Barotrauma.Lights.LightSource.RayCastTask(drawPos, rotation) end

---@private
---@param rayStart Microsoft.Xna.Framework.Vector2
---@param rayEnd Microsoft.Xna.Framework.Vector2
---@param segments userdata | { [System.Int32]: Barotrauma.Lights.Segment } | (fun(): Barotrauma.Lights.Segment)
---@return userdata
function CS.Barotrauma.Lights.LightSource.RayCast(rayStart, rayEnd, segments) end

---@private
---@param rayCastHits userdata | { [System.Int32]: Microsoft.Xna.Framework.Vector2 } | (fun(): Microsoft.Xna.Framework.Vector2)
function CS.Barotrauma.Lights.LightSource.CalculateLightVertices(rayCastHits) end

---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param cam Barotrauma.Camera
function CS.Barotrauma.Lights.LightSource.DrawSprite(spriteBatch, cam) end

function CS.Barotrauma.Lights.LightSource.CheckConditionals() end

---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
function CS.Barotrauma.Lights.LightSource.DebugDrawVertices(spriteBatch) end

---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param lightEffect Microsoft.Xna.Framework.Graphics.BasicEffect
---@param transform Microsoft.Xna.Framework.Matrix
---@param allowRecalculation System.Boolean
---@param recalculationCount System.Int32
function CS.Barotrauma.Lights.LightSource.DrawLightVolume(spriteBatch, lightEffect, transform, allowRecalculation, recalculationCount) end

function CS.Barotrauma.Lights.LightSource.Reset() end

function CS.Barotrauma.Lights.LightSource.Remove() end

do
---@overload fun(lightSourceParams: Barotrauma.Lights.LightSourceParams): Barotrauma.Lights.LightSource
---@overload fun(position: Microsoft.Xna.Framework.Vector2, range: System.Single, color: Microsoft.Xna.Framework.Color, submarine: Barotrauma.Submarine, addLight?: System.Boolean): Barotrauma.Lights.LightSource
---@overload fun(): Barotrauma.Lights.LightSource
---@param element Barotrauma.ContentXElement
---@param conditionalTarget? Barotrauma.ISerializableEntity
---@return Barotrauma.Lights.LightSource
local __ctor = function(element, conditionalTarget) end
CS.Barotrauma.Lights.LightSource = __ctor
CS.Barotrauma.Lights.LightSource.__new = __ctor
end


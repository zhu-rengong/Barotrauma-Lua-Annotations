---@meta
---Auto-generated from Barotrauma
---Namespace: Barotrauma.Particles

---@class Barotrauma.Particles.Particle: System.Object
---@field DrawOrder Barotrauma.Particles.ParticleDrawOrder
---@field DrawTarget Barotrauma.Particles.ParticlePrefab.DrawTargetType
---@field BlendState Barotrauma.Particles.ParticleBlendState
---@field StartDelay System.Single
---@field Size Microsoft.Xna.Framework.Vector2
---@field CurrentHull Barotrauma.Hull
---@field Prefab Barotrauma.Particles.ParticlePrefab
---@field private prefab Barotrauma.Particles.ParticlePrefab
---@field private debugName System.String
---@field OnChangeHull fun(position: Microsoft.Xna.Framework.Vector2, currentHull: Barotrauma.Hull)
---@field OnCollision fun(position: Microsoft.Xna.Framework.Vector2, currentHull: Barotrauma.Hull)
---@field private position Microsoft.Xna.Framework.Vector2
---@field private prevPosition Microsoft.Xna.Framework.Vector2
---@field private velocity Microsoft.Xna.Framework.Vector2
---@field private rotation System.Single
---@field private prevRotation System.Single
---@field private angularVelocity System.Single
---@field private collisionIgnoreTimer System.Single
---@field private size Microsoft.Xna.Framework.Vector2
---@field private sizeChange Microsoft.Xna.Framework.Vector2
---@field private color Microsoft.Xna.Framework.Color
---@field private changeColor System.Boolean
---@field private UseMiddleColor System.Boolean
---@field private spriteIndex System.Int32
---@field private totalLifeTime System.Single
---@field private lifeTime System.Single
---@field private startDelay System.Single
---@field private velocityChange Microsoft.Xna.Framework.Vector2
---@field private velocityChangeWater Microsoft.Xna.Framework.Vector2
---@field private drawPosition Microsoft.Xna.Framework.Vector2
---@field private drawRotation System.Single
---@field private colliderRadius Microsoft.Xna.Framework.Vector2
---@field private currentHull Barotrauma.Hull
---@field private hullGaps userdata | { [System.Int32]: Barotrauma.Gap } | (fun(): Barotrauma.Gap)
---@field private hasSubEmitters System.Boolean
---@field private subEmitters userdata | { [System.Int32]: Barotrauma.Particles.ParticleEmitter } | (fun(): Barotrauma.Particles.ParticleEmitter)
---@field private animState System.Single
---@field private animFrame System.Int32
---@field private collisionUpdateTimer System.Single
---@field private changesSize System.Boolean
---@field HighQualityCollisionDetection System.Boolean
---@field ColorMultiplier Microsoft.Xna.Framework.Vector4
---@field VelocityChangeMultiplier System.Single
CS.Barotrauma.Particles.Particle = {}

---@return Barotrauma.Particles.ParticlePrefab.DrawTargetType
function CS.Barotrauma.Particles.Particle.get_DrawTarget() end

---@return Barotrauma.Particles.ParticleBlendState
function CS.Barotrauma.Particles.Particle.get_BlendState() end

---@return System.Single
function CS.Barotrauma.Particles.Particle.get_StartDelay() end

---@param value System.Single
function CS.Barotrauma.Particles.Particle.set_StartDelay(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Particles.Particle.get_Size() end

---@param value Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Particles.Particle.set_Size(value) end

---@return Barotrauma.Hull
function CS.Barotrauma.Particles.Particle.get_CurrentHull() end

---@return Barotrauma.Particles.ParticlePrefab
function CS.Barotrauma.Particles.Particle.get_Prefab() end

---@return System.String
function CS.Barotrauma.Particles.Particle.ToString() end

---@param prefab Barotrauma.Particles.ParticlePrefab
---@param spawnPosition Microsoft.Xna.Framework.Vector2
---@param speed Microsoft.Xna.Framework.Vector2
---@param spawnRotation System.Single
---@param hullGuess? Barotrauma.Hull
---@param drawOrder? Barotrauma.Particles.ParticleDrawOrder
---@param collisionIgnoreTimer? System.Single
---@param lifeTimeMultiplier? System.Single
---@param tracerPoints? userdata
function CS.Barotrauma.Particles.Particle.Init(prefab, spawnPosition, speed, spawnRotation, hullGuess, drawOrder, collisionIgnoreTimer, lifeTimeMultiplier, tracerPoints) end

---@param deltaTime System.Single
---@return Barotrauma.Particles.Particle.UpdateResult
function CS.Barotrauma.Particles.Particle.Update(deltaTime) end

---@private
---@return Barotrauma.Particles.Particle.UpdateResult
function CS.Barotrauma.Particles.Particle.CollisionUpdate() end

---@private
function CS.Barotrauma.Particles.Particle.RefreshColliderSize() end

---@private
---@param dragCoefficient System.Single
---@param deltaTime System.Single
function CS.Barotrauma.Particles.Particle.ApplyDrag(dragCoefficient, deltaTime) end

---@private
---@param prevHull Barotrauma.Hull
---@param collisionNormal Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Particles.Particle.OnWallCollisionInside(prevHull, collisionNormal) end

---@private
---@param collisionHull Barotrauma.Hull
function CS.Barotrauma.Particles.Particle.OnWallCollisionOutside(collisionHull) end

function CS.Barotrauma.Particles.Particle.UpdateDrawPos() end

---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
function CS.Barotrauma.Particles.Particle.Draw(spriteBatch) end

---@return Barotrauma.Particles.Particle
function CS.Barotrauma.Particles.Particle() end

---@class Barotrauma.Particles.ParticleEmitterProperties: System.Object
---@field Name System.String
---@field AngleMinRad System.Single
---@field AngleMaxRad System.Single
---@field AngleMin System.Single
---@field AngleMax System.Single
---@field DistanceMin System.Single
---@field DistanceMax System.Single
---@field VelocityMin System.Single
---@field VelocityMax System.Single
---@field ScaleMin System.Single
---@field ScaleMax System.Single
---@field ScaleMultiplier Microsoft.Xna.Framework.Vector2
---@field EmitInterval System.Single
---@field ParticleAmount System.Int32
---@field ParticlesPerSecond System.Single
---@field EmitAcrossRayInterval System.Single
---@field InitialDelay System.Single
---@field HighQualityCollisionDetection System.Boolean
---@field CopyEntityAngle System.Boolean
---@field CopyEntityDir System.Boolean
---@field CopyTargetAngle System.Boolean
---@field CopyParentParticleScale System.Boolean
---@field ColorMultiplier Microsoft.Xna.Framework.Color
---@field LifeTimeMultiplier System.Single
---@field UseTracerPoints System.Boolean
---@field DrawOrder Barotrauma.Particles.ParticleDrawOrder
---@field Angle System.Single
---@field Distance System.Single
---@field Velocity System.Single
---@field SerializableProperties userdata | { [Barotrauma.Identifier]: Barotrauma.SerializableProperty } | (fun(): userdata)
---@field private angleMin System.Single
---@field private angleMax System.Single
---@field private MinValue System.Single
---@field private MaxValue System.Single
CS.Barotrauma.Particles.ParticleEmitterProperties = {}

---@return System.String
function CS.Barotrauma.Particles.ParticleEmitterProperties.get_Name() end

---@return System.Single
function CS.Barotrauma.Particles.ParticleEmitterProperties.get_AngleMin() end

---@param value System.Single
function CS.Barotrauma.Particles.ParticleEmitterProperties.set_AngleMin(value) end

---@return System.Single
function CS.Barotrauma.Particles.ParticleEmitterProperties.get_AngleMax() end

---@param value System.Single
function CS.Barotrauma.Particles.ParticleEmitterProperties.set_AngleMax(value) end

---@return System.Single
function CS.Barotrauma.Particles.ParticleEmitterProperties.get_Angle() end

---@param value System.Single
function CS.Barotrauma.Particles.ParticleEmitterProperties.set_Angle(value) end

---@return System.Single
function CS.Barotrauma.Particles.ParticleEmitterProperties.get_Distance() end

---@param value System.Single
function CS.Barotrauma.Particles.ParticleEmitterProperties.set_Distance(value) end

---@return System.Single
function CS.Barotrauma.Particles.ParticleEmitterProperties.get_Velocity() end

---@param value System.Single
function CS.Barotrauma.Particles.ParticleEmitterProperties.set_Velocity(value) end

---@param element System.Xml.Linq.XElement
---@return Barotrauma.Particles.ParticleEmitterProperties
function CS.Barotrauma.Particles.ParticleEmitterProperties(element) end

---@class Barotrauma.Particles.ParticleEmitter: System.Object
---@field private emitTimer System.Single
---@field private burstEmitTimer System.Single
---@field private initialDelay System.Single
---@field Prefab Barotrauma.Particles.ParticleEmitterPrefab
CS.Barotrauma.Particles.ParticleEmitter = {}

---@param deltaTime System.Single
---@param position Microsoft.Xna.Framework.Vector2
---@param hullGuess? Barotrauma.Hull
---@param angle? System.Single
---@param particleRotation? System.Single
---@param velocityMultiplier? System.Single
---@param sizeMultiplier? System.Single
---@param amountMultiplier? System.Single
---@param colorMultiplier? Microsoft.Xna.Framework.Color|nil
---@param overrideParticle? Barotrauma.Particles.ParticlePrefab
---@param mirrorAngle? System.Boolean
---@param tracerPoints? userdata
function CS.Barotrauma.Particles.ParticleEmitter.Emit(deltaTime, position, hullGuess, angle, particleRotation, velocityMultiplier, sizeMultiplier, amountMultiplier, colorMultiplier, overrideParticle, mirrorAngle, tracerPoints) end

---@private
---@param position Microsoft.Xna.Framework.Vector2
---@param hullGuess Barotrauma.Hull
---@param angle System.Single
---@param particleRotation System.Single
---@param velocityMultiplier System.Single
---@param sizeMultiplier System.Single
---@param colorMultiplier? Microsoft.Xna.Framework.Color|nil
---@param overrideParticle? Barotrauma.Particles.ParticlePrefab
---@param mirrorAngle? System.Boolean
---@param tracerPoints? userdata
function CS.Barotrauma.Particles.ParticleEmitter.Emit(position, hullGuess, angle, particleRotation, velocityMultiplier, sizeMultiplier, colorMultiplier, overrideParticle, mirrorAngle, tracerPoints) end

---@param startPosition Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Rectangle
function CS.Barotrauma.Particles.ParticleEmitter.CalculateParticleBounds(startPosition) end

---@overload fun(prefab: Barotrauma.Particles.ParticleEmitterPrefab): Barotrauma.Particles.ParticleEmitter
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Particles.ParticleEmitter
function CS.Barotrauma.Particles.ParticleEmitter(element) end

---@class Barotrauma.Particles.ParticleEmitterPrefab: System.Object
---@field ParticlePrefab Barotrauma.Particles.ParticlePrefab
---@field DrawOrder Barotrauma.Particles.ParticleDrawOrder
---@field ParticlePrefabName Barotrauma.Identifier
---@field Properties Barotrauma.Particles.ParticleEmitterProperties
---@field ContentPackage Barotrauma.ContentPackage
CS.Barotrauma.Particles.ParticleEmitterPrefab = {}

---@return Barotrauma.Particles.ParticlePrefab
function CS.Barotrauma.Particles.ParticleEmitterPrefab.get_ParticlePrefab() end

---@return Barotrauma.Particles.ParticleDrawOrder
function CS.Barotrauma.Particles.ParticleEmitterPrefab.get_DrawOrder() end

---@overload fun(prefab: Barotrauma.Particles.ParticlePrefab, properties: Barotrauma.Particles.ParticleEmitterProperties): Barotrauma.Particles.ParticleEmitterPrefab
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Particles.ParticleEmitterPrefab
function CS.Barotrauma.Particles.ParticleEmitterPrefab(element) end

---@enum Barotrauma.Particles.ParticleBlendState
CS.Barotrauma.Particles.ParticleBlendState = {
    AlphaBlend = 0,
    Additive = 1
}

---@enum Barotrauma.Particles.ParticleDrawOrder
CS.Barotrauma.Particles.ParticleDrawOrder = {
    Default = 0,
    Foreground = 1,
    Background = 2
}

---@class Barotrauma.Particles.ParticleManager: System.Object
---@field ParticleCount System.Int32
---@field MaxParticles System.Int32
---@field Camera Barotrauma.Camera
---@field private particleCount System.Int32
---@field private maxParticles System.Int32
---@field private particles Barotrauma.Particles.Particle[]
---@field private particlesInCreationOrder userdata | (fun(): Barotrauma.Particles.Particle)
---@field private cam Barotrauma.Camera
---@field private MaxOutOfViewDist System.Int32
CS.Barotrauma.Particles.ParticleManager = {}

---@return System.Int32
function CS.Barotrauma.Particles.ParticleManager.get_ParticleCount() end

---@return System.Int32
function CS.Barotrauma.Particles.ParticleManager.get_MaxParticles() end

---@param value System.Int32
function CS.Barotrauma.Particles.ParticleManager.set_MaxParticles(value) end

---@return Barotrauma.Camera
function CS.Barotrauma.Particles.ParticleManager.get_Camera() end

---@param value Barotrauma.Camera
function CS.Barotrauma.Particles.ParticleManager.set_Camera(value) end

---@overload fun(prefabName: System.String, position: Microsoft.Xna.Framework.Vector2, velocity: Microsoft.Xna.Framework.Vector2, rotation?: System.Single, hullGuess?: Barotrauma.Hull, collisionIgnoreTimer?: System.Single, tracerPoints?: userdata): Barotrauma.Particles.Particle
---@overload fun(prefab: Barotrauma.Particles.ParticlePrefab, position: Microsoft.Xna.Framework.Vector2, velocity: Microsoft.Xna.Framework.Vector2, rotation?: System.Single, hullGuess?: Barotrauma.Hull, drawOrder?: Barotrauma.Particles.ParticleDrawOrder, collisionIgnoreTimer?: System.Single, lifeTimeMultiplier?: System.Single, tracerPoints?: userdata): Barotrauma.Particles.Particle
---@param prefabName System.String
---@param position Microsoft.Xna.Framework.Vector2
---@param angle System.Single
---@param speed System.Single
---@param hullGuess? Barotrauma.Hull
---@param collisionIgnoreTimer? System.Single
---@param tracerPoints? userdata
---@return Barotrauma.Particles.Particle
function CS.Barotrauma.Particles.ParticleManager.CreateParticle(prefabName, position, angle, speed, hullGuess, collisionIgnoreTimer, tracerPoints) end

---@return userdata | { [System.Int32]: Barotrauma.Particles.ParticlePrefab } | (fun(): Barotrauma.Particles.ParticlePrefab)
function CS.Barotrauma.Particles.ParticleManager.GetPrefabList() end

---@param prefabName System.String
---@return Barotrauma.Particles.ParticlePrefab
function CS.Barotrauma.Particles.ParticleManager.FindPrefab(prefabName) end

---@private
---@param index System.Int32
function CS.Barotrauma.Particles.ParticleManager.RemoveParticle(index) end

---@param particle Barotrauma.Particles.Particle
function CS.Barotrauma.Particles.ParticleManager.RemoveParticle(particle) end

---@param deltaTime System.Single
function CS.Barotrauma.Particles.ParticleManager.Update(deltaTime) end

function CS.Barotrauma.Particles.ParticleManager.UpdateTransforms() end

---@return userdata | { [Barotrauma.Particles.ParticlePrefab]: System.Int32 } | (fun(): userdata)
function CS.Barotrauma.Particles.ParticleManager.CountActiveParticles() end

---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param inWater System.Boolean
---@param inSub System.Boolean|nil
---@param blendState Barotrauma.Particles.ParticleBlendState
---@param background? System.Boolean|nil
function CS.Barotrauma.Particles.ParticleManager.Draw(spriteBatch, inWater, inSub, blendState, background) end

function CS.Barotrauma.Particles.ParticleManager.ClearParticles() end

---@param prefab Barotrauma.Particles.ParticlePrefab
function CS.Barotrauma.Particles.ParticleManager.RemoveByPrefab(prefab) end

---@param cam Barotrauma.Camera
---@return Barotrauma.Particles.ParticleManager
function CS.Barotrauma.Particles.ParticleManager(cam) end

---@class Barotrauma.Particles.ParticlePrefab: Barotrauma.Prefab
---@field Name System.String
---@field LifeTime System.Single
---@field LifeTimeMin System.Single
---@field StartDelayMin System.Single
---@field StartDelayMax System.Single
---@field AngularVelocityMinRad System.Single
---@field AngularVelocityMin System.Single
---@field AngularVelocityMaxRad System.Single
---@field AngularVelocityMax System.Single
---@field StartRotationMinRad System.Single
---@field StartRotationMin System.Single
---@field StartRotationMaxRad System.Single
---@field StartRotationMax System.Single
---@field RotateToDirection System.Boolean
---@field Drag System.Single
---@field WaterDrag System.Single
---@field VelocityChangeDisplay Microsoft.Xna.Framework.Vector2
---@field VelocityChange Microsoft.Xna.Framework.Vector2
---@field VelocityChangeWaterDisplay Microsoft.Xna.Framework.Vector2
---@field VelocityChangeWater Microsoft.Xna.Framework.Vector2
---@field CanEnterSubs System.Boolean
---@field CollisionRadius System.Single
---@field InvariantCollisionSize System.Boolean
---@field UseCollision System.Boolean
---@field DeleteOnCollision System.Boolean
---@field Friction System.Single
---@field Restitution System.Single
---@field StartSizeMin Microsoft.Xna.Framework.Vector2
---@field StartSizeMax Microsoft.Xna.Framework.Vector2
---@field SizeChangeMin Microsoft.Xna.Framework.Vector2
---@field SizeChangeMax Microsoft.Xna.Framework.Vector2
---@field GrowTime System.Single
---@field StartColor Microsoft.Xna.Framework.Color
---@field MiddleColor Microsoft.Xna.Framework.Color
---@field EndColor Microsoft.Xna.Framework.Color
---@field UseMiddleColor System.Boolean
---@field DrawTarget Barotrauma.Particles.ParticlePrefab.DrawTargetType
---@field DrawOrder Barotrauma.Particles.ParticleDrawOrder
---@field DrawAlways System.Boolean
---@field BlendState Barotrauma.Particles.ParticleBlendState
---@field Priority System.Int32
---@field AnimDuration System.Single
---@field LoopAnim System.Boolean
---@field SerializableProperties userdata | { [Barotrauma.Identifier]: Barotrauma.SerializableProperty } | (fun(): userdata)
---@field Sprites userdata | { [System.Int32]: Barotrauma.Sprite } | (fun(): Barotrauma.Sprite)
---@field private angularVelocityMin System.Single
---@field private angularVelocityMax System.Single
---@field private startRotationMin System.Single
---@field private startRotationMax System.Single
---@field private velocityChange Microsoft.Xna.Framework.Vector2
---@field private velocityChangeWater Microsoft.Xna.Framework.Vector2
---@field SubEmitters userdata | { [System.Int32]: Barotrauma.Particles.ParticleEmitterPrefab } | (fun(): Barotrauma.Particles.ParticleEmitterPrefab)
---@field Prefabs userdata | { [Barotrauma.Identifier]: Barotrauma.Particles.ParticlePrefab } | { [System.String]: Barotrauma.Particles.ParticlePrefab } | (fun(): Barotrauma.Particles.ParticlePrefab)
CS.Barotrauma.Particles.ParticlePrefab = {}

function CS.Barotrauma.Particles.ParticlePrefab.Dispose() end

---@return System.String
function CS.Barotrauma.Particles.ParticlePrefab.get_Name() end

---@return System.Single
function CS.Barotrauma.Particles.ParticlePrefab.get_AngularVelocityMin() end

---@private
---@param value System.Single
function CS.Barotrauma.Particles.ParticlePrefab.set_AngularVelocityMin(value) end

---@return System.Single
function CS.Barotrauma.Particles.ParticlePrefab.get_AngularVelocityMax() end

---@private
---@param value System.Single
function CS.Barotrauma.Particles.ParticlePrefab.set_AngularVelocityMax(value) end

---@return System.Single
function CS.Barotrauma.Particles.ParticlePrefab.get_StartRotationMin() end

---@private
---@param value System.Single
function CS.Barotrauma.Particles.ParticlePrefab.set_StartRotationMin(value) end

---@return System.Single
function CS.Barotrauma.Particles.ParticlePrefab.get_StartRotationMax() end

---@private
---@param value System.Single
function CS.Barotrauma.Particles.ParticlePrefab.set_StartRotationMax(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Particles.ParticlePrefab.get_VelocityChange() end

---@private
---@param value Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Particles.ParticlePrefab.set_VelocityChange(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Particles.ParticlePrefab.get_VelocityChangeWater() end

---@private
---@param value Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Particles.ParticlePrefab.set_VelocityChangeWater(value) end

---@param startPosition Microsoft.Xna.Framework.Vector2
---@param velocity Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Particles.ParticlePrefab.CalculateEndPosition(startPosition, velocity) end

---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Particles.ParticlePrefab.CalculateEndSize() end

---@overload fun(): Barotrauma.Particles.ParticlePrefab
---@param element Barotrauma.ContentXElement
---@param file Barotrauma.ContentFile
---@return Barotrauma.Particles.ParticlePrefab
function CS.Barotrauma.Particles.ParticlePrefab(element, file) end

---@class Barotrauma.Particles.Particle.OnChangeHullHandler: System.MulticastDelegate
CS.Barotrauma.Particles.Particle.OnChangeHullHandler = {}

---@param position Microsoft.Xna.Framework.Vector2
---@param currentHull Barotrauma.Hull
function CS.Barotrauma.Particles.Particle.OnChangeHullHandler.Invoke(position, currentHull) end

---@param position Microsoft.Xna.Framework.Vector2
---@param currentHull Barotrauma.Hull
---@param callback fun(ar: System.IAsyncResult)
---@param object System.Object
---@return System.IAsyncResult
function CS.Barotrauma.Particles.Particle.OnChangeHullHandler.BeginInvoke(position, currentHull, callback, object) end

---@param result System.IAsyncResult
function CS.Barotrauma.Particles.Particle.OnChangeHullHandler.EndInvoke(result) end

---@param object System.Object
---@param method System.IntPtr
---@return Barotrauma.Particles.Particle.OnChangeHullHandler
function CS.Barotrauma.Particles.Particle.OnChangeHullHandler(object, method) end

---@enum Barotrauma.Particles.Particle.UpdateResult
CS.Barotrauma.Particles.Particle.UpdateResult = {
    Normal = 0,
    Delete = 1
}

---@enum Barotrauma.Particles.ParticlePrefab.DrawTargetType
CS.Barotrauma.Particles.ParticlePrefab.DrawTargetType = {
    Air = 1,
    Water = 2,
    Both = 3
}


---@meta
---Auto-generated from Farseer.NetStandard
---Namespace: FarseerPhysics.Dynamics

---@class FarseerPhysics.Dynamics.Body: System.Object
---@field World FarseerPhysics.Dynamics.World
---@field IslandIndex System.Int32
---@field Revolutions System.Single
---@field BodyType FarseerPhysics.BodyType
---@field LinearVelocity Microsoft.Xna.Framework.Vector2
---@field AngularVelocity System.Single
---@field LinearDamping System.Single
---@field AngularDamping System.Single
---@field IsBullet System.Boolean
---@field SleepingAllowed System.Boolean
---@field Awake System.Boolean
---@field Enabled System.Boolean
---@field FixedRotation System.Boolean
---@field JointList FarseerPhysics.Dynamics.Joints.JointEdge
---@field ContactList FarseerPhysics.Dynamics.Contacts.ContactEdge
---@field Position Microsoft.Xna.Framework.Vector2
---@field Rotation System.Single
---@field GravityScale System.Single
---@field IgnoreGravity System.Boolean
---@field WorldCenter Microsoft.Xna.Framework.Vector2
---@field LocalCenter Microsoft.Xna.Framework.Vector2
---@field Mass System.Single
---@field Inertia System.Single
---@field IgnoreCCD System.Boolean
---@field Restitution System.Single
---@field Friction System.Single
---@field CollisionCategoriesMatchBetweenFixtures System.Boolean
---@field CollisionCategories FarseerPhysics.Dynamics.Category
---@field CollidesWithMatchesBetweenFixtures System.Boolean
---@field CollidesWith FarseerPhysics.Dynamics.Category
---@field private _angularDamping System.Single
---@field private _bodyType FarseerPhysics.BodyType
---@field private _inertia System.Single
---@field private _linearDamping System.Single
---@field private _mass System.Single
---@field private _sleepingAllowed System.Boolean
---@field private _awake System.Boolean
---@field private _fixedRotation System.Boolean
---@field package _enabled System.Boolean
---@field package _angularVelocity System.Single
---@field package _linearVelocity Microsoft.Xna.Framework.Vector2
---@field package _force Microsoft.Xna.Framework.Vector2
---@field package _invI System.Single
---@field package _invMass System.Single
---@field package _sleepTime System.Single
---@field package _sweep FarseerPhysics.Common.Sweep
---@field package _torque System.Single
---@field package _world FarseerPhysics.Dynamics.World
---@field package _xf FarseerPhysics.Common.Transform
---@field package _island System.Boolean
---@field package _lock System.Int32
---@field package _lockOrder System.Int32
---@field ControllerFilter FarseerPhysics.Common.PhysicsLogic.ControllerFilter
---@field UserData System.Object
---@field FixtureList userdata | { [System.Int32]: FarseerPhysics.Dynamics.Fixture } | (fun(): FarseerPhysics.Dynamics.Fixture)
---@field private gravityScale System.Single
---@field package onCollisionEventHandler fun(sender: FarseerPhysics.Dynamics.Fixture, other: FarseerPhysics.Dynamics.Fixture, contact: FarseerPhysics.Dynamics.Contacts.Contact): System.Boolean
---@field package onSeparationEventHandler fun(sender: FarseerPhysics.Dynamics.Fixture, other: FarseerPhysics.Dynamics.Fixture, contact: FarseerPhysics.Dynamics.Contacts.Contact)
---@field OnEnabled fun()
---@field OnDisabled fun()
---@field private _collisionCategories FarseerPhysics.Dynamics.Category
---@field private _collidesWith FarseerPhysics.Dynamics.Category
CS.FarseerPhysics.Dynamics.Body = {}

---@return FarseerPhysics.Dynamics.World
function CS.FarseerPhysics.Dynamics.Body.get_World() end

---@return System.Single
function CS.FarseerPhysics.Dynamics.Body.get_Revolutions() end

---@return FarseerPhysics.BodyType
function CS.FarseerPhysics.Dynamics.Body.get_BodyType() end

---@param value FarseerPhysics.BodyType
function CS.FarseerPhysics.Dynamics.Body.set_BodyType(value) end

---@param value Microsoft.Xna.Framework.Vector2
function CS.FarseerPhysics.Dynamics.Body.set_LinearVelocity(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.FarseerPhysics.Dynamics.Body.get_LinearVelocity() end

---@param value System.Single
function CS.FarseerPhysics.Dynamics.Body.set_AngularVelocity(value) end

---@return System.Single
function CS.FarseerPhysics.Dynamics.Body.get_AngularVelocity() end

---@return System.Single
function CS.FarseerPhysics.Dynamics.Body.get_LinearDamping() end

---@param value System.Single
function CS.FarseerPhysics.Dynamics.Body.set_LinearDamping(value) end

---@return System.Single
function CS.FarseerPhysics.Dynamics.Body.get_AngularDamping() end

---@param value System.Single
function CS.FarseerPhysics.Dynamics.Body.set_AngularDamping(value) end

---@param value System.Boolean
function CS.FarseerPhysics.Dynamics.Body.set_SleepingAllowed(value) end

---@return System.Boolean
function CS.FarseerPhysics.Dynamics.Body.get_SleepingAllowed() end

---@param value System.Boolean
function CS.FarseerPhysics.Dynamics.Body.set_Awake(value) end

---@return System.Boolean
function CS.FarseerPhysics.Dynamics.Body.get_Awake() end

---@return System.Boolean
function CS.FarseerPhysics.Dynamics.Body.get_Enabled() end

---@param value System.Boolean
function CS.FarseerPhysics.Dynamics.Body.set_Enabled(value) end

---@package
function CS.FarseerPhysics.Dynamics.Body.CreateProxies() end

---@package
function CS.FarseerPhysics.Dynamics.Body.DestroyProxies() end

---@private
function CS.FarseerPhysics.Dynamics.Body.DestroyContacts() end

---@param value System.Boolean
function CS.FarseerPhysics.Dynamics.Body.set_FixedRotation(value) end

---@return System.Boolean
function CS.FarseerPhysics.Dynamics.Body.get_FixedRotation() end

---@return Microsoft.Xna.Framework.Vector2
function CS.FarseerPhysics.Dynamics.Body.get_Position() end

---@param value Microsoft.Xna.Framework.Vector2
function CS.FarseerPhysics.Dynamics.Body.set_Position(value) end

---@return System.Single
function CS.FarseerPhysics.Dynamics.Body.get_Rotation() end

---@param value System.Single
function CS.FarseerPhysics.Dynamics.Body.set_Rotation(value) end

---@return System.Single
function CS.FarseerPhysics.Dynamics.Body.get_GravityScale() end

---@param value System.Single
function CS.FarseerPhysics.Dynamics.Body.set_GravityScale(value) end

---@return Microsoft.Xna.Framework.Vector2
function CS.FarseerPhysics.Dynamics.Body.get_WorldCenter() end

---@return Microsoft.Xna.Framework.Vector2
function CS.FarseerPhysics.Dynamics.Body.get_LocalCenter() end

---@param value Microsoft.Xna.Framework.Vector2
function CS.FarseerPhysics.Dynamics.Body.set_LocalCenter(value) end

---@return System.Single
function CS.FarseerPhysics.Dynamics.Body.get_Mass() end

---@param value System.Single
function CS.FarseerPhysics.Dynamics.Body.set_Mass(value) end

---@return System.Single
function CS.FarseerPhysics.Dynamics.Body.get_Inertia() end

---@param value System.Single
function CS.FarseerPhysics.Dynamics.Body.set_Inertia(value) end

function CS.FarseerPhysics.Dynamics.Body.ResetDynamics() end

---@param fixture FarseerPhysics.Dynamics.Fixture
---@param resetMassData? System.Boolean
function CS.FarseerPhysics.Dynamics.Body.Add(fixture, resetMassData) end

---@param fixture FarseerPhysics.Dynamics.Fixture
function CS.FarseerPhysics.Dynamics.Body.Remove(fixture) end

---@overload fun(position: Microsoft.Xna.Framework.Vector2, rotation: System.Single)
---@param position Microsoft.Xna.Framework.Vector2
---@param rotation System.Single
function CS.FarseerPhysics.Dynamics.Body.SetTransform(position, rotation) end

---@param position Microsoft.Xna.Framework.Vector2
---@param angle System.Single
function CS.FarseerPhysics.Dynamics.Body.SetTransformIgnoreContacts(position, angle) end

---@overload fun(transform: FarseerPhysics.Common.Transform)
---@return FarseerPhysics.Common.Transform
function CS.FarseerPhysics.Dynamics.Body.GetTransform() end

---@overload fun(force: Microsoft.Xna.Framework.Vector2)
---@overload fun(force: Microsoft.Xna.Framework.Vector2)
---@overload fun(force: Microsoft.Xna.Framework.Vector2, point: Microsoft.Xna.Framework.Vector2)
---@param force Microsoft.Xna.Framework.Vector2
---@param point Microsoft.Xna.Framework.Vector2
function CS.FarseerPhysics.Dynamics.Body.ApplyForce(force, point) end

---@param torque System.Single
function CS.FarseerPhysics.Dynamics.Body.ApplyTorque(torque) end

---@overload fun(impulse: Microsoft.Xna.Framework.Vector2, point: Microsoft.Xna.Framework.Vector2)
---@overload fun(impulse: Microsoft.Xna.Framework.Vector2)
---@overload fun(impulse: Microsoft.Xna.Framework.Vector2, point: Microsoft.Xna.Framework.Vector2)
---@param impulse Microsoft.Xna.Framework.Vector2
function CS.FarseerPhysics.Dynamics.Body.ApplyLinearImpulse(impulse) end

---@param impulse System.Single
function CS.FarseerPhysics.Dynamics.Body.ApplyAngularImpulse(impulse) end

function CS.FarseerPhysics.Dynamics.Body.ResetMassData() end

---@overload fun(localPoint: Microsoft.Xna.Framework.Vector2): Microsoft.Xna.Framework.Vector2
---@param localPoint Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
function CS.FarseerPhysics.Dynamics.Body.GetWorldPoint(localPoint) end

---@overload fun(localVector: Microsoft.Xna.Framework.Vector2): Microsoft.Xna.Framework.Vector2
---@param localVector Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
function CS.FarseerPhysics.Dynamics.Body.GetWorldVector(localVector) end

---@overload fun(worldPoint: Microsoft.Xna.Framework.Vector2): Microsoft.Xna.Framework.Vector2
---@param worldPoint Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
function CS.FarseerPhysics.Dynamics.Body.GetLocalPoint(worldPoint) end

---@overload fun(worldVector: Microsoft.Xna.Framework.Vector2): Microsoft.Xna.Framework.Vector2
---@param worldVector Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
function CS.FarseerPhysics.Dynamics.Body.GetLocalVector(worldVector) end

---@overload fun(worldPoint: Microsoft.Xna.Framework.Vector2): Microsoft.Xna.Framework.Vector2
---@param worldPoint Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
function CS.FarseerPhysics.Dynamics.Body.GetLinearVelocityFromWorldPoint(worldPoint) end

---@overload fun(localPoint: Microsoft.Xna.Framework.Vector2): Microsoft.Xna.Framework.Vector2
---@param localPoint Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
function CS.FarseerPhysics.Dynamics.Body.GetLinearVelocityFromLocalPoint(localPoint) end

---@package
function CS.FarseerPhysics.Dynamics.Body.SynchronizeFixtures() end

---@package
function CS.FarseerPhysics.Dynamics.Body.SynchronizeTransform() end

---@package
---@param other FarseerPhysics.Dynamics.Body
---@return System.Boolean
function CS.FarseerPhysics.Dynamics.Body.ShouldCollide(other) end

---@package
---@param alpha System.Single
function CS.FarseerPhysics.Dynamics.Body.Advance(alpha) end

---@param value fun(sender: FarseerPhysics.Dynamics.Fixture, other: FarseerPhysics.Dynamics.Fixture, contact: FarseerPhysics.Dynamics.Contacts.Contact): System.Boolean
function CS.FarseerPhysics.Dynamics.Body.add_OnCollision(value) end

---@param value fun(sender: FarseerPhysics.Dynamics.Fixture, other: FarseerPhysics.Dynamics.Fixture, contact: FarseerPhysics.Dynamics.Contacts.Contact): System.Boolean
function CS.FarseerPhysics.Dynamics.Body.remove_OnCollision(value) end

---@param value fun(sender: FarseerPhysics.Dynamics.Fixture, other: FarseerPhysics.Dynamics.Fixture, contact: FarseerPhysics.Dynamics.Contacts.Contact)
function CS.FarseerPhysics.Dynamics.Body.add_OnSeparation(value) end

---@param value fun(sender: FarseerPhysics.Dynamics.Fixture, other: FarseerPhysics.Dynamics.Fixture, contact: FarseerPhysics.Dynamics.Contacts.Contact)
function CS.FarseerPhysics.Dynamics.Body.remove_OnSeparation(value) end

---@param value System.Single
function CS.FarseerPhysics.Dynamics.Body.set_Restitution(value) end

---@param value System.Single
function CS.FarseerPhysics.Dynamics.Body.set_Friction(value) end

---@param restitution System.Single
function CS.FarseerPhysics.Dynamics.Body.SetRestitution(restitution) end

---@param friction System.Single
function CS.FarseerPhysics.Dynamics.Body.SetFriction(friction) end

---@return FarseerPhysics.Dynamics.Category
function CS.FarseerPhysics.Dynamics.Body.get_CollisionCategories() end

---@param value FarseerPhysics.Dynamics.Category
function CS.FarseerPhysics.Dynamics.Body.set_CollisionCategories(value) end

---@return FarseerPhysics.Dynamics.Category
function CS.FarseerPhysics.Dynamics.Body.get_CollidesWith() end

---@param value FarseerPhysics.Dynamics.Category
function CS.FarseerPhysics.Dynamics.Body.set_CollidesWith(value) end

function CS.FarseerPhysics.Dynamics.Body.RefreshCollisionCategoriesMatchBetweenFixtures() end

---@param category FarseerPhysics.Dynamics.Category
function CS.FarseerPhysics.Dynamics.Body.SetCollisionCategories(category) end

function CS.FarseerPhysics.Dynamics.Body.RefreshCollidesWithMatchesBetweenFixtures() end

---@param category FarseerPhysics.Dynamics.Category
function CS.FarseerPhysics.Dynamics.Body.SetCollidesWith(category) end

---@param collisionGroup System.Int16
function CS.FarseerPhysics.Dynamics.Body.SetCollisionGroup(collisionGroup) end

---@param isSensor System.Boolean
function CS.FarseerPhysics.Dynamics.Body.SetIsSensor(isSensor) end

---@param world? FarseerPhysics.Dynamics.World
---@return FarseerPhysics.Dynamics.Body
function CS.FarseerPhysics.Dynamics.Body.Clone(world) end

---@param world? FarseerPhysics.Dynamics.World
---@return FarseerPhysics.Dynamics.Body
function CS.FarseerPhysics.Dynamics.Body.DeepClone(world) end

---@param shape FarseerPhysics.Collision.Shapes.Shape
---@param collisionCategory FarseerPhysics.Dynamics.Category
---@param collidesWith FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Fixture
function CS.FarseerPhysics.Dynamics.Body.CreateFixture(shape, collisionCategory, collidesWith) end

---@param start Microsoft.Xna.Framework.Vector2
---@param __end__ Microsoft.Xna.Framework.Vector2
---@param collisionCategory FarseerPhysics.Dynamics.Category
---@param collidesWith FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Fixture
function CS.FarseerPhysics.Dynamics.Body.CreateEdge(start, __end__, collisionCategory, collidesWith) end

---@param vertices FarseerPhysics.Common.Vertices
---@param collisionCategory FarseerPhysics.Dynamics.Category
---@param collidesWith FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Fixture
function CS.FarseerPhysics.Dynamics.Body.CreateChainShape(vertices, collisionCategory, collidesWith) end

---@param vertices FarseerPhysics.Common.Vertices
---@param collisionCategory FarseerPhysics.Dynamics.Category
---@param collidesWith FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Fixture
function CS.FarseerPhysics.Dynamics.Body.CreateLoopShape(vertices, collisionCategory, collidesWith) end

---@overload fun(width: System.Single, height: System.Single, density: System.Single, rotation: System.Single, offset: Microsoft.Xna.Framework.Vector2, collisionCategory: FarseerPhysics.Dynamics.Category, collidesWith: FarseerPhysics.Dynamics.Category): FarseerPhysics.Dynamics.Fixture
---@param width System.Single
---@param height System.Single
---@param density System.Single
---@param offset Microsoft.Xna.Framework.Vector2
---@param collisionCategory FarseerPhysics.Dynamics.Category
---@param collidesWith FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Fixture
function CS.FarseerPhysics.Dynamics.Body.CreateRectangle(width, height, density, offset, collisionCategory, collidesWith) end

---@overload fun(radius: System.Single, density: System.Single, offset: Microsoft.Xna.Framework.Vector2, collisionCategory: FarseerPhysics.Dynamics.Category, collidesWith: FarseerPhysics.Dynamics.Category): FarseerPhysics.Dynamics.Fixture
---@param radius System.Single
---@param density System.Single
---@param collisionCategory FarseerPhysics.Dynamics.Category
---@param collidesWith FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Fixture
function CS.FarseerPhysics.Dynamics.Body.CreateCircle(radius, density, collisionCategory, collidesWith) end

---@param vertices FarseerPhysics.Common.Vertices
---@param density System.Single
---@param collisionCategory FarseerPhysics.Dynamics.Category
---@param collidesWith FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Fixture
function CS.FarseerPhysics.Dynamics.Body.CreatePolygon(vertices, density, collisionCategory, collidesWith) end

---@param xRadius System.Single
---@param yRadius System.Single
---@param edges System.Int32
---@param density System.Single
---@param collisionCategory FarseerPhysics.Dynamics.Category
---@param collidesWith FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Fixture
function CS.FarseerPhysics.Dynamics.Body.CreateEllipse(xRadius, yRadius, edges, density, collisionCategory, collidesWith) end

---@param list userdata | { [System.Int32]: FarseerPhysics.Common.Vertices } | (fun(): FarseerPhysics.Common.Vertices)
---@param density System.Single
---@param collisionCategory FarseerPhysics.Dynamics.Category
---@param collidesWith FarseerPhysics.Dynamics.Category
---@return userdata | { [System.Int32]: FarseerPhysics.Dynamics.Fixture } | (fun(): FarseerPhysics.Dynamics.Fixture)
function CS.FarseerPhysics.Dynamics.Body.CreateCompoundPolygon(list, density, collisionCategory, collidesWith) end

---@param radians System.Single
---@param sides System.Int32
---@param radius System.Single
---@param closed System.Boolean
---@param collisionCategory FarseerPhysics.Dynamics.Category
---@param collidesWith FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Fixture
function CS.FarseerPhysics.Dynamics.Body.CreateLineArc(radians, sides, radius, closed, collisionCategory, collidesWith) end

---@param density System.Single
---@param radians System.Single
---@param sides System.Int32
---@param radius System.Single
---@param collisionCategory FarseerPhysics.Dynamics.Category
---@param collidesWith FarseerPhysics.Dynamics.Category
---@return userdata | { [System.Int32]: FarseerPhysics.Dynamics.Fixture } | (fun(): FarseerPhysics.Dynamics.Fixture)
function CS.FarseerPhysics.Dynamics.Body.CreateSolidArc(density, radians, sides, radius, collisionCategory, collidesWith) end

do
---@return FarseerPhysics.Dynamics.Body
local __ctor = function() end
CS.FarseerPhysics.Dynamics.Body = __ctor
CS.FarseerPhysics.Dynamics.Body.__new = __ctor
end

---@class FarseerPhysics.Dynamics.Fixture: System.Object
---@field Proxies FarseerPhysics.Dynamics.FixtureProxy[]
---@field ProxyCount System.Int32
---@field CollisionGroup System.Int16
---@field CollidesWith FarseerPhysics.Dynamics.Category
---@field CollisionCategories FarseerPhysics.Dynamics.Category
---@field Shape FarseerPhysics.Collision.Shapes.Shape
---@field IsSensor System.Boolean
---@field Body FarseerPhysics.Dynamics.Body
---@field Friction System.Single
---@field Restitution System.Single
---@field private _isSensor System.Boolean
---@field private _friction System.Single
---@field private _restitution System.Single
---@field package _collidesWith FarseerPhysics.Dynamics.Category
---@field package _collisionCategories FarseerPhysics.Dynamics.Category
---@field package _collisionGroup System.Int16
---@field AfterCollision fun(sender: FarseerPhysics.Dynamics.Fixture, other: FarseerPhysics.Dynamics.Fixture, contact: FarseerPhysics.Dynamics.Contacts.Contact, impulse: FarseerPhysics.Dynamics.Contacts.ContactVelocityConstraint)
---@field BeforeCollision fun(sender: FarseerPhysics.Dynamics.Fixture, other: FarseerPhysics.Dynamics.Fixture): System.Boolean
---@field OnCollision fun(sender: FarseerPhysics.Dynamics.Fixture, other: FarseerPhysics.Dynamics.Fixture, contact: FarseerPhysics.Dynamics.Contacts.Contact): System.Boolean
---@field OnSeparation fun(sender: FarseerPhysics.Dynamics.Fixture, other: FarseerPhysics.Dynamics.Fixture, contact: FarseerPhysics.Dynamics.Contacts.Contact)
---@field UserData System.Object
CS.FarseerPhysics.Dynamics.Fixture = {}

---@param value System.Int16
function CS.FarseerPhysics.Dynamics.Fixture.set_CollisionGroup(value) end

---@return System.Int16
function CS.FarseerPhysics.Dynamics.Fixture.get_CollisionGroup() end

---@return FarseerPhysics.Dynamics.Category
function CS.FarseerPhysics.Dynamics.Fixture.get_CollidesWith() end

---@param value FarseerPhysics.Dynamics.Category
function CS.FarseerPhysics.Dynamics.Fixture.set_CollidesWith(value) end

---@return FarseerPhysics.Dynamics.Category
function CS.FarseerPhysics.Dynamics.Fixture.get_CollisionCategories() end

---@package
---@param value FarseerPhysics.Dynamics.Category
function CS.FarseerPhysics.Dynamics.Fixture.set_CollisionCategories(value) end

---@return System.Boolean
function CS.FarseerPhysics.Dynamics.Fixture.get_IsSensor() end

---@param value System.Boolean
function CS.FarseerPhysics.Dynamics.Fixture.set_IsSensor(value) end

---@return System.Single
function CS.FarseerPhysics.Dynamics.Fixture.get_Friction() end

---@param value System.Single
function CS.FarseerPhysics.Dynamics.Fixture.set_Friction(value) end

---@return System.Single
function CS.FarseerPhysics.Dynamics.Fixture.get_Restitution() end

---@param value System.Single
function CS.FarseerPhysics.Dynamics.Fixture.set_Restitution(value) end

---@private
function CS.FarseerPhysics.Dynamics.Fixture.Refilter() end

---@package
---@param broadPhase FarseerPhysics.Collision.IBroadPhase
function CS.FarseerPhysics.Dynamics.Fixture.TouchProxies(broadPhase) end

---@param point Microsoft.Xna.Framework.Vector2
---@return System.Boolean
function CS.FarseerPhysics.Dynamics.Fixture.TestPoint(point) end

---@param output FarseerPhysics.Collision.RayCastOutput
---@param input FarseerPhysics.Collision.RayCastInput
---@param childIndex System.Int32
---@return System.Boolean
function CS.FarseerPhysics.Dynamics.Fixture.RayCast(output, input, childIndex) end

---@param aabb FarseerPhysics.Collision.AABB
---@param childIndex System.Int32
function CS.FarseerPhysics.Dynamics.Fixture.GetAABB(aabb, childIndex) end

---@package
---@param broadPhase FarseerPhysics.Collision.IBroadPhase
---@param xf FarseerPhysics.Common.Transform
function CS.FarseerPhysics.Dynamics.Fixture.CreateProxies(broadPhase, xf) end

---@package
---@param broadPhase FarseerPhysics.Collision.IBroadPhase
function CS.FarseerPhysics.Dynamics.Fixture.DestroyProxies(broadPhase) end

---@package
---@param broadPhase FarseerPhysics.Collision.IBroadPhase
---@param transform1 FarseerPhysics.Common.Transform
---@param transform2 FarseerPhysics.Common.Transform
function CS.FarseerPhysics.Dynamics.Fixture.Synchronize(broadPhase, transform1, transform2) end

---@param body FarseerPhysics.Dynamics.Body
---@return FarseerPhysics.Dynamics.Fixture
function CS.FarseerPhysics.Dynamics.Fixture.CloneOnto(body) end

---@package
---@param body FarseerPhysics.Dynamics.Body
---@param shape FarseerPhysics.Collision.Shapes.Shape
---@return FarseerPhysics.Dynamics.Fixture
function CS.FarseerPhysics.Dynamics.Fixture.CloneOnto(body, shape) end

do
---@package
---@overload fun(shape: FarseerPhysics.Collision.Shapes.Shape, collisionCategory: FarseerPhysics.Dynamics.Category, collidesWith: FarseerPhysics.Dynamics.Category): FarseerPhysics.Dynamics.Fixture
---@param collisionCategory FarseerPhysics.Dynamics.Category
---@param collidesWith FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Fixture
local __ctor = function(collisionCategory, collidesWith) end
CS.FarseerPhysics.Dynamics.Fixture = __ctor
CS.FarseerPhysics.Dynamics.Fixture.__new = __ctor
end

---@class FarseerPhysics.Dynamics.World: System.Object
---@field Fluid FarseerPhysics.Fluids.FluidSystem2
---@field UpdateTime System.TimeSpan
---@field ContinuousPhysicsTime System.TimeSpan
---@field ControllersUpdateTime System.TimeSpan
---@field AddRemoveTime System.TimeSpan
---@field NewContactsTime System.TimeSpan
---@field ContactsUpdateTime System.TimeSpan
---@field SolveUpdateTime System.TimeSpan
---@field ProxyCount System.Int32
---@field ContactCount System.Int32
---@field IsLocked System.Boolean
---@field ContactList FarseerPhysics.Dynamics.Contacts.ContactListHead
---@field Enabled System.Boolean
---@field Island FarseerPhysics.Dynamics.Island
---@field private _stepComplete System.Boolean
---@field private _invDt0 System.Single
---@field private _stack FarseerPhysics.Dynamics.Body[]
---@field private _bodyAddList userdata | (fun(): FarseerPhysics.Dynamics.Body)
---@field private _bodyRemoveList userdata | (fun(): FarseerPhysics.Dynamics.Body)
---@field private _jointAddList userdata | (fun(): FarseerPhysics.Dynamics.Joints.Joint)
---@field private _jointRemoveList userdata | (fun(): FarseerPhysics.Dynamics.Joints.Joint)
---@field private _queryAABBCallback fun(arg: FarseerPhysics.Dynamics.Fixture): System.Boolean
---@field private _queryAABBCallbackWrapper fun(arg: System.Int32): System.Boolean
---@field private _input FarseerPhysics.Collision.TOIInput
---@field private _myFixture FarseerPhysics.Dynamics.Fixture
---@field private _point1 Microsoft.Xna.Framework.Vector2
---@field private _point2 Microsoft.Xna.Framework.Vector2
---@field private _testPointAllFixtures userdata | { [System.Int32]: FarseerPhysics.Dynamics.Fixture } | (fun(): FarseerPhysics.Dynamics.Fixture)
---@field private _watch System.Diagnostics.Stopwatch
---@field private _rayCastCallback fun(arg1: FarseerPhysics.Dynamics.Fixture, arg2: Microsoft.Xna.Framework.Vector2, arg3: Microsoft.Xna.Framework.Vector2, arg4: System.Single): System.Single
---@field private _rayCastCallbackWrapper fun(arg1: FarseerPhysics.Collision.RayCastInput, arg2: FarseerPhysics.Dynamics.FixtureProxy): System.Single
---@field package _worldHasNewFixture System.Boolean
---@field Tag System.Object
---@field BodyAdded fun(sender: FarseerPhysics.Dynamics.World, body: FarseerPhysics.Dynamics.Body)
---@field BodyRemoved fun(sender: FarseerPhysics.Dynamics.World, body: FarseerPhysics.Dynamics.Body)
---@field FixtureAdded fun(sender: FarseerPhysics.Dynamics.World, body: FarseerPhysics.Dynamics.Body, fixture: FarseerPhysics.Dynamics.Fixture)
---@field FixtureRemoved fun(sender: FarseerPhysics.Dynamics.World, body: FarseerPhysics.Dynamics.Body, fixture: FarseerPhysics.Dynamics.Fixture)
---@field JointAdded fun(sender: FarseerPhysics.Dynamics.World, joint: FarseerPhysics.Dynamics.Joints.Joint)
---@field JointRemoved fun(sender: FarseerPhysics.Dynamics.World, joint: FarseerPhysics.Dynamics.Joints.Joint)
---@field ControllerAdded fun(sender: FarseerPhysics.Dynamics.World, controller: FarseerPhysics.Controllers.Controller)
---@field ControllerRemoved fun(sender: FarseerPhysics.Dynamics.World, controller: FarseerPhysics.Controllers.Controller)
---@field ControllerList userdata | { [System.Int32]: FarseerPhysics.Controllers.Controller } | (fun(): FarseerPhysics.Controllers.Controller)
---@field Gravity Microsoft.Xna.Framework.Vector2
---@field ContactManager FarseerPhysics.Dynamics.ContactManager
---@field BodyList userdata | { [System.Int32]: FarseerPhysics.Dynamics.Body } | (fun(): FarseerPhysics.Dynamics.Body)
---@field JointList userdata | { [System.Int32]: FarseerPhysics.Dynamics.Joints.Joint } | (fun(): FarseerPhysics.Dynamics.Joints.Joint)
---@field private _warmStarting System.Boolean
---@field private _subStepping System.Boolean
CS.FarseerPhysics.Dynamics.World = {}

---@private
---@param proxyId System.Int32
---@return System.Boolean
function CS.FarseerPhysics.Dynamics.World.QueryAABBCallbackWrapper(proxyId) end

---@private
---@param rayCastInput FarseerPhysics.Collision.RayCastInput
---@param proxy FarseerPhysics.Dynamics.FixtureProxy
---@return System.Single
function CS.FarseerPhysics.Dynamics.World.RayCastCallbackWrapper(rayCastInput, proxy) end

---@private
---@param step FarseerPhysics.Dynamics.TimeStep
function CS.FarseerPhysics.Dynamics.World.Solve(step) end

---@private
---@param step FarseerPhysics.Dynamics.TimeStep
---@param iterations FarseerPhysics.Dynamics.SolverIterations
function CS.FarseerPhysics.Dynamics.World.SolveTOI(step, iterations) end

---@return System.Int32
function CS.FarseerPhysics.Dynamics.World.get_ProxyCount() end

---@return System.Int32
function CS.FarseerPhysics.Dynamics.World.get_ContactCount() end

---@return FarseerPhysics.Dynamics.Contacts.ContactListHead
function CS.FarseerPhysics.Dynamics.World.get_ContactList() end

---@overload fun(joint: FarseerPhysics.Dynamics.Joints.Joint)
---@overload fun(controller: FarseerPhysics.Controllers.Controller)
---@param body FarseerPhysics.Dynamics.Body
---@param findNewContacts System.Boolean
function CS.FarseerPhysics.Dynamics.World.Add(body, findNewContacts) end

---@overload fun(joint: FarseerPhysics.Dynamics.Joints.Joint)
---@overload fun(controller: FarseerPhysics.Controllers.Controller)
---@param body FarseerPhysics.Dynamics.Body
function CS.FarseerPhysics.Dynamics.World.Remove(body) end

---@overload fun(joint: FarseerPhysics.Dynamics.Joints.Joint)
---@param body FarseerPhysics.Dynamics.Body
---@param findNewContacts System.Boolean
function CS.FarseerPhysics.Dynamics.World.AddAsync(body, findNewContacts) end

---@overload fun(joint: FarseerPhysics.Dynamics.Joints.Joint)
---@param body FarseerPhysics.Dynamics.Body
function CS.FarseerPhysics.Dynamics.World.RemoveAsync(body) end

function CS.FarseerPhysics.Dynamics.World.ProcessChanges() end

---@overload fun(dt: System.TimeSpan, iterations: FarseerPhysics.Dynamics.SolverIterations)
---@overload fun(dt: System.Single)
---@overload fun(dt: System.Single, iterations: FarseerPhysics.Dynamics.SolverIterations)
---@param dt System.TimeSpan
function CS.FarseerPhysics.Dynamics.World.Step(dt) end

function CS.FarseerPhysics.Dynamics.World.ClearForces() end

---@overload fun(aabb: FarseerPhysics.Collision.AABB): userdata | { [System.Int32]: FarseerPhysics.Dynamics.Fixture } | (fun(): FarseerPhysics.Dynamics.Fixture)
---@param callback fun(arg: FarseerPhysics.Dynamics.Fixture): System.Boolean
---@param aabb FarseerPhysics.Collision.AABB
function CS.FarseerPhysics.Dynamics.World.QueryAABB(callback, aabb) end

---@overload fun(point1: Microsoft.Xna.Framework.Vector2, point2: Microsoft.Xna.Framework.Vector2): userdata | { [System.Int32]: FarseerPhysics.Dynamics.Fixture } | (fun(): FarseerPhysics.Dynamics.Fixture)
---@param callback fun(arg1: FarseerPhysics.Dynamics.Fixture, arg2: Microsoft.Xna.Framework.Vector2, arg3: Microsoft.Xna.Framework.Vector2, arg4: System.Single): System.Single
---@param point1 Microsoft.Xna.Framework.Vector2
---@param point2 Microsoft.Xna.Framework.Vector2
---@param collisionCategory? FarseerPhysics.Dynamics.Category
function CS.FarseerPhysics.Dynamics.World.RayCast(callback, point1, point2, collisionCategory) end

---@param point Microsoft.Xna.Framework.Vector2
---@return FarseerPhysics.Dynamics.Fixture
function CS.FarseerPhysics.Dynamics.World.TestPoint(point) end

---@private
---@param fixture FarseerPhysics.Dynamics.Fixture
---@return System.Boolean
function CS.FarseerPhysics.Dynamics.World.TestPointCallback(fixture) end

---@param point Microsoft.Xna.Framework.Vector2
---@return userdata | { [System.Int32]: FarseerPhysics.Dynamics.Fixture } | (fun(): FarseerPhysics.Dynamics.Fixture)
function CS.FarseerPhysics.Dynamics.World.TestPointAll(point) end

---@private
---@param fixture FarseerPhysics.Dynamics.Fixture
---@return System.Boolean
function CS.FarseerPhysics.Dynamics.World.TestPointAllCallback(fixture) end

---@param newOrigin Microsoft.Xna.Framework.Vector2
function CS.FarseerPhysics.Dynamics.World.ShiftOrigin(newOrigin) end

function CS.FarseerPhysics.Dynamics.World.Clear() end

---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single
---@param bodyType? FarseerPhysics.BodyType
---@param findNewContacts? System.Boolean
---@return FarseerPhysics.Dynamics.Body
function CS.FarseerPhysics.Dynamics.World.CreateBody(position, rotation, bodyType, findNewContacts) end

---@param start Microsoft.Xna.Framework.Vector2
---@param __end__ Microsoft.Xna.Framework.Vector2
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@param findNewContacts? System.Boolean
---@return FarseerPhysics.Dynamics.Body
function CS.FarseerPhysics.Dynamics.World.CreateEdge(start, __end__, bodyType, collisionCategory, collidesWith, findNewContacts) end

---@param vertices FarseerPhysics.Common.Vertices
---@param position? Microsoft.Xna.Framework.Vector2
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@param findNewContacts? System.Boolean
---@return FarseerPhysics.Dynamics.Body
function CS.FarseerPhysics.Dynamics.World.CreateChainShape(vertices, position, collisionCategory, collidesWith, findNewContacts) end

---@param vertices FarseerPhysics.Common.Vertices
---@param position? Microsoft.Xna.Framework.Vector2
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@param findNewContacts? System.Boolean
---@return FarseerPhysics.Dynamics.Body
function CS.FarseerPhysics.Dynamics.World.CreateLoopShape(vertices, position, collisionCategory, collidesWith, findNewContacts) end

---@param width System.Single
---@param height System.Single
---@param density System.Single
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@param findNewContacts? System.Boolean
---@return FarseerPhysics.Dynamics.Body
function CS.FarseerPhysics.Dynamics.World.CreateRectangle(width, height, density, position, rotation, bodyType, collisionCategory, collidesWith, findNewContacts) end

---@param radius System.Single
---@param density System.Single
---@param position? Microsoft.Xna.Framework.Vector2
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@param findNewContacts? System.Boolean
---@return FarseerPhysics.Dynamics.Body
function CS.FarseerPhysics.Dynamics.World.CreateCircle(radius, density, position, bodyType, collisionCategory, collidesWith, findNewContacts) end

---@param xRadius System.Single
---@param yRadius System.Single
---@param edges System.Int32
---@param density System.Single
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@param findNewContacts? System.Boolean
---@return FarseerPhysics.Dynamics.Body
function CS.FarseerPhysics.Dynamics.World.CreateEllipse(xRadius, yRadius, edges, density, position, rotation, bodyType, collisionCategory, collidesWith, findNewContacts) end

---@param vertices FarseerPhysics.Common.Vertices
---@param density System.Single
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@param findNewContacts? System.Boolean
---@return FarseerPhysics.Dynamics.Body
function CS.FarseerPhysics.Dynamics.World.CreatePolygon(vertices, density, position, rotation, bodyType, collisionCategory, collidesWith, findNewContacts) end

---@param list userdata | { [System.Int32]: FarseerPhysics.Common.Vertices } | (fun(): FarseerPhysics.Common.Vertices)
---@param density System.Single
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@param findNewContacts? System.Boolean
---@return FarseerPhysics.Dynamics.Body
function CS.FarseerPhysics.Dynamics.World.CreateCompoundPolygon(list, density, position, rotation, bodyType, collisionCategory, collidesWith, findNewContacts) end

---@param radius System.Single
---@param numberOfTeeth System.Int32
---@param tipPercentage System.Single
---@param toothHeight System.Single
---@param density System.Single
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Body
function CS.FarseerPhysics.Dynamics.World.CreateGear(radius, numberOfTeeth, tipPercentage, toothHeight, density, position, rotation, bodyType, collisionCategory, collidesWith) end

---@overload fun(height: System.Single, endRadius: System.Single, density: System.Single, position?: Microsoft.Xna.Framework.Vector2, rotation?: System.Single, bodyType?: FarseerPhysics.BodyType, collisionCategory?: FarseerPhysics.Dynamics.Category, collidesWith?: FarseerPhysics.Dynamics.Category, findNewContacts?: System.Boolean): FarseerPhysics.Dynamics.Body
---@param height System.Single
---@param topRadius System.Single
---@param topEdges System.Int32
---@param bottomRadius System.Single
---@param bottomEdges System.Int32
---@param density System.Single
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@param findNewContacts? System.Boolean
---@return FarseerPhysics.Dynamics.Body
function CS.FarseerPhysics.Dynamics.World.CreateCapsule(height, topRadius, topEdges, bottomRadius, bottomEdges, density, position, rotation, bodyType, collisionCategory, collidesWith, findNewContacts) end

---@param width System.Single
---@param endRadius System.Single
---@param density System.Single
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@param findNewContacts? System.Boolean
---@return FarseerPhysics.Dynamics.Body
function CS.FarseerPhysics.Dynamics.World.CreateCapsuleHorizontal(width, endRadius, density, position, rotation, bodyType, collisionCategory, collidesWith, findNewContacts) end

---@param width System.Single
---@param height System.Single
---@param xRadius System.Single
---@param yRadius System.Single
---@param segments System.Int32
---@param density System.Single
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Body
function CS.FarseerPhysics.Dynamics.World.CreateRoundedRectangle(width, height, xRadius, yRadius, segments, density, position, rotation, bodyType, collisionCategory, collidesWith) end

---@param radians System.Single
---@param sides System.Int32
---@param radius System.Single
---@param closed? System.Boolean
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Body
function CS.FarseerPhysics.Dynamics.World.CreateLineArc(radians, sides, radius, closed, position, rotation, bodyType, collisionCategory, collidesWith) end

---@param density System.Single
---@param radians System.Single
---@param sides System.Int32
---@param radius System.Single
---@param position? Microsoft.Xna.Framework.Vector2
---@param rotation? System.Single
---@param bodyType? FarseerPhysics.BodyType
---@param collisionCategory? FarseerPhysics.Dynamics.Category
---@param collidesWith? FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Body
function CS.FarseerPhysics.Dynamics.World.CreateSolidArc(density, radians, sides, radius, position, rotation, bodyType, collisionCategory, collidesWith) end

---@param start Microsoft.Xna.Framework.Vector2
---@param __end__ Microsoft.Xna.Framework.Vector2
---@param linkWidth System.Single
---@param linkHeight System.Single
---@param numberOfLinks System.Int32
---@param linkDensity System.Single
---@param attachRopeJoint System.Boolean
---@return FarseerPhysics.Common.Path
function CS.FarseerPhysics.Dynamics.World.CreateChain(start, __end__, linkWidth, linkHeight, numberOfLinks, linkDensity, attachRopeJoint) end

do
---@overload fun(gravity: Microsoft.Xna.Framework.Vector2): FarseerPhysics.Dynamics.World
---@overload fun(broadPhase: FarseerPhysics.Collision.IBroadPhase): FarseerPhysics.Dynamics.World
---@return FarseerPhysics.Dynamics.World
local __ctor = function() end
CS.FarseerPhysics.Dynamics.World = __ctor
CS.FarseerPhysics.Dynamics.World.__new = __ctor
end


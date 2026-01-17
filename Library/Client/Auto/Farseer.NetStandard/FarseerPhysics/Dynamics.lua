---@meta
---Auto-generated from Farseer.NetStandard
---Namespace: FarseerPhysics.Dynamics

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

---@package
---@overload fun(shape: FarseerPhysics.Collision.Shapes.Shape, collisionCategory: FarseerPhysics.Dynamics.Category, collidesWith: FarseerPhysics.Dynamics.Category): FarseerPhysics.Dynamics.Fixture
---@param collisionCategory FarseerPhysics.Dynamics.Category
---@param collidesWith FarseerPhysics.Dynamics.Category
---@return FarseerPhysics.Dynamics.Fixture
function CS.FarseerPhysics.Dynamics.Fixture(collisionCategory, collidesWith) end

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

---@overload fun(gravity: Microsoft.Xna.Framework.Vector2): FarseerPhysics.Dynamics.World
---@overload fun(broadPhase: FarseerPhysics.Collision.IBroadPhase): FarseerPhysics.Dynamics.World
---@return FarseerPhysics.Dynamics.World
function CS.FarseerPhysics.Dynamics.World() end


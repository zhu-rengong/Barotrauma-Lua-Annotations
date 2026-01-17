---@meta
---Auto-generated from Farseer.NetStandard
---Namespace: FarseerPhysics.Collision

---@class FarseerPhysics.Collision.ContactFeature: System.ValueType
---@field IndexA System.Byte
---@field IndexB System.Byte
---@field TypeA System.Byte
---@field TypeB System.Byte
CS.FarseerPhysics.Collision.ContactFeature = {}


---@class FarseerPhysics.Collision.ContactID: System.ValueType
---@field Features FarseerPhysics.Collision.ContactFeature
---@field Key System.UInt32
CS.FarseerPhysics.Collision.ContactID = {}


---@class FarseerPhysics.Collision.ManifoldPoint: System.ValueType
---@field Id FarseerPhysics.Collision.ContactID
---@field LocalPoint Microsoft.Xna.Framework.Vector2
---@field NormalImpulse System.Single
---@field TangentImpulse System.Single
CS.FarseerPhysics.Collision.ManifoldPoint = {}


---@class FarseerPhysics.Collision.Manifold: System.ValueType
---@field LocalNormal Microsoft.Xna.Framework.Vector2
---@field LocalPoint Microsoft.Xna.Framework.Vector2
---@field PointCount System.Int32
---@field Points userdata | { [System.Int32]: FarseerPhysics.Collision.ManifoldPoint }
---@field Type FarseerPhysics.Collision.ManifoldType
CS.FarseerPhysics.Collision.Manifold = {}


---@class FarseerPhysics.Collision.ClipVertex: System.ValueType
---@field ID FarseerPhysics.Collision.ContactID
---@field V Microsoft.Xna.Framework.Vector2
CS.FarseerPhysics.Collision.ClipVertex = {}


---@class FarseerPhysics.Collision.RayCastInput: System.ValueType
---@field MaxFraction System.Single
---@field Point1 Microsoft.Xna.Framework.Vector2
---@field Point2 Microsoft.Xna.Framework.Vector2
CS.FarseerPhysics.Collision.RayCastInput = {}


---@class FarseerPhysics.Collision.RayCastOutput: System.ValueType
---@field Fraction System.Single
---@field Normal Microsoft.Xna.Framework.Vector2
CS.FarseerPhysics.Collision.RayCastOutput = {}


---@class FarseerPhysics.Collision.AABB: System.ValueType
---@field Width System.Single
---@field Height System.Single
---@field Center Microsoft.Xna.Framework.Vector2
---@field Extents Microsoft.Xna.Framework.Vector2
---@field Perimeter System.Single
---@field Vertices FarseerPhysics.Common.Vertices
---@field Q1 FarseerPhysics.Collision.AABB
---@field Q2 FarseerPhysics.Collision.AABB
---@field Q3 FarseerPhysics.Collision.AABB
---@field Q4 FarseerPhysics.Collision.AABB
---@field LowerBound Microsoft.Xna.Framework.Vector2
---@field UpperBound Microsoft.Xna.Framework.Vector2
CS.FarseerPhysics.Collision.AABB = {}

---@return System.Single
function CS.FarseerPhysics.Collision.AABB.get_Width() end

---@return System.Single
function CS.FarseerPhysics.Collision.AABB.get_Height() end

---@return Microsoft.Xna.Framework.Vector2
function CS.FarseerPhysics.Collision.AABB.get_Center() end

---@return Microsoft.Xna.Framework.Vector2
function CS.FarseerPhysics.Collision.AABB.get_Extents() end

---@return System.Single
function CS.FarseerPhysics.Collision.AABB.get_Perimeter() end

---@return FarseerPhysics.Common.Vertices
function CS.FarseerPhysics.Collision.AABB.get_Vertices() end

---@return FarseerPhysics.Collision.AABB
function CS.FarseerPhysics.Collision.AABB.get_Q1() end

---@return FarseerPhysics.Collision.AABB
function CS.FarseerPhysics.Collision.AABB.get_Q2() end

---@return FarseerPhysics.Collision.AABB
function CS.FarseerPhysics.Collision.AABB.get_Q3() end

---@return FarseerPhysics.Collision.AABB
function CS.FarseerPhysics.Collision.AABB.get_Q4() end

---@return System.Boolean
function CS.FarseerPhysics.Collision.AABB.IsValid() end

---@overload fun(aabb1: FarseerPhysics.Collision.AABB, aabb2: FarseerPhysics.Collision.AABB)
---@param aabb FarseerPhysics.Collision.AABB
function CS.FarseerPhysics.Collision.AABB.Combine(aabb) end

---@overload fun(point: Microsoft.Xna.Framework.Vector2): System.Boolean
---@param aabb FarseerPhysics.Collision.AABB
---@return System.Boolean
function CS.FarseerPhysics.Collision.AABB.Contains(aabb) end

---@param a FarseerPhysics.Collision.AABB
---@param b FarseerPhysics.Collision.AABB
---@return System.Boolean
function CS.FarseerPhysics.Collision.AABB.TestOverlap(a, b) end

---@param output FarseerPhysics.Collision.RayCastOutput
---@param input FarseerPhysics.Collision.RayCastInput
---@param doInteriorCheck? System.Boolean
---@return System.Boolean
function CS.FarseerPhysics.Collision.AABB.RayCast(output, input, doInteriorCheck) end

do
---@overload fun(min: Microsoft.Xna.Framework.Vector2, max: Microsoft.Xna.Framework.Vector2): FarseerPhysics.Collision.AABB
---@overload fun(center: Microsoft.Xna.Framework.Vector2, width: System.Single, height: System.Single): FarseerPhysics.Collision.AABB
---@param min Microsoft.Xna.Framework.Vector2
---@param max Microsoft.Xna.Framework.Vector2
---@return FarseerPhysics.Collision.AABB
local __ctor = function(min, max) end
CS.FarseerPhysics.Collision.AABB = __ctor
CS.FarseerPhysics.Collision.AABB.__new = __ctor
end

---@class FarseerPhysics.Collision.EPAxis: System.ValueType
---@field Index System.Int32
---@field Separation System.Single
---@field Type FarseerPhysics.Collision.EPAxisType
CS.FarseerPhysics.Collision.EPAxis = {}


---@class FarseerPhysics.Collision.ReferenceFace: System.ValueType
---@field i1 System.Int32
---@field i2 System.Int32
---@field v1 Microsoft.Xna.Framework.Vector2
---@field v2 Microsoft.Xna.Framework.Vector2
---@field normal Microsoft.Xna.Framework.Vector2
---@field sideNormal1 Microsoft.Xna.Framework.Vector2
---@field sideOffset1 System.Single
---@field sideNormal2 Microsoft.Xna.Framework.Vector2
---@field sideOffset2 System.Single
CS.FarseerPhysics.Collision.ReferenceFace = {}


---@class FarseerPhysics.Collision.Collision: System.Object
CS.FarseerPhysics.Collision.Collision = {}

---@param shapeA FarseerPhysics.Collision.Shapes.Shape
---@param indexA System.Int32
---@param shapeB FarseerPhysics.Collision.Shapes.Shape
---@param indexB System.Int32
---@param xfA FarseerPhysics.Common.Transform
---@param xfB FarseerPhysics.Common.Transform
---@return System.Boolean
function CS.FarseerPhysics.Collision.Collision.TestOverlap(shapeA, indexA, shapeB, indexB, xfA, xfB) end

---@param state1 userdata | { [System.Int32]: FarseerPhysics.Collision.PointState }
---@param state2 userdata | { [System.Int32]: FarseerPhysics.Collision.PointState }
---@param manifold1 FarseerPhysics.Collision.Manifold
---@param manifold2 FarseerPhysics.Collision.Manifold
function CS.FarseerPhysics.Collision.Collision.GetPointStates(state1, state2, manifold1, manifold2) end

---@param manifold FarseerPhysics.Collision.Manifold
---@param circleA FarseerPhysics.Collision.Shapes.CircleShape
---@param xfA FarseerPhysics.Common.Transform
---@param circleB FarseerPhysics.Collision.Shapes.CircleShape
---@param xfB FarseerPhysics.Common.Transform
function CS.FarseerPhysics.Collision.Collision.CollideCircles(manifold, circleA, xfA, circleB, xfB) end

---@param manifold FarseerPhysics.Collision.Manifold
---@param polygonA FarseerPhysics.Collision.Shapes.PolygonShape
---@param xfA FarseerPhysics.Common.Transform
---@param circleB FarseerPhysics.Collision.Shapes.CircleShape
---@param xfB FarseerPhysics.Common.Transform
function CS.FarseerPhysics.Collision.Collision.CollidePolygonAndCircle(manifold, polygonA, xfA, circleB, xfB) end

---@param manifold FarseerPhysics.Collision.Manifold
---@param polyA FarseerPhysics.Collision.Shapes.PolygonShape
---@param transformA FarseerPhysics.Common.Transform
---@param polyB FarseerPhysics.Collision.Shapes.PolygonShape
---@param transformB FarseerPhysics.Common.Transform
function CS.FarseerPhysics.Collision.Collision.CollidePolygons(manifold, polyA, transformA, polyB, transformB) end

---@param manifold FarseerPhysics.Collision.Manifold
---@param edgeA FarseerPhysics.Collision.Shapes.EdgeShape
---@param transformA FarseerPhysics.Common.Transform
---@param circleB FarseerPhysics.Collision.Shapes.CircleShape
---@param transformB FarseerPhysics.Common.Transform
function CS.FarseerPhysics.Collision.Collision.CollideEdgeAndCircle(manifold, edgeA, transformA, circleB, transformB) end

---@param manifold FarseerPhysics.Collision.Manifold
---@param edgeA FarseerPhysics.Collision.Shapes.EdgeShape
---@param xfA FarseerPhysics.Common.Transform
---@param polygonB FarseerPhysics.Collision.Shapes.PolygonShape
---@param xfB FarseerPhysics.Common.Transform
function CS.FarseerPhysics.Collision.Collision.CollideEdgeAndPolygon(manifold, edgeA, xfA, polygonB, xfB) end

---@private
---@param vOut userdata | { [System.Int32]: FarseerPhysics.Collision.ClipVertex }
---@param vIn userdata | { [System.Int32]: FarseerPhysics.Collision.ClipVertex }
---@param normal Microsoft.Xna.Framework.Vector2
---@param offset System.Single
---@param vertexIndexA System.Int32
---@return System.Int32
function CS.FarseerPhysics.Collision.Collision.ClipSegmentToLine(vOut, vIn, normal, offset, vertexIndexA) end

---@private
---@param poly1 FarseerPhysics.Collision.Shapes.PolygonShape
---@param xf1To2 FarseerPhysics.Common.Transform
---@param edge1 System.Int32
---@param poly2 FarseerPhysics.Collision.Shapes.PolygonShape
---@return System.Single
function CS.FarseerPhysics.Collision.Collision.EdgeSeparation(poly1, xf1To2, edge1, poly2) end

---@private
---@param edgeIndex System.Int32
---@param poly1 FarseerPhysics.Collision.Shapes.PolygonShape
---@param xf1 FarseerPhysics.Common.Transform
---@param poly2 FarseerPhysics.Collision.Shapes.PolygonShape
---@param xf2 FarseerPhysics.Common.Transform
---@return System.Single
function CS.FarseerPhysics.Collision.Collision.FindMaxSeparation(edgeIndex, poly1, xf1, poly2, xf2) end

---@private
---@param c userdata | { [System.Int32]: FarseerPhysics.Collision.ClipVertex }
---@param poly1 FarseerPhysics.Collision.Shapes.PolygonShape
---@param xf1 FarseerPhysics.Common.Transform
---@param edge1 System.Int32
---@param poly2 FarseerPhysics.Collision.Shapes.PolygonShape
---@param xf2 FarseerPhysics.Common.Transform
function CS.FarseerPhysics.Collision.Collision.FindIncidentEdge(c, poly1, xf1, edge1, poly2, xf2) end



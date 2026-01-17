---@meta
---Auto-generated from Barotrauma
---Namespace: Voronoi2

---@class Voronoi2.DoubleVector2: System.Object
---@field X System.Double
---@field Y System.Double
CS.Voronoi2.DoubleVector2 = {}

---@param x System.Double
---@param y System.Double
function CS.Voronoi2.DoubleVector2.SetPoint(x, y) end

function CS.Voronoi2.DoubleVector2.Normalize() end

do
---@overload fun(x: System.Double, y: System.Double): Voronoi2.DoubleVector2
---@return Voronoi2.DoubleVector2
local __ctor = function() end
CS.Voronoi2.DoubleVector2 = __ctor
CS.Voronoi2.DoubleVector2.__new = __ctor
end

---@class Voronoi2.Site: System.Object
---@field Coord Voronoi2.DoubleVector2
---@field SiteNbr System.Int32
CS.Voronoi2.Site = {}

---@param point Microsoft.Xna.Framework.Vector2
function CS.Voronoi2.Site.SetPoint(point) end

do
---@return Voronoi2.Site
local __ctor = function() end
CS.Voronoi2.Site = __ctor
CS.Voronoi2.Site.__new = __ctor
end

---@class Voronoi2.Edge: System.Object
---@field a System.Double
---@field b System.Double
---@field c System.Double
---@field ep Voronoi2.Site[]
---@field reg Voronoi2.Site[]
---@field edgenbr System.Int32
CS.Voronoi2.Edge = {}

do
---@return Voronoi2.Edge
local __ctor = function() end
CS.Voronoi2.Edge = __ctor
CS.Voronoi2.Edge.__new = __ctor
end

---@class Voronoi2.Halfedge: System.Object
---@field ELleft Voronoi2.Halfedge
---@field ELright Voronoi2.Halfedge
---@field ELedge Voronoi2.Edge
---@field deleted System.Boolean
---@field ELpm System.Int32
---@field vertex Voronoi2.Site
---@field ystar System.Double
---@field PQnext Voronoi2.Halfedge
CS.Voronoi2.Halfedge = {}

do
---@return Voronoi2.Halfedge
local __ctor = function() end
CS.Voronoi2.Halfedge = __ctor
CS.Voronoi2.Halfedge.__new = __ctor
end

---@class Voronoi2.VoronoiCell: System.Object
---@field Center Microsoft.Xna.Framework.Vector2
---@field Edges userdata | { [System.Int32]: Voronoi2.GraphEdge } | (fun(): Voronoi2.GraphEdge)
---@field Site Voronoi2.Site
---@field BodyVertices userdata | { [System.Int32]: Microsoft.Xna.Framework.Vector2 } | (fun(): Microsoft.Xna.Framework.Vector2)
---@field Body FarseerPhysics.Dynamics.Body
---@field CellType Voronoi2.CellType
---@field Translation Microsoft.Xna.Framework.Vector2
---@field Island System.Boolean
---@field IsDestructible System.Boolean
---@field DoesDamage System.Boolean
---@field OnDestroyed fun()
CS.Voronoi2.VoronoiCell = {}

---@return Microsoft.Xna.Framework.Vector2
function CS.Voronoi2.VoronoiCell.get_Center() end

---@param point Microsoft.Xna.Framework.Vector2
---@return System.Boolean
function CS.Voronoi2.VoronoiCell.IsPointInside(point) end

---@param point2 Microsoft.Xna.Framework.Vector2
---@param margin System.Single
---@return System.Boolean
function CS.Voronoi2.VoronoiCell.IsPointInsideAABB(point2, margin) end

---@param min Microsoft.Xna.Framework.Vector2
---@param max Microsoft.Xna.Framework.Vector2
function CS.Voronoi2.VoronoiCell.GetBounds(min, max) end

do
---@overload fun(site: Voronoi2.Site): Voronoi2.VoronoiCell
---@param vertices Microsoft.Xna.Framework.Vector2[]
---@return Voronoi2.VoronoiCell
local __ctor = function(vertices) end
CS.Voronoi2.VoronoiCell = __ctor
CS.Voronoi2.VoronoiCell.__new = __ctor
end

---@class Voronoi2.GraphEdge: System.Object
---@field Center Microsoft.Xna.Framework.Vector2
---@field Length System.Single
---@field Point1 Microsoft.Xna.Framework.Vector2
---@field Point2 Microsoft.Xna.Framework.Vector2
---@field Site1 Voronoi2.Site
---@field Site2 Voronoi2.Site
---@field Cell1 Voronoi2.VoronoiCell
---@field Cell2 Voronoi2.VoronoiCell
---@field IsSolid System.Boolean
---@field OutsideLevel System.Boolean
---@field NextToCave System.Boolean
---@field NextToMainPath System.Boolean
---@field NextToSidePath System.Boolean
CS.Voronoi2.GraphEdge = {}

---@return Microsoft.Xna.Framework.Vector2
function CS.Voronoi2.GraphEdge.get_Center() end

---@return System.Single
function CS.Voronoi2.GraphEdge.get_Length() end

---@param cell Voronoi2.VoronoiCell
---@return Voronoi2.VoronoiCell
function CS.Voronoi2.GraphEdge.AdjacentCell(cell) end

---@param cell Voronoi2.VoronoiCell
---@return Microsoft.Xna.Framework.Vector2
function CS.Voronoi2.GraphEdge.GetNormal(cell) end

---@param cell Voronoi2.VoronoiCell
---@param point1 Microsoft.Xna.Framework.Vector2
---@param point2 Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
function CS.Voronoi2.GraphEdge.GetNormal(cell, point1, point2) end

---@return System.String
function CS.Voronoi2.GraphEdge.ToString() end

do
---@param point1 Microsoft.Xna.Framework.Vector2
---@param point2 Microsoft.Xna.Framework.Vector2
---@return Voronoi2.GraphEdge
local __ctor = function(point1, point2) end
CS.Voronoi2.GraphEdge = __ctor
CS.Voronoi2.GraphEdge.__new = __ctor
end


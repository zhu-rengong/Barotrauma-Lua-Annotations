---@meta
---Auto-generated from BarotraumaCore
---Namespace: Barotrauma

---@class Barotrauma.Identifier: System.ValueType, { [System.Range]: Barotrauma.Identifier } | { [System.Int32]: System.Char }
---@field Value System.String
---@field HashCode System.Int32
---@field IsEmpty System.Boolean
---@field private value System.String
---@field private hashCode userdata
---@field Empty Barotrauma.Identifier
---@field private emptyHash System.Int32
CS.Barotrauma.Identifier = {}

---@return System.String
function CS.Barotrauma.Identifier.get_Value() end

---@return System.Int32
function CS.Barotrauma.Identifier.get_HashCode() end

---@return System.Boolean
function CS.Barotrauma.Identifier.get_IsEmpty() end

---@param id Barotrauma.Identifier
---@return Barotrauma.Identifier
function CS.Barotrauma.Identifier.IfEmpty(id) end

---@overload fun(subStr: System.String, newStr: System.String): Barotrauma.Identifier
---@param subStr Barotrauma.Identifier
---@param newStr Barotrauma.Identifier
---@return Barotrauma.Identifier
function CS.Barotrauma.Identifier.Replace(subStr, newStr) end

---@overload fun(subStr: System.String): Barotrauma.Identifier
---@param subStr Barotrauma.Identifier
---@return Barotrauma.Identifier
function CS.Barotrauma.Identifier.Remove(subStr) end

---@overload fun(other: Barotrauma.Identifier): System.Boolean
---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.Identifier.Equals(obj) end

---@overload fun(id: Barotrauma.Identifier): System.Boolean
---@param str System.String
---@return System.Boolean
function CS.Barotrauma.Identifier.StartsWith(str) end

---@overload fun(id: Barotrauma.Identifier): System.Boolean
---@param str System.String
---@return System.Boolean
function CS.Barotrauma.Identifier.EndsWith(str) end

---@param suffix System.String
---@return Barotrauma.Identifier
function CS.Barotrauma.Identifier.AppendIfMissing(suffix) end

---@param suffix System.String
---@return Barotrauma.Identifier
function CS.Barotrauma.Identifier.RemoveFromEnd(suffix) end

---@overload fun(id: Barotrauma.Identifier): System.Boolean
---@param str System.String
---@return System.Boolean
function CS.Barotrauma.Identifier.Contains(str) end

---@return System.String
function CS.Barotrauma.Identifier.ToString() end

---@return System.Int32
function CS.Barotrauma.Identifier.GetHashCode() end

---@param obj System.Object
---@return System.Int32
function CS.Barotrauma.Identifier.CompareTo(obj) end

---@private
---@param a System.String
---@param b System.String
---@return System.Boolean
function CS.Barotrauma.Identifier.StringEquality(a, b) end

---@overload fun(identifier: Barotrauma.Identifier, str: System.String): System.Boolean
---@overload fun(str: System.String, identifier: Barotrauma.Identifier): System.Boolean
---@overload fun(a: Barotrauma.Identifier|nil, b: Barotrauma.Identifier|nil): System.Boolean
---@overload fun(a: Barotrauma.Identifier|nil, b: System.String): System.Boolean
---@overload fun(str: System.String, identifier: Barotrauma.Identifier|nil): System.Boolean
---@param a Barotrauma.Identifier
---@param b Barotrauma.Identifier
---@return System.Boolean
function CS.Barotrauma.Identifier.op_Equality(a, b) end

---@overload fun(identifier: Barotrauma.Identifier, str: System.String): System.Boolean
---@overload fun(str: System.String, identifier: Barotrauma.Identifier): System.Boolean
---@overload fun(a: Barotrauma.Identifier|nil, b: Barotrauma.Identifier|nil): System.Boolean
---@overload fun(a: Barotrauma.Identifier|nil, b: System.String): System.Boolean
---@overload fun(str: System.String, identifier: Barotrauma.Identifier|nil): System.Boolean
---@param a Barotrauma.Identifier
---@param b Barotrauma.Identifier
---@return System.Boolean
function CS.Barotrauma.Identifier.op_Inequality(a, b) end

---@param str System.String
---@return Barotrauma.Identifier
function CS.Barotrauma.Identifier.op_Implicit(str) end

---@param c System.Char
---@return System.Int32
function CS.Barotrauma.Identifier.IndexOf(c) end

---@overload fun(i: System.Int32): System.Char
---@param range System.Range
---@return Barotrauma.Identifier
function CS.Barotrauma.Identifier.get_Item(range) end

do
---@overload fun(): Barotrauma.Identifier
---@param str System.String
---@return Barotrauma.Identifier
local __ctor = function(str) end
CS.Barotrauma.Identifier = __ctor
CS.Barotrauma.Identifier.__new = __ctor
end

---@enum Barotrauma.Alignment
CS.Barotrauma.Alignment = {
    CenterX = 1,
    Left = 2,
    Right = 4,
    CenterY = 8,
    Center = 9,
    CenterLeft = 10,
    CenterRight = 12,
    Top = 16,
    TopCenter = 17,
    TopLeft = 18,
    TopRight = 20,
    Bottom = 32,
    BottomCenter = 33,
    BottomLeft = 34,
    BottomRight = 36,
    Any = 63
}

---@class Barotrauma.MathUtils: System.Object
CS.Barotrauma.MathUtils = {}

---@param vector Microsoft.Xna.Framework.Vector3
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.MathUtils.DiscardZ(vector) end

---@param portion System.Single
---@param total System.Single
---@return System.Single
function CS.Barotrauma.MathUtils.Percentage(portion, total) end

---@overload fun(i: System.Single, n: System.Single): System.Single
---@param i System.Int32
---@param n System.Int32
---@return System.Int32
function CS.Barotrauma.MathUtils.PositiveModulo(i, n) end

---@param x1 System.Double
---@param y1 System.Double
---@param x2 System.Double
---@param y2 System.Double
---@return System.Double
function CS.Barotrauma.MathUtils.Distance(x1, y1, x2, y2) end

---@overload fun(x1: System.Int32, y1: System.Int32, x2: System.Int32, y2: System.Int32): System.Int32
---@param x1 System.Double
---@param y1 System.Double
---@param x2 System.Double
---@param y2 System.Double
---@return System.Double
function CS.Barotrauma.MathUtils.DistanceSquared(x1, y1, x2, y2) end

---@overload fun(t: System.Single): System.Single
---@param v1 Microsoft.Xna.Framework.Vector2
---@param v2 Microsoft.Xna.Framework.Vector2
---@param amount System.Single
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.MathUtils.SmoothStep(v1, v2, amount) end

---@param t System.Single
---@return System.Single
function CS.Barotrauma.MathUtils.SmootherStep(t) end

---@param t System.Single
---@return System.Single
function CS.Barotrauma.MathUtils.EaseIn(t) end

---@param t System.Single
---@return System.Single
function CS.Barotrauma.MathUtils.EaseOut(t) end

---@param v Microsoft.Xna.Framework.Vector2
---@param length System.Single
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.MathUtils.ClampLength(v, length) end

---@param rect Microsoft.Xna.Framework.Rectangle
---@param x System.Double
---@param y System.Double
---@return System.Boolean
function CS.Barotrauma.MathUtils.Contains(rect, x, y) end

---@overload fun(vector: Microsoft.Xna.Framework.Vector2): Microsoft.Xna.Framework.Vector2
---@param value System.Single
---@param div System.Single
---@return System.Single
function CS.Barotrauma.MathUtils.Round(value, div) end

---@param v System.Single
---@return System.Int32
function CS.Barotrauma.MathUtils.RoundToInt(v) end

---@param value System.Single
---@param div System.Single
---@return System.Single
function CS.Barotrauma.MathUtils.RoundTowardsClosest(value, div) end

---@param vector Microsoft.Xna.Framework.Vector2
---@return System.Single
function CS.Barotrauma.MathUtils.VectorToAngle(vector) end

---@param vector Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Point
function CS.Barotrauma.MathUtils.ToPoint(vector) end

---@overload fun(vector: Microsoft.Xna.Framework.Vector2): System.Boolean
---@param value System.Single
---@return System.Boolean
function CS.Barotrauma.MathUtils.IsValid(value) end

---@param rect Microsoft.Xna.Framework.Rectangle
---@param amount System.Int32
---@return Microsoft.Xna.Framework.Rectangle
function CS.Barotrauma.MathUtils.ExpandRect(rect, amount) end

---@param pointA Microsoft.Xna.Framework.Vector2
---@param pointB Microsoft.Xna.Framework.Vector2
---@param pointC Microsoft.Xna.Framework.Vector2
---@return System.Int32
function CS.Barotrauma.MathUtils.VectorOrientation(pointA, pointB, pointC) end

---@param from System.Single
---@param to System.Single
---@param step System.Single
---@return System.Single
function CS.Barotrauma.MathUtils.CurveAngle(from, to, step) end

---@param angle System.Single
---@return System.Single
function CS.Barotrauma.MathUtils.WrapAngleTwoPi(angle) end

---@param angle System.Single
---@return System.Single
function CS.Barotrauma.MathUtils.WrapAnglePi(angle) end

---@param from System.Single
---@param to System.Single
---@return System.Single
function CS.Barotrauma.MathUtils.GetShortestAngle(from, to) end

---@param from System.Single
---@param to System.Single
---@return System.Single
function CS.Barotrauma.MathUtils.GetMidAngle(from, to) end

---@param a System.Single
---@param b System.Single
---@param c System.Single
---@return System.Single
function CS.Barotrauma.MathUtils.SolveTriangleSSS(a, b, c) end

---@param angle System.Single
---@return System.Byte
function CS.Barotrauma.MathUtils.AngleToByte(angle) end

---@param b System.Byte
---@return System.Single
function CS.Barotrauma.MathUtils.ByteToAngle(b) end

---@param a Microsoft.Xna.Framework.Vector2
---@param b Microsoft.Xna.Framework.Vector2
---@param c Microsoft.Xna.Framework.Vector2
---@param d Microsoft.Xna.Framework.Vector2
---@return System.Boolean
function CS.Barotrauma.MathUtils.LineSegmentsIntersect(a, b, c, d) end

---@param a1 Microsoft.Xna.Framework.Vector2
---@param a2 Microsoft.Xna.Framework.Vector2
---@param b1 Microsoft.Xna.Framework.Vector2
---@param b2 Microsoft.Xna.Framework.Vector2
---@param intersection Microsoft.Xna.Framework.Vector2
---@return System.Boolean
function CS.Barotrauma.MathUtils.GetLineSegmentIntersection(a1, a2, b1, b2, intersection) end

---@param a1 Microsoft.Xna.Framework.Vector2
---@param a2 Microsoft.Xna.Framework.Vector2
---@param b1 Microsoft.Xna.Framework.Vector2
---@param b2 Microsoft.Xna.Framework.Vector2
---@param areLinesInfinite System.Boolean
---@param intersection Microsoft.Xna.Framework.Vector2
---@return System.Boolean
function CS.Barotrauma.MathUtils.GetLineIntersection(a1, a2, b1, b2, areLinesInfinite, intersection) end

---@param a1 Microsoft.Xna.Framework.Vector2
---@param a2 Microsoft.Xna.Framework.Vector2
---@param axisAligned1 Microsoft.Xna.Framework.Vector2
---@param axisAligned2 Microsoft.Xna.Framework.Vector2
---@param isHorizontal System.Boolean
---@param intersection Microsoft.Xna.Framework.Vector2
---@return System.Boolean
function CS.Barotrauma.MathUtils.GetAxisAlignedLineIntersection(a1, a2, axisAligned1, axisAligned2, isHorizontal, intersection) end

---@param a1 Microsoft.Xna.Framework.Vector2
---@param a2 Microsoft.Xna.Framework.Vector2
---@param rect Microsoft.Xna.Framework.Rectangle
---@param intersection Microsoft.Xna.Framework.Vector2
---@return System.Boolean
function CS.Barotrauma.MathUtils.GetLineRectangleIntersection(a1, a2, rect, intersection) end

---@param a1 Microsoft.Xna.Framework.Vector2
---@param a2 Microsoft.Xna.Framework.Vector2
---@param rect Microsoft.Xna.Framework.Rectangle
---@param intersection Microsoft.Xna.Framework.Vector2
---@return System.Boolean
function CS.Barotrauma.MathUtils.GetLineWorldRectangleIntersection(a1, a2, rect, intersection) end

---@param vector Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.MathUtils.FlipX(vector) end

---@overload fun(point: Microsoft.Xna.Framework.Point): Microsoft.Xna.Framework.Point
---@param vector Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.MathUtils.FlipY(vector) end

---@overload fun(point: Microsoft.Xna.Framework.Point): Microsoft.Xna.Framework.Point
---@param vector Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.MathUtils.YX(vector) end

---@param radians System.Single
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.MathUtils.RotatedUnitXRadians(radians) end

---@param radians System.Single
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.MathUtils.RotatedUnitYRadians(radians) end

---@param circlePos Microsoft.Xna.Framework.Vector2
---@param radius System.Single
---@param point1 Microsoft.Xna.Framework.Vector2
---@param point2 Microsoft.Xna.Framework.Vector2
---@param isLineSegment System.Boolean
---@param intersection1 Microsoft.Xna.Framework.Vector2|nil
---@param intersection2 Microsoft.Xna.Framework.Vector2|nil
---@return System.Int32
function CS.Barotrauma.MathUtils.GetLineCircleIntersections(circlePos, radius, point1, point2, isLineSegment, intersection1, intersection2) end

---@param lineA Microsoft.Xna.Framework.Vector2
---@param lineB Microsoft.Xna.Framework.Vector2
---@param point Microsoft.Xna.Framework.Vector2
---@return System.Single
function CS.Barotrauma.MathUtils.LineToPointDistance(lineA, lineB, point) end

---@param lineA Microsoft.Xna.Framework.Vector2
---@param lineB Microsoft.Xna.Framework.Vector2
---@param point Microsoft.Xna.Framework.Vector2
---@return System.Single
function CS.Barotrauma.MathUtils.LineToPointDistanceSquared(lineA, lineB, point) end

---@overload fun(lineA: Microsoft.Xna.Framework.Vector2, lineB: Microsoft.Xna.Framework.Vector2, point: Microsoft.Xna.Framework.Vector2): System.Single
---@param lineA Microsoft.Xna.Framework.Point
---@param lineB Microsoft.Xna.Framework.Point
---@param point Microsoft.Xna.Framework.Point
---@return System.Double
function CS.Barotrauma.MathUtils.LineSegmentToPointDistanceSquared(lineA, lineB, point) end

---@private
---@param line1X System.Double
---@param line1Y System.Double
---@param line2X System.Double
---@param line2Y System.Double
---@param pointX System.Double
---@param pointY System.Double
---@return System.Double
function CS.Barotrauma.MathUtils.LineSegmentToPointDistanceSquared(line1X, line1Y, line2X, line2Y, pointX, pointY) end

---@param lineA Microsoft.Xna.Framework.Vector2
---@param lineB Microsoft.Xna.Framework.Vector2
---@param point Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.MathUtils.GetClosestPointOnLineSegment(lineA, lineB, point) end

---@param circlePos Microsoft.Xna.Framework.Vector2
---@param radius System.Single
---@param rect Microsoft.Xna.Framework.Rectangle
---@return System.Boolean
function CS.Barotrauma.MathUtils.CircleIntersectsRectangle(circlePos, radius, rect) end

---@param center Microsoft.Xna.Framework.Vector2
---@param radius System.Single
---@param angle System.Single
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.MathUtils.GetPointOnCircumference(center, radius, angle) end

---@param center Microsoft.Xna.Framework.Vector2
---@param radius System.Single
---@param points System.Int32
---@param firstAngle? System.Single
---@return Microsoft.Xna.Framework.Vector2[]
function CS.Barotrauma.MathUtils.GetPointsOnCircumference(center, radius, points, firstAngle) end

---@param vertices userdata | { [System.Int32]: Microsoft.Xna.Framework.Vector2 } | (fun(): Microsoft.Xna.Framework.Vector2)
---@param center Microsoft.Xna.Framework.Vector2
---@return userdata | { [System.Int32]: Microsoft.Xna.Framework.Vector2[] } | (fun(): Microsoft.Xna.Framework.Vector2[])
function CS.Barotrauma.MathUtils.TriangulateConvexHull(vertices, center) end

---@param points userdata | { [System.Int32]: Microsoft.Xna.Framework.Vector2 } | (fun(): Microsoft.Xna.Framework.Vector2)
---@return userdata | { [System.Int32]: Microsoft.Xna.Framework.Vector2 } | (fun(): Microsoft.Xna.Framework.Vector2)
function CS.Barotrauma.MathUtils.GiftWrap(points) end

---@param start Microsoft.Xna.Framework.Vector2
---@param __end__ Microsoft.Xna.Framework.Vector2
---@param iterations System.Int32
---@param offsetAmount System.Single
---@param rng System.Random
---@param bounds? Microsoft.Xna.Framework.Rectangle|nil
---@return userdata | { [System.Int32]: Microsoft.Xna.Framework.Vector2[] } | (fun(): Microsoft.Xna.Framework.Vector2[])
function CS.Barotrauma.MathUtils.GenerateJaggedLine(start, __end__, iterations, offsetAmount, rng, bounds) end

---@param i System.Int64
---@return System.String
function CS.Barotrauma.MathUtils.GetBytesReadable(i) end

---@param rects userdata | { [System.Int32]: Microsoft.Xna.Framework.Rectangle } | (fun(): Microsoft.Xna.Framework.Rectangle)
---@param point Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.MathUtils.SplitRectanglesHorizontal(rects, point) end

---@param rects userdata | { [System.Int32]: Microsoft.Xna.Framework.Rectangle } | (fun(): Microsoft.Xna.Framework.Rectangle)
---@param point Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.MathUtils.SplitRectanglesVertical(rects, point) end

---@overload fun(a: Microsoft.Xna.Framework.Vector2, b: Microsoft.Xna.Framework.Vector2, epsilon?: System.Single): System.Boolean
---@param a System.Single
---@param b System.Single
---@param epsilon? System.Single
---@return System.Boolean
function CS.Barotrauma.MathUtils.NearlyEqual(a, b, epsilon) end

---@param start Microsoft.Xna.Framework.Vector2
---@param control Microsoft.Xna.Framework.Vector2
---@param __end__ Microsoft.Xna.Framework.Vector2
---@param t System.Single
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.MathUtils.Bezier(start, control, __end__, t) end

---@param f System.Single
---@param p System.Single
---@return System.Single
function CS.Barotrauma.MathUtils.Pow(f, p) end

---@param f System.Single
---@return System.Single
function CS.Barotrauma.MathUtils.Pow2(f) end

---@param alignment Barotrauma.Alignment
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.MathUtils.ToVector2(alignment) end

---@param point Microsoft.Xna.Framework.Vector2
---@param target Microsoft.Xna.Framework.Vector2
---@param radians System.Single
---@param clockWise? System.Boolean
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.MathUtils.RotatePointAroundTarget(point, target, radians, clockWise) end

---@param point Microsoft.Xna.Framework.Vector2
---@param radians System.Single
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.MathUtils.RotatePoint(point, radians) end

---@overload fun(corners: Microsoft.Xna.Framework.Vector2[], up: Microsoft.Xna.Framework.Vector2, center: Microsoft.Xna.Framework.Vector2, size: Microsoft.Xna.Framework.Vector2): Microsoft.Xna.Framework.Vector2[]
---@param up Microsoft.Xna.Framework.Vector2
---@param center Microsoft.Xna.Framework.Vector2
---@param size Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2[]
function CS.Barotrauma.MathUtils.GetImaginaryRect(up, center, size) end

---@overload fun(c1: Microsoft.Xna.Framework.Vector2, c2: Microsoft.Xna.Framework.Vector2, c3: Microsoft.Xna.Framework.Vector2, c4: Microsoft.Xna.Framework.Vector2, point: Microsoft.Xna.Framework.Vector2): System.Boolean
---@param corners Microsoft.Xna.Framework.Vector2[]
---@param point Microsoft.Xna.Framework.Vector2
---@return System.Boolean
function CS.Barotrauma.MathUtils.RectangleContainsPoint(corners, point) end

---@param c1 Microsoft.Xna.Framework.Vector2
---@param c2 Microsoft.Xna.Framework.Vector2
---@param c3 Microsoft.Xna.Framework.Vector2
---@param point Microsoft.Xna.Framework.Vector2
---@return System.Boolean
function CS.Barotrauma.MathUtils.TriangleContainsPoint(c1, c2, c3, point) end

---@param min System.Single
---@param max System.Single
---@param v System.Single
---@return System.Single
function CS.Barotrauma.MathUtils.InverseLerp(min, max, v) end

---@param ... System.Single
---@return System.Single
function CS.Barotrauma.MathUtils.Min(...) end

---@param ... System.Single
---@return System.Single
function CS.Barotrauma.MathUtils.Max(...) end

---@param val System.UInt32
---@return System.UInt32
function CS.Barotrauma.MathUtils.RoundUpToPowerOfTwo(val) end

---@param sourceArray Microsoft.Xna.Framework.Vector2[]
---@param newWidth System.Int32
---@param newHeight System.Int32
---@return Microsoft.Xna.Framework.Vector2[]
function CS.Barotrauma.MathUtils.ResizeVector2Array(sourceArray, newWidth, newHeight) end



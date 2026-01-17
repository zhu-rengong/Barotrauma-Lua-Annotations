---@meta
---Auto-generated from System.Runtime
---Namespace: System.Text

---@class System.Text.StringBuilder: System.Object, string | { [System.Int32]: System.Char }
---@field Capacity System.Int32
---@field MaxCapacity System.Int32
---@field Length System.Int32
---@field private RemainingCurrentChunk userdata | { [System.Int32]: System.Char }
---@field package m_ChunkChars System.Char[]
---@field package m_ChunkPrevious System.Text.StringBuilder
---@field package m_ChunkLength System.Int32
---@field package m_ChunkOffset System.Int32
---@field package m_MaxCapacity System.Int32
CS.System.Text.StringBuilder = {}

---@private
---@param requiredCapacity System.Int32
---@return System.Int32
function CS.System.Text.StringBuilder.GetReplaceBufferCapacity(requiredCapacity) end

---@package
---@param newBuffer System.Char*
---@param newLength System.Int32
function CS.System.Text.StringBuilder.ReplaceBufferInternal(newBuffer, newLength) end

---@package
---@param source userdata | { [System.Int32]: System.Byte }
function CS.System.Text.StringBuilder.ReplaceBufferUtf8Internal(source) end

---@package
---@param newBuffer System.SByte*
---@param newLength System.Int32
function CS.System.Text.StringBuilder.ReplaceBufferAnsiInternal(newBuffer, newLength) end

---@package
---@param dest System.IntPtr
---@param charLen System.Int32
function CS.System.Text.StringBuilder.InternalCopy(dest, charLen) end

---@private
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function CS.System.Text.StringBuilder.GetObjectData(info, context) end

---@return System.Int32
function CS.System.Text.StringBuilder.get_Capacity() end

---@param value System.Int32
function CS.System.Text.StringBuilder.set_Capacity(value) end

---@return System.Int32
function CS.System.Text.StringBuilder.get_MaxCapacity() end

---@param capacity System.Int32
---@return System.Int32
function CS.System.Text.StringBuilder.EnsureCapacity(capacity) end

---@overload fun(startIndex: System.Int32, length: System.Int32): System.String
---@return System.String
function CS.System.Text.StringBuilder.ToString() end

---@return System.Text.StringBuilder
function CS.System.Text.StringBuilder.Clear() end

---@return System.Int32
function CS.System.Text.StringBuilder.get_Length() end

---@param value System.Int32
function CS.System.Text.StringBuilder.set_Length(value) end

---@param index System.Int32
---@return System.Char
function CS.System.Text.StringBuilder.get_Chars(index) end

---@param index System.Int32
---@param value System.Char
function CS.System.Text.StringBuilder.set_Chars(index, value) end

---@return System.Text.StringBuilder.ChunkEnumerator
function CS.System.Text.StringBuilder.GetChunks() end

---@overload fun(value: System.Char[], startIndex: System.Int32, charCount: System.Int32): System.Text.StringBuilder
---@overload fun(value: System.String): System.Text.StringBuilder
---@overload fun(value: System.String, startIndex: System.Int32, count: System.Int32): System.Text.StringBuilder
---@overload fun(value: System.Text.StringBuilder): System.Text.StringBuilder
---@overload fun(value: System.Text.StringBuilder, startIndex: System.Int32, count: System.Int32): System.Text.StringBuilder
---@overload fun(value: System.Boolean): System.Text.StringBuilder
---@overload fun(value: System.Char): System.Text.StringBuilder
---@overload fun(value: System.SByte): System.Text.StringBuilder
---@overload fun(value: System.Byte): System.Text.StringBuilder
---@overload fun(value: System.Int16): System.Text.StringBuilder
---@overload fun(value: System.Int32): System.Text.StringBuilder
---@overload fun(value: System.Int64): System.Text.StringBuilder
---@overload fun(value: System.Single): System.Text.StringBuilder
---@overload fun(value: System.Double): System.Text.StringBuilder
---@overload fun(value: System.Decimal): System.Text.StringBuilder
---@overload fun(value: System.UInt16): System.Text.StringBuilder
---@overload fun(value: System.UInt32): System.Text.StringBuilder
---@overload fun(value: System.UInt64): System.Text.StringBuilder
---@overload fun(value: System.Object): System.Text.StringBuilder
---@overload fun(value: System.Char[]): System.Text.StringBuilder
---@overload fun(value: (userdata | { [System.Int32]: System.Char })): System.Text.StringBuilder
---@overload fun(value: userdata): System.Text.StringBuilder
---@overload fun(handler: System.Text.StringBuilder.AppendInterpolatedStringHandler): System.Text.StringBuilder
---@overload fun(provider: System.IFormatProvider, handler: System.Text.StringBuilder.AppendInterpolatedStringHandler): System.Text.StringBuilder
---@overload fun(value: System.Char*, valueCount: System.Int32): System.Text.StringBuilder
---@param value System.Char
---@param repeatCount System.Int32
---@return System.Text.StringBuilder
function CS.System.Text.StringBuilder.Append(value, repeatCount) end

---@private
---@overload fun(value: System.Char)
---@overload fun(value: System.Char, valueCount: System.Int32)
---@param value System.Char
---@param repeatCount System.Int32
function CS.System.Text.StringBuilder.AppendWithExpansion(value, repeatCount) end

---@private
---@param value System.Text.StringBuilder
---@param startIndex System.Int32
---@param count System.Int32
---@return System.Text.StringBuilder
function CS.System.Text.StringBuilder.AppendCore(value, startIndex, count) end

---@overload fun(value: System.String): System.Text.StringBuilder
---@overload fun(handler: System.Text.StringBuilder.AppendInterpolatedStringHandler): System.Text.StringBuilder
---@overload fun(provider: System.IFormatProvider, handler: System.Text.StringBuilder.AppendInterpolatedStringHandler): System.Text.StringBuilder
---@return System.Text.StringBuilder
function CS.System.Text.StringBuilder.AppendLine() end

---@overload fun(sourceIndex: System.Int32, destination: (userdata | { [System.Int32]: System.Char }), count: System.Int32)
---@param sourceIndex System.Int32
---@param destination System.Char[]
---@param destinationIndex System.Int32
---@param count System.Int32
function CS.System.Text.StringBuilder.CopyTo(sourceIndex, destination, destinationIndex, count) end

---@overload fun(index: System.Int32, value: System.String): System.Text.StringBuilder
---@overload fun(index: System.Int32, value: System.Boolean): System.Text.StringBuilder
---@overload fun(index: System.Int32, value: System.SByte): System.Text.StringBuilder
---@overload fun(index: System.Int32, value: System.Byte): System.Text.StringBuilder
---@overload fun(index: System.Int32, value: System.Int16): System.Text.StringBuilder
---@overload fun(index: System.Int32, value: System.Char): System.Text.StringBuilder
---@overload fun(index: System.Int32, value: System.Char[]): System.Text.StringBuilder
---@overload fun(index: System.Int32, value: System.Char[], startIndex: System.Int32, charCount: System.Int32): System.Text.StringBuilder
---@overload fun(index: System.Int32, value: System.Int32): System.Text.StringBuilder
---@overload fun(index: System.Int32, value: System.Int64): System.Text.StringBuilder
---@overload fun(index: System.Int32, value: System.Single): System.Text.StringBuilder
---@overload fun(index: System.Int32, value: System.Double): System.Text.StringBuilder
---@overload fun(index: System.Int32, value: System.Decimal): System.Text.StringBuilder
---@overload fun(index: System.Int32, value: System.UInt16): System.Text.StringBuilder
---@overload fun(index: System.Int32, value: System.UInt32): System.Text.StringBuilder
---@overload fun(index: System.Int32, value: System.UInt64): System.Text.StringBuilder
---@overload fun(index: System.Int32, value: System.Object): System.Text.StringBuilder
---@overload fun(index: System.Int32, value: (userdata | { [System.Int32]: System.Char })): System.Text.StringBuilder
---@param index System.Int32
---@param value System.String
---@param count System.Int32
---@return System.Text.StringBuilder
function CS.System.Text.StringBuilder.Insert(index, value, count) end

---@private
---@overload fun(index: System.Int32, value: System.Char, valueCount: System.Int32)
---@param index System.Int32
---@param value userdata | { [System.Int32]: System.Char }
---@param count System.Int32
---@return System.Text.StringBuilder
function CS.System.Text.StringBuilder.Insert(index, value, count) end

---@param startIndex System.Int32
---@param length System.Int32
---@return System.Text.StringBuilder
function CS.System.Text.StringBuilder.Remove(startIndex, length) end

---@overload fun(separator: System.String, ...: System.String): System.Text.StringBuilder
---@overload fun(separator: System.Char, ...: System.Object): System.Text.StringBuilder
---@overload fun(separator: System.Char, ...: System.String): System.Text.StringBuilder
---@param separator System.String
---@param ... System.Object
---@return System.Text.StringBuilder
function CS.System.Text.StringBuilder.AppendJoin(separator, ...) end

---@overload fun(format: System.String, arg0: System.Object, arg1: System.Object): System.Text.StringBuilder
---@overload fun(format: System.String, arg0: System.Object, arg1: System.Object, arg2: System.Object): System.Text.StringBuilder
---@overload fun(format: System.String, ...: System.Object): System.Text.StringBuilder
---@overload fun(provider: System.IFormatProvider, format: System.String, arg0: System.Object): System.Text.StringBuilder
---@overload fun(provider: System.IFormatProvider, format: System.String, arg0: System.Object, arg1: System.Object): System.Text.StringBuilder
---@overload fun(provider: System.IFormatProvider, format: System.String, arg0: System.Object, arg1: System.Object, arg2: System.Object): System.Text.StringBuilder
---@overload fun(provider: System.IFormatProvider, format: System.String, ...: System.Object): System.Text.StringBuilder
---@overload fun(provider: System.IFormatProvider, format: System.Text.CompositeFormat, ...: System.Object): System.Text.StringBuilder
---@overload fun(provider: System.IFormatProvider, format: System.Text.CompositeFormat, args: (userdata | { [System.Int32]: System.Object })): System.Text.StringBuilder
---@param format System.String
---@param arg0 System.Object
---@return System.Text.StringBuilder
function CS.System.Text.StringBuilder.AppendFormat(format, arg0) end

---@package
---@param provider System.IFormatProvider
---@param format System.String
---@param args userdata | { [System.Int32]: System.Object }
---@return System.Text.StringBuilder
function CS.System.Text.StringBuilder.AppendFormatHelper(provider, format, args) end

---@overload fun(oldValue: System.String, newValue: System.String, startIndex: System.Int32, count: System.Int32): System.Text.StringBuilder
---@overload fun(oldChar: System.Char, newChar: System.Char): System.Text.StringBuilder
---@overload fun(oldChar: System.Char, newChar: System.Char, startIndex: System.Int32, count: System.Int32): System.Text.StringBuilder
---@param oldValue System.String
---@param newValue System.String
---@return System.Text.StringBuilder
function CS.System.Text.StringBuilder.Replace(oldValue, newValue) end

---@overload fun(span: (userdata | { [System.Int32]: System.Char })): System.Boolean
---@param sb System.Text.StringBuilder
---@return System.Boolean
function CS.System.Text.StringBuilder.Equals(sb) end

---@private
---@param value System.Char
---@param valueCount System.Int32
function CS.System.Text.StringBuilder.Append(value, valueCount) end

---@private
---@param replacements userdata | { [System.Int32]: System.Int32 }
---@param sourceChunk System.Text.StringBuilder
---@param removeCount System.Int32
---@param value System.String
function CS.System.Text.StringBuilder.ReplaceAllInChunk(replacements, sourceChunk, removeCount, value) end

---@private
---@param chunk System.Text.StringBuilder
---@param indexInChunk System.Int32
---@param count System.Int32
---@param value System.String
---@return System.Boolean
function CS.System.Text.StringBuilder.StartsWith(chunk, indexInChunk, count, value) end

---@private
---@param chunk System.Text.StringBuilder
---@param indexInChunk System.Int32
---@param value System.Char
---@param count System.Int32
function CS.System.Text.StringBuilder.ReplaceInPlaceAtChunk(chunk, indexInChunk, value, count) end

---@private
---@param index System.Int32
---@return System.Text.StringBuilder
function CS.System.Text.StringBuilder.FindChunkForIndex(index) end

---@private
---@return userdata | { [System.Int32]: System.Char }
function CS.System.Text.StringBuilder.get_RemainingCurrentChunk() end

---@private
---@param chunk System.Text.StringBuilder
---@return System.Text.StringBuilder
function CS.System.Text.StringBuilder.Next(chunk) end

---@private
---@param minBlockCharCount System.Int32
function CS.System.Text.StringBuilder.ExpandByABlock(minBlockCharCount) end

---@private
---@param index System.Int32
---@param count System.Int32
---@param chunk System.Text.StringBuilder
---@param indexInChunk System.Int32
---@param doNotMoveFollowingChars System.Boolean
function CS.System.Text.StringBuilder.MakeRoom(index, count, chunk, indexInChunk, doNotMoveFollowingChars) end

---@private
---@param startIndex System.Int32
---@param count System.Int32
---@param chunk System.Text.StringBuilder
---@param indexInChunk System.Int32
function CS.System.Text.StringBuilder.Remove(startIndex, count, chunk, indexInChunk) end

---@overload fun(capacity: System.Int32): System.Text.StringBuilder
---@overload fun(value: System.String): System.Text.StringBuilder
---@overload fun(value: System.String, capacity: System.Int32): System.Text.StringBuilder
---@overload fun(value: System.String, startIndex: System.Int32, length: System.Int32, capacity: System.Int32): System.Text.StringBuilder
---@overload fun(capacity: System.Int32, maxCapacity: System.Int32): System.Text.StringBuilder
---@overload fun(info: System.Runtime.Serialization.SerializationInfo, context: System.Runtime.Serialization.StreamingContext): System.Text.StringBuilder
---@overload fun(from: System.Text.StringBuilder): System.Text.StringBuilder
---@overload fun(size: System.Int32, maxCapacity: System.Int32, previousBlock: System.Text.StringBuilder): System.Text.StringBuilder
---@return System.Text.StringBuilder
function CS.System.Text.StringBuilder() end


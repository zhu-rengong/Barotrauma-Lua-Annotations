---@meta
---Auto-generated from Barotrauma
---Namespace: Barotrauma.IO

---@class Barotrauma.IO.File: System.Object
CS.Barotrauma.IO.File = {}

---@overload fun(path: System.String): System.Boolean
---@param path Barotrauma.ContentPath
---@return System.Boolean
function CS.Barotrauma.IO.File.Exists(path) end

---@param src System.String
---@param dest System.String
---@param overwrite? System.Boolean
---@param catchUnauthorizedAccessExceptions? System.Boolean
function CS.Barotrauma.IO.File.Copy(src, dest, overwrite, catchUnauthorizedAccessExceptions) end

---@param src System.String
---@param dest System.String
---@param catchUnauthorizedAccessExceptions? System.Boolean
function CS.Barotrauma.IO.File.Move(src, dest, catchUnauthorizedAccessExceptions) end

---@overload fun(path: System.String, catchUnauthorizedAccessExceptions?: System.Boolean)
---@param path Barotrauma.ContentPath
---@param catchUnauthorizedAccessExceptions? System.Boolean
function CS.Barotrauma.IO.File.Delete(path, catchUnauthorizedAccessExceptions) end

---@param path System.String
---@return System.DateTime
function CS.Barotrauma.IO.File.GetLastWriteTime(path) end

---@param path System.String
---@param mode System.IO.FileMode
---@param access? System.IO.FileAccess
---@param share? System.IO.FileShare|nil
---@param catchUnauthorizedAccessExceptions? System.Boolean
---@return Barotrauma.IO.FileStream
function CS.Barotrauma.IO.File.Open(path, mode, access, share, catchUnauthorizedAccessExceptions) end

---@param path System.String
---@param catchUnauthorizedAccessExceptions? System.Boolean
---@return Barotrauma.IO.FileStream
function CS.Barotrauma.IO.File.OpenRead(path, catchUnauthorizedAccessExceptions) end

---@param path System.String
---@param catchUnauthorizedAccessExceptions? System.Boolean
---@return Barotrauma.IO.FileStream
function CS.Barotrauma.IO.File.OpenWrite(path, catchUnauthorizedAccessExceptions) end

---@param path System.String
---@param catchUnauthorizedAccessExceptions? System.Boolean
---@return Barotrauma.IO.FileStream
function CS.Barotrauma.IO.File.Create(path, catchUnauthorizedAccessExceptions) end

---@param path System.String
---@param contents System.Byte[]
---@param catchUnauthorizedAccessExceptions? System.Boolean
function CS.Barotrauma.IO.File.WriteAllBytes(path, contents, catchUnauthorizedAccessExceptions) end

---@param path System.String
---@param contents System.String
---@param encoding? System.Text.Encoding
---@param catchUnauthorizedAccessExceptions? System.Boolean
function CS.Barotrauma.IO.File.WriteAllText(path, contents, encoding, catchUnauthorizedAccessExceptions) end

---@param path System.String
---@param contents userdata | (fun(): System.String)
---@param encoding? System.Text.Encoding
---@param catchUnauthorizedAccessExceptions? System.Boolean
function CS.Barotrauma.IO.File.WriteAllLines(path, contents, encoding, catchUnauthorizedAccessExceptions) end

---@param path System.String
---@param catchUnauthorizedAccessExceptions? System.Boolean
---@return System.Byte[]
function CS.Barotrauma.IO.File.ReadAllBytes(path, catchUnauthorizedAccessExceptions) end

---@param path System.String
---@param encoding? System.Text.Encoding
---@param catchUnauthorizedAccessExceptions? System.Boolean
---@return System.String
function CS.Barotrauma.IO.File.ReadAllText(path, encoding, catchUnauthorizedAccessExceptions) end

---@param path System.String
---@param encoding? System.Text.Encoding
---@param catchUnauthorizedAccessExceptions? System.Boolean
---@return System.String[]
function CS.Barotrauma.IO.File.ReadAllLines(path, encoding, catchUnauthorizedAccessExceptions) end

---@param str System.String
---@return System.String
function CS.Barotrauma.IO.File.SanitizeName(str) end



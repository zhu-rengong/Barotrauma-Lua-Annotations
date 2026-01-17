---@meta
---Auto-generated from Barotrauma
---Namespace: Barotrauma.Media

---@class Barotrauma.Media.Video: System.Object
---@field Width System.Int32
---@field Height System.Int32
---@field AudioGain System.Single
---@field LoadFailed System.Boolean
---@field IsPlaying System.Boolean
---@field private videoInternal System.IntPtr
---@field private texture Microsoft.Xna.Framework.Graphics.Texture2D
---@field private textureChanged System.Boolean
---@field private textureData System.Int32[]
---@field private mutex System.Object
---@field private sound Barotrauma.Sounds.VideoSound
---@field private VideoFrameCallback fun(videoInternal: System.IntPtr, data: System.IntPtr, dataElemSize: System.Int32, dataLen: System.Int32)
---@field private VideoAudioCallback fun(videoInternal: System.IntPtr, data: System.IntPtr, dataElemSize: System.Int32, dataLen: System.Int32)
---@field private videos userdata | { [System.IntPtr]: Barotrauma.Media.Video } | (fun(): userdata)
CS.Barotrauma.Media.Video = {}

function CS.Barotrauma.Media.Video.Init() end

function CS.Barotrauma.Media.Video.Close() end

---@return System.Single
function CS.Barotrauma.Media.Video.get_AudioGain() end

---@param value System.Single
function CS.Barotrauma.Media.Video.set_AudioGain(value) end

---@param graphicsDevice Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param soundManager Barotrauma.Sounds.SoundManager
---@param filename System.String
---@return Barotrauma.Media.Video
function CS.Barotrauma.Media.Video.Load(graphicsDevice, soundManager, filename) end

function CS.Barotrauma.Media.Video.Play() end

function CS.Barotrauma.Media.Video.Dispose() end

---@return System.Boolean
function CS.Barotrauma.Media.Video.get_IsPlaying() end

---@return Microsoft.Xna.Framework.Graphics.Texture2D
function CS.Barotrauma.Media.Video.GetTexture() end

---@param data System.IntPtr
function CS.Barotrauma.Media.Video.SetFrameData(data) end

---@private
---@param videoInternal System.IntPtr
---@param data System.IntPtr
---@param dataElemSize System.Int32
---@param dataLen System.Int32
function CS.Barotrauma.Media.Video.VideoFrameUpdate(videoInternal, data, dataElemSize, dataLen) end

---@private
---@param videoInternal System.IntPtr
---@param data System.IntPtr
---@param dataElemSize System.Int32
---@param dataLen System.Int32
function CS.Barotrauma.Media.Video.VideoAudioUpdate(videoInternal, data, dataElemSize, dataLen) end

do
---@private
---@param graphicsDevice Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param soundManager Barotrauma.Sounds.SoundManager
---@param filename System.String
---@return Barotrauma.Media.Video
local __ctor = function(graphicsDevice, soundManager, filename) end
CS.Barotrauma.Media.Video = __ctor
CS.Barotrauma.Media.Video.__new = __ctor
end

---@class Barotrauma.Media.Video.Internal.EventCallback: System.MulticastDelegate
CS.Barotrauma.Media.Video.Internal.EventCallback = {}

---@param videoInternal System.IntPtr
---@param data System.IntPtr
---@param dataElemSize System.Int32
---@param dataLen System.Int32
function CS.Barotrauma.Media.Video.Internal.EventCallback.Invoke(videoInternal, data, dataElemSize, dataLen) end

---@param videoInternal System.IntPtr
---@param data System.IntPtr
---@param dataElemSize System.Int32
---@param dataLen System.Int32
---@param callback fun(ar: System.IAsyncResult)
---@param object System.Object
---@return System.IAsyncResult
function CS.Barotrauma.Media.Video.Internal.EventCallback.BeginInvoke(videoInternal, data, dataElemSize, dataLen, callback, object) end

---@param result System.IAsyncResult
function CS.Barotrauma.Media.Video.Internal.EventCallback.EndInvoke(result) end

do
---@param object System.Object
---@param method System.IntPtr
---@return Barotrauma.Media.Video.Internal.EventCallback
local __ctor = function(object, method) end
CS.Barotrauma.Media.Video.Internal.EventCallback = __ctor
CS.Barotrauma.Media.Video.Internal.EventCallback.__new = __ctor
end


---@meta
---Auto-generated from MonoGame.Framework.Windows.NetStandard
---Namespace: Microsoft.Xna.Framework.Graphics

---@enum Microsoft.Xna.Framework.Graphics.SpriteEffects
CS.Microsoft.Xna.Framework.Graphics.SpriteEffects = {
    None = 0,
    FlipHorizontally = 1,
    FlipVertically = 2
}

---@class Microsoft.Xna.Framework.Graphics.SpriteBatch: Microsoft.Xna.Framework.Graphics.GraphicsResource
---@field private _batcher Microsoft.Xna.Framework.Graphics.SpriteBatcher
---@field private _sortMode Microsoft.Xna.Framework.Graphics.SpriteSortMode
---@field private _blendState Microsoft.Xna.Framework.Graphics.BlendState
---@field private _samplerState Microsoft.Xna.Framework.Graphics.SamplerState
---@field private _depthStencilState Microsoft.Xna.Framework.Graphics.DepthStencilState
---@field private _rasterizerState Microsoft.Xna.Framework.Graphics.RasterizerState
---@field private _effect Microsoft.Xna.Framework.Graphics.SpriteBatch.EffectWithParams
---@field private _beginCalled System.Boolean
---@field private _spriteEffect Microsoft.Xna.Framework.Graphics.Effect
---@field private _matrixTransform Microsoft.Xna.Framework.Graphics.EffectParameter
---@field private _spritePass Microsoft.Xna.Framework.Graphics.EffectPass
---@field private _matrix Microsoft.Xna.Framework.Matrix|nil
---@field private _lastViewport Microsoft.Xna.Framework.Graphics.Viewport
---@field private _projection Microsoft.Xna.Framework.Matrix
---@field private _tempRect Microsoft.Xna.Framework.Rectangle
---@field private _texCoordTL Microsoft.Xna.Framework.Vector2
---@field private _texCoordBR Microsoft.Xna.Framework.Vector2
---@field package NeedsHalfPixelOffset System.Boolean
CS.Microsoft.Xna.Framework.Graphics.SpriteBatch = {}

---@param sortMode? Microsoft.Xna.Framework.Graphics.SpriteSortMode
---@param blendState? Microsoft.Xna.Framework.Graphics.BlendState
---@param samplerState? Microsoft.Xna.Framework.Graphics.SamplerState
---@param depthStencilState? Microsoft.Xna.Framework.Graphics.DepthStencilState
---@param rasterizerState? Microsoft.Xna.Framework.Graphics.RasterizerState
---@param effect? Microsoft.Xna.Framework.Graphics.Effect
---@param transformMatrix? Microsoft.Xna.Framework.Matrix|nil
function CS.Microsoft.Xna.Framework.Graphics.SpriteBatch.Begin(sortMode, blendState, samplerState, depthStencilState, rasterizerState, effect, transformMatrix) end

---@return Microsoft.Xna.Framework.Graphics.Effect
function CS.Microsoft.Xna.Framework.Graphics.SpriteBatch.GetCurrentEffect() end

function CS.Microsoft.Xna.Framework.Graphics.SpriteBatch.End() end

---@overload fun(effectWithParams: Microsoft.Xna.Framework.Graphics.SpriteBatch.EffectWithParams)
---@param effect? Microsoft.Xna.Framework.Graphics.Effect
---@param parameters? userdata | { [System.String]: System.Object } | (fun(): userdata)
function CS.Microsoft.Xna.Framework.Graphics.SpriteBatch.SwapEffect(effect, parameters) end

---@private
function CS.Microsoft.Xna.Framework.Graphics.SpriteBatch.Setup() end

---@private
---@overload fun(spriteFont: Microsoft.Xna.Framework.Graphics.SpriteFont, text: System.String)
---@overload fun(spriteFont: Microsoft.Xna.Framework.Graphics.SpriteFont, text: System.Text.StringBuilder)
---@param texture Microsoft.Xna.Framework.Graphics.Texture2D
function CS.Microsoft.Xna.Framework.Graphics.SpriteBatch.CheckValid(texture) end

---@overload fun(texture: Microsoft.Xna.Framework.Graphics.Texture2D, vertices: Microsoft.Xna.Framework.Graphics.VertexPositionColorTexture[], layerDepth: System.Single, count?: (System.Int32|nil))
---@overload fun(texture: Microsoft.Xna.Framework.Graphics.Texture2D, position: Microsoft.Xna.Framework.Vector2, sourceRectangle: (Microsoft.Xna.Framework.Rectangle|nil), color: Microsoft.Xna.Framework.Color, rotation: System.Single, origin: Microsoft.Xna.Framework.Vector2, scale: Microsoft.Xna.Framework.Vector2, effects: Microsoft.Xna.Framework.Graphics.SpriteEffects, layerDepth: System.Single)
---@overload fun(texture: Microsoft.Xna.Framework.Graphics.Texture2D, position: Microsoft.Xna.Framework.Vector2, sourceRectangle: (Microsoft.Xna.Framework.Rectangle|nil), color: Microsoft.Xna.Framework.Color, rotation: System.Single, origin: Microsoft.Xna.Framework.Vector2, scale: System.Single, effects: Microsoft.Xna.Framework.Graphics.SpriteEffects, layerDepth: System.Single)
---@overload fun(texture: Microsoft.Xna.Framework.Graphics.Texture2D, destinationRectangle: Microsoft.Xna.Framework.Rectangle, sourceRectangle: (Microsoft.Xna.Framework.Rectangle|nil), color: Microsoft.Xna.Framework.Color, rotation: System.Single, origin: Microsoft.Xna.Framework.Vector2, effects: Microsoft.Xna.Framework.Graphics.SpriteEffects, layerDepth: System.Single)
---@overload fun(texture: Microsoft.Xna.Framework.Graphics.Texture2D, position: Microsoft.Xna.Framework.Vector2, sourceRectangle: (Microsoft.Xna.Framework.Rectangle|nil), color: Microsoft.Xna.Framework.Color)
---@overload fun(texture: Microsoft.Xna.Framework.Graphics.Texture2D, destinationRectangle: Microsoft.Xna.Framework.Rectangle, sourceRectangle: (Microsoft.Xna.Framework.Rectangle|nil), color: Microsoft.Xna.Framework.Color)
---@overload fun(texture: Microsoft.Xna.Framework.Graphics.Texture2D, position: Microsoft.Xna.Framework.Vector2, color: Microsoft.Xna.Framework.Color)
---@overload fun(texture: Microsoft.Xna.Framework.Graphics.Texture2D, destinationRectangle: Microsoft.Xna.Framework.Rectangle, color: Microsoft.Xna.Framework.Color)
---@param texture Microsoft.Xna.Framework.Graphics.Texture2D
---@param position? Microsoft.Xna.Framework.Vector2|nil
---@param destinationRectangle? Microsoft.Xna.Framework.Rectangle|nil
---@param sourceRectangle? Microsoft.Xna.Framework.Rectangle|nil
---@param origin? Microsoft.Xna.Framework.Vector2|nil
---@param rotation? System.Single
---@param scale? Microsoft.Xna.Framework.Vector2|nil
---@param color? Microsoft.Xna.Framework.Color|nil
---@param effects? Microsoft.Xna.Framework.Graphics.SpriteEffects
---@param layerDepth? System.Single
function CS.Microsoft.Xna.Framework.Graphics.SpriteBatch.Draw(texture, position, destinationRectangle, sourceRectangle, origin, rotation, scale, color, effects, layerDepth) end

---@package
function CS.Microsoft.Xna.Framework.Graphics.SpriteBatch.FlushIfNeeded() end

---@overload fun(spriteFont: Microsoft.Xna.Framework.Graphics.SpriteFont, text: System.String, position: Microsoft.Xna.Framework.Vector2, color: Microsoft.Xna.Framework.Color, rotation: System.Single, origin: Microsoft.Xna.Framework.Vector2, scale: System.Single, effects: Microsoft.Xna.Framework.Graphics.SpriteEffects, layerDepth: System.Single)
---@overload fun(spriteFont: Microsoft.Xna.Framework.Graphics.SpriteFont, text: System.String, position: Microsoft.Xna.Framework.Vector2, color: Microsoft.Xna.Framework.Color, rotation: System.Single, origin: Microsoft.Xna.Framework.Vector2, scale: Microsoft.Xna.Framework.Vector2, effects: Microsoft.Xna.Framework.Graphics.SpriteEffects, layerDepth: System.Single)
---@overload fun(spriteFont: Microsoft.Xna.Framework.Graphics.SpriteFont, text: System.Text.StringBuilder, position: Microsoft.Xna.Framework.Vector2, color: Microsoft.Xna.Framework.Color)
---@overload fun(spriteFont: Microsoft.Xna.Framework.Graphics.SpriteFont, text: System.Text.StringBuilder, position: Microsoft.Xna.Framework.Vector2, color: Microsoft.Xna.Framework.Color, rotation: System.Single, origin: Microsoft.Xna.Framework.Vector2, scale: System.Single, effects: Microsoft.Xna.Framework.Graphics.SpriteEffects, layerDepth: System.Single)
---@overload fun(spriteFont: Microsoft.Xna.Framework.Graphics.SpriteFont, text: System.Text.StringBuilder, position: Microsoft.Xna.Framework.Vector2, color: Microsoft.Xna.Framework.Color, rotation: System.Single, origin: Microsoft.Xna.Framework.Vector2, scale: Microsoft.Xna.Framework.Vector2, effects: Microsoft.Xna.Framework.Graphics.SpriteEffects, layerDepth: System.Single)
---@param spriteFont Microsoft.Xna.Framework.Graphics.SpriteFont
---@param text System.String
---@param position Microsoft.Xna.Framework.Vector2
---@param color Microsoft.Xna.Framework.Color
function CS.Microsoft.Xna.Framework.Graphics.SpriteBatch.DrawString(spriteFont, text, position, color) end

---@protected
---@param disposing System.Boolean
function CS.Microsoft.Xna.Framework.Graphics.SpriteBatch.Dispose(disposing) end

---@param graphicsDevice Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@return Microsoft.Xna.Framework.Graphics.SpriteBatch
function CS.Microsoft.Xna.Framework.Graphics.SpriteBatch(graphicsDevice) end

---@class Microsoft.Xna.Framework.Graphics.Texture2D: Microsoft.Xna.Framework.Graphics.Texture
---@field package TexelWidth System.Single
---@field package TexelHeight System.Single
---@field Bounds Microsoft.Xna.Framework.Rectangle
---@field Width System.Int32
---@field Height System.Int32
---@field protected Shared System.Boolean
---@field protected Mipmap System.Boolean
---@field protected SampleDescription SharpDX.DXGI.SampleDescription
---@field package width System.Int32
---@field package height System.Int32
---@field package ArraySize System.Int32
---@field private _shared System.Boolean
---@field private _mipmap System.Boolean
---@field private _sampleDescription SharpDX.DXGI.SampleDescription
---@field private _cachedStagingTexture SharpDX.Direct3D11.Texture2D
---@field private imgfactory SharpDX.WIC.ImagingFactory
CS.Microsoft.Xna.Framework.Graphics.Texture2D = {}

---@return Microsoft.Xna.Framework.Rectangle
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.get_Bounds() end

---@return System.Int32
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.get_Width() end

---@return System.Int32
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.get_Height() end

---@param graphicsDevice Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param stream System.IO.Stream
---@return Microsoft.Xna.Framework.Graphics.Texture2D
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.FromStream(graphicsDevice, stream) end

---@param stream System.IO.Stream
---@param width System.Int32
---@param height System.Int32
---@param channels System.Int32
---@return System.Byte[]
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.TextureDataFromStream(stream, width, height, channels) end

---@param stream System.IO.Stream
---@param width System.Int32
---@param height System.Int32
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.SaveAsJpeg(stream, width, height) end

---@param stream System.IO.Stream
---@param width System.Int32
---@param height System.Int32
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.SaveAsPng(stream, width, height) end

---@param textureStream System.IO.Stream
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.Reload(textureStream) end

---@private
---@param pixelHeight System.Int32
---@param pixelWidth System.Int32
---@param pixels System.Int32[]
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.ConvertToABGR(pixelHeight, pixelWidth, pixels) end

---@protected
---@return System.Boolean
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.get_Shared() end

---@protected
---@return System.Boolean
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.get_Mipmap() end

---@protected
---@return SharpDX.DXGI.SampleDescription
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.get_SampleDescription() end

---@private
---@param width System.Int32
---@param height System.Int32
---@param mipmap System.Boolean
---@param format Microsoft.Xna.Framework.Graphics.SurfaceFormat
---@param type Microsoft.Xna.Framework.Graphics.Texture2D.SurfaceType
---@param shared System.Boolean
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.PlatformConstruct(width, height, mipmap, format, type, shared) end

---@protected
---@param disposing System.Boolean
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.Dispose(disposing) end

---@private
---@param arraySlice System.Int32
---@param level System.Int32
---@return System.Int32
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.CalculateSubresourceIndex(arraySlice, level) end

---@private
---@param graphicsDevice Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param stream System.IO.Stream
---@return Microsoft.Xna.Framework.Graphics.Texture2D
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.PlatformFromStream(graphicsDevice, stream) end

---@private
---@param stream System.IO.Stream
---@param width System.Int32
---@param height System.Int32
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.PlatformSaveAsJpeg(stream, width, height) end

---@private
---@param pixelHeight System.Int32
---@param pixelWidth System.Int32
---@param pixels System.Byte[]
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.ConvertToRGBA(pixelHeight, pixelWidth, pixels) end

---@private
---@param stream System.IO.Stream
---@param width System.Int32
---@param height System.Int32
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.PlatformSaveAsPng(stream, width, height) end

---@private
---@param bsource SharpDX.WIC.BitmapSource
---@param device Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@return SharpDX.Direct3D11.Texture2D
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.CreateTex2DFromBitmap(bsource, device) end

---@private
---@param stream System.IO.Stream
---@param decoder SharpDX.WIC.BitmapDecoder
---@return SharpDX.WIC.BitmapSource
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.LoadBitmap(stream, decoder) end

---@return SharpDX.Direct3D11.Texture2DDescription
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.GetTexture2DDescription() end

---@package
---@return SharpDX.Direct3D11.Resource
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.CreateTexture() end

---@protected
---@return SharpDX.Direct3D11.ShaderResourceView
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.CreateShaderResourceView() end

---@return SharpDX.DXGI.SampleDescription
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.CreateSampleDescription() end

---@package
---@return SharpDX.DXGI.SampleDescription
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.GetTextureSampleDescription() end

---@private
---@param textureStream System.IO.Stream
function CS.Microsoft.Xna.Framework.Graphics.Texture2D.PlatformReload(textureStream) end

---@overload fun(graphicsDevice: Microsoft.Xna.Framework.Graphics.GraphicsDevice, width: System.Int32, height: System.Int32, mipmap: System.Boolean, format: Microsoft.Xna.Framework.Graphics.SurfaceFormat): Microsoft.Xna.Framework.Graphics.Texture2D
---@overload fun(graphicsDevice: Microsoft.Xna.Framework.Graphics.GraphicsDevice, width: System.Int32, height: System.Int32, mipmap: System.Boolean, format: Microsoft.Xna.Framework.Graphics.SurfaceFormat, arraySize: System.Int32): Microsoft.Xna.Framework.Graphics.Texture2D
---@overload fun(graphicsDevice: Microsoft.Xna.Framework.Graphics.GraphicsDevice, width: System.Int32, height: System.Int32, mipmap: System.Boolean, format: Microsoft.Xna.Framework.Graphics.SurfaceFormat, type: Microsoft.Xna.Framework.Graphics.Texture2D.SurfaceType): Microsoft.Xna.Framework.Graphics.Texture2D
---@overload fun(graphicsDevice: Microsoft.Xna.Framework.Graphics.GraphicsDevice, width: System.Int32, height: System.Int32, mipmap: System.Boolean, format: Microsoft.Xna.Framework.Graphics.SurfaceFormat, type: Microsoft.Xna.Framework.Graphics.Texture2D.SurfaceType, shared: System.Boolean, arraySize: System.Int32): Microsoft.Xna.Framework.Graphics.Texture2D
---@param graphicsDevice Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param width System.Int32
---@param height System.Int32
---@return Microsoft.Xna.Framework.Graphics.Texture2D
function CS.Microsoft.Xna.Framework.Graphics.Texture2D(graphicsDevice, width, height) end


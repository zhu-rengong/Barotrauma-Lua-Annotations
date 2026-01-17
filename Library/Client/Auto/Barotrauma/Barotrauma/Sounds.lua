---@meta
---Auto-generated from Barotrauma
---Namespace: Barotrauma.Sounds

---@class Barotrauma.Sounds.OggSound: Barotrauma.Sounds.Sound
---@field MaxStreamSamplePos System.Int64
---@field DurationSeconds System.Double|nil
---@field private streamReader NVorbis.VorbisReader
---@field private playbackAmplitude userdata | { [System.Int32]: System.Single } | (fun(): System.Single)
---@field private sampleBuffer System.Int16[]
---@field private muffleBuffer System.Int16[]
---@field private durationSeconds System.Double
---@field private streamFloatBuffer System.Single[]
---@field private AMPLITUDE_SAMPLE_COUNT System.Int32
CS.Barotrauma.Sounds.OggSound = {}

---@return System.Int64
function CS.Barotrauma.Sounds.OggSound.get_MaxStreamSamplePos() end

---@return System.Double|nil
function CS.Barotrauma.Sounds.OggSound.get_DurationSeconds() end

---@private
---@async
---@param reader NVorbis.VorbisReader
---@return userdata
function CS.Barotrauma.Sounds.OggSound.LoadSamples(reader) end

---@param playbackPos System.Int32
---@return System.Single
function CS.Barotrauma.Sounds.OggSound.GetAmplitudeAtPlaybackPos(playbackPos) end

---@param samplePos System.Int32
---@param buffer System.Int16[]
---@return System.Int32
function CS.Barotrauma.Sounds.OggSound.FillStreamBuffer(samplePos, buffer) end

---@private
---@param buffer System.Single[]
---@param sampleRate System.Int32
function CS.Barotrauma.Sounds.OggSound.MuffleBuffer(buffer, sampleRate) end

function CS.Barotrauma.Sounds.OggSound.InitializeAlBuffers() end

function CS.Barotrauma.Sounds.OggSound.FillAlBuffers() end

function CS.Barotrauma.Sounds.OggSound.Dispose() end

do
---@param owner Barotrauma.Sounds.SoundManager
---@param filename System.String
---@param stream System.Boolean
---@param xElement Barotrauma.ContentXElement
---@return Barotrauma.Sounds.OggSound
local __ctor = function(owner, filename, stream, xElement) end
CS.Barotrauma.Sounds.OggSound = __ctor
CS.Barotrauma.Sounds.OggSound.__new = __ctor
end

---@class Barotrauma.Sounds.Sound: System.Object
---@field Disposed System.Boolean
---@field DurationSeconds System.Double|nil
---@field Loading System.Boolean
---@field SourcePoolIndex Barotrauma.Sounds.SoundManager.SourcePoolIndex
---@field Buffers Barotrauma.Sounds.SoundBuffers
---@field ALFormat System.Int32
---@field SampleRate System.Int32
---@field protected disposed System.Boolean
---@field Owner Barotrauma.Sounds.SoundManager
---@field Filename System.String
---@field XElement Barotrauma.ContentXElement
---@field Stream System.Boolean
---@field StreamsReliably System.Boolean
---@field private sourcePoolIndex Barotrauma.Sounds.SoundManager.SourcePoolIndex
---@field protected buffers Barotrauma.Sounds.SoundBuffers
---@field MaxSimultaneousInstances System.Int32
---@field BaseGain System.Single
---@field BaseNear System.Single
---@field BaseFar System.Single
---@field MuteBackgroundMusic System.Boolean
CS.Barotrauma.Sounds.Sound = {}

---@return System.Boolean
function CS.Barotrauma.Sounds.Sound.get_Disposed() end

---@return System.Double|nil
function CS.Barotrauma.Sounds.Sound.get_DurationSeconds() end

---@return Barotrauma.Sounds.SoundManager.SourcePoolIndex
function CS.Barotrauma.Sounds.Sound.get_SourcePoolIndex() end

---@return Barotrauma.Sounds.SoundBuffers
function CS.Barotrauma.Sounds.Sound.get_Buffers() end

---@return System.String
function CS.Barotrauma.Sounds.Sound.ToString() end

---@return System.Boolean
function CS.Barotrauma.Sounds.Sound.IsPlaying() end

---@return System.Boolean
function CS.Barotrauma.Sounds.Sound.LogWarningIfStillLoading() end

---@overload fun(gain: System.Single, range: System.Single, freqMult: System.Single, position: Microsoft.Xna.Framework.Vector2, muffle?: System.Boolean): Barotrauma.Sounds.SoundChannel
---@overload fun(position: (Microsoft.Xna.Framework.Vector3|nil), gain: System.Single, freqMult?: System.Single, muffle?: System.Boolean): Barotrauma.Sounds.SoundChannel
---@overload fun(gain: System.Single): Barotrauma.Sounds.SoundChannel
---@overload fun(): Barotrauma.Sounds.SoundChannel
---@overload fun(gain: (System.Single|nil), category: Barotrauma.Identifier): Barotrauma.Sounds.SoundChannel
---@param gain System.Single
---@param range System.Single
---@param position Microsoft.Xna.Framework.Vector2
---@param muffle? System.Boolean
---@return Barotrauma.Sounds.SoundChannel
function CS.Barotrauma.Sounds.Sound.Play(gain, range, position, muffle) end

---@protected
---@param inBuffer System.Single[]
---@param outBuffer System.Int16[]
---@param length System.Int32
function CS.Barotrauma.Sounds.Sound.CastBuffer(inBuffer, outBuffer, length) end

---@param samplePos System.Int32
---@param buffer System.Int16[]
---@return System.Int32
function CS.Barotrauma.Sounds.Sound.FillStreamBuffer(samplePos, buffer) end

---@param playbackPos System.Int32
---@return System.Single
function CS.Barotrauma.Sounds.Sound.GetAmplitudeAtPlaybackPos(playbackPos) end

function CS.Barotrauma.Sounds.Sound.InitializeAlBuffers() end

function CS.Barotrauma.Sounds.Sound.FillAlBuffers() end

function CS.Barotrauma.Sounds.Sound.DeleteAlBuffers() end

function CS.Barotrauma.Sounds.Sound.Dispose() end

do
---@param owner Barotrauma.Sounds.SoundManager
---@param filename System.String
---@param stream System.Boolean
---@param streamsReliably System.Boolean
---@param xElement? Barotrauma.ContentXElement
---@param getFullPath? System.Boolean
---@return Barotrauma.Sounds.Sound
local __ctor = function(owner, filename, stream, streamsReliably, xElement, getFullPath) end
CS.Barotrauma.Sounds.Sound = __ctor
CS.Barotrauma.Sounds.Sound.__new = __ctor
end

---@class Barotrauma.Sounds.SoundBuffers: System.Object
---@field BuffersGenerated System.Int32
---@field AlBuffer System.UInt32
---@field AlMuffledBuffer System.UInt32
---@field private sound Barotrauma.Sounds.Sound
---@field private bufferPool userdata | (fun(): System.UInt32)
---@field MaxBuffers System.Int32
CS.Barotrauma.Sounds.SoundBuffers = {}

function CS.Barotrauma.Sounds.SoundBuffers.Dispose() end

function CS.Barotrauma.Sounds.SoundBuffers.ClearPool() end

---@return System.Boolean
function CS.Barotrauma.Sounds.SoundBuffers.RequestAlBuffers() end

do
---@overload fun(): Barotrauma.Sounds.SoundBuffers
---@param sound Barotrauma.Sounds.Sound
---@return Barotrauma.Sounds.SoundBuffers
local __ctor = function(sound) end
CS.Barotrauma.Sounds.SoundBuffers = __ctor
CS.Barotrauma.Sounds.SoundBuffers.__new = __ctor
end

---@class Barotrauma.Sounds.SoundSourcePool: System.Object
---@field ALSources System.UInt32[]
CS.Barotrauma.Sounds.SoundSourcePool = {}

function CS.Barotrauma.Sounds.SoundSourcePool.Dispose() end

do
---@param sourceCount? System.Int32
---@return Barotrauma.Sounds.SoundSourcePool
local __ctor = function(sourceCount) end
CS.Barotrauma.Sounds.SoundSourcePool = __ctor
CS.Barotrauma.Sounds.SoundSourcePool.__new = __ctor
end

---@class Barotrauma.Sounds.SoundChannel: System.Object
---@field Position Microsoft.Xna.Framework.Vector3|nil
---@field Near System.Single
---@field Far System.Single
---@field Gain System.Single
---@field Looping System.Boolean
---@field FrequencyMultiplier System.Single
---@field FilledByNetwork System.Boolean
---@field Muffled System.Boolean
---@field CurrentAmplitude System.Single
---@field Category Barotrauma.Identifier
---@field Sound Barotrauma.Sounds.Sound
---@field ALSourceIndex System.Int32
---@field IsStream System.Boolean
---@field StreamSeekPos System.Int32
---@field MaxStreamSeekPos System.Int64
---@field IsPlaying System.Boolean
---@field FadingOutAndDisposing System.Boolean
---@field private streamShortBuffer System.Int16[]
---@field private debugName System.String
---@field private position Microsoft.Xna.Framework.Vector3|nil
---@field private near System.Single
---@field private far System.Single
---@field private gain System.Single
---@field private looping System.Boolean
---@field frequencyMultiplier System.Single
---@field private decayTimer System.Int32
---@field private muffled System.Boolean
---@field private streamAmplitude System.Single
---@field private category Barotrauma.Identifier
---@field private streamSeekPos System.Int32
---@field private buffersToRequeue System.Int32
---@field private reachedEndSample System.Boolean
---@field private queueStartIndex System.Int32
---@field private streamBuffers System.UInt32[]
---@field private unqueuedBuffers System.UInt32[]
---@field private streamBufferAmplitudes System.Single[]
---@field MuteBackgroundMusic System.Boolean
---@field private mutex System.Object
---@field private STREAM_BUFFER_SIZE System.Int32
---@field MinFrequencyMultiplier System.Single
---@field MaxFrequencyMultiplier System.Single
CS.Barotrauma.Sounds.SoundChannel = {}

---@return Microsoft.Xna.Framework.Vector3|nil
function CS.Barotrauma.Sounds.SoundChannel.get_Position() end

---@param value Microsoft.Xna.Framework.Vector3|nil
function CS.Barotrauma.Sounds.SoundChannel.set_Position(value) end

---@return System.Single
function CS.Barotrauma.Sounds.SoundChannel.get_Near() end

---@param value System.Single
function CS.Barotrauma.Sounds.SoundChannel.set_Near(value) end

---@return System.Single
function CS.Barotrauma.Sounds.SoundChannel.get_Far() end

---@param value System.Single
function CS.Barotrauma.Sounds.SoundChannel.set_Far(value) end

---@return System.Single
function CS.Barotrauma.Sounds.SoundChannel.get_Gain() end

---@param value System.Single
function CS.Barotrauma.Sounds.SoundChannel.set_Gain(value) end

---@return System.Boolean
function CS.Barotrauma.Sounds.SoundChannel.get_Looping() end

---@param value System.Boolean
function CS.Barotrauma.Sounds.SoundChannel.set_Looping(value) end

---@return System.Single
function CS.Barotrauma.Sounds.SoundChannel.get_FrequencyMultiplier() end

---@param value System.Single
function CS.Barotrauma.Sounds.SoundChannel.set_FrequencyMultiplier(value) end

---@return System.Boolean
function CS.Barotrauma.Sounds.SoundChannel.get_Muffled() end

---@param value System.Boolean
function CS.Barotrauma.Sounds.SoundChannel.set_Muffled(value) end

---@return System.Single
function CS.Barotrauma.Sounds.SoundChannel.get_CurrentAmplitude() end

---@return Barotrauma.Identifier
function CS.Barotrauma.Sounds.SoundChannel.get_Category() end

---@param value Barotrauma.Identifier
function CS.Barotrauma.Sounds.SoundChannel.set_Category(value) end

---@return System.Int32
function CS.Barotrauma.Sounds.SoundChannel.get_StreamSeekPos() end

---@param value System.Int32
function CS.Barotrauma.Sounds.SoundChannel.set_StreamSeekPos(value) end

---@return System.Int64
function CS.Barotrauma.Sounds.SoundChannel.get_MaxStreamSeekPos() end

---@return System.Boolean
function CS.Barotrauma.Sounds.SoundChannel.get_IsPlaying() end

---@return System.String
function CS.Barotrauma.Sounds.SoundChannel.ToString() end

function CS.Barotrauma.Sounds.SoundChannel.FadeOutAndDispose() end

function CS.Barotrauma.Sounds.SoundChannel.Dispose() end

function CS.Barotrauma.Sounds.SoundChannel.UpdateStream() end

do
---@param sound Barotrauma.Sounds.Sound
---@param gain System.Single
---@param position Microsoft.Xna.Framework.Vector3|nil
---@param freqMult System.Single
---@param near System.Single
---@param far System.Single
---@param category Barotrauma.Identifier
---@param muffle? System.Boolean
---@return Barotrauma.Sounds.SoundChannel
local __ctor = function(sound, gain, position, freqMult, near, far, category, muffle) end
CS.Barotrauma.Sounds.SoundChannel = __ctor
CS.Barotrauma.Sounds.SoundChannel.__new = __ctor
end

---@class Barotrauma.Sounds.BiQuad: System.Object
---@field protected A0 System.Double
---@field protected A1 System.Double
---@field protected A2 System.Double
---@field protected B1 System.Double
---@field protected B2 System.Double
---@field protected _q System.Double
---@field protected _gainDB System.Double
---@field protected Z1 System.Double
---@field protected Z2 System.Double
---@field protected _frequency System.Double
---@field protected _sampleRate System.Int32
---@field protected DefaultQ System.Double
---@field protected DefaultGainDb System.Double
CS.Barotrauma.Sounds.BiQuad = {}

---@overload fun(input: System.Single[])
---@param input System.Single
---@return System.Single
function CS.Barotrauma.Sounds.BiQuad.Process(input) end

---@protected
function CS.Barotrauma.Sounds.BiQuad.CalculateBiQuadCoefficients() end

do
---@protected
---@overload fun(): Barotrauma.Sounds.BiQuad
---@param sampleRate System.Int32
---@param frequency System.Double
---@param q System.Double
---@param gainDb System.Double
---@return Barotrauma.Sounds.BiQuad
local __ctor = function(sampleRate, frequency, q, gainDb) end
CS.Barotrauma.Sounds.BiQuad = __ctor
CS.Barotrauma.Sounds.BiQuad.__new = __ctor
end

---@class Barotrauma.Sounds.LowpassFilter: Barotrauma.Sounds.BiQuad
CS.Barotrauma.Sounds.LowpassFilter = {}

---@protected
function CS.Barotrauma.Sounds.LowpassFilter.CalculateBiQuadCoefficients() end

do
---@param sampleRate System.Int32
---@param frequency System.Double
---@return Barotrauma.Sounds.LowpassFilter
local __ctor = function(sampleRate, frequency) end
CS.Barotrauma.Sounds.LowpassFilter = __ctor
CS.Barotrauma.Sounds.LowpassFilter.__new = __ctor
end

---@class Barotrauma.Sounds.HighpassFilter: Barotrauma.Sounds.BiQuad
CS.Barotrauma.Sounds.HighpassFilter = {}

---@protected
function CS.Barotrauma.Sounds.HighpassFilter.CalculateBiQuadCoefficients() end

do
---@param sampleRate System.Int32
---@param frequency System.Double
---@return Barotrauma.Sounds.HighpassFilter
local __ctor = function(sampleRate, frequency) end
CS.Barotrauma.Sounds.HighpassFilter = __ctor
CS.Barotrauma.Sounds.HighpassFilter.__new = __ctor
end

---@class Barotrauma.Sounds.BandpassFilter: Barotrauma.Sounds.BiQuad
CS.Barotrauma.Sounds.BandpassFilter = {}

---@protected
function CS.Barotrauma.Sounds.BandpassFilter.CalculateBiQuadCoefficients() end

do
---@param sampleRate System.Int32
---@param frequency System.Double
---@return Barotrauma.Sounds.BandpassFilter
local __ctor = function(sampleRate, frequency) end
CS.Barotrauma.Sounds.BandpassFilter = __ctor
CS.Barotrauma.Sounds.BandpassFilter.__new = __ctor
end

---@class Barotrauma.Sounds.NotchFilter: Barotrauma.Sounds.BiQuad
CS.Barotrauma.Sounds.NotchFilter = {}

---@protected
function CS.Barotrauma.Sounds.NotchFilter.CalculateBiQuadCoefficients() end

do
---@param sampleRate System.Int32
---@param frequency System.Double
---@return Barotrauma.Sounds.NotchFilter
local __ctor = function(sampleRate, frequency) end
CS.Barotrauma.Sounds.NotchFilter = __ctor
CS.Barotrauma.Sounds.NotchFilter.__new = __ctor
end

---@class Barotrauma.Sounds.LowShelfFilter: Barotrauma.Sounds.BiQuad
CS.Barotrauma.Sounds.LowShelfFilter = {}

---@protected
function CS.Barotrauma.Sounds.LowShelfFilter.CalculateBiQuadCoefficients() end

do
---@param sampleRate System.Int32
---@param frequency System.Double
---@param gainDB System.Double
---@return Barotrauma.Sounds.LowShelfFilter
local __ctor = function(sampleRate, frequency, gainDB) end
CS.Barotrauma.Sounds.LowShelfFilter = __ctor
CS.Barotrauma.Sounds.LowShelfFilter.__new = __ctor
end

---@class Barotrauma.Sounds.HighShelfFilter: Barotrauma.Sounds.BiQuad
CS.Barotrauma.Sounds.HighShelfFilter = {}

---@protected
function CS.Barotrauma.Sounds.HighShelfFilter.CalculateBiQuadCoefficients() end

do
---@param sampleRate System.Int32
---@param frequency System.Double
---@param gainDB System.Double
---@return Barotrauma.Sounds.HighShelfFilter
local __ctor = function(sampleRate, frequency, gainDB) end
CS.Barotrauma.Sounds.HighShelfFilter = __ctor
CS.Barotrauma.Sounds.HighShelfFilter.__new = __ctor
end

---@class Barotrauma.Sounds.PeakFilter: Barotrauma.Sounds.BiQuad
CS.Barotrauma.Sounds.PeakFilter = {}

---@protected
function CS.Barotrauma.Sounds.PeakFilter.CalculateBiQuadCoefficients() end

do
---@param sampleRate System.Int32
---@param frequency System.Double
---@param bandWidth System.Double
---@param peakGainDB System.Double
---@return Barotrauma.Sounds.PeakFilter
local __ctor = function(sampleRate, frequency, bandWidth, peakGainDB) end
CS.Barotrauma.Sounds.PeakFilter = __ctor
CS.Barotrauma.Sounds.PeakFilter.__new = __ctor
end

---@class Barotrauma.Sounds.SoundManager: System.Object
---@field Disabled System.Boolean
---@field LoadedSounds userdata | { [System.Int32]: Barotrauma.Sounds.Sound } | (fun(): Barotrauma.Sounds.Sound)
---@field CanDetectDisconnect System.Boolean
---@field Disconnected System.Boolean
---@field ListenerPosition Microsoft.Xna.Framework.Vector3
---@field ListenerTargetVector Microsoft.Xna.Framework.Vector3
---@field ListenerUpVector Microsoft.Xna.Framework.Vector3
---@field ListenerGain System.Single
---@field PlaybackAmplitude System.Single
---@field CompressionDynamicRangeGain System.Single
---@field VoipAttenuatedGain System.Single
---@field LoadedSoundCount System.Int32
---@field UniqueLoadedSoundCount System.Int32
---@field private alcDevice System.IntPtr
---@field private alcContext System.IntPtr
---@field private sourcePools Barotrauma.Sounds.SoundSourcePool[]
---@field private loadedSounds userdata | { [System.Int32]: Barotrauma.Sounds.Sound } | (fun(): Barotrauma.Sounds.Sound)
---@field private playingChannels Barotrauma.Sounds.SoundChannel[][]
---@field private threadDeathMutex System.Object
---@field private updateChannelsThread System.Threading.Thread
---@field private listenerPosition Microsoft.Xna.Framework.Vector3
---@field private listenerOrientation System.Single[]
---@field private listenerGain System.Single
---@field private voipAttenuatedGain System.Single
---@field private lastAttenuationTime System.Double
---@field private categoryModifiers userdata | { [Barotrauma.Identifier]: Barotrauma.Sounds.SoundManager.CategoryModifier } | (fun(): userdata)
---@field private needsUpdateChannels System.Boolean
---@field private updateChannelsMre System.Threading.ManualResetEvent
---@field SoundCategoryDefault Barotrauma.Identifier
---@field SoundCategoryUi Barotrauma.Identifier
---@field SoundCategoryWaterAmbience Barotrauma.Identifier
---@field SoundCategoryMusic Barotrauma.Identifier
---@field SoundCategoryVoip Barotrauma.Identifier
---@field SourceCount System.Int32
CS.Barotrauma.Sounds.SoundManager = {}

---@return userdata | { [System.Int32]: Barotrauma.Sounds.Sound } | (fun(): Barotrauma.Sounds.Sound)
function CS.Barotrauma.Sounds.SoundManager.get_LoadedSounds() end

---@return Microsoft.Xna.Framework.Vector3
function CS.Barotrauma.Sounds.SoundManager.get_ListenerPosition() end

---@param value Microsoft.Xna.Framework.Vector3
function CS.Barotrauma.Sounds.SoundManager.set_ListenerPosition(value) end

---@return Microsoft.Xna.Framework.Vector3
function CS.Barotrauma.Sounds.SoundManager.get_ListenerTargetVector() end

---@param value Microsoft.Xna.Framework.Vector3
function CS.Barotrauma.Sounds.SoundManager.set_ListenerTargetVector(value) end

---@return Microsoft.Xna.Framework.Vector3
function CS.Barotrauma.Sounds.SoundManager.get_ListenerUpVector() end

---@param value Microsoft.Xna.Framework.Vector3
function CS.Barotrauma.Sounds.SoundManager.set_ListenerUpVector(value) end

---@return System.Single
function CS.Barotrauma.Sounds.SoundManager.get_ListenerGain() end

---@param value System.Single
function CS.Barotrauma.Sounds.SoundManager.set_ListenerGain(value) end

---@return System.Single
function CS.Barotrauma.Sounds.SoundManager.get_PlaybackAmplitude() end

---@return System.Single
function CS.Barotrauma.Sounds.SoundManager.get_VoipAttenuatedGain() end

---@param value System.Single
function CS.Barotrauma.Sounds.SoundManager.set_VoipAttenuatedGain(value) end

---@return System.Int32
function CS.Barotrauma.Sounds.SoundManager.get_LoadedSoundCount() end

---@return System.Int32
function CS.Barotrauma.Sounds.SoundManager.get_UniqueLoadedSoundCount() end

---@private
---@param deviceName System.String
function CS.Barotrauma.Sounds.SoundManager.SetAudioOutputDevice(deviceName) end

---@param deviceName System.String
---@return System.Boolean
function CS.Barotrauma.Sounds.SoundManager.InitializeAlcDevice(deviceName) end

---@overload fun(element: Barotrauma.ContentXElement, stream?: System.Boolean, overrideFilePath?: System.String): Barotrauma.Sounds.Sound
---@param filename System.String
---@param stream? System.Boolean
---@return Barotrauma.Sounds.Sound
function CS.Barotrauma.Sounds.SoundManager.LoadSound(filename, stream) end

---@param poolIndex Barotrauma.Sounds.SoundManager.SourcePoolIndex
---@param ind System.Int32
---@return Barotrauma.Sounds.SoundChannel
function CS.Barotrauma.Sounds.SoundManager.GetSoundChannelFromIndex(poolIndex, ind) end

---@param poolIndex Barotrauma.Sounds.SoundManager.SourcePoolIndex
---@param srcInd System.Int32
---@return System.UInt32
function CS.Barotrauma.Sounds.SoundManager.GetSourceFromIndex(poolIndex, srcInd) end

---@param newChannel Barotrauma.Sounds.SoundChannel
---@return System.Int32
function CS.Barotrauma.Sounds.SoundManager.AssignFreeSourceToChannel(newChannel) end

---@param sound Barotrauma.Sounds.Sound
---@return System.Boolean
function CS.Barotrauma.Sounds.SoundManager.IsPlaying(sound) end

---@param sound Barotrauma.Sounds.Sound
---@return System.Int32
function CS.Barotrauma.Sounds.SoundManager.CountPlayingInstances(sound) end

---@param sound Barotrauma.Sounds.Sound
---@return Barotrauma.Sounds.SoundChannel
function CS.Barotrauma.Sounds.SoundManager.GetChannelFromSound(sound) end

---@param sound Barotrauma.Sounds.Sound
function CS.Barotrauma.Sounds.SoundManager.KillChannels(sound) end

---@param sound Barotrauma.Sounds.Sound
function CS.Barotrauma.Sounds.SoundManager.RemoveSound(sound) end

---@param sound Barotrauma.Sounds.Sound
---@param pos System.Int32
function CS.Barotrauma.Sounds.SoundManager.MoveSoundToPosition(sound, pos) end

---@param category Barotrauma.Identifier
---@param gain System.Single
---@param index? System.Int32
function CS.Barotrauma.Sounds.SoundManager.SetCategoryGainMultiplier(category, gain, index) end

---@param category Barotrauma.Identifier
---@param index? System.Int32
---@return System.Single
function CS.Barotrauma.Sounds.SoundManager.GetCategoryGainMultiplier(category, index) end

---@param category Barotrauma.Identifier
---@param muffle System.Boolean
function CS.Barotrauma.Sounds.SoundManager.SetCategoryMuffle(category, muffle) end

---@param category Barotrauma.Identifier
---@return System.Boolean
function CS.Barotrauma.Sounds.SoundManager.GetCategoryMuffle(category) end

function CS.Barotrauma.Sounds.SoundManager.Update() end

function CS.Barotrauma.Sounds.SoundManager.ApplySettings() end

function CS.Barotrauma.Sounds.SoundManager.InitUpdateChannelThread() end

---@private
function CS.Barotrauma.Sounds.SoundManager.UpdateChannels() end

function CS.Barotrauma.Sounds.SoundManager.ForceStreamUpdate() end

---@private
function CS.Barotrauma.Sounds.SoundManager.ReloadSounds() end

---@private
---@param keepSounds System.Boolean
function CS.Barotrauma.Sounds.SoundManager.ReleaseResources(keepSounds) end

function CS.Barotrauma.Sounds.SoundManager.Dispose() end

function CS.Barotrauma.Sounds.SoundManager.TryRefreshDevice() end

do
---@overload fun(): Barotrauma.Sounds.SoundManager
---@return Barotrauma.Sounds.SoundManager
local __ctor = function() end
CS.Barotrauma.Sounds.SoundManager = __ctor
CS.Barotrauma.Sounds.SoundManager.__new = __ctor
end

---@class Barotrauma.Sounds.VideoSound: Barotrauma.Sounds.Sound
---@field DurationSeconds System.Double|nil
---@field private mutex System.Object
---@field private sampleQueue userdata | (fun(): System.Int16[])
---@field private soundChannel Barotrauma.Sounds.SoundChannel
---@field private video Barotrauma.Media.Video
CS.Barotrauma.Sounds.VideoSound = {}

---@return System.Double|nil
function CS.Barotrauma.Sounds.VideoSound.get_DurationSeconds() end

---@param playbackPos System.Int32
---@return System.Single
function CS.Barotrauma.Sounds.VideoSound.GetAmplitudeAtPlaybackPos(playbackPos) end

---@return System.Boolean
function CS.Barotrauma.Sounds.VideoSound.IsPlaying() end

---@param buf System.Int16[]
function CS.Barotrauma.Sounds.VideoSound.Enqueue(buf) end

---@overload fun(position: (Microsoft.Xna.Framework.Vector3|nil), gain: System.Single, freqMult?: System.Single, muffle?: System.Boolean): Barotrauma.Sounds.SoundChannel
---@overload fun(gain: System.Single): Barotrauma.Sounds.SoundChannel
---@overload fun(): Barotrauma.Sounds.SoundChannel
---@param gain System.Single
---@param range System.Single
---@param position Microsoft.Xna.Framework.Vector2
---@param muffle? System.Boolean
---@return Barotrauma.Sounds.SoundChannel
function CS.Barotrauma.Sounds.VideoSound.Play(gain, range, position, muffle) end

---@param samplePos System.Int32
---@param buffer System.Int16[]
---@return System.Int32
function CS.Barotrauma.Sounds.VideoSound.FillStreamBuffer(samplePos, buffer) end

function CS.Barotrauma.Sounds.VideoSound.Dispose() end

do
---@param owner Barotrauma.Sounds.SoundManager
---@param filename System.String
---@param sampleRate System.Int32
---@param channelCount System.Int32
---@param vid Barotrauma.Media.Video
---@return Barotrauma.Sounds.VideoSound
local __ctor = function(owner, filename, sampleRate, channelCount, vid) end
CS.Barotrauma.Sounds.VideoSound = __ctor
CS.Barotrauma.Sounds.VideoSound.__new = __ctor
end

---@class Barotrauma.Sounds.VoipSound: Barotrauma.Sounds.Sound
---@field DurationSeconds System.Double|nil
---@field SourcePoolIndex Barotrauma.Sounds.SoundManager.SourcePoolIndex
---@field IsPlaying System.Boolean
---@field Near System.Single
---@field Far System.Single
---@field Gain System.Single
---@field CurrentAmplitude System.Single
---@field private queue Barotrauma.Networking.VoipQueue
---@field private bufferID System.Int32
---@field private soundChannel Barotrauma.Sounds.SoundChannel
---@field private decoder Concentus.Structs.OpusDecoder
---@field UseRadioFilter System.Boolean
---@field UseMuffleFilter System.Boolean
---@field UsingRadio System.Boolean
---@field private muffleFilters Barotrauma.Sounds.BiQuad[]
---@field private radioFilters Barotrauma.Sounds.BiQuad[]
---@field private gain System.Single
---@field private client Barotrauma.Networking.Client
---@field private PostRadioFilterBoost System.Single
CS.Barotrauma.Sounds.VoipSound = {}

---@return System.Double|nil
function CS.Barotrauma.Sounds.VoipSound.get_DurationSeconds() end

---@return Barotrauma.Sounds.SoundManager.SourcePoolIndex
function CS.Barotrauma.Sounds.VoipSound.get_SourcePoolIndex() end

---@return System.Boolean
function CS.Barotrauma.Sounds.VoipSound.get_IsPlaying() end

---@return System.Single
function CS.Barotrauma.Sounds.VoipSound.get_Gain() end

---@param value System.Single
function CS.Barotrauma.Sounds.VoipSound.set_Gain(value) end

---@return System.Single
function CS.Barotrauma.Sounds.VoipSound.get_CurrentAmplitude() end

---@param playbackPos System.Int32
---@return System.Single
function CS.Barotrauma.Sounds.VoipSound.GetAmplitudeAtPlaybackPos(playbackPos) end

---@param pos Microsoft.Xna.Framework.Vector3|nil
function CS.Barotrauma.Sounds.VoipSound.SetPosition(pos) end

---@param near System.Single
---@param far System.Single
function CS.Barotrauma.Sounds.VoipSound.SetRange(near, far) end

---@param buffer System.Int16[]
---@param readSamples System.Int32
function CS.Barotrauma.Sounds.VoipSound.ApplyFilters(buffer, readSamples) end

---@overload fun(position: (Microsoft.Xna.Framework.Vector3|nil), gain: System.Single, freqMult?: System.Single, muffle?: System.Boolean): Barotrauma.Sounds.SoundChannel
---@overload fun(gain: System.Single): Barotrauma.Sounds.SoundChannel
---@overload fun(): Barotrauma.Sounds.SoundChannel
---@param gain System.Single
---@param range System.Single
---@param position Microsoft.Xna.Framework.Vector2
---@param muffle? System.Boolean
---@return Barotrauma.Sounds.SoundChannel
function CS.Barotrauma.Sounds.VoipSound.Play(gain, range, position, muffle) end

---@param samplePos System.Int32
---@param buffer System.Int16[]
---@return System.Int32
function CS.Barotrauma.Sounds.VoipSound.FillStreamBuffer(samplePos, buffer) end

function CS.Barotrauma.Sounds.VoipSound.Dispose() end

do
---@param targetClient Barotrauma.Networking.Client
---@param owner Barotrauma.Sounds.SoundManager
---@param q Barotrauma.Networking.VoipQueue
---@return Barotrauma.Sounds.VoipSound
local __ctor = function(targetClient, owner, q) end
CS.Barotrauma.Sounds.VoipSound = __ctor
CS.Barotrauma.Sounds.VoipSound.__new = __ctor
end

---@class Barotrauma.Sounds.OggSound.TaskResult: System.ValueType
---@field SampleBuffer System.Int16[]
---@field MuffleBuffer System.Int16[]
---@field PlaybackAmplitude userdata | { [System.Int32]: System.Single } | (fun(): System.Single)
CS.Barotrauma.Sounds.OggSound.TaskResult = {}

do
---@param SampleBuffer System.Int16[]
---@param MuffleBuffer System.Int16[]
---@param PlaybackAmplitude userdata | { [System.Int32]: System.Single } | (fun(): System.Single)
---@return Barotrauma.Sounds.OggSound.TaskResult
local __ctor = function(SampleBuffer, MuffleBuffer, PlaybackAmplitude) end
CS.Barotrauma.Sounds.OggSound.TaskResult = __ctor
CS.Barotrauma.Sounds.OggSound.TaskResult.__new = __ctor
end

---@enum Barotrauma.Sounds.SoundManager.SourcePoolIndex
CS.Barotrauma.Sounds.SoundManager.SourcePoolIndex = {
    Default = 0,
    Voice = 1
}

---@class Barotrauma.Sounds.SoundManager.CategoryModifier: System.Object
---@field GainMultipliers System.Single[]
---@field Muffle System.Boolean
CS.Barotrauma.Sounds.SoundManager.CategoryModifier = {}

---@param index System.Int32
---@param gain System.Single
function CS.Barotrauma.Sounds.SoundManager.CategoryModifier.SetGainMultiplier(index, gain) end

do
---@param gainMultiplierIndex System.Int32
---@param gain System.Single
---@param muffle System.Boolean
---@return Barotrauma.Sounds.SoundManager.CategoryModifier
local __ctor = function(gainMultiplierIndex, gain, muffle) end
CS.Barotrauma.Sounds.SoundManager.CategoryModifier = __ctor
CS.Barotrauma.Sounds.SoundManager.CategoryModifier.__new = __ctor
end


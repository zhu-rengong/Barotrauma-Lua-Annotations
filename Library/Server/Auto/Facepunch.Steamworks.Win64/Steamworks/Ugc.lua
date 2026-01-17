---@meta
---Auto-generated from Facepunch.Steamworks.Win64
---Namespace: Steamworks.Ugc

---@class Steamworks.Ugc.Item: System.ValueType
---@field Id Steamworks.Data.PublishedFileId
---@field Title System.String
---@field Description System.String
---@field Tags System.String[]
---@field KeyValueTags userdata | { [System.String]: System.String } | (fun(): userdata)
---@field CreatorApp Steamworks.AppId
---@field ConsumerApp Steamworks.AppId
---@field Owner Steamworks.Friend
---@field Score System.Single
---@field Created System.DateTime
---@field Updated System.DateTime
---@field LatestUpdateTime System.DateTime
---@field Visibility Steamworks.Ugc.Visibility
---@field IsBanned System.Boolean
---@field IsAcceptedForUse System.Boolean
---@field VotesUp System.UInt32
---@field VotesDown System.UInt32
---@field AdditionalPreviews Steamworks.Data.UgcAdditionalPreview[]
---@field IsInstalled System.Boolean
---@field IsDownloading System.Boolean
---@field IsDownloadPending System.Boolean
---@field IsSubscribed System.Boolean
---@field NeedsUpdate System.Boolean
---@field Directory System.String
---@field DownloadBytesTotal System.Int64
---@field DownloadBytesDownloaded System.Int64
---@field InstalledSize System.Int64
---@field InstallTime System.DateTime|nil
---@field SizeOfFileInBytes System.Int64
---@field DownloadAmount System.Single
---@field private State Steamworks.ItemState
---@field Url System.String
---@field ChangelogUrl System.String
---@field CommentsUrl System.String
---@field DiscussUrl System.String
---@field StatsUrl System.String
---@field NumSubscriptions System.UInt64
---@field NumFavorites System.UInt64
---@field NumFollowers System.UInt64
---@field NumUniqueSubscriptions System.UInt64
---@field NumUniqueFavorites System.UInt64
---@field NumUniqueFollowers System.UInt64
---@field NumUniqueWebsiteViews System.UInt64
---@field ReportScore System.UInt64
---@field NumSecondsPlayed System.UInt64
---@field NumPlaytimeSessions System.UInt64
---@field NumComments System.UInt64
---@field NumSecondsPlayedDuringTimePeriod System.UInt64
---@field NumPlaytimeSessionsDuringTimePeriod System.UInt64
---@field PreviewImageUrl System.String
---@field Metadata System.String
---@field Result Steamworks.Result
---@field package details Steamworks.Data.SteamUGCDetails_t
---@field package _id Steamworks.Data.PublishedFileId
---@field Children Steamworks.Data.PublishedFileId[]
CS.Steamworks.Ugc.Item = {}

---@return Steamworks.Data.PublishedFileId
function CS.Steamworks.Ugc.Item.get_Id() end

---@return Steamworks.AppId
function CS.Steamworks.Ugc.Item.get_CreatorApp() end

---@return Steamworks.AppId
function CS.Steamworks.Ugc.Item.get_ConsumerApp() end

---@return Steamworks.Friend
function CS.Steamworks.Ugc.Item.get_Owner() end

---@return System.Single
function CS.Steamworks.Ugc.Item.get_Score() end

---@return System.DateTime
function CS.Steamworks.Ugc.Item.get_Created() end

---@return System.DateTime
function CS.Steamworks.Ugc.Item.get_Updated() end

---@return System.DateTime
function CS.Steamworks.Ugc.Item.get_LatestUpdateTime() end

---@return Steamworks.Ugc.Visibility
function CS.Steamworks.Ugc.Item.get_Visibility() end

---@return System.Boolean
function CS.Steamworks.Ugc.Item.get_IsBanned() end

---@return System.Boolean
function CS.Steamworks.Ugc.Item.get_IsAcceptedForUse() end

---@return System.UInt32
function CS.Steamworks.Ugc.Item.get_VotesUp() end

---@return System.UInt32
function CS.Steamworks.Ugc.Item.get_VotesDown() end

---@return System.Boolean
function CS.Steamworks.Ugc.Item.get_IsInstalled() end

---@return System.Boolean
function CS.Steamworks.Ugc.Item.get_IsDownloading() end

---@return System.Boolean
function CS.Steamworks.Ugc.Item.get_IsDownloadPending() end

---@return System.Boolean
function CS.Steamworks.Ugc.Item.get_IsSubscribed() end

---@return System.Boolean
function CS.Steamworks.Ugc.Item.get_NeedsUpdate() end

---@return System.String
function CS.Steamworks.Ugc.Item.get_Directory() end

---@return System.Int64
function CS.Steamworks.Ugc.Item.get_DownloadBytesTotal() end

---@return System.Int64
function CS.Steamworks.Ugc.Item.get_DownloadBytesDownloaded() end

---@return System.Int64
function CS.Steamworks.Ugc.Item.get_InstalledSize() end

---@return System.DateTime|nil
function CS.Steamworks.Ugc.Item.get_InstallTime() end

---@return System.Int64
function CS.Steamworks.Ugc.Item.get_SizeOfFileInBytes() end

---@return System.Single
function CS.Steamworks.Ugc.Item.get_DownloadAmount() end

---@private
---@return Steamworks.ItemState
function CS.Steamworks.Ugc.Item.get_State() end

---@async
---@param id Steamworks.Data.PublishedFileId
---@param maxageseconds? System.Int32
---@return userdata
function CS.Steamworks.Ugc.Item.GetAsync(id, maxageseconds) end

---@package
---@param details Steamworks.Data.SteamUGCDetails_t
---@return Steamworks.Ugc.Item
function CS.Steamworks.Ugc.Item.From(details) end

---@param find System.String
---@return System.Boolean
function CS.Steamworks.Ugc.Item.HasTag(find) end

---@async
---@return userdata
function CS.Steamworks.Ugc.Item.Subscribe() end

---@async
---@param progress? fun(obj: System.Single)
---@param milisecondsUpdateDelay? System.Int32
---@param ct? System.Threading.CancellationToken
---@return userdata
function CS.Steamworks.Ugc.Item.DownloadAsync(progress, milisecondsUpdateDelay, ct) end

---@async
---@return userdata
function CS.Steamworks.Ugc.Item.Unsubscribe() end

---@async
---@return userdata
function CS.Steamworks.Ugc.Item.AddFavorite() end

---@async
---@return userdata
function CS.Steamworks.Ugc.Item.RemoveFavorite() end

---@async
---@param up System.Boolean
---@return userdata
function CS.Steamworks.Ugc.Item.Vote(up) end

---@async
---@return userdata
function CS.Steamworks.Ugc.Item.GetUserVote() end

---@return System.String
function CS.Steamworks.Ugc.Item.get_Url() end

---@return System.String
function CS.Steamworks.Ugc.Item.get_ChangelogUrl() end

---@return System.String
function CS.Steamworks.Ugc.Item.get_CommentsUrl() end

---@return System.String
function CS.Steamworks.Ugc.Item.get_DiscussUrl() end

---@return System.String
function CS.Steamworks.Ugc.Item.get_StatsUrl() end

---@return Steamworks.Ugc.Editor
function CS.Steamworks.Ugc.Item.Edit() end

---@async
---@param child Steamworks.Data.PublishedFileId
---@return userdata
function CS.Steamworks.Ugc.Item.AddDependency(child) end

---@async
---@param child Steamworks.Data.PublishedFileId
---@return userdata
function CS.Steamworks.Ugc.Item.RemoveDependency(child) end

---@return Steamworks.Result
function CS.Steamworks.Ugc.Item.get_Result() end

do
---@param id Steamworks.Data.PublishedFileId
---@return Steamworks.Ugc.Item
local __ctor = function(id) end
CS.Steamworks.Ugc.Item = __ctor
CS.Steamworks.Ugc.Item.__new = __ctor
end


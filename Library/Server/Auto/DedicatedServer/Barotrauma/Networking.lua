---@meta
---Auto-generated from DedicatedServer
---Namespace: Barotrauma.Networking

---@class Barotrauma.Networking.Client: System.Object
---@field JobPreferences userdata | { [System.Int32]: Barotrauma.JobVariant } | (fun(): Barotrauma.JobVariant)
---@field CharacterInfo Barotrauma.CharacterInfo
---@field Connection Barotrauma.Networking.NetworkConnection
---@field Karma System.Single
---@field KickVoteCount System.Int32
---@field ClientList userdata | { [System.Int32]: Barotrauma.Networking.Client } | (fun(): Barotrauma.Networking.Client)
---@field SteamID System.UInt64
---@field AccountId userdata
---@field TeamID Barotrauma.CharacterTeamType
---@field Character Barotrauma.Character
---@field SpectatePos Microsoft.Xna.Framework.Vector2|nil
---@field Spectating System.Boolean
---@field Muted System.Boolean
---@field HasPermissions System.Boolean
---@field VoipQueue Barotrauma.Networking.VoipQueue
---@field InGame System.Boolean
---@field VoiceEnabled System.Boolean
---@field VoipServerDecoder Barotrauma.VoipServerDecoder
---@field LastRecvClientListUpdate System.UInt16
---@field LastSentServerSettingsUpdate System.UInt16
---@field LastRecvServerSettingsUpdate System.UInt16
---@field LastRecvLobbyUpdate System.UInt16
---@field InitialLobbyUpdateSent System.Boolean
---@field LastSentChatMsgID System.UInt16
---@field LastRecvChatMsgID System.UInt16
---@field LastSentEntityEventID System.UInt16
---@field LastRecvEntityEventID System.UInt16
---@field LastRecvCampaignUpdate userdata | { [Barotrauma.MultiPlayerCampaign.NetFlags]: System.UInt16 } | (fun(): userdata)
---@field LastRecvCampaignSave System.UInt16
---@field LastCampaignSaveSendTime userdata
---@field ChatMsgQueue userdata | { [System.Int32]: Barotrauma.Networking.ChatMessage } | (fun(): Barotrauma.Networking.ChatMessage)
---@field LastChatMsgQueueID System.UInt16
---@field LastSentChatMessages userdata | { [System.Int32]: System.String } | (fun(): System.String)
---@field ChatSpamSpeed System.Single
---@field ChatSpamTimer System.Single
---@field ChatSpamCount System.Int32
---@field RejectedName System.String
---@field KickAFKTimer System.Single
---@field MidRoundSyncTimeOut System.Double
---@field NeedsMidRoundSync System.Boolean
---@field UnreceivedEntityEventCount System.UInt16
---@field FirstNewEventID System.UInt16
---@field EntityEventLastSent userdata | { [System.UInt16]: System.Double } | (fun(): userdata)
---@field PositionUpdateLastSent userdata | { [Barotrauma.Entity]: System.Single } | (fun(): userdata)
---@field PendingPositionUpdates userdata | (fun(): Barotrauma.Entity)
---@field ReadyToStart System.Boolean
---@field AssignedJob Barotrauma.JobVariant
---@field DeleteDisconnectedTimer System.Single
---@field JoinTime System.DateTime
---@field LastNameChangeTime System.DateTime
---@field private characterInfo Barotrauma.CharacterInfo
---@field PendingName System.String
---@field SpectateOnly System.Boolean
---@field AFK System.Boolean
---@field WaitForNextRoundRespawn System.Boolean|nil
---@field KarmaKickCount System.Int32
---@field private syncedKarma System.Single
---@field private karma System.Single
---@field private kickVoters userdata | { [System.Int32]: Barotrauma.Networking.Client } | (fun(): Barotrauma.Networking.Client)
---@field PreviousCharacter userdata
---@field Name System.String
---@field NameId System.UInt16
---@field SessionId System.Byte
---@field AccountInfo Barotrauma.Networking.AccountInfo
---@field Language Barotrauma.LanguageIdentifier
---@field Ping System.UInt16
---@field PreferredJob Barotrauma.Identifier
---@field private teamID Barotrauma.CharacterTeamType
---@field PreferredTeam Barotrauma.CharacterTeamType
---@field private character Barotrauma.Character
---@field UsingFreeCam System.Boolean
---@field CharacterID System.UInt16
---@field private spectatePos Microsoft.Xna.Framework.Vector2
---@field private muted System.Boolean
---@field private inGame System.Boolean
---@field HasSpawned System.Boolean
---@field GivenAchievements userdata | (fun(): Barotrauma.Identifier)
---@field Permissions Barotrauma.Networking.ClientPermissions
---@field PermittedConsoleCommands userdata | (fun(): Barotrauma.DebugConsole.Command)
---@field private votes System.Object[]
---@field NameChangeCoolDown System.TimeSpan
---@field MaxNameLength System.Int32
CS.Barotrauma.Networking.Client = {}

---@param character Barotrauma.Character
function CS.Barotrauma.Networking.Client.SetClientCharacter(character) end

---@param reason? System.String
function CS.Barotrauma.Networking.Client.Kick(reason) end

---@param reason? System.String
---@param seconds? System.Single
function CS.Barotrauma.Networking.Client.Ban(reason, seconds) end

---@param playerName System.String
function CS.Barotrauma.Networking.Client.UnbanPlayer(playerName) end

---@param player System.String
---@param reason System.String
---@param range? System.Boolean
---@param seconds? System.Single
function CS.Barotrauma.Networking.Client.BanPlayer(player, reason, range, seconds) end

---@param permissions Barotrauma.Networking.ClientPermissions
---@return System.Boolean
function CS.Barotrauma.Networking.Client.CheckPermission(permissions) end

---@return Barotrauma.CharacterInfo
function CS.Barotrauma.Networking.Client.get_CharacterInfo() end

---@param value Barotrauma.CharacterInfo
function CS.Barotrauma.Networking.Client.set_CharacterInfo(value) end

---@return System.Single
function CS.Barotrauma.Networking.Client.get_Karma() end

---@param value System.Single
function CS.Barotrauma.Networking.Client.set_Karma(value) end

---@return System.Int32
function CS.Barotrauma.Networking.Client.get_KickVoteCount() end

function CS.Barotrauma.Networking.Client.InitClientSync() end

---@param name System.String
---@param serverSettings Barotrauma.Networking.ServerSettings
---@return System.Boolean
function CS.Barotrauma.Networking.Client.IsValidName(name, serverSettings) end

---@param address Barotrauma.Networking.Address
---@return System.Boolean
function CS.Barotrauma.Networking.Client.AddressMatches(address) end

---@param voter Barotrauma.Networking.Client
function CS.Barotrauma.Networking.Client.AddKickVote(voter) end

---@param voter Barotrauma.Networking.Client
function CS.Barotrauma.Networking.Client.RemoveKickVote(voter) end

---@param voter Barotrauma.Networking.Client
---@return System.Boolean
function CS.Barotrauma.Networking.Client.HasKickVoteFrom(voter) end

---@param id System.Int32
---@return System.Boolean
function CS.Barotrauma.Networking.Client.HasKickVoteFromSessionId(id) end

---@param connectedClients userdata | { [System.Int32]: Barotrauma.Networking.Client } | (fun(): Barotrauma.Networking.Client)
function CS.Barotrauma.Networking.Client.UpdateKickVotes(connectedClients) end

---@param resetKickVotes System.Boolean
function CS.Barotrauma.Networking.Client.ResetVotes(resetKickVotes) end

---@param permissions Barotrauma.Networking.ClientPermissions
---@param permittedConsoleCommands userdata | (fun(): Barotrauma.DebugConsole.Command)
function CS.Barotrauma.Networking.Client.SetPermissions(permissions, permittedConsoleCommands) end

---@param permission Barotrauma.Networking.ClientPermissions
function CS.Barotrauma.Networking.Client.GivePermission(permission) end

---@param permission Barotrauma.Networking.ClientPermissions
function CS.Barotrauma.Networking.Client.RemovePermission(permission) end

---@param permission Barotrauma.Networking.ClientPermissions
---@return System.Boolean
function CS.Barotrauma.Networking.Client.HasPermission(permission) end

---@param botCharacter Barotrauma.Character
---@return System.Boolean
function CS.Barotrauma.Networking.Client.TryTakeOverBot(botCharacter) end

function CS.Barotrauma.Networking.Client.ResetSync() end

---@return userdata | { [System.Int32]: Barotrauma.Networking.Client } | (fun(): Barotrauma.Networking.Client)
function CS.Barotrauma.Networking.Client.get_ClientList() end

---@return System.UInt64
function CS.Barotrauma.Networking.Client.get_SteamID() end

---@return userdata
function CS.Barotrauma.Networking.Client.get_AccountId() end

---@return Barotrauma.CharacterTeamType
function CS.Barotrauma.Networking.Client.get_TeamID() end

---@param value Barotrauma.CharacterTeamType
function CS.Barotrauma.Networking.Client.set_TeamID(value) end

---@return Barotrauma.Character
function CS.Barotrauma.Networking.Client.get_Character() end

---@param value Barotrauma.Character
function CS.Barotrauma.Networking.Client.set_Character(value) end

---@return Microsoft.Xna.Framework.Vector2|nil
function CS.Barotrauma.Networking.Client.get_SpectatePos() end

---@param value Microsoft.Xna.Framework.Vector2|nil
function CS.Barotrauma.Networking.Client.set_SpectatePos(value) end

---@return System.Boolean
function CS.Barotrauma.Networking.Client.get_Spectating() end

---@return System.Boolean
function CS.Barotrauma.Networking.Client.get_Muted() end

---@param value System.Boolean
function CS.Barotrauma.Networking.Client.set_Muted(value) end

---@return System.Boolean
function CS.Barotrauma.Networking.Client.get_HasPermissions() end

---@return System.Boolean
function CS.Barotrauma.Networking.Client.get_InGame() end

---@param value System.Boolean
function CS.Barotrauma.Networking.Client.set_InGame(value) end

---@private
function CS.Barotrauma.Networking.Client.InitProjSpecific() end

---@private
function CS.Barotrauma.Networking.Client.DisposeProjSpecific() end

---@param voteType Barotrauma.Networking.VoteType
---@param value System.Object
function CS.Barotrauma.Networking.Client.SetVote(voteType, value) end

---@param userId System.String
---@return System.Boolean
function CS.Barotrauma.Networking.Client.SessionOrAccountIdMatches(userId) end

---@param msg Barotrauma.Networking.IWriteMessage
function CS.Barotrauma.Networking.Client.WritePermissions(msg) end

---@param inc Barotrauma.Networking.IReadMessage
---@param permissions Barotrauma.Networking.ClientPermissions
---@param permittedCommands userdata | { [System.Int32]: Barotrauma.DebugConsole.Command } | (fun(): Barotrauma.DebugConsole.Command)
function CS.Barotrauma.Networking.Client.ReadPermissions(inc, permissions, permittedCommands) end

---@param inc Barotrauma.Networking.IReadMessage
function CS.Barotrauma.Networking.Client.ReadPermissions(inc) end

---@param name System.String
---@param maxLength? System.Int32
---@return System.String
function CS.Barotrauma.Networking.Client.SanitizeName(name, maxLength) end

function CS.Barotrauma.Networking.Client.Dispose() end

---@overload fun(): Barotrauma.Networking.Client
---@param name System.String
---@param sessionId System.Byte
---@return Barotrauma.Networking.Client
function CS.Barotrauma.Networking.Client(name, sessionId) end

---@class Barotrauma.Networking.BannedPlayer: System.Object
---@field Expired System.Boolean
---@field Name System.String
---@field AddressOrAccountId userdata
---@field Reason System.String
---@field ExpirationTime userdata
---@field UniqueIdentifier System.UInt32
---@field private LastIdentifier System.UInt32
CS.Barotrauma.Networking.BannedPlayer = {}

---@return System.Boolean
function CS.Barotrauma.Networking.BannedPlayer.get_Expired() end

---@param client Barotrauma.Networking.Client
---@return System.Boolean
function CS.Barotrauma.Networking.BannedPlayer.MatchesClient(client) end

---@param name System.String
---@param addressOrAccountId userdata
---@param reason System.String
---@param expirationTime userdata
---@return Barotrauma.Networking.BannedPlayer
function CS.Barotrauma.Networking.BannedPlayer(name, addressOrAccountId, reason, expirationTime) end

---@class Barotrauma.Networking.BanList: System.Object
---@field BannedPlayers userdata | { [System.Int32]: Barotrauma.Networking.BannedPlayer } | (fun(): Barotrauma.Networking.BannedPlayer)
---@field BannedNames userdata | (fun(): System.String)
---@field BannedAddresses userdata | (fun(): userdata)
---@field private bannedPlayers userdata | { [System.Int32]: Barotrauma.Networking.BannedPlayer } | (fun(): Barotrauma.Networking.BannedPlayer)
---@field private SavePath System.String
---@field private LegacySavePath System.String
CS.Barotrauma.Networking.BanList = {}

---@private
function CS.Barotrauma.Networking.BanList.LoadLegacyBanList() end

---@private
function CS.Barotrauma.Networking.BanList.LoadBanList() end

---@private
function CS.Barotrauma.Networking.BanList.RemoveExpired() end

---@overload fun(address: Barotrauma.Networking.Address, reason: System.String): System.Boolean
---@overload fun(accountId: Barotrauma.Networking.AccountId, reason: System.String): System.Boolean
---@overload fun(accountInfo: Barotrauma.Networking.AccountInfo, reason: System.String): System.Boolean
---@param endpoint Barotrauma.Networking.Endpoint
---@param reason System.String
---@return System.Boolean
function CS.Barotrauma.Networking.BanList.IsBanned(endpoint, reason) end

---@overload fun(name: System.String, addressOrAccountId: userdata, reason: System.String, duration: (System.TimeSpan|nil))
---@param name System.String
---@param endpoint Barotrauma.Networking.Endpoint
---@param reason System.String
---@param duration System.TimeSpan|nil
function CS.Barotrauma.Networking.BanList.BanPlayer(name, endpoint, reason, duration) end

---@overload fun(addressOrAccountId: userdata)
---@param endpoint Barotrauma.Networking.Endpoint
function CS.Barotrauma.Networking.BanList.UnbanPlayer(endpoint) end

---@private
---@param banned Barotrauma.Networking.BannedPlayer
function CS.Barotrauma.Networking.BanList.RemoveBan(banned) end

function CS.Barotrauma.Networking.BanList.Save() end

---@param outMsg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Networking.BanList.ServerAdminWrite(outMsg, c) end

---@param incMsg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
---@return System.Boolean
function CS.Barotrauma.Networking.BanList.ServerAdminRead(incMsg, c) end

---@return userdata | { [System.Int32]: Barotrauma.Networking.BannedPlayer } | (fun(): Barotrauma.Networking.BannedPlayer)
function CS.Barotrauma.Networking.BanList.get_BannedPlayers() end

---@return userdata | (fun(): System.String)
function CS.Barotrauma.Networking.BanList.get_BannedNames() end

---@return userdata | (fun(): userdata)
function CS.Barotrauma.Networking.BanList.get_BannedAddresses() end

---@private
function CS.Barotrauma.Networking.BanList.InitProjectSpecific() end

---@return Barotrauma.Networking.BanList
function CS.Barotrauma.Networking.BanList() end

---@class Barotrauma.Networking.ChatMessage: System.Object
---@field TranslatedText System.String
---@field SenderCharacter Barotrauma.Character
---@field Color Microsoft.Xna.Framework.Color
---@field TextWithSender System.String
---@field NetStateID System.UInt16
---@field ChatMode Barotrauma.ChatMode
---@field Text System.String
---@field private translatedText System.String
---@field Type Barotrauma.Networking.ChatMessageType
---@field ChangeType Barotrauma.Networking.PlayerConnectionChangeType
---@field IconStyle System.String
---@field Sender Barotrauma.Entity
---@field SenderClient Barotrauma.Networking.Client
---@field SenderName System.String
---@field private customTextColor Microsoft.Xna.Framework.Color|nil
---@field private dateTimeFormatLongTimePattern System.String
---@field MessageColor Microsoft.Xna.Framework.Color[]
---@field LastID System.UInt16
---@field MaxLength System.Int32
---@field MaxMessagesPerPacket System.Int32
---@field SpeakRange System.Single
---@field SpeakRangeVOIP System.Single
---@field BlockedBySpamFilterTime System.Single
CS.Barotrauma.Networking.ChatMessage = {}

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Networking.ChatMessage.ServerRead(msg, c) end

---@param c Barotrauma.Networking.Client
---@param messageText System.String
---@param flaggedAsSpam System.Boolean
---@param similarityMultiplier? System.Single
function CS.Barotrauma.Networking.ChatMessage.HandleSpamFilter(c, messageText, flaggedAsSpam, similarityMultiplier) end

---@param c Barotrauma.Networking.Client
---@return System.Int32
function CS.Barotrauma.Networking.ChatMessage.EstimateLengthBytesServer(c) end

---@param segmentTable userdata
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Networking.ChatMessage.ServerWrite(segmentTable, msg, c) end

---@return System.String
function CS.Barotrauma.Networking.ChatMessage.get_TranslatedText() end

---@return Barotrauma.Character
function CS.Barotrauma.Networking.ChatMessage.get_SenderCharacter() end

---@return Microsoft.Xna.Framework.Color
function CS.Barotrauma.Networking.ChatMessage.get_Color() end

---@param value Microsoft.Xna.Framework.Color
function CS.Barotrauma.Networking.ChatMessage.set_Color(value) end

---@return System.String
function CS.Barotrauma.Networking.ChatMessage.GetTimeStamp() end

---@return System.String
function CS.Barotrauma.Networking.ChatMessage.get_TextWithSender() end

---@param senderName System.String
---@param text System.String
---@param type Barotrauma.Networking.ChatMessageType
---@param sender Barotrauma.Entity
---@param client? Barotrauma.Networking.Client
---@param changeType? Barotrauma.Networking.PlayerConnectionChangeType
---@param textColor? Microsoft.Xna.Framework.Color|nil
---@return Barotrauma.Networking.ChatMessage
function CS.Barotrauma.Networking.ChatMessage.Create(senderName, text, type, sender, client, changeType, textColor) end

---@param message System.String
---@param messageWithoutCommand System.String
---@return System.String
function CS.Barotrauma.Networking.ChatMessage.GetChatMessageCommand(message, messageWithoutCommand) end

---@param listener Barotrauma.Entity
---@param sender Barotrauma.Entity
---@param range System.Single
---@param obstructionMultiplier? System.Single
---@return System.Single
function CS.Barotrauma.Networking.ChatMessage.GetGarbleAmount(listener, sender, range, obstructionMultiplier) end

---@param listener Barotrauma.Character
---@return System.String
function CS.Barotrauma.Networking.ChatMessage.ApplyDistanceEffect(listener) end

---@overload fun(text: System.String, garbleAmount: System.Single): System.String
---@overload fun(message: System.String, type: Barotrauma.Networking.ChatMessageType, sender: Barotrauma.Character, receiver: Barotrauma.Character): System.String
---@param listener Barotrauma.Entity
---@param sender Barotrauma.Entity
---@param text System.String
---@param range System.Single
---@param obstructionMultiplier? System.Single
---@return System.String
function CS.Barotrauma.Networking.ChatMessage.ApplyDistanceEffect(listener, sender, text, range, obstructionMultiplier) end

---@return System.Int32
function CS.Barotrauma.Networking.ChatMessage.EstimateLengthBytesClient() end

---@overload fun(sender: Barotrauma.Character, radio: Barotrauma.Items.Components.WifiComponent, ignoreJamming?: System.Boolean): System.Boolean
---@param sender Barotrauma.Character
---@param ignoreJamming? System.Boolean
---@return System.Boolean
function CS.Barotrauma.Networking.ChatMessage.CanUseRadio(sender, ignoreJamming) end

---@protected
---@overload fun(): Barotrauma.Networking.ChatMessage
---@param senderName System.String
---@param text System.String
---@param type Barotrauma.Networking.ChatMessageType
---@param sender Barotrauma.Entity
---@param client Barotrauma.Networking.Client
---@param changeType? Barotrauma.Networking.PlayerConnectionChangeType
---@param textColor? Microsoft.Xna.Framework.Color|nil
---@return Barotrauma.Networking.ChatMessage
function CS.Barotrauma.Networking.ChatMessage(senderName, text, type, sender, client, changeType, textColor) end

---@class Barotrauma.Networking.FileSender: System.Object
---@field ActiveTransfers userdata | { [System.Int32]: Barotrauma.Networking.FileSender.FileTransferOut } | (fun(): Barotrauma.Networking.FileSender.FileTransferOut)
---@field OnStarted fun(fileStreamReceiver: Barotrauma.Networking.FileSender.FileTransferOut)
---@field OnEnded fun(fileStreamReceiver: Barotrauma.Networking.FileSender.FileTransferOut)
---@field private activeTransfers userdata | { [System.Int32]: Barotrauma.Networking.FileSender.FileTransferOut } | (fun(): Barotrauma.Networking.FileSender.FileTransferOut)
---@field private chunkLen System.Int32
---@field private peer Barotrauma.Networking.ServerPeer
---@field StartTime System.DateTime
---@field private MaxTransferCount System.Int32
---@field private MaxTransferCountPerRecipient System.Int32
CS.Barotrauma.Networking.FileSender = {}

---@return userdata | { [System.Int32]: Barotrauma.Networking.FileSender.FileTransferOut } | (fun(): Barotrauma.Networking.FileSender.FileTransferOut)
function CS.Barotrauma.Networking.FileSender.get_ActiveTransfers() end

---@param recipient Barotrauma.Networking.NetworkConnection
---@param fileType Barotrauma.Networking.FileTransferType
---@param filePath System.String
---@return Barotrauma.Networking.FileSender.FileTransferOut
function CS.Barotrauma.Networking.FileSender.StartTransfer(recipient, fileType, filePath) end

---@param deltaTime System.Single
function CS.Barotrauma.Networking.FileSender.Update(deltaTime) end

---@private
---@param transfer Barotrauma.Networking.FileSender.FileTransferOut
function CS.Barotrauma.Networking.FileSender.Send(transfer) end

---@param transfer Barotrauma.Networking.FileSender.FileTransferOut
function CS.Barotrauma.Networking.FileSender.CancelTransfer(transfer) end

---@param inc Barotrauma.Networking.IReadMessage
---@param client Barotrauma.Networking.Client
function CS.Barotrauma.Networking.FileSender.ReadFileRequest(inc, client) end

---@param serverPeer Barotrauma.Networking.ServerPeer
---@param mtu System.Int32
---@return Barotrauma.Networking.FileSender
function CS.Barotrauma.Networking.FileSender(serverPeer, mtu) end

---@class Barotrauma.Networking.GameServer: Barotrauma.Networking.NetworkMember
---@field IsServer System.Boolean
---@field IsClient System.Boolean
---@field Voting Barotrauma.Voting
---@field ServerName System.String
---@field ServerPeer Barotrauma.Networking.ServerPeer
---@field EndRoundTimer System.Single
---@field EndRoundDelay System.Single
---@field EndRoundTimeRemaining System.Single
---@field private Team1Count System.Int32
---@field private Team2Count System.Int32
---@field VoipServer Barotrauma.Networking.VoipServer
---@field FileSender Barotrauma.Networking.FileSender
---@field ModSender Barotrauma.Networking.ModSender
---@field TraitorManager Barotrauma.TraitorManager
---@field ConnectedClients userdata | { [System.Int32]: Barotrauma.Networking.Client } | (fun(): Barotrauma.Networking.Client)
---@field EntityEventManager Barotrauma.Networking.ServerEntityEventManager
---@field Port System.Int32
---@field QueryPort System.Int32
---@field OwnerConnection Barotrauma.Networking.NetworkConnection
---@field SubmarineSwitchLoad System.Boolean
---@field private connectedClients userdata | { [System.Int32]: Barotrauma.Networking.Client } | (fun(): Barotrauma.Networking.Client)
---@field private clientsAttemptingToReconnectSoon userdata | { [System.Int32]: Barotrauma.Networking.Client } | (fun(): Barotrauma.Networking.Client)
---@field private previousPlayers userdata | { [System.Int32]: Barotrauma.Networking.PreviousPlayer } | (fun(): Barotrauma.Networking.PreviousPlayer)
---@field private roundStartSeed System.Int32
---@field private started System.Boolean
---@field private serverPeer Barotrauma.Networking.ServerPeer
---@field private refreshMasterTimer System.DateTime
---@field private refreshMasterInterval System.TimeSpan
---@field private registeredToSteamMaster System.Boolean
---@field private roundStartTime System.DateTime
---@field private wasReadyToStartAutomatically System.Boolean
---@field private autoRestartTimerRunning System.Boolean
---@field private initiatedStartGame System.Boolean
---@field private startGameCoroutine Barotrauma.CoroutineHandle
---@field private entityEventManager Barotrauma.Networking.ServerEntityEventManager
---@field private traitorManager Barotrauma.TraitorManager
---@field private ownerKey userdata
---@field private ownerEndpoint userdata
---@field private lastPingTime System.Double
---@field private lastPingData System.Byte[]
---@field private dosProtection Barotrauma.DoSProtection
---@field private isRoundStartWarningActive System.Boolean
---@field private charInfoRateLimiter Barotrauma.RateLimiter
---@field JobAssignmentDebugLog userdata | { [System.Int32]: System.String } | (fun(): System.String)
---@field private pvpAutoBalanceCountdownRemaining System.Single
---@field private pendingMessagesToOwner userdata | (fun(): Barotrauma.Networking.ChatMessage)
---@field private PvpAutoBalanceCountdown System.Int32
CS.Barotrauma.Networking.GameServer = {}

---@return System.Boolean
function CS.Barotrauma.Networking.GameServer.get_IsServer() end

---@return System.Boolean
function CS.Barotrauma.Networking.GameServer.get_IsClient() end

---@return System.String
function CS.Barotrauma.Networking.GameServer.get_ServerName() end

---@param value System.String
function CS.Barotrauma.Networking.GameServer.set_ServerName(value) end

---@return Barotrauma.Networking.ServerPeer
function CS.Barotrauma.Networking.GameServer.get_ServerPeer() end

---@return System.Single
function CS.Barotrauma.Networking.GameServer.get_EndRoundTimeRemaining() end

---@private
---@return System.Int32
function CS.Barotrauma.Networking.GameServer.get_Team1Count() end

---@private
---@return System.Int32
function CS.Barotrauma.Networking.GameServer.get_Team2Count() end

---@return Barotrauma.TraitorManager
function CS.Barotrauma.Networking.GameServer.get_TraitorManager() end

---@return userdata | { [System.Int32]: Barotrauma.Networking.Client } | (fun(): Barotrauma.Networking.Client)
function CS.Barotrauma.Networking.GameServer.get_ConnectedClients() end

---@return Barotrauma.Networking.ServerEntityEventManager
function CS.Barotrauma.Networking.GameServer.get_EntityEventManager() end

---@return System.Int32
function CS.Barotrauma.Networking.GameServer.get_Port() end

---@return System.Int32
function CS.Barotrauma.Networking.GameServer.get_QueryPort() end

function CS.Barotrauma.Networking.GameServer.ClearRecentlyDisconnectedClients() end

---@param conn Barotrauma.Networking.NetworkConnection
---@return System.Boolean
function CS.Barotrauma.Networking.GameServer.FindAndRemoveRecentlyDisconnectedConnection(conn) end

---@param registerToServerList System.Boolean
function CS.Barotrauma.Networking.GameServer.StartServer(registerToServerList) end

---@param message System.String
---@param messageType Barotrauma.Networking.ChatMessageType
function CS.Barotrauma.Networking.GameServer.AddPendingMessageToOwner(message, messageType) end

---@private
---@param connection Barotrauma.Networking.NetworkConnection
function CS.Barotrauma.Networking.GameServer.OnOwnerDetermined(connection) end

function CS.Barotrauma.Networking.GameServer.NotifyCrash() end

---@private
---@param connection Barotrauma.Networking.NetworkConnection
---@param clientName System.String
function CS.Barotrauma.Networking.GameServer.OnInitializationComplete(connection, clientName) end

---@private
---@param connection Barotrauma.Networking.NetworkConnection
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
function CS.Barotrauma.Networking.GameServer.OnClientDisconnect(connection, peerDisconnectPacket) end

---@param deltaTime System.Single
function CS.Barotrauma.Networking.GameServer.Update(deltaTime) end

---@private
function CS.Barotrauma.Networking.GameServer.UpdatePing() end

---@private
---@param sender Barotrauma.Networking.NetworkConnection
---@param inc Barotrauma.Networking.IReadMessage
function CS.Barotrauma.Networking.GameServer.ReadDataMessage(sender, inc) end

---@private
---@param inc Barotrauma.Networking.IReadMessage
---@param connectedClient Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.SendBackupIndices(inc, connectedClient) end

---@private
---@param inc Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.HandleClientError(inc, c) end

---@private
---@param client Barotrauma.Networking.Client
---@param errorStr System.String
function CS.Barotrauma.Networking.GameServer.WriteEventErrorData(client, errorStr) end

---@param entity Barotrauma.Networking.INetSerializable
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Networking.GameServer.CreateEntityEvent(entity, extraData) end

---@private
---@return System.Byte
function CS.Barotrauma.Networking.GameServer.GetNewClientSessionId() end

---@private
---@param inc Barotrauma.Networking.IReadMessage
function CS.Barotrauma.Networking.GameServer.ClientReadLobby(inc) end

---@private
---@param inc Barotrauma.Networking.IReadMessage
function CS.Barotrauma.Networking.GameServer.ClientReadIngame(inc) end

---@private
---@param inc Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.ReadCrewMessage(inc, sender) end

---@private
---@param inc Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.ReadMoneyMessage(inc, sender) end

---@private
---@param inc Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.ReadRewardDistributionMessage(inc, sender) end

---@private
---@param client Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.ResetRewardDistribution(client) end

---@private
---@param inc Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.ReadMedicalMessage(inc, sender) end

---@private
---@param inc Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.ReadCircuitBoxMessage(inc, sender) end

---@private
---@param inc Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.ReadReadyToSpawnMessage(inc, sender) end

---@private
---@param inc Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.ReadTakeOverBotMessage(inc, sender) end

---@private
---@param campaign Barotrauma.CampaignMode
---@param botInfo Barotrauma.CharacterInfo
---@param client Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.SpawnAndTakeOverBot(campaign, botInfo, client) end

---@private
---@param campaign Barotrauma.CampaignMode
---@param botInfo Barotrauma.CharacterInfo
---@param client Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.SpawnAndTakeOverBotInShuttle(campaign, botInfo, client) end

---@private
---@param campaign Barotrauma.CampaignMode
---@param botInfo Barotrauma.CharacterInfo
---@param client Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.TransferPreviousSalaryToBot(campaign, botInfo, client) end

---@private
---@param inc Barotrauma.Networking.IReadMessage
function CS.Barotrauma.Networking.GameServer.ClientReadServerCommand(inc) end

---@private
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.ClientWrite(c) end

---@private
---@param c Barotrauma.Networking.Client
---@param outmsg Barotrauma.Networking.IWriteMessage
function CS.Barotrauma.Networking.GameServer.ClientWriteInitial(c, outmsg) end

---@private
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.ClientWriteIngame(c) end

---@private
---@param segmentTable userdata
---@param c Barotrauma.Networking.Client
---@param outmsg Barotrauma.Networking.IWriteMessage
function CS.Barotrauma.Networking.GameServer.WriteClientList(segmentTable, c, outmsg) end

---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.ClientWriteLobby(c) end

---@private
---@param segmentTable userdata
---@param outmsg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.WriteChatMessages(segmentTable, outmsg, c) end

---@return Barotrauma.Networking.GameServer.TryStartGameResult
function CS.Barotrauma.Networking.GameServer.TryStartGame() end

---@private
---@param team1Sub Barotrauma.SubmarineInfo
---@param team2Sub Barotrauma.SubmarineInfo
---@param preset Barotrauma.GameModePreset
---@param incompatiblePerks Barotrauma.PerkCollection
---@return System.Boolean
function CS.Barotrauma.Networking.GameServer.CheckIfAnyPerksAreIncompatible(team1Sub, team2Sub, preset, incompatiblePerks) end

---@private
function CS.Barotrauma.Networking.GameServer.AbortStartGameIfWarningActive() end

---@private
---@param incompatiblePerks Barotrauma.PerkCollection
---@param selectedSub Barotrauma.SubmarineInfo
---@param selectedEnemySub userdata
---@param selectedShuttle Barotrauma.SubmarineInfo
---@param selectedMode Barotrauma.GameModePreset
---@return userdata | (fun(): Barotrauma.CoroutineStatus)
function CS.Barotrauma.Networking.GameServer.WarnAndDelayStartGame(incompatiblePerks, selectedSub, selectedEnemySub, selectedShuttle, selectedMode) end

---@private
---@param selectedSub Barotrauma.SubmarineInfo
---@param selectedEnemySub userdata
---@param selectedShuttle Barotrauma.SubmarineInfo
---@param selectedMode Barotrauma.GameModePreset
---@return userdata | (fun(): Barotrauma.CoroutineStatus)
function CS.Barotrauma.Networking.GameServer.InitiateStartGame(selectedSub, selectedEnemySub, selectedShuttle, selectedMode) end

---@private
---@param selectedSub Barotrauma.SubmarineInfo
---@param selectedShuttle Barotrauma.SubmarineInfo
---@param selectedEnemySub userdata
---@param selectedMode Barotrauma.GameModePreset
---@param settings Barotrauma.CampaignSettings
---@return userdata | (fun(): Barotrauma.CoroutineStatus)
function CS.Barotrauma.Networking.GameServer.StartGame(selectedSub, selectedShuttle, selectedEnemySub, selectedMode, settings) end

---@private
---@overload fun(seed: System.Int32, levelSeed: System.String, gameSession: Barotrauma.GameSession, client: Barotrauma.Networking.Client, includesFinalize: System.Boolean)
---@param seed System.Int32
---@param levelSeed System.String
---@param gameSession Barotrauma.GameSession
---@param clients userdata | { [System.Int32]: Barotrauma.Networking.Client } | (fun(): Barotrauma.Networking.Client)
---@param includesFinalize System.Boolean
function CS.Barotrauma.Networking.GameServer.SendStartMessage(seed, levelSeed, gameSession, clients, includesFinalize) end

---@private
---@param client Barotrauma.Networking.Client
---@return System.Boolean
function CS.Barotrauma.Networking.GameServer.TrySendCampaignSetupInfo(client) end

---@private
---@return System.Boolean
function CS.Barotrauma.Networking.GameServer.IsUsingRespawnShuttle() end

---@private
---@param client Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.SendRoundStartFinalize(client) end

---@private
---@param msg Barotrauma.Networking.IWriteMessage
---@param client Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.WriteRoundStartFinalize(msg, client) end

---@param transitionType? Barotrauma.CampaignMode.TransitionType
---@param wasSaved? System.Boolean
---@param missions? userdata | (fun(): Barotrauma.Mission)
function CS.Barotrauma.Networking.GameServer.EndGame(transitionType, wasSaved, missions) end

---@param message Barotrauma.Networking.ChatMessage
function CS.Barotrauma.Networking.GameServer.AddChatMessage(message) end

---@private
---@param c Barotrauma.Networking.Client
---@param inc Barotrauma.Networking.IReadMessage
---@return System.Boolean
function CS.Barotrauma.Networking.GameServer.ReadClientNameChange(c, inc) end

---@param c Barotrauma.Networking.Client
---@param newName System.String
---@param clientRenamingSelf? System.Boolean
---@return System.Boolean
function CS.Barotrauma.Networking.GameServer.TryChangeClientName(c, newName, clientRenamingSelf) end

---@param c Barotrauma.Networking.Client
---@param newName System.String
---@param clientRenamingSelf? System.Boolean
---@return System.Boolean
function CS.Barotrauma.Networking.GameServer.IsNameValid(c, newName, clientRenamingSelf) end

---@param playerName System.String
---@param reason System.String
function CS.Barotrauma.Networking.GameServer.KickPlayer(playerName, reason) end

---@overload fun(client: Barotrauma.Networking.Client, reason: System.String, resetKarma?: System.Boolean)
---@param conn Barotrauma.Networking.NetworkConnection
---@param reason System.String
function CS.Barotrauma.Networking.GameServer.KickClient(conn, reason) end

---@param playerName System.String
---@param reason System.String
---@param duration? System.TimeSpan|nil
function CS.Barotrauma.Networking.GameServer.BanPlayer(playerName, reason, duration) end

---@param client Barotrauma.Networking.Client
---@param reason System.String
---@param duration? System.TimeSpan|nil
function CS.Barotrauma.Networking.GameServer.BanClient(client, reason, duration) end

---@param previousPlayer Barotrauma.Networking.PreviousPlayer
---@param reason System.String
---@param duration? System.TimeSpan|nil
function CS.Barotrauma.Networking.GameServer.BanPreviousPlayer(previousPlayer, reason, duration) end

---@overload fun(endpoint: Barotrauma.Networking.Endpoint)
---@param playerName System.String
function CS.Barotrauma.Networking.GameServer.UnbanPlayer(playerName) end

---@overload fun(client: Barotrauma.Networking.Client, peerDisconnectPacket: Barotrauma.Networking.PeerDisconnectPacket)
---@param senderConnection Barotrauma.Networking.NetworkConnection
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
function CS.Barotrauma.Networking.GameServer.DisconnectClient(senderConnection, peerDisconnectPacket) end

---@private
function CS.Barotrauma.Networking.GameServer.UpdateCrewFrame() end

---@overload fun(msg: Barotrauma.Networking.ChatMessage, recipient: Barotrauma.Networking.Client)
---@param txt System.String
---@param recipient Barotrauma.Networking.Client
---@param messageType? Barotrauma.Networking.ChatMessageType
function CS.Barotrauma.Networking.GameServer.SendDirectChatMessage(txt, recipient, messageType) end

---@param txt System.String
---@param recipient Barotrauma.Networking.Client
---@param color? Microsoft.Xna.Framework.Color|nil
function CS.Barotrauma.Networking.GameServer.SendConsoleMessage(txt, recipient, color) end

---@param message System.String
---@param type? Barotrauma.Networking.ChatMessageType|nil
---@param senderClient? Barotrauma.Networking.Client
---@param senderCharacter? Barotrauma.Character
---@param changeType? Barotrauma.Networking.PlayerConnectionChangeType
---@param chatMode? Barotrauma.ChatMode
function CS.Barotrauma.Networking.GameServer.SendChatMessage(message, type, senderClient, senderCharacter, changeType, chatMode) end

---@param message Barotrauma.Networking.OrderChatMessage
function CS.Barotrauma.Networking.GameServer.SendOrderChatMessage(message) end

---@private
---@param transfer Barotrauma.Networking.FileSender.FileTransferOut
function CS.Barotrauma.Networking.GameServer.FileTransferChanged(transfer) end

---@param transfer Barotrauma.Networking.FileSender.FileTransferOut
function CS.Barotrauma.Networking.GameServer.SendCancelTransferMsg(transfer) end

---@param checkActiveVote? System.Boolean
function CS.Barotrauma.Networking.GameServer.UpdateVoteStatus(checkActiveVote) end

---@param recipients userdata | { [System.Int32]: Barotrauma.Networking.Client } | (fun(): Barotrauma.Networking.Client)
function CS.Barotrauma.Networking.GameServer.SendVoteStatus(recipients) end

---@return System.Boolean
function CS.Barotrauma.Networking.GameServer.TrySwitchSubmarine() end

---@param client Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.UpdateClientPermissions(client) end

---@private
---@param recipient Barotrauma.Networking.Client
---@param client Barotrauma.Networking.Client
---@return userdata | (fun(): Barotrauma.CoroutineStatus)
function CS.Barotrauma.Networking.GameServer.SendClientPermissionsAfterClientListSynced(recipient, client) end

---@private
---@param recipient Barotrauma.Networking.Client
---@param client Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.SendClientPermissions(recipient, client) end

---@overload fun(client: Barotrauma.Networking.Client, achievementIdentifier: Barotrauma.Identifier)
---@param character Barotrauma.Character
---@param achievementIdentifier Barotrauma.Identifier
function CS.Barotrauma.Networking.GameServer.GiveAchievement(character, achievementIdentifier) end

---@overload fun(client: Barotrauma.Networking.Client, stat: Barotrauma.AchievementStat, amount: System.Int32)
---@param character Barotrauma.Character
---@param stat Barotrauma.AchievementStat
---@param amount System.Int32
function CS.Barotrauma.Networking.GameServer.IncrementStat(character, stat, amount) end

---@param team Barotrauma.CharacterTeamType
---@param identifier Barotrauma.Identifier
function CS.Barotrauma.Networking.GameServer.UnlockRecipe(team, identifier) end

---@param msg Barotrauma.Networking.WriteOnlyMessage
---@param client Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.SendTraitorMessage(msg, client) end

function CS.Barotrauma.Networking.GameServer.UpdateCheatsEnabled() end

---@param client Barotrauma.Networking.Client
---@param newCharacter Barotrauma.Character
function CS.Barotrauma.Networking.GameServer.SetClientCharacter(client, newCharacter) end

---@private
---@param message Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.UpdateCharacterInfo(message, sender) end

---@param unassigned userdata | { [System.Int32]: Barotrauma.Networking.Client } | (fun(): Barotrauma.Networking.Client)
function CS.Barotrauma.Networking.GameServer.AssignJobs(unassigned) end

---@param bots userdata | { [System.Int32]: Barotrauma.CharacterInfo } | (fun(): Barotrauma.CharacterInfo)
---@param teamID Barotrauma.CharacterTeamType
---@param isPvP System.Boolean
function CS.Barotrauma.Networking.GameServer.AssignBotJobs(bots, teamID, isPvP) end

---@private
---@param clients userdata | { [System.Int32]: Barotrauma.Networking.Client } | (fun(): Barotrauma.Networking.Client)
---@param job Barotrauma.JobPrefab
---@param forceAssign? System.Boolean
---@return Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.FindClientWithJobPreference(clients, job, forceAssign) end

---@param mission Barotrauma.Mission
function CS.Barotrauma.Networking.GameServer.UpdateMissionState(mission) end

---@param character Barotrauma.Character
---@return System.String
function CS.Barotrauma.Networking.GameServer.CharacterLogName(character) end

---@param line System.String
---@param messageType Barotrauma.Networking.ServerLog.MessageType
function CS.Barotrauma.Networking.GameServer.Log(line, messageType) end

function CS.Barotrauma.Networking.GameServer.Quit() end

---@private
function CS.Barotrauma.Networking.GameServer.UpdateClientLobbies() end

---@private
---@return userdata | { [System.Int32]: Barotrauma.Networking.Client } | (fun(): Barotrauma.Networking.Client)
function CS.Barotrauma.Networking.GameServer.GetPlayingClients() end

---@param assignUnassignedNow? System.Boolean
---@param autoBalanceNow? System.Boolean
function CS.Barotrauma.Networking.GameServer.RefreshPvpTeamAssignments(assignUnassignedNow, autoBalanceNow) end

---@param client Barotrauma.Networking.Client
function CS.Barotrauma.Networking.GameServer.AssignClientToPvpTeamMidgame(client) end

---@private
function CS.Barotrauma.Networking.GameServer.StopAutoBalanceCountdown() end

---@overload fun(): Barotrauma.Networking.GameServer
---@param name System.String
---@param listenIp System.Net.IPAddress
---@param port System.Int32
---@param queryPort System.Int32
---@param isPublic System.Boolean
---@param password System.String
---@param attemptUPnP System.Boolean
---@param maxPlayers System.Int32
---@param ownerKey userdata
---@param ownerEndpoint userdata
---@return Barotrauma.Networking.GameServer
function CS.Barotrauma.Networking.GameServer(name, listenIp, port, queryPort, isPublic, password, attemptUPnP, maxPlayers, ownerKey, ownerEndpoint) end

---@class Barotrauma.Networking.ServerEntityEvent: Barotrauma.Networking.NetEntityEvent
---@field CreateTime System.Double
---@field private serializable Barotrauma.Networking.IServerSerializable
---@field private createTime System.Double
CS.Barotrauma.Networking.ServerEntityEvent = {}

---@return System.Double
function CS.Barotrauma.Networking.ServerEntityEvent.get_CreateTime() end

function CS.Barotrauma.Networking.ServerEntityEvent.ResetCreateTime() end

---@param msg Barotrauma.Networking.IWriteMessage
---@param recipient Barotrauma.Networking.Client
function CS.Barotrauma.Networking.ServerEntityEvent.Write(msg, recipient) end

---@param serializableEntity Barotrauma.Networking.IServerSerializable
---@param id System.UInt16
---@return Barotrauma.Networking.ServerEntityEvent
function CS.Barotrauma.Networking.ServerEntityEvent(serializableEntity, id) end

---@class Barotrauma.Networking.ServerEntityEventManager: Barotrauma.Networking.NetEntityEventManager
---@field Events userdata | { [System.Int32]: Barotrauma.Networking.ServerEntityEvent } | (fun(): Barotrauma.Networking.ServerEntityEvent)
---@field UniqueEvents userdata | { [System.Int32]: Barotrauma.Networking.ServerEntityEvent } | (fun(): Barotrauma.Networking.ServerEntityEvent)
---@field private events userdata | { [System.Int32]: Barotrauma.Networking.ServerEntityEvent } | (fun(): Barotrauma.Networking.ServerEntityEvent)
---@field private uniqueEvents userdata | { [System.Int32]: Barotrauma.Networking.ServerEntityEvent } | (fun(): Barotrauma.Networking.ServerEntityEvent)
---@field private lastSentToAll System.UInt16
---@field private lastSentToAnyone System.UInt16
---@field private lastSentToAnyoneTime System.Double
---@field private lastWarningTime System.Double
---@field private bufferedEvents userdata | { [System.Int32]: Barotrauma.Networking.ServerEntityEventManager.BufferedEvent } | (fun(): Barotrauma.Networking.ServerEntityEventManager.BufferedEvent)
---@field private ID System.UInt16
---@field private server Barotrauma.Networking.GameServer
---@field private lastEventCountHighWarning System.Double
CS.Barotrauma.Networking.ServerEntityEventManager = {}

---@return userdata | { [System.Int32]: Barotrauma.Networking.ServerEntityEvent } | (fun(): Barotrauma.Networking.ServerEntityEvent)
function CS.Barotrauma.Networking.ServerEntityEventManager.get_Events() end

---@return userdata | { [System.Int32]: Barotrauma.Networking.ServerEntityEvent } | (fun(): Barotrauma.Networking.ServerEntityEvent)
function CS.Barotrauma.Networking.ServerEntityEventManager.get_UniqueEvents() end

---@param entity Barotrauma.Networking.IServerSerializable
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Networking.ServerEntityEventManager.CreateEvent(entity, extraData) end

---@param clients userdata | { [System.Int32]: Barotrauma.Networking.Client } | (fun(): Barotrauma.Networking.Client)
function CS.Barotrauma.Networking.ServerEntityEventManager.Update(clients) end

---@private
---@param bufferedEvent Barotrauma.Networking.ServerEntityEventManager.BufferedEvent
function CS.Barotrauma.Networking.ServerEntityEventManager.BufferEvent(bufferedEvent) end

---@overload fun(segmentTable: userdata, client: Barotrauma.Networking.Client, msg: Barotrauma.Networking.IWriteMessage, sentEvents: userdata | { [System.Int32]: Barotrauma.Networking.NetEntityEvent } | (fun(): Barotrauma.Networking.NetEntityEvent))
---@param segmentTable userdata
---@param client Barotrauma.Networking.Client
---@param msg Barotrauma.Networking.IWriteMessage
function CS.Barotrauma.Networking.ServerEntityEventManager.Write(segmentTable, client, msg) end

---@private
---@param events userdata | (fun(): Barotrauma.Networking.NetEntityEvent)
---@param maxEventsToList System.Int32
---@return System.String
function CS.Barotrauma.Networking.ServerEntityEventManager.GetHighEventCountsWarning(events, maxEventsToList) end

---@private
---@param client Barotrauma.Networking.Client
---@return userdata | { [System.Int32]: Barotrauma.Networking.NetEntityEvent } | (fun(): Barotrauma.Networking.NetEntityEvent)
function CS.Barotrauma.Networking.ServerEntityEventManager.GetEventsToSync(client) end

---@param client Barotrauma.Networking.Client
function CS.Barotrauma.Networking.ServerEntityEventManager.InitClientMidRoundSync(client) end

---@param msg Barotrauma.Networking.IReadMessage
---@param sender? Barotrauma.Networking.Client
function CS.Barotrauma.Networking.ServerEntityEventManager.Read(msg, sender) end

---@protected
---@param buffer Barotrauma.Networking.IWriteMessage
---@param entityEvent Barotrauma.Networking.NetEntityEvent
---@param recipient? Barotrauma.Networking.Client
function CS.Barotrauma.Networking.ServerEntityEventManager.WriteEvent(buffer, entityEvent, recipient) end

---@protected
---@param buffer Barotrauma.Networking.IReadMessage
---@param entity Barotrauma.Networking.INetSerializable
---@param sender? Barotrauma.Networking.Client
function CS.Barotrauma.Networking.ServerEntityEventManager.ReadEvent(buffer, entity, sender) end

function CS.Barotrauma.Networking.ServerEntityEventManager.Clear() end

---@param server Barotrauma.Networking.GameServer
---@return Barotrauma.Networking.ServerEntityEventManager
function CS.Barotrauma.Networking.ServerEntityEventManager(server) end

---@class Barotrauma.Networking.NetworkMember: System.Object
---@field Character Barotrauma.Character
---@field LastClientListUpdateID System.UInt16
---@field IsServer System.Boolean
---@field IsClient System.Boolean
---@field Voting Barotrauma.Voting
---@field KarmaManager Barotrauma.KarmaManager
---@field GameStarted System.Boolean
---@field ConnectedClients userdata | { [System.Int32]: Barotrauma.Networking.Client } | (fun(): Barotrauma.Networking.Client)
---@field RespawnManager Barotrauma.Networking.RespawnManager
---@field ServerSettings Barotrauma.Networking.ServerSettings
---@field UpdateInterval System.TimeSpan
---@field protected updateTimer System.DateTime
---@field ShowNetStats System.Boolean
---@field SimulatedRandomLatency System.Single
---@field SimulatedMinimumLatency System.Single
---@field SimulatedLoss System.Single
---@field SimulatedDuplicatesChance System.Single
---@field protected MaxSubNameLengthInErrorMessages System.Int32
CS.Barotrauma.Networking.NetworkMember = {}

---@return Barotrauma.Character
function CS.Barotrauma.Networking.NetworkMember.get_Character() end

---@return System.Boolean
function CS.Barotrauma.Networking.NetworkMember.get_IsServer() end

---@return System.Boolean
function CS.Barotrauma.Networking.NetworkMember.get_IsClient() end

---@param entity Barotrauma.Networking.INetSerializable
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Networking.NetworkMember.CreateEntityEvent(entity, extraData) end

---@return Barotrauma.Voting
function CS.Barotrauma.Networking.NetworkMember.get_Voting() end

---@return userdata | { [System.Int32]: Barotrauma.Networking.Client } | (fun(): Barotrauma.Networking.Client)
function CS.Barotrauma.Networking.NetworkMember.get_ConnectedClients() end

---@return System.TimeSpan
function CS.Barotrauma.Networking.NetworkMember.get_UpdateInterval() end

---@overload fun(message: Barotrauma.Networking.ChatMessage)
---@param message System.String
---@param type Barotrauma.Networking.ChatMessageType
---@param senderName? System.String
---@param senderClient? Barotrauma.Networking.Client
---@param senderEntity? Barotrauma.Entity
---@param changeType? Barotrauma.Networking.PlayerConnectionChangeType
---@param textColor? Microsoft.Xna.Framework.Color|nil
function CS.Barotrauma.Networking.NetworkMember.AddChatMessage(message, type, senderName, senderClient, senderEntity, changeType, textColor) end

---@param client Barotrauma.Networking.Client
---@param name? System.String
---@return System.String
function CS.Barotrauma.Networking.NetworkMember.ClientLogName(client, name) end

---@param kickedName System.String
---@param reason System.String
function CS.Barotrauma.Networking.NetworkMember.KickPlayer(kickedName, reason) end

---@param kickedName System.String
---@param reason System.String
---@param duration? System.TimeSpan|nil
function CS.Barotrauma.Networking.NetworkMember.BanPlayer(kickedName, reason, duration) end

---@overload fun(endpoint: Barotrauma.Networking.Endpoint)
---@param playerName System.String
function CS.Barotrauma.Networking.NetworkMember.UnbanPlayer(playerName) end

---@param myVersion System.Version
---@param remoteVersion System.Version
---@return System.Boolean
function CS.Barotrauma.Networking.NetworkMember.IsCompatible(myVersion, remoteVersion) end

---@protected
---@return Barotrauma.Networking.NetworkMember
function CS.Barotrauma.Networking.NetworkMember() end

---@class Barotrauma.Networking.OrderChatMessage: Barotrauma.Networking.ChatMessage
---@field TargetEntity Barotrauma.ISpatialEntity
---@field OrderOption Barotrauma.Identifier
---@field OrderPriority System.Int32
---@field WallSectionIndex System.Int32|nil
---@field IsNewOrder System.Boolean
---@field Order Barotrauma.Order
---@field TargetCharacter Barotrauma.Character
CS.Barotrauma.Networking.OrderChatMessage = {}

---@param segmentTable userdata
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Networking.OrderChatMessage.ServerWrite(segmentTable, msg, c) end

---@return Barotrauma.ISpatialEntity
function CS.Barotrauma.Networking.OrderChatMessage.get_TargetEntity() end

---@return Barotrauma.Identifier
function CS.Barotrauma.Networking.OrderChatMessage.get_OrderOption() end

---@return System.Int32
function CS.Barotrauma.Networking.OrderChatMessage.get_OrderPriority() end

---@return System.Int32|nil
function CS.Barotrauma.Networking.OrderChatMessage.get_WallSectionIndex() end

---@param entity Barotrauma.Entity
---@return System.String
function CS.Barotrauma.Networking.OrderChatMessage.NameFromEntityOrNull(entity) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param order Barotrauma.Order
---@param targetCharacter Barotrauma.Entity
---@param isNewOrder System.Boolean
function CS.Barotrauma.Networking.OrderChatMessage.WriteOrder(msg, order, targetCharacter, isNewOrder) end

---@private
---@param msg Barotrauma.Networking.IWriteMessage
function CS.Barotrauma.Networking.OrderChatMessage.WriteOrder(msg) end

---@param msg Barotrauma.Networking.IReadMessage
---@return Barotrauma.Networking.OrderChatMessage.OrderMessageInfo
function CS.Barotrauma.Networking.OrderChatMessage.ReadOrder(msg) end

---@overload fun(order: Barotrauma.Order, text: System.String, targetCharacter: Barotrauma.Character, sender: Barotrauma.Entity, isNewOrder?: System.Boolean): Barotrauma.Networking.OrderChatMessage
---@param order Barotrauma.Order
---@param targetCharacter Barotrauma.Character
---@param sender Barotrauma.Character
---@param isNewOrder? System.Boolean
---@return Barotrauma.Networking.OrderChatMessage
function CS.Barotrauma.Networking.OrderChatMessage(order, targetCharacter, sender, isNewOrder) end

---@class Barotrauma.Networking.LidgrenServerPeer: userdata
---@field private netPeerConfiguration Lidgren.Network.NetPeerConfiguration
---@field private authenticators userdata | { [Barotrauma.Networking.AuthenticationTicketKind]: Barotrauma.Networking.Authenticator } | (fun(): userdata)
---@field private netServer Lidgren.Network.NetServer
---@field private incomingLidgrenMessages userdata | { [System.Int32]: Lidgren.Network.NetIncomingMessage } | (fun(): Lidgren.Network.NetIncomingMessage)
---@field private contentPackages userdata | { [System.Int32]: Barotrauma.ContentPackage } | (fun(): Barotrauma.ContentPackage)
---@field protected connectedClients userdata | { [System.Int32]: userdata } | (fun(): userdata)
---@field protected pendingClients userdata | { [System.Int32]: userdata } | (fun(): userdata)
---@field protected serverSettings Barotrauma.Networking.ServerSettings
---@field protected OwnerConnection Barotrauma.Networking.LidgrenConnection
---@field protected ownerKey userdata
---@field protected callbacks Barotrauma.Networking.ServerPeer.Callbacks
CS.Barotrauma.Networking.LidgrenServerPeer = {}

---@overload fun()
function CS.Barotrauma.Networking.LidgrenServerPeer.Start() end

---@overload fun()
function CS.Barotrauma.Networking.LidgrenServerPeer.Close() end

---@overload fun(deltaTime: System.Single)
---@param deltaTime System.Single
function CS.Barotrauma.Networking.LidgrenServerPeer.Update(deltaTime) end

---@private
function CS.Barotrauma.Networking.LidgrenServerPeer.InitUPnP() end

---@private
---@return System.Boolean
function CS.Barotrauma.Networking.LidgrenServerPeer.DiscoveringUPnP() end

---@private
function CS.Barotrauma.Networking.LidgrenServerPeer.FinishUPnP() end

---@private
---@param inc Lidgren.Network.NetIncomingMessage
function CS.Barotrauma.Networking.LidgrenServerPeer.HandleConnection(inc) end

---@private
---@param lidgrenMsg Lidgren.Network.NetIncomingMessage
function CS.Barotrauma.Networking.LidgrenServerPeer.HandleDataMessage(lidgrenMsg) end

---@private
---@param inc Lidgren.Network.NetIncomingMessage
function CS.Barotrauma.Networking.LidgrenServerPeer.HandleStatusChanged(inc) end

---@private
---@param steamId Steamworks.SteamId
---@param ownerId Steamworks.SteamId
---@param status Steamworks.AuthResponse
function CS.Barotrauma.Networking.LidgrenServerPeer.OnSteamAuthChange(steamId, ownerId, status) end

---@overload fun(msg: Barotrauma.Networking.IWriteMessage, conn: Barotrauma.Networking.NetworkConnection, deliveryMethod: Barotrauma.Networking.DeliveryMethod, compressPastThreshold?: System.Boolean)
---@param msg Barotrauma.Networking.IWriteMessage
---@param conn Barotrauma.Networking.NetworkConnection
---@param deliveryMethod Barotrauma.Networking.DeliveryMethod
---@param compressPastThreshold? System.Boolean
function CS.Barotrauma.Networking.LidgrenServerPeer.Send(msg, conn, deliveryMethod, compressPastThreshold) end

---@overload fun(conn: Barotrauma.Networking.NetworkConnection, peerDisconnectPacket: Barotrauma.Networking.PeerDisconnectPacket)
---@param conn Barotrauma.Networking.NetworkConnection
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
function CS.Barotrauma.Networking.LidgrenServerPeer.Disconnect(conn, peerDisconnectPacket) end

---@protected
---@overload fun(conn: Barotrauma.Networking.LidgrenConnection, headers: Barotrauma.Networking.PeerPacketHeaders, body: Barotrauma.INetSerializableStruct)
---@param conn Barotrauma.Networking.LidgrenConnection
---@param headers Barotrauma.Networking.PeerPacketHeaders
---@param body Barotrauma.INetSerializableStruct
function CS.Barotrauma.Networking.LidgrenServerPeer.SendMsgInternal(conn, headers, body) end

---@protected
---@overload fun(pendingClient: userdata)
---@param pendingClient userdata
function CS.Barotrauma.Networking.LidgrenServerPeer.CheckOwnership(pendingClient) end

---@protected
---@overload fun(packet: Barotrauma.Networking.ClientAuthTicketAndVersionPacket, pendingClient: userdata)
---@param packet Barotrauma.Networking.ClientAuthTicketAndVersionPacket
---@param pendingClient userdata
function CS.Barotrauma.Networking.LidgrenServerPeer.ProcessAuthTicket(packet, pendingClient) end

---@private
---@param msg Barotrauma.Networking.IWriteMessage
---@param connection Barotrauma.Networking.NetworkConnection
---@param deliveryMethod Barotrauma.Networking.DeliveryMethod
---@return Lidgren.Network.NetSendResult
function CS.Barotrauma.Networking.LidgrenServerPeer.ForwardToLidgren(msg, connection, deliveryMethod) end

---@protected
---@param pendingClient userdata
---@param inc Barotrauma.Networking.IReadMessage
---@param initializationStep Barotrauma.Networking.ConnectionInitialization
function CS.Barotrauma.Networking.LidgrenServerPeer.ReadConnectionInitializationStep(pendingClient, inc, initializationStep) end

---@protected
---@param pendingClient userdata
---@param banReason System.String
---@param duration System.TimeSpan|nil
function CS.Barotrauma.Networking.LidgrenServerPeer.BanPendingClient(pendingClient, banReason, duration) end

---@protected
---@param pendingClient userdata
---@param banReason System.String
---@return System.Boolean
function CS.Barotrauma.Networking.LidgrenServerPeer.IsPendingClientBanned(pendingClient, banReason) end

---@protected
---@param pendingClient userdata
function CS.Barotrauma.Networking.LidgrenServerPeer.UpdatePendingClient(pendingClient) end

---@param pendingClient userdata
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
function CS.Barotrauma.Networking.LidgrenServerPeer.RemovePendingClient(pendingClient, peerDisconnectPacket) end

---@private
---@param conn Barotrauma.Networking.NetworkConnection
function CS.Barotrauma.Networking.LidgrenServerPeer.LogMalformedMessage(conn) end

---@protected
function CS.Barotrauma.Networking.LidgrenServerPeer.LogMalformedMessage() end

---@protected
---@param serverSettings Barotrauma.Networking.ServerSettings
---@param connection Barotrauma.Networking.NetworkConnection
---@return System.Boolean
function CS.Barotrauma.Networking.LidgrenServerPeer.ShouldAskForPassword(serverSettings, connection) end

---@return System.Type
function CS.Barotrauma.Networking.LidgrenServerPeer.GetType() end

---@protected
---@return System.Object
function CS.Barotrauma.Networking.LidgrenServerPeer.MemberwiseClone() end

---@protected
function CS.Barotrauma.Networking.LidgrenServerPeer.Finalize() end

---@return System.String
function CS.Barotrauma.Networking.LidgrenServerPeer.ToString() end

---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.LidgrenServerPeer.Equals(obj) end

---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.LidgrenServerPeer.Equals(objA, objB) end

---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.LidgrenServerPeer.ReferenceEquals(objA, objB) end

---@return System.Int32
function CS.Barotrauma.Networking.LidgrenServerPeer.GetHashCode() end

---@param ownKey userdata
---@param settings Barotrauma.Networking.ServerSettings
---@param callbacks Barotrauma.Networking.ServerPeer.Callbacks
---@return Barotrauma.Networking.LidgrenServerPeer
function CS.Barotrauma.Networking.LidgrenServerPeer(ownKey, settings, callbacks) end

---@class Barotrauma.Networking.P2PServerPeer: userdata
---@field private started System.Boolean
---@field private ownerEndpoint Barotrauma.Networking.P2PEndpoint
---@field private contentPackages userdata | { [System.Int32]: Barotrauma.ContentPackage } | (fun(): Barotrauma.ContentPackage)
---@field protected connectedClients userdata | { [System.Int32]: userdata } | (fun(): userdata)
---@field protected pendingClients userdata | { [System.Int32]: userdata } | (fun(): userdata)
---@field protected serverSettings Barotrauma.Networking.ServerSettings
---@field protected OwnerConnection Barotrauma.Networking.P2PConnection
---@field protected ownerKey userdata
---@field protected callbacks Barotrauma.Networking.ServerPeer.Callbacks
CS.Barotrauma.Networking.P2PServerPeer = {}

---@overload fun()
function CS.Barotrauma.Networking.P2PServerPeer.Start() end

---@overload fun()
function CS.Barotrauma.Networking.P2PServerPeer.Close() end

---@overload fun(deltaTime: System.Single)
---@param deltaTime System.Single
function CS.Barotrauma.Networking.P2PServerPeer.Update(deltaTime) end

---@private
---@param inc Barotrauma.Networking.IReadMessage
---@param senderEndPoint Barotrauma.Networking.P2PEndpoint
function CS.Barotrauma.Networking.P2PServerPeer.HandleDataMessage(inc, senderEndPoint) end

---@overload fun(msg: Barotrauma.Networking.IWriteMessage, conn: Barotrauma.Networking.NetworkConnection, deliveryMethod: Barotrauma.Networking.DeliveryMethod, compressPastThreshold?: System.Boolean)
---@param msg Barotrauma.Networking.IWriteMessage
---@param conn Barotrauma.Networking.NetworkConnection
---@param deliveryMethod Barotrauma.Networking.DeliveryMethod
---@param compressPastThreshold? System.Boolean
function CS.Barotrauma.Networking.P2PServerPeer.Send(msg, conn, deliveryMethod, compressPastThreshold) end

---@private
---@param endpoint Barotrauma.Networking.P2PEndpoint
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
function CS.Barotrauma.Networking.P2PServerPeer.SendDisconnectMessage(endpoint, peerDisconnectPacket) end

---@overload fun(conn: Barotrauma.Networking.NetworkConnection, peerDisconnectPacket: Barotrauma.Networking.PeerDisconnectPacket)
---@param conn Barotrauma.Networking.NetworkConnection
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
function CS.Barotrauma.Networking.P2PServerPeer.Disconnect(conn, peerDisconnectPacket) end

---@protected
---@overload fun(conn: Barotrauma.Networking.P2PConnection, headers: Barotrauma.Networking.PeerPacketHeaders, body: Barotrauma.INetSerializableStruct)
---@param conn Barotrauma.Networking.P2PConnection
---@param headers Barotrauma.Networking.PeerPacketHeaders
---@param body Barotrauma.INetSerializableStruct
function CS.Barotrauma.Networking.P2PServerPeer.SendMsgInternal(conn, headers, body) end

---@private
---@param connEndpoint Barotrauma.Networking.P2PEndpoint
---@param headers Barotrauma.Networking.PeerPacketHeaders
---@param body Barotrauma.INetSerializableStruct
function CS.Barotrauma.Networking.P2PServerPeer.SendMsgInternal(connEndpoint, headers, body) end

---@private
---@param msg Barotrauma.Networking.IWriteMessage
function CS.Barotrauma.Networking.P2PServerPeer.ForwardToOwnerProcess(msg) end

---@protected
---@overload fun(packet: Barotrauma.Networking.ClientAuthTicketAndVersionPacket, pendingClient: userdata)
---@param packet Barotrauma.Networking.ClientAuthTicketAndVersionPacket
---@param pendingClient userdata
function CS.Barotrauma.Networking.P2PServerPeer.ProcessAuthTicket(packet, pendingClient) end

---@protected
---@param pendingClient userdata
---@param inc Barotrauma.Networking.IReadMessage
---@param initializationStep Barotrauma.Networking.ConnectionInitialization
function CS.Barotrauma.Networking.P2PServerPeer.ReadConnectionInitializationStep(pendingClient, inc, initializationStep) end

---@protected
---@param pendingClient userdata
---@param banReason System.String
---@param duration System.TimeSpan|nil
function CS.Barotrauma.Networking.P2PServerPeer.BanPendingClient(pendingClient, banReason, duration) end

---@protected
---@param pendingClient userdata
---@param banReason System.String
---@return System.Boolean
function CS.Barotrauma.Networking.P2PServerPeer.IsPendingClientBanned(pendingClient, banReason) end

---@protected
---@param pendingClient userdata
function CS.Barotrauma.Networking.P2PServerPeer.UpdatePendingClient(pendingClient) end

---@protected
---@param pendingClient userdata
function CS.Barotrauma.Networking.P2PServerPeer.CheckOwnership(pendingClient) end

---@param pendingClient userdata
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
function CS.Barotrauma.Networking.P2PServerPeer.RemovePendingClient(pendingClient, peerDisconnectPacket) end

---@private
---@param conn Barotrauma.Networking.NetworkConnection
function CS.Barotrauma.Networking.P2PServerPeer.LogMalformedMessage(conn) end

---@protected
function CS.Barotrauma.Networking.P2PServerPeer.LogMalformedMessage() end

---@protected
---@param serverSettings Barotrauma.Networking.ServerSettings
---@param connection Barotrauma.Networking.NetworkConnection
---@return System.Boolean
function CS.Barotrauma.Networking.P2PServerPeer.ShouldAskForPassword(serverSettings, connection) end

---@return System.Type
function CS.Barotrauma.Networking.P2PServerPeer.GetType() end

---@protected
---@return System.Object
function CS.Barotrauma.Networking.P2PServerPeer.MemberwiseClone() end

---@protected
function CS.Barotrauma.Networking.P2PServerPeer.Finalize() end

---@return System.String
function CS.Barotrauma.Networking.P2PServerPeer.ToString() end

---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.P2PServerPeer.Equals(obj) end

---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.P2PServerPeer.Equals(objA, objB) end

---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.P2PServerPeer.ReferenceEquals(objA, objB) end

---@return System.Int32
function CS.Barotrauma.Networking.P2PServerPeer.GetHashCode() end

---@param ownerEp Barotrauma.Networking.P2PEndpoint
---@param ownerKey System.Int32
---@param settings Barotrauma.Networking.ServerSettings
---@param callbacks Barotrauma.Networking.ServerPeer.Callbacks
---@return Barotrauma.Networking.P2PServerPeer
function CS.Barotrauma.Networking.P2PServerPeer(ownerEp, ownerKey, settings, callbacks) end

---@class Barotrauma.Networking.ServerPeer: System.Object
---@field protected callbacks Barotrauma.Networking.ServerPeer.Callbacks
CS.Barotrauma.Networking.ServerPeer = {}

function CS.Barotrauma.Networking.ServerPeer.Start() end

function CS.Barotrauma.Networking.ServerPeer.Close() end

---@param deltaTime System.Single
function CS.Barotrauma.Networking.ServerPeer.Update(deltaTime) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param conn Barotrauma.Networking.NetworkConnection
---@param deliveryMethod Barotrauma.Networking.DeliveryMethod
---@param compressPastThreshold? System.Boolean
function CS.Barotrauma.Networking.ServerPeer.Send(msg, conn, deliveryMethod, compressPastThreshold) end

---@param conn Barotrauma.Networking.NetworkConnection
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
function CS.Barotrauma.Networking.ServerPeer.Disconnect(conn, peerDisconnectPacket) end

---@private
---@param conn Barotrauma.Networking.NetworkConnection
function CS.Barotrauma.Networking.ServerPeer.LogMalformedMessage(conn) end

---@protected
function CS.Barotrauma.Networking.ServerPeer.LogMalformedMessage() end

---@protected
---@param serverSettings Barotrauma.Networking.ServerSettings
---@param connection Barotrauma.Networking.NetworkConnection
---@return System.Boolean
function CS.Barotrauma.Networking.ServerPeer.ShouldAskForPassword(serverSettings, connection) end

---@protected
---@param callbacks Barotrauma.Networking.ServerPeer.Callbacks
---@return Barotrauma.Networking.ServerPeer
function CS.Barotrauma.Networking.ServerPeer(callbacks) end

---@class Barotrauma.Networking.RespawnManager: Barotrauma.Entity
---@field IsShuttleInsideLevel System.Boolean
---@field SkillLossPercentageOnDeath System.Single
---@field SkillLossPercentageOnImmediateRespawn System.Single
---@field UseDeathPrompt System.Boolean
---@field UsingShuttle System.Boolean
---@field RespawnShuttles userdata | (fun(): Barotrauma.Submarine)
---@field private shuttleEmptyTimer System.Single
---@field private networkMember Barotrauma.Networking.NetworkMember
---@field private shuttleSteering userdata | { [Barotrauma.CharacterTeamType]: userdata | { [System.Int32]: Barotrauma.Items.Components.Steering } | (fun(): Barotrauma.Items.Components.Steering) } | (fun(): userdata)
---@field private shuttleDoors userdata | { [Barotrauma.CharacterTeamType]: userdata | { [System.Int32]: Barotrauma.Items.Components.Door } | (fun(): Barotrauma.Items.Components.Door) } | (fun(): userdata)
---@field private respawnContainers userdata | { [Barotrauma.CharacterTeamType]: userdata | { [System.Int32]: Barotrauma.Items.Components.ItemContainer } | (fun(): Barotrauma.Items.Components.ItemContainer) } | (fun(): userdata)
---@field private teamSpecificStates userdata | { [Barotrauma.CharacterTeamType]: Barotrauma.Networking.RespawnManager.TeamSpecificState } | (fun(): userdata)
---@field private maxTransportTime System.Single
---@field private updateReturnTimer System.Single
---@field private respawnShuttles userdata | { [Barotrauma.CharacterTeamType]: Barotrauma.Submarine } | (fun(): userdata)
CS.Barotrauma.Networking.RespawnManager = {}

---@return System.Boolean
function CS.Barotrauma.Networking.RespawnManager.get_IsShuttleInsideLevel() end

---@private
---@param teamId Barotrauma.CharacterTeamType
---@return userdata | (fun(): Barotrauma.Networking.Client)
function CS.Barotrauma.Networking.RespawnManager.GetClientsToRespawn(teamId) end

---@private
---@param c Barotrauma.Networking.Client
---@return System.Boolean
function CS.Barotrauma.Networking.RespawnManager.IsRespawnDecisionPendingForClient(c) end

---@private
---@param c Barotrauma.Networking.Client
---@return System.Boolean
function CS.Barotrauma.Networking.RespawnManager.ClientHasChosenNewBotViaShuttle(c) end

---@private
---@param teamId Barotrauma.CharacterTeamType
---@return userdata | { [System.Int32]: Barotrauma.CharacterInfo } | (fun(): Barotrauma.CharacterInfo)
function CS.Barotrauma.Networking.RespawnManager.GetBotsToRespawn(teamId) end

---@private
---@param team Barotrauma.CharacterTeamType
---@return System.String
function CS.Barotrauma.Networking.RespawnManager.GetRespawnShuttleText(team) end

---@private
---@param team Barotrauma.CharacterTeamType
---@return System.String
function CS.Barotrauma.Networking.RespawnManager.GetTeamNameText(team) end

---@private
---@overload fun(characterToRespawnCount: System.Int32): System.Boolean
---@param teamSpecificState Barotrauma.Networking.RespawnManager.TeamSpecificState
---@return System.Boolean
function CS.Barotrauma.Networking.RespawnManager.ShouldStartRespawnCountdown(teamSpecificState) end

---@private
---@return System.Int32
function CS.Barotrauma.Networking.RespawnManager.GetMinCharactersToRespawn() end

---@param teamSpecificState Barotrauma.Networking.RespawnManager.TeamSpecificState
function CS.Barotrauma.Networking.RespawnManager.DispatchShuttle(teamSpecificState) end

---@private
---@param deltaTime System.Single
---@return System.Boolean
function CS.Barotrauma.Networking.RespawnManager.CheckShuttleEmpty(deltaTime) end

---@private
---@param teamSpecificState Barotrauma.Networking.RespawnManager.TeamSpecificState
function CS.Barotrauma.Networking.RespawnManager.RespawnCharacters(teamSpecificState) end

---@param characterInfo Barotrauma.CharacterInfo
---@param applyExtraSkillLoss? System.Boolean
function CS.Barotrauma.Networking.RespawnManager.ReduceCharacterSkillsOnDeath(characterInfo, applyExtraSkillLoss) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Networking.RespawnManager.ServerEventWrite(msg, c, extraData) end

---@return System.Single
function CS.Barotrauma.Networking.RespawnManager.get_SkillLossPercentageOnDeath() end

---@return System.Single
function CS.Barotrauma.Networking.RespawnManager.get_SkillLossPercentageOnImmediateRespawn() end

---@return System.Boolean
function CS.Barotrauma.Networking.RespawnManager.get_UseDeathPrompt() end

---@return System.Boolean
function CS.Barotrauma.Networking.RespawnManager.get_UsingShuttle() end

---@param team Barotrauma.CharacterTeamType
---@return System.Boolean
function CS.Barotrauma.Networking.RespawnManager.CanRespawnAgain(team) end

---@return userdata | (fun(): Barotrauma.Submarine)
function CS.Barotrauma.Networking.RespawnManager.get_RespawnShuttles() end

---@private
---@param sender FarseerPhysics.Dynamics.Fixture
---@param other FarseerPhysics.Dynamics.Fixture
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
---@return System.Boolean
function CS.Barotrauma.Networking.RespawnManager.OnShuttleCollision(sender, other, contact) end

---@param deltaTime System.Single
function CS.Barotrauma.Networking.RespawnManager.Update(deltaTime) end

---@private
---@param teamSpecificState Barotrauma.Networking.RespawnManager.TeamSpecificState
function CS.Barotrauma.Networking.RespawnManager.UpdateWaiting(teamSpecificState) end

---@private
---@param teamSpecificState Barotrauma.Networking.RespawnManager.TeamSpecificState
---@param deltaTime System.Single
function CS.Barotrauma.Networking.RespawnManager.UpdateTransporting(teamSpecificState, deltaTime) end

---@private
---@param teamSpecificState Barotrauma.Networking.RespawnManager.TeamSpecificState
---@param deltaTime System.Single
function CS.Barotrauma.Networking.RespawnManager.UpdateTransportingProjSpecific(teamSpecificState, deltaTime) end

function CS.Barotrauma.Networking.RespawnManager.ForceRespawn() end

---@private
---@param teamSpecificState Barotrauma.Networking.RespawnManager.TeamSpecificState
---@param deltaTime System.Single
function CS.Barotrauma.Networking.RespawnManager.UpdateReturning(teamSpecificState, deltaTime) end

---@private
---@param teamSpecificState Barotrauma.Networking.RespawnManager.TeamSpecificState
---@param deltaTime System.Single
function CS.Barotrauma.Networking.RespawnManager.UpdateReturningProjSpecific(teamSpecificState, deltaTime) end

---@param team Barotrauma.CharacterTeamType
---@return Barotrauma.Submarine
function CS.Barotrauma.Networking.RespawnManager.GetShuttle(team) end

---@param team Barotrauma.CharacterTeamType
---@return Barotrauma.Networking.RespawnManager.TeamSpecificState
function CS.Barotrauma.Networking.RespawnManager.GetTeamSpecificState(team) end

---@private
---@param team Barotrauma.CharacterTeamType
---@param bodyType FarseerPhysics.BodyType
function CS.Barotrauma.Networking.RespawnManager.SetShuttleBodyType(team, bodyType) end

---@private
---@param teamSpecificState Barotrauma.Networking.RespawnManager.TeamSpecificState
function CS.Barotrauma.Networking.RespawnManager.ResetShuttle(teamSpecificState) end

---@param characterInfo Barotrauma.CharacterInfo
---@param skill Barotrauma.Skill
---@param skillLossPercentage System.Single
---@param currentSkillLevel? System.Single|nil
---@return System.Single
function CS.Barotrauma.Networking.RespawnManager.GetReducedSkill(characterInfo, skill, skillLossPercentage, currentSkillLevel) end

---@param shuttlePos Microsoft.Xna.Framework.Vector2|nil
function CS.Barotrauma.Networking.RespawnManager.RespawnCharacters(shuttlePos) end

---@return Barotrauma.AfflictionPrefab
function CS.Barotrauma.Networking.RespawnManager.GetRespawnPenaltyAfflictionPrefab() end

---@return Barotrauma.Affliction
function CS.Barotrauma.Networking.RespawnManager.GetRespawnPenaltyAffliction() end

---@param character Barotrauma.Character
function CS.Barotrauma.Networking.RespawnManager.GiveRespawnPenaltyAffliction(character) end

---@param respawnShuttle Barotrauma.Submarine
---@param mainSub Barotrauma.Submarine
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Networking.RespawnManager.FindSpawnPos(respawnShuttle, mainSub) end

---@private
---@param respawnShuttle Barotrauma.Submarine
---@param minWidth System.Single
---@param minHeight System.Single
---@param minDistFromSubs System.Single
---@param minDistFromCharacters System.Single
---@return userdata | { [System.Int32]: Barotrauma.Level.InterestingPosition } | (fun(): Barotrauma.Level.InterestingPosition)
function CS.Barotrauma.Networking.RespawnManager.FindValidSpawnPoints(respawnShuttle, minWidth, minHeight, minDistFromSubs, minDistFromCharacters) end

---@param networkMember Barotrauma.Networking.NetworkMember
---@param shuttleInfo Barotrauma.SubmarineInfo
---@return Barotrauma.Networking.RespawnManager
function CS.Barotrauma.Networking.RespawnManager(networkMember, shuttleInfo) end

---@class Barotrauma.Networking.ServerSettings: System.Object
---@field Name System.String
---@field SerializableProperties userdata | { [Barotrauma.Identifier]: Barotrauma.SerializableProperty } | (fun(): userdata)
---@field ServerName System.String
---@field ServerMessageText System.String
---@field MonsterEnabled userdata | { [Barotrauma.Identifier]: System.Boolean } | (fun(): userdata)
---@field ExtraCargo userdata | { [Barotrauma.ItemPrefab]: System.Int32 } | (fun(): userdata)
---@field HiddenSubs userdata | (fun(): System.String)
---@field ClientPermissions userdata | { [System.Int32]: Barotrauma.Networking.ServerSettings.SavedClientPermission } | (fun(): Barotrauma.Networking.ServerSettings.SavedClientPermission)
---@field IsPublic System.Boolean
---@field TickRate System.Int32
---@field MaxLagCompensation System.Int32
---@field MaxLagCompensationSeconds System.Single
---@field RequireAuthentication System.Boolean
---@field RandomizeSeed System.Boolean
---@field UseRespawnShuttle System.Boolean
---@field RespawnInterval System.Single
---@field MaxTransportTime System.Single
---@field MinRespawnRatio System.Single
---@field SkillLossPercentageOnDeath System.Single
---@field SkillLossPercentageOnImmediateRespawn System.Single
---@field ReplaceCostPercentage System.Single
---@field AllowBotTakeoverOnPermadeath System.Boolean
---@field IronmanMode System.Boolean
---@field IronmanModeActive System.Boolean
---@field AutoRestartInterval System.Single
---@field StartWhenClientsReady System.Boolean
---@field PvpTeamSelectionMode Barotrauma.PvpTeamSelectionMode
---@field PvpAutoBalanceThreshold System.Int32
---@field StartWhenClientsReadyRatio System.Single
---@field PvPStunResist System.Single
---@field PvPSpawnMonsters System.Boolean
---@field PvPSpawnWrecks System.Boolean
---@field Biome Barotrauma.Identifier
---@field SelectedOutpostName Barotrauma.Identifier
---@field AllowSpectating System.Boolean
---@field AllowAFK System.Boolean
---@field SaveServerLogs System.Boolean
---@field AllowModDownloads System.Boolean
---@field AllowFileTransfers System.Boolean
---@field AllowRemoteCampaignInteractions System.Boolean
---@field VoiceChatEnabled System.Boolean
---@field PlayStyle Barotrauma.Networking.PlayStyle
---@field LosMode Barotrauma.LosMode
---@field ShowEnemyHealthBars Barotrauma.EnemyHealthBarMode
---@field LinesPerLogFile System.Int32
---@field AutoRestart System.Boolean
---@field HasPassword System.Boolean
---@field AllowVoteKick System.Boolean
---@field AllowEndVoting System.Boolean
---@field RespawnMode Barotrauma.Networking.RespawnMode
---@field BotCount System.Int32
---@field MaxBotCount System.Int32
---@field BotSpawnMode Barotrauma.Networking.BotSpawnMode
---@field DisableBotConversations System.Boolean
---@field SelectedLevelDifficulty System.Single
---@field AllowDisguises System.Boolean
---@field AllowRewiring System.Boolean
---@field AllowImmediateItemDelivery System.Boolean
---@field LockAllDefaultWires System.Boolean
---@field AllowLinkingWifiToChat System.Boolean
---@field AllowFriendlyFire System.Boolean
---@field AllowDragAndDropGive System.Boolean
---@field DestructibleOutposts System.Boolean
---@field KillableNPCs System.Boolean
---@field BanAfterWrongPassword System.Boolean
---@field MaxPasswordRetriesBeforeBan System.Int32
---@field EnableDoSProtection System.Boolean
---@field MaxPacketAmount System.Int32
---@field SelectedSubmarine System.String
---@field SelectedShuttle System.String
---@field TraitorProbability System.Single
---@field TraitorDangerLevel System.Int32
---@field TraitorsMinPlayerCount System.Int32
---@field MinPercentageOfPlayersForTraitorAccusation System.Single
---@field Language Barotrauma.LanguageIdentifier
---@field SubSelectionMode Barotrauma.Networking.SelectionMode
---@field ModeSelectionMode Barotrauma.Networking.SelectionMode
---@field BanList Barotrauma.Networking.BanList
---@field EndVoteRequiredRatio System.Single
---@field VoteRequiredRatio System.Single
---@field VoteTimeout System.Single
---@field KickVoteRequiredRatio System.Single
---@field DisallowKickVoteTime System.Single
---@field KillDisconnectedTime System.Single
---@field DespawnDisconnectedPermadeathTime System.Single
---@field KickAFKTime System.Single
---@field MinimumMidRoundSyncTimeout System.Single
---@field RoundStartSyncDuration System.Single
---@field EventRemovalTime System.Single
---@field OldReceivedEventKickTime System.Single
---@field OldEventKickTime System.Single
---@field TimeoutThresholdNotInGame System.Single
---@field TimeoutThresholdInGame System.Single
---@field KarmaEnabled System.Boolean
---@field KarmaPreset System.String
---@field GameModeIdentifier Barotrauma.Identifier
---@field MissionTypes System.String
---@field MaxPlayers System.Int32
---@field AllowedRandomMissionTypes userdata | { [System.Int32]: Barotrauma.Identifier } | (fun(): Barotrauma.Identifier)
---@field AutoBanTime System.Single
---@field MaxAutoBanTime System.Single
---@field LootedMoneyDestination Barotrauma.Networking.LootedMoneyDestination
---@field MaximumMoneyTransferRequest System.Int32
---@field NewCampaignDefaultSalary System.Single
---@field TrackOpponentInPvP System.Boolean
---@field DisembarkPointAllowance System.Int32
---@field SelectedCoalitionPerks Barotrauma.Identifier[]
---@field WinScorePvP System.Int32
---@field SelectedSeparatistsPerks Barotrauma.Identifier[]
---@field CampaignSettings Barotrauma.CampaignSettings
---@field AllowSubVoting System.Boolean
---@field AllowModeVoting System.Boolean
---@field AllowedClientNameChars userdata | { [System.Int32]: userdata } | (fun(): userdata)
---@field LastUpdateIdForFlag userdata | { [Barotrauma.Networking.ServerSettings.NetFlags]: System.UInt16 } | (fun(): userdata)
---@field ServerDetailsChanged System.Boolean
---@field private netProperties userdata | { [System.UInt32]: Barotrauma.Networking.ServerSettings.NetPropertyData } | (fun(): userdata)
---@field private serverName System.String
---@field private serverMessageText System.String
---@field Port System.Int32
---@field QueryPort System.Int32
---@field ListenIPAddress System.Net.IPAddress
---@field EnableUPnP System.Boolean
---@field ServerLog Barotrauma.Networking.ServerLog
---@field private selectedLevelDifficulty System.Single
---@field private password System.String
---@field AutoRestartTimer System.Single
---@field private autoRestart System.Boolean
---@field private maxPlayers System.Int32
---@field private tickRate System.Int32
---@field private maxLagCompensation System.Int32
---@field private allowSpectating System.Boolean
---@field private allowAFK System.Boolean
---@field private voiceChatEnabled System.Boolean
---@field private playstyleSelection Barotrauma.Networking.PlayStyle
---@field private respawnMode Barotrauma.Networking.RespawnMode
---@field private traitorProbability System.Single
---@field private traitorDangerLevel System.Int32
---@field private traitorsMinPlayerCount System.Int32
---@field private subSelectionMode Barotrauma.Networking.SelectionMode
---@field private modeSelectionMode Barotrauma.Networking.SelectionMode
---@field private karmaEnabled System.Boolean
---@field private karmaPreset System.String
---@field private allowSubVoting System.Boolean
---@field private allowModeVoting System.Boolean
---@field ClientPermissionsFile System.String
---@field SubmarineSeparatorChar System.Char
---@field PermissionPresetFile System.String
---@field PermissionPresetFileCustom System.String
---@field PacketLimitMin System.Int32
---@field PacketLimitWarning System.Int32
---@field PacketLimitDefault System.Int32
---@field PacketLimitMax System.Int32
---@field SettingsFile System.String
---@field MaxExtraCargoItemsOfType System.Int32
---@field MaxExtraCargoItemTypes System.Int32
---@field DefaultTickRate System.Int32
CS.Barotrauma.Networking.ServerSettings = {}

---@param flag Barotrauma.Networking.ServerSettings.NetFlags
function CS.Barotrauma.Networking.ServerSettings.UpdateFlag(flag) end

---@return Barotrauma.Networking.ServerSettings.NetFlags
function CS.Barotrauma.Networking.ServerSettings.UnsentFlags() end

---@private
---@param c Barotrauma.Networking.Client
---@param flag Barotrauma.Networking.ServerSettings.NetFlags
---@return System.Boolean
function CS.Barotrauma.Networking.ServerSettings.IsFlagRequired(c, flag) end

---@param c Barotrauma.Networking.Client
---@return Barotrauma.Networking.ServerSettings.NetFlags
function CS.Barotrauma.Networking.ServerSettings.GetRequiredFlags(c) end

function CS.Barotrauma.Networking.ServerSettings.ForcePropertyUpdate() end

---@private
---@param outMsg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Networking.ServerSettings.WriteNetProperties(outMsg, c) end

---@param outMsg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Networking.ServerSettings.ServerAdminWrite(outMsg, c) end

---@param outMsg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Networking.ServerSettings.ServerWrite(outMsg, c) end

---@overload fun(msg: Barotrauma.Networking.IReadMessage): System.Boolean
---@param incMsg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Networking.ServerSettings.ReadPerks(incMsg, c) end

---@param incMsg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Networking.ServerSettings.ServerRead(incMsg, c) end

function CS.Barotrauma.Networking.ServerSettings.SaveSettings() end

---@private
function CS.Barotrauma.Networking.ServerSettings.LoadSettings() end

---@param current? System.String
---@return System.String
function CS.Barotrauma.Networking.ServerSettings.SelectNonHiddenSubmarine(current) end

function CS.Barotrauma.Networking.ServerSettings.LoadClientPermissions() end

function CS.Barotrauma.Networking.ServerSettings.SaveClientPermissions() end

---@return System.String
function CS.Barotrauma.Networking.ServerSettings.get_Name() end

---@private
function CS.Barotrauma.Networking.ServerSettings.InitProjSpecific() end

---@return System.String
function CS.Barotrauma.Networking.ServerSettings.get_ServerName() end

---@param value System.String
function CS.Barotrauma.Networking.ServerSettings.set_ServerName(value) end

---@return System.String
function CS.Barotrauma.Networking.ServerSettings.get_ServerMessageText() end

---@param value System.String
function CS.Barotrauma.Networking.ServerSettings.set_ServerMessageText(value) end

---@return System.Int32
function CS.Barotrauma.Networking.ServerSettings.get_TickRate() end

---@param value System.Int32
function CS.Barotrauma.Networking.ServerSettings.set_TickRate(value) end

---@return System.Int32
function CS.Barotrauma.Networking.ServerSettings.get_MaxLagCompensation() end

---@param value System.Int32
function CS.Barotrauma.Networking.ServerSettings.set_MaxLagCompensation(value) end

---@return System.Single
function CS.Barotrauma.Networking.ServerSettings.get_MaxLagCompensationSeconds() end

---@return System.Boolean
function CS.Barotrauma.Networking.ServerSettings.get_IronmanModeActive() end

---@return System.Boolean
function CS.Barotrauma.Networking.ServerSettings.get_AllowSpectating() end

---@private
---@param value System.Boolean
function CS.Barotrauma.Networking.ServerSettings.set_AllowSpectating(value) end

---@return System.Boolean
function CS.Barotrauma.Networking.ServerSettings.get_AllowAFK() end

---@private
---@param value System.Boolean
function CS.Barotrauma.Networking.ServerSettings.set_AllowAFK(value) end

---@return System.Boolean
function CS.Barotrauma.Networking.ServerSettings.get_VoiceChatEnabled() end

---@param value System.Boolean
function CS.Barotrauma.Networking.ServerSettings.set_VoiceChatEnabled(value) end

---@return Barotrauma.Networking.PlayStyle
function CS.Barotrauma.Networking.ServerSettings.get_PlayStyle() end

---@param value Barotrauma.Networking.PlayStyle
function CS.Barotrauma.Networking.ServerSettings.set_PlayStyle(value) end

---@return System.Int32
function CS.Barotrauma.Networking.ServerSettings.get_LinesPerLogFile() end

---@param value System.Int32
function CS.Barotrauma.Networking.ServerSettings.set_LinesPerLogFile(value) end

---@return System.Boolean
function CS.Barotrauma.Networking.ServerSettings.get_AutoRestart() end

---@param value System.Boolean
function CS.Barotrauma.Networking.ServerSettings.set_AutoRestart(value) end

---@return System.Boolean
function CS.Barotrauma.Networking.ServerSettings.get_HasPassword() end

---@return Barotrauma.Networking.RespawnMode
function CS.Barotrauma.Networking.ServerSettings.get_RespawnMode() end

---@param value Barotrauma.Networking.RespawnMode
function CS.Barotrauma.Networking.ServerSettings.set_RespawnMode(value) end

---@return System.Single
function CS.Barotrauma.Networking.ServerSettings.get_SelectedLevelDifficulty() end

---@param value System.Single
function CS.Barotrauma.Networking.ServerSettings.set_SelectedLevelDifficulty(value) end

---@return System.Single
function CS.Barotrauma.Networking.ServerSettings.get_TraitorProbability() end

---@param value System.Single
function CS.Barotrauma.Networking.ServerSettings.set_TraitorProbability(value) end

---@return System.Int32
function CS.Barotrauma.Networking.ServerSettings.get_TraitorDangerLevel() end

---@param value System.Int32
function CS.Barotrauma.Networking.ServerSettings.set_TraitorDangerLevel(value) end

---@return System.Int32
function CS.Barotrauma.Networking.ServerSettings.get_TraitorsMinPlayerCount() end

---@param value System.Int32
function CS.Barotrauma.Networking.ServerSettings.set_TraitorsMinPlayerCount(value) end

---@return Barotrauma.Networking.SelectionMode
function CS.Barotrauma.Networking.ServerSettings.get_SubSelectionMode() end

---@param value Barotrauma.Networking.SelectionMode
function CS.Barotrauma.Networking.ServerSettings.set_SubSelectionMode(value) end

---@return Barotrauma.Networking.SelectionMode
function CS.Barotrauma.Networking.ServerSettings.get_ModeSelectionMode() end

---@param value Barotrauma.Networking.SelectionMode
function CS.Barotrauma.Networking.ServerSettings.set_ModeSelectionMode(value) end

---@return System.Boolean
function CS.Barotrauma.Networking.ServerSettings.get_KarmaEnabled() end

---@param value System.Boolean
function CS.Barotrauma.Networking.ServerSettings.set_KarmaEnabled(value) end

---@return System.String
function CS.Barotrauma.Networking.ServerSettings.get_KarmaPreset() end

---@param value System.String
function CS.Barotrauma.Networking.ServerSettings.set_KarmaPreset(value) end

---@return System.String
function CS.Barotrauma.Networking.ServerSettings.get_MissionTypes() end

---@param value System.String
function CS.Barotrauma.Networking.ServerSettings.set_MissionTypes(value) end

---@return System.Int32
function CS.Barotrauma.Networking.ServerSettings.get_MaxPlayers() end

---@param value System.Int32
function CS.Barotrauma.Networking.ServerSettings.set_MaxPlayers(value) end

---@return System.Boolean
function CS.Barotrauma.Networking.ServerSettings.get_AllowSubVoting() end

---@param value System.Boolean
function CS.Barotrauma.Networking.ServerSettings.set_AllowSubVoting(value) end

---@return System.Boolean
function CS.Barotrauma.Networking.ServerSettings.get_AllowModeVoting() end

---@param value System.Boolean
function CS.Barotrauma.Networking.ServerSettings.set_AllowModeVoting(value) end

---@param password System.String
function CS.Barotrauma.Networking.ServerSettings.SetPassword(password) end

---@param password System.Byte[]
---@param salt System.Int32
---@return System.Byte[]
function CS.Barotrauma.Networking.ServerSettings.SaltPassword(password, salt) end

---@param input System.Byte[]
---@param salt System.Int32
---@return System.Boolean
function CS.Barotrauma.Networking.ServerSettings.IsPasswordCorrect(input, salt) end

---@private
function CS.Barotrauma.Networking.ServerSettings.InitMonstersEnabled() end

---@private
---@param monsterEnabled userdata | { [Barotrauma.Identifier]: System.Boolean } | (fun(): userdata)
---@return userdata | { [System.Int32]: Barotrauma.Identifier } | (fun(): Barotrauma.Identifier)
function CS.Barotrauma.Networking.ServerSettings.ExtractAndSortKeys(monsterEnabled) end

---@param inc Barotrauma.Networking.IReadMessage
---@return System.Boolean
function CS.Barotrauma.Networking.ServerSettings.ReadMonsterEnabled(inc) end

---@param msg Barotrauma.Networking.IWriteMessage
---@param monsterEnabled? userdata | { [Barotrauma.Identifier]: System.Boolean } | (fun(): userdata)
function CS.Barotrauma.Networking.ServerSettings.WriteMonsterEnabled(msg, monsterEnabled) end

---@param msg Barotrauma.Networking.IReadMessage
---@return System.Boolean
function CS.Barotrauma.Networking.ServerSettings.ReadExtraCargo(msg) end

---@param msg Barotrauma.Networking.IWriteMessage
function CS.Barotrauma.Networking.ServerSettings.WriteExtraCargo(msg) end

---@param msg Barotrauma.Networking.IWriteMessage
function CS.Barotrauma.Networking.ServerSettings.WritePerks(msg) end

---@param msg Barotrauma.Networking.IReadMessage
function CS.Barotrauma.Networking.ServerSettings.ReadHiddenSubs(msg) end

---@param msg Barotrauma.Networking.IWriteMessage
function CS.Barotrauma.Networking.ServerSettings.WriteHiddenSubs(msg) end

---@param setter fun(arg1: Barotrauma.Identifier, arg2: System.Object)
function CS.Barotrauma.Networking.ServerSettings.UpdateServerListInfo(setter) end

---@private
---@overload fun(availableMissionClasses: (userdata | (fun(): System.Type)))
function CS.Barotrauma.Networking.ServerSettings.ValidateMissionTypes() end

---@overload fun(): Barotrauma.Networking.ServerSettings
---@param networkMember Barotrauma.Networking.NetworkMember
---@param serverName System.String
---@param port System.Int32
---@param queryPort System.Int32
---@param maxPlayers System.Int32
---@param isPublic System.Boolean
---@param enableUPnP System.Boolean
---@param listenIp System.Net.IPAddress
---@return Barotrauma.Networking.ServerSettings
function CS.Barotrauma.Networking.ServerSettings(networkMember, serverName, port, queryPort, maxPlayers, isPublic, enableUPnP, listenIp) end

---@class Barotrauma.Networking.VoipServer: System.Object
---@field private netServer Barotrauma.Networking.ServerPeer
---@field private queues userdata | { [System.Int32]: Barotrauma.Networking.VoipQueue } | (fun(): Barotrauma.Networking.VoipQueue)
---@field private lastSendTime userdata | { [Barotrauma.Networking.VoipQueue]: System.DateTime } | (fun(): userdata)
CS.Barotrauma.Networking.VoipServer = {}

---@param queue Barotrauma.Networking.VoipQueue
function CS.Barotrauma.Networking.VoipServer.RegisterQueue(queue) end

---@param queue Barotrauma.Networking.VoipQueue
function CS.Barotrauma.Networking.VoipServer.UnregisterQueue(queue) end

---@param clients userdata | { [System.Int32]: Barotrauma.Networking.Client } | (fun(): Barotrauma.Networking.Client)
function CS.Barotrauma.Networking.VoipServer.SendToClients(clients) end

---@private
---@param sender Barotrauma.Networking.Client
---@param recipient Barotrauma.Networking.Client
---@param distanceFactor System.Single
---@return System.Boolean
function CS.Barotrauma.Networking.VoipServer.CanReceive(sender, recipient, distanceFactor) end

---@param inc Barotrauma.Networking.IReadMessage
---@param connectedClient Barotrauma.Networking.Client
function CS.Barotrauma.Networking.VoipServer.Read(inc, connectedClient) end

---@param server Barotrauma.Networking.ServerPeer
---@return Barotrauma.Networking.VoipServer
function CS.Barotrauma.Networking.VoipServer(server) end

---@enum Barotrauma.Networking.ChatMessageType
CS.Barotrauma.Networking.ChatMessageType = {
    Default = 0,
    Error = 1,
    Dead = 2,
    Server = 3,
    Radio = 4,
    Private = 5,
    Console = 6,
    MessageBox = 7,
    Order = 8,
    ServerLog = 9,
    ServerMessageBox = 10,
    ServerMessageBoxInGame = 11,
    Team = 12,
    BlockedBySpamFilter = 13
}

---@class Barotrauma.Networking.TempClient: System.ValueType
---@field Name System.String
---@field PreferredJob Barotrauma.Identifier
---@field TeamID Barotrauma.CharacterTeamType
---@field PreferredTeam Barotrauma.CharacterTeamType
---@field NameId System.UInt16
---@field AccountInfo Barotrauma.Networking.AccountInfo
---@field SessionId System.Byte
---@field CharacterId System.UInt16
---@field Karma System.Single
---@field Muted System.Boolean
---@field InGame System.Boolean
---@field HasPermissions System.Boolean
---@field IsOwner System.Boolean
---@field IsDownloading System.Boolean
CS.Barotrauma.Networking.TempClient = {}


---@enum Barotrauma.Networking.ClientPermissions
CS.Barotrauma.Networking.ClientPermissions = {
    None = 0,
    ManageRound = 1,
    Kick = 2,
    Ban = 4,
    Unban = 8,
    SelectSub = 16,
    SelectMode = 32,
    ManageCampaign = 64,
    ConsoleCommands = 128,
    ServerLog = 256,
    ManageSettings = 512,
    ManagePermissions = 1024,
    KarmaImmunity = 2048,
    ManageMoney = 4096,
    SellInventoryItems = 8192,
    SellSubItems = 16384,
    ManageMap = 32768,
    ManageHires = 65536,
    ManageBotTalents = 131072,
    SpamImmunity = 262144,
    All = 524287
}

---@class Barotrauma.Networking.IClientSerializable
CS.Barotrauma.Networking.IClientSerializable = {}

---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
function CS.Barotrauma.Networking.IClientSerializable.ServerEventRead(msg, c) end


---@class Barotrauma.Networking.NetConfig: System.Object
---@field MaxPlayers System.Int32
---@field ServerNameMaxLength System.Int32
---@field ServerMessageMaxLength System.Int32
---@field MaxHealthUpdateInterval System.Single
---@field MaxHealthUpdateIntervalDead System.Single
---@field HighPrioCharacterPositionUpdateDistance System.Single
---@field LowPrioCharacterPositionUpdateDistance System.Single
---@field HighPrioCharacterPositionUpdateInterval System.Single
---@field LowPrioCharacterPositionUpdateInterval System.Single
---@field FreezeCharacterIfPositionDataMissingDelay System.Single
---@field DisableCharacterIfPositionDataMissingDelay System.Single
---@field DeleteDisconnectedTime System.Single
---@field ItemConditionUpdateInterval System.Single
---@field LevelObjectUpdateInterval System.Single
---@field HullUpdateInterval System.Single
---@field SparseHullUpdateInterval System.Single
---@field HullUpdateDistance System.Single
---@field MaxEventPacketsPerUpdate System.Int32
---@field DefaultPort System.Int32
---@field DefaultQueryPort System.Int32
---@field MaxPhysicsBodyVelocity System.Single
---@field MaxPhysicsBodyAngularVelocity System.Single
CS.Barotrauma.Networking.NetConfig = {}

---@param simPositionError Microsoft.Xna.Framework.Vector2
---@param smoothingFactor? System.Single|nil
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Networking.NetConfig.InterpolateSimPositionError(simPositionError, smoothingFactor) end

---@param rotationError System.Single
---@return System.Single
function CS.Barotrauma.Networking.NetConfig.InterpolateRotationError(rotationError) end

---@param cursorPositionError Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Networking.NetConfig.InterpolateCursorPositionError(cursorPositionError) end

---@overload fun(value: System.Single, min: System.Single, max: System.Single, numberOfBits: System.Int32): System.Single
---@param value Microsoft.Xna.Framework.Vector2
---@param min System.Single
---@param max System.Single
---@param numberOfBits System.Int32
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.Networking.NetConfig.Quantize(value, min, max, numberOfBits) end

---@private
---@return Barotrauma.Networking.NetConfig
function CS.Barotrauma.Networking.NetConfig() end

---@class Barotrauma.Networking.NetEntityEvent: System.Object
---@field EntityID System.UInt16
---@field Data Barotrauma.Networking.NetEntityEvent.IData
---@field Entity Barotrauma.Entity
---@field ID System.UInt16
---@field Sent System.Boolean
CS.Barotrauma.Networking.NetEntityEvent = {}

---@return System.UInt16
function CS.Barotrauma.Networking.NetEntityEvent.get_EntityID() end

---@param data Barotrauma.Networking.NetEntityEvent.IData
function CS.Barotrauma.Networking.NetEntityEvent.SetData(data) end

---@param other Barotrauma.Networking.NetEntityEvent
---@return System.Boolean
function CS.Barotrauma.Networking.NetEntityEvent.IsDuplicate(other) end

---@protected
---@param serializableEntity Barotrauma.Networking.INetSerializable
---@param id System.UInt16
---@return Barotrauma.Networking.NetEntityEvent
function CS.Barotrauma.Networking.NetEntityEvent(serializableEntity, id) end

---@class Barotrauma.Networking.EntityEventException: System.Exception
---@field Entity Barotrauma.Entity
CS.Barotrauma.Networking.EntityEventException = {}

---@param errorMessage System.String
---@param causingEntity Barotrauma.Entity
---@param innerException? System.Exception
---@return Barotrauma.Networking.EntityEventException
function CS.Barotrauma.Networking.EntityEventException(errorMessage, causingEntity, innerException) end

---@class Barotrauma.Networking.NetEntityEventManager: System.Object
---@field MaxEventBufferLength System.Int32
CS.Barotrauma.Networking.NetEntityEventManager = {}

---@protected
---@param msg Barotrauma.Networking.IWriteMessage
---@param eventsToSync userdata | { [System.Int32]: Barotrauma.Networking.NetEntityEvent } | (fun(): Barotrauma.Networking.NetEntityEvent)
---@param sentEvents userdata | { [System.Int32]: Barotrauma.Networking.NetEntityEvent } | (fun(): Barotrauma.Networking.NetEntityEvent)
---@param recipient? Barotrauma.Networking.Client
function CS.Barotrauma.Networking.NetEntityEventManager.Write(msg, eventsToSync, sentEvents, recipient) end

---@protected
---@param entity Barotrauma.Networking.INetSerializable
---@return System.Boolean
function CS.Barotrauma.Networking.NetEntityEventManager.ValidateEntity(entity) end

---@protected
---@param buffer Barotrauma.Networking.IWriteMessage
---@param entityEvent Barotrauma.Networking.NetEntityEvent
---@param recipient? Barotrauma.Networking.Client
function CS.Barotrauma.Networking.NetEntityEventManager.WriteEvent(buffer, entityEvent, recipient) end

---@protected
---@return Barotrauma.Networking.NetEntityEventManager
function CS.Barotrauma.Networking.NetEntityEventManager() end

---@enum Barotrauma.Networking.ClientPacketHeader
CS.Barotrauma.Networking.ClientPacketHeader = {
    UPDATE_LOBBY = 0,
    UPDATE_INGAME = 1,
    SERVER_SETTINGS = 2,
    SERVER_SETTINGS_PERKS = 3,
    CAMPAIGN_SETUP_INFO = 4,
    FILE_REQUEST = 5,
    VOICE = 6,
    PING_RESPONSE = 7,
    RESPONSE_CANCEL_STARTGAME = 8,
    RESPONSE_STARTGAME = 9,
    SERVER_COMMAND = 10,
    ENDROUND_SELF = 11,
    EVENTMANAGER_RESPONSE = 12,
    REQUEST_STARTGAMEFINALIZE = 13,
    UPDATE_CHARACTERINFO = 14,
    ERROR = 15,
    CREW = 16,
    MEDICAL = 17,
    TRANSFER_MONEY = 18,
    REWARD_DISTRIBUTION = 19,
    RESET_REWARD_DISTRIBUTION = 20,
    CIRCUITBOX = 21,
    READY_CHECK = 22,
    READY_TO_SPAWN = 23,
    TAKEOVERBOT = 24,
    TOGGLE_RESERVE_BENCH = 25,
    REQUEST_BACKUP_INDICES = 26,
    LUA_NET_MESSAGE = 27
}

---@enum Barotrauma.Networking.ClientNetSegment
CS.Barotrauma.Networking.ClientNetSegment = {
    SyncIds = 0,
    ChatMessage = 1,
    Vote = 2,
    CharacterInput = 3,
    EntityState = 4,
    SpectatingPos = 5
}

---@enum Barotrauma.Networking.ClientNetError
CS.Barotrauma.Networking.ClientNetError = {
    MISSING_EVENT = 0,
    MISSING_ENTITY = 1
}

---@enum Barotrauma.Networking.ServerPacketHeader
CS.Barotrauma.Networking.ServerPacketHeader = {
    AUTH_RESPONSE = 0,
    AUTH_FAILURE = 1,
    UPDATE_LOBBY = 2,
    UPDATE_INGAME = 3,
    PERMISSIONS = 4,
    ACHIEVEMENT = 5,
    ACHIEVEMENT_STAT = 6,
    CHEATS_ENABLED = 7,
    CAMPAIGN_SETUP_INFO = 8,
    FILE_TRANSFER = 9,
    VOICE = 10,
    VOICE_AMPLITUDE_DEBUG = 11,
    PING_REQUEST = 12,
    CLIENT_PINGS = 13,
    QUERY_STARTGAME = 14,
    WARN_STARTGAME = 15,
    CANCEL_STARTGAME = 16,
    STARTGAME = 17,
    STARTGAMEFINALIZE = 18,
    ENDGAME = 19,
    MISSION = 20,
    EVENTACTION = 21,
    TRAITOR_MESSAGE = 22,
    CREW = 23,
    MEDICAL = 24,
    CIRCUITBOX = 25,
    MONEY = 26,
    READY_CHECK = 27,
    UNLOCKRECIPE = 28,
    SEND_BACKUP_INDICES = 29,
    LUA_NET_MESSAGE = 30
}

---@enum Barotrauma.Networking.VoteType
CS.Barotrauma.Networking.VoteType = {
    Unknown = 0,
    Sub = 1,
    Mode = 2,
    EndRound = 3,
    Kick = 4,
    StartRound = 5,
    PurchaseAndSwitchSub = 6,
    PurchaseSub = 7,
    SwitchSub = 8,
    TransferMoney = 9,
    Traitor = 10
}

---@class Barotrauma.Networking.AccountInfo: System.ValueType
---@field IsNone System.Boolean
---@field AccountId userdata
---@field OtherMatchingIds userdata | { [System.Int32]: Barotrauma.Networking.AccountId } | (fun(): Barotrauma.Networking.AccountId)
---@field None Barotrauma.Networking.AccountInfo
CS.Barotrauma.Networking.AccountInfo = {}

---@return System.Boolean
function CS.Barotrauma.Networking.AccountInfo.get_IsNone() end

---@param accountId Barotrauma.Networking.AccountId
---@return System.Boolean
function CS.Barotrauma.Networking.AccountInfo.Matches(accountId) end

---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.AccountInfo.Equals(obj) end

---@return System.Int32
function CS.Barotrauma.Networking.AccountInfo.GetHashCode() end

---@param a Barotrauma.Networking.AccountInfo
---@param b Barotrauma.Networking.AccountInfo
---@return System.Boolean
function CS.Barotrauma.Networking.AccountInfo.op_Equality(a, b) end

---@param a Barotrauma.Networking.AccountInfo
---@param b Barotrauma.Networking.AccountInfo
---@return System.Boolean
function CS.Barotrauma.Networking.AccountInfo.op_Inequality(a, b) end

---@overload fun(accountId: userdata, ...: Barotrauma.Networking.AccountId): Barotrauma.Networking.AccountInfo
---@overload fun(): Barotrauma.Networking.AccountInfo
---@param accountId Barotrauma.Networking.AccountId
---@param ... Barotrauma.Networking.AccountId
---@return Barotrauma.Networking.AccountInfo
function CS.Barotrauma.Networking.AccountInfo(accountId, ...) end

---@class Barotrauma.Networking.Endpoint: System.Object
---@field StringRepresentation System.String
---@field ServerTypeString Barotrauma.LocalizedString
---@field Address Barotrauma.Networking.Address
CS.Barotrauma.Networking.Endpoint = {}

---@return System.String
function CS.Barotrauma.Networking.Endpoint.get_StringRepresentation() end

---@return Barotrauma.LocalizedString
function CS.Barotrauma.Networking.Endpoint.get_ServerTypeString() end

---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.Endpoint.Equals(obj) end

---@return System.Int32
function CS.Barotrauma.Networking.Endpoint.GetHashCode() end

---@return System.String
function CS.Barotrauma.Networking.Endpoint.ToString() end

---@param str System.String
---@return userdata
function CS.Barotrauma.Networking.Endpoint.Parse(str) end

---@param a Barotrauma.Networking.Endpoint
---@param b Barotrauma.Networking.Endpoint
---@return System.Boolean
function CS.Barotrauma.Networking.Endpoint.op_Equality(a, b) end

---@param a Barotrauma.Networking.Endpoint
---@param b Barotrauma.Networking.Endpoint
---@return System.Boolean
function CS.Barotrauma.Networking.Endpoint.op_Inequality(a, b) end

---@param address Barotrauma.Networking.Address
---@return Barotrauma.Networking.Endpoint
function CS.Barotrauma.Networking.Endpoint(address) end

---@class Barotrauma.Networking.EosP2PEndpoint: Barotrauma.Networking.P2PEndpoint
---@field ProductUserId Barotrauma.EosInterface.ProductUserId
---@field StringRepresentation System.String
---@field ServerTypeString Barotrauma.LocalizedString
---@field SocketName System.String
CS.Barotrauma.Networking.EosP2PEndpoint = {}

---@return Barotrauma.EosInterface.ProductUserId
function CS.Barotrauma.Networking.EosP2PEndpoint.get_ProductUserId() end

---@return System.String
function CS.Barotrauma.Networking.EosP2PEndpoint.get_StringRepresentation() end

---@return System.Int32
function CS.Barotrauma.Networking.EosP2PEndpoint.GetHashCode() end

---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.EosP2PEndpoint.Equals(obj) end

---@param endpointStr System.String
---@return userdata
function CS.Barotrauma.Networking.EosP2PEndpoint.Parse(endpointStr) end

---@return Barotrauma.Networking.P2PConnection
function CS.Barotrauma.Networking.EosP2PEndpoint.MakeConnectionFromEndpoint() end

---@overload fun(address: Barotrauma.Networking.EosP2PAddress): Barotrauma.Networking.EosP2PEndpoint
---@param puid Barotrauma.EosInterface.ProductUserId
---@return Barotrauma.Networking.EosP2PEndpoint
function CS.Barotrauma.Networking.EosP2PEndpoint(puid) end

---@class Barotrauma.Networking.LidgrenEndpoint: Barotrauma.Networking.Endpoint
---@field Port System.Int32
---@field StringRepresentation System.String
---@field ServerTypeString Barotrauma.LocalizedString
---@field NetEndpoint System.Net.IPEndPoint
CS.Barotrauma.Networking.LidgrenEndpoint = {}

---@return System.Int32
function CS.Barotrauma.Networking.LidgrenEndpoint.get_Port() end

---@return System.String
function CS.Barotrauma.Networking.LidgrenEndpoint.get_StringRepresentation() end

---@param endpointStr System.String
---@return userdata
function CS.Barotrauma.Networking.LidgrenEndpoint.Parse(endpointStr) end

---@param endpointStr System.String
---@param tryParseHostName System.Boolean
---@return userdata
function CS.Barotrauma.Networking.LidgrenEndpoint.ParseFromWithHostNameCheck(endpointStr, tryParseHostName) end

---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.LidgrenEndpoint.Equals(obj) end

---@return System.Int32
function CS.Barotrauma.Networking.LidgrenEndpoint.GetHashCode() end

---@param a Barotrauma.Networking.LidgrenEndpoint
---@param b Barotrauma.Networking.LidgrenEndpoint
---@return System.Boolean
function CS.Barotrauma.Networking.LidgrenEndpoint.op_Equality(a, b) end

---@param a Barotrauma.Networking.LidgrenEndpoint
---@param b Barotrauma.Networking.LidgrenEndpoint
---@return System.Boolean
function CS.Barotrauma.Networking.LidgrenEndpoint.op_Inequality(a, b) end

---@overload fun(netEndpoint: System.Net.IPEndPoint): Barotrauma.Networking.LidgrenEndpoint
---@param address System.Net.IPAddress
---@param port System.Int32
---@return Barotrauma.Networking.LidgrenEndpoint
function CS.Barotrauma.Networking.LidgrenEndpoint(address, port) end

---@class Barotrauma.Networking.P2PEndpoint: Barotrauma.Networking.Endpoint
CS.Barotrauma.Networking.P2PEndpoint = {}

---@return Barotrauma.Networking.P2PConnection
function CS.Barotrauma.Networking.P2PEndpoint.MakeConnectionFromEndpoint() end

---@param str System.String
---@return userdata
function CS.Barotrauma.Networking.P2PEndpoint.Parse(str) end

---@protected
---@param address Barotrauma.Networking.P2PAddress
---@return Barotrauma.Networking.P2PEndpoint
function CS.Barotrauma.Networking.P2PEndpoint(address) end

---@class Barotrauma.Networking.SteamP2PEndpoint: Barotrauma.Networking.P2PEndpoint
---@field SteamId Barotrauma.Networking.SteamId
---@field StringRepresentation System.String
---@field ServerTypeString Barotrauma.LocalizedString
CS.Barotrauma.Networking.SteamP2PEndpoint = {}

---@return Barotrauma.Networking.SteamId
function CS.Barotrauma.Networking.SteamP2PEndpoint.get_SteamId() end

---@return System.String
function CS.Barotrauma.Networking.SteamP2PEndpoint.get_StringRepresentation() end

---@return System.Int32
function CS.Barotrauma.Networking.SteamP2PEndpoint.GetHashCode() end

---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.SteamP2PEndpoint.Equals(obj) end

---@param endpointStr System.String
---@return userdata
function CS.Barotrauma.Networking.SteamP2PEndpoint.Parse(endpointStr) end

---@return Barotrauma.Networking.P2PConnection
function CS.Barotrauma.Networking.SteamP2PEndpoint.MakeConnectionFromEndpoint() end

---@param steamId Barotrauma.Networking.SteamId
---@return Barotrauma.Networking.SteamP2PEndpoint
function CS.Barotrauma.Networking.SteamP2PEndpoint(steamId) end

---@class Barotrauma.Networking.IReadMessage
---@field BitPosition System.Int32
---@field BytePosition System.Int32
---@field Buffer System.Byte[]
---@field LengthBits System.Int32
---@field LengthBytes System.Int32
---@field Sender Barotrauma.Networking.NetworkConnection
CS.Barotrauma.Networking.IReadMessage = {}

---@return System.Boolean
function CS.Barotrauma.Networking.IReadMessage.ReadBoolean() end

function CS.Barotrauma.Networking.IReadMessage.ReadPadBits() end

---@return System.Byte
function CS.Barotrauma.Networking.IReadMessage.ReadByte() end

---@return System.Byte
function CS.Barotrauma.Networking.IReadMessage.PeekByte() end

---@return System.UInt16
function CS.Barotrauma.Networking.IReadMessage.ReadUInt16() end

---@return System.Int16
function CS.Barotrauma.Networking.IReadMessage.ReadInt16() end

---@return System.UInt32
function CS.Barotrauma.Networking.IReadMessage.ReadUInt32() end

---@return System.Int32
function CS.Barotrauma.Networking.IReadMessage.ReadInt32() end

---@return System.UInt64
function CS.Barotrauma.Networking.IReadMessage.ReadUInt64() end

---@return System.Int64
function CS.Barotrauma.Networking.IReadMessage.ReadInt64() end

---@return System.Single
function CS.Barotrauma.Networking.IReadMessage.ReadSingle() end

---@return System.Double
function CS.Barotrauma.Networking.IReadMessage.ReadDouble() end

---@return System.UInt32
function CS.Barotrauma.Networking.IReadMessage.ReadVariableUInt32() end

---@return System.String
function CS.Barotrauma.Networking.IReadMessage.ReadString() end

---@return Barotrauma.Identifier
function CS.Barotrauma.Networking.IReadMessage.ReadIdentifier() end

---@return Microsoft.Xna.Framework.Color
function CS.Barotrauma.Networking.IReadMessage.ReadColorR8G8B8() end

---@return Microsoft.Xna.Framework.Color
function CS.Barotrauma.Networking.IReadMessage.ReadColorR8G8B8A8() end

---@param min System.Int32
---@param max System.Int32
---@return System.Int32
function CS.Barotrauma.Networking.IReadMessage.ReadRangedInteger(min, max) end

---@param min System.Single
---@param max System.Single
---@param bitCount System.Int32
---@return System.Single
function CS.Barotrauma.Networking.IReadMessage.ReadRangedSingle(min, max, bitCount) end

---@param numberOfBytes System.Int32
---@return System.Byte[]
function CS.Barotrauma.Networking.IReadMessage.ReadBytes(numberOfBytes) end

---@return System.Int32
function CS.Barotrauma.Networking.IReadMessage.get_BitPosition() end

---@param value System.Int32
function CS.Barotrauma.Networking.IReadMessage.set_BitPosition(value) end

---@return System.Int32
function CS.Barotrauma.Networking.IReadMessage.get_BytePosition() end

---@return System.Byte[]
function CS.Barotrauma.Networking.IReadMessage.get_Buffer() end

---@return System.Int32
function CS.Barotrauma.Networking.IReadMessage.get_LengthBits() end

---@param value System.Int32
function CS.Barotrauma.Networking.IReadMessage.set_LengthBits(value) end

---@return System.Int32
function CS.Barotrauma.Networking.IReadMessage.get_LengthBytes() end

---@return Barotrauma.Networking.NetworkConnection
function CS.Barotrauma.Networking.IReadMessage.get_Sender() end


---@class Barotrauma.Networking.IWriteMessage
---@field BitPosition System.Int32
---@field BytePosition System.Int32
---@field Buffer System.Byte[]
---@field LengthBits System.Int32
---@field LengthBytes System.Int32
CS.Barotrauma.Networking.IWriteMessage = {}

---@param val System.Boolean
function CS.Barotrauma.Networking.IWriteMessage.WriteBoolean(val) end

function CS.Barotrauma.Networking.IWriteMessage.WritePadBits() end

---@param val System.Byte
function CS.Barotrauma.Networking.IWriteMessage.WriteByte(val) end

---@param val System.Int16
function CS.Barotrauma.Networking.IWriteMessage.WriteInt16(val) end

---@param val System.UInt16
function CS.Barotrauma.Networking.IWriteMessage.WriteUInt16(val) end

---@param val System.Int32
function CS.Barotrauma.Networking.IWriteMessage.WriteInt32(val) end

---@param val System.UInt32
function CS.Barotrauma.Networking.IWriteMessage.WriteUInt32(val) end

---@param val System.Int64
function CS.Barotrauma.Networking.IWriteMessage.WriteInt64(val) end

---@param val System.UInt64
function CS.Barotrauma.Networking.IWriteMessage.WriteUInt64(val) end

---@param val System.Single
function CS.Barotrauma.Networking.IWriteMessage.WriteSingle(val) end

---@param val System.Double
function CS.Barotrauma.Networking.IWriteMessage.WriteDouble(val) end

---@param val Microsoft.Xna.Framework.Color
function CS.Barotrauma.Networking.IWriteMessage.WriteColorR8G8B8(val) end

---@param val Microsoft.Xna.Framework.Color
function CS.Barotrauma.Networking.IWriteMessage.WriteColorR8G8B8A8(val) end

---@param val System.UInt32
function CS.Barotrauma.Networking.IWriteMessage.WriteVariableUInt32(val) end

---@param val System.String
function CS.Barotrauma.Networking.IWriteMessage.WriteString(val) end

---@param val Barotrauma.Identifier
function CS.Barotrauma.Networking.IWriteMessage.WriteIdentifier(val) end

---@param val System.Int32
---@param min System.Int32
---@param max System.Int32
function CS.Barotrauma.Networking.IWriteMessage.WriteRangedInteger(val, min, max) end

---@param val System.Single
---@param min System.Single
---@param max System.Single
---@param bitCount System.Int32
function CS.Barotrauma.Networking.IWriteMessage.WriteRangedSingle(val, min, max, bitCount) end

---@param val System.Byte[]
---@param startIndex System.Int32
---@param length System.Int32
function CS.Barotrauma.Networking.IWriteMessage.WriteBytes(val, startIndex, length) end

---@param compressPastThreshold System.Boolean
---@param isCompressed System.Boolean
---@param outLength System.Int32
---@return System.Byte[]
function CS.Barotrauma.Networking.IWriteMessage.PrepareForSending(compressPastThreshold, isCompressed, outLength) end

---@return System.Int32
function CS.Barotrauma.Networking.IWriteMessage.get_BitPosition() end

---@param value System.Int32
function CS.Barotrauma.Networking.IWriteMessage.set_BitPosition(value) end

---@return System.Int32
function CS.Barotrauma.Networking.IWriteMessage.get_BytePosition() end

---@return System.Byte[]
function CS.Barotrauma.Networking.IWriteMessage.get_Buffer() end

---@return System.Int32
function CS.Barotrauma.Networking.IWriteMessage.get_LengthBits() end

---@param value System.Int32
function CS.Barotrauma.Networking.IWriteMessage.set_LengthBits(value) end

---@return System.Int32
function CS.Barotrauma.Networking.IWriteMessage.get_LengthBytes() end


---@class Barotrauma.Networking.WriteOnlyMessage: System.Object
---@field BitPosition System.Int32
---@field BytePosition System.Int32
---@field Buffer System.Byte[]
---@field LengthBits System.Int32
---@field LengthBytes System.Int32
---@field private buf System.Byte[]
---@field private seekPos System.Int32
---@field private lengthBits System.Int32
CS.Barotrauma.Networking.WriteOnlyMessage = {}

---@return System.Int32
function CS.Barotrauma.Networking.WriteOnlyMessage.get_BitPosition() end

---@param value System.Int32
function CS.Barotrauma.Networking.WriteOnlyMessage.set_BitPosition(value) end

---@return System.Int32
function CS.Barotrauma.Networking.WriteOnlyMessage.get_BytePosition() end

---@return System.Byte[]
function CS.Barotrauma.Networking.WriteOnlyMessage.get_Buffer() end

---@return System.Int32
function CS.Barotrauma.Networking.WriteOnlyMessage.get_LengthBits() end

---@param value System.Int32
function CS.Barotrauma.Networking.WriteOnlyMessage.set_LengthBits(value) end

---@return System.Int32
function CS.Barotrauma.Networking.WriteOnlyMessage.get_LengthBytes() end

---@param val System.Boolean
function CS.Barotrauma.Networking.WriteOnlyMessage.WriteBoolean(val) end

function CS.Barotrauma.Networking.WriteOnlyMessage.WritePadBits() end

---@param val System.Byte
function CS.Barotrauma.Networking.WriteOnlyMessage.WriteByte(val) end

---@param val System.UInt16
function CS.Barotrauma.Networking.WriteOnlyMessage.WriteUInt16(val) end

---@param val System.Int16
function CS.Barotrauma.Networking.WriteOnlyMessage.WriteInt16(val) end

---@param val System.UInt32
function CS.Barotrauma.Networking.WriteOnlyMessage.WriteUInt32(val) end

---@param val System.Int32
function CS.Barotrauma.Networking.WriteOnlyMessage.WriteInt32(val) end

---@param val System.UInt64
function CS.Barotrauma.Networking.WriteOnlyMessage.WriteUInt64(val) end

---@param val System.Int64
function CS.Barotrauma.Networking.WriteOnlyMessage.WriteInt64(val) end

---@param val System.Single
function CS.Barotrauma.Networking.WriteOnlyMessage.WriteSingle(val) end

---@param val System.Double
function CS.Barotrauma.Networking.WriteOnlyMessage.WriteDouble(val) end

---@param val Microsoft.Xna.Framework.Color
function CS.Barotrauma.Networking.WriteOnlyMessage.WriteColorR8G8B8(val) end

---@param val Microsoft.Xna.Framework.Color
function CS.Barotrauma.Networking.WriteOnlyMessage.WriteColorR8G8B8A8(val) end

---@param val System.UInt32
function CS.Barotrauma.Networking.WriteOnlyMessage.WriteVariableUInt32(val) end

---@param val System.String
function CS.Barotrauma.Networking.WriteOnlyMessage.WriteString(val) end

---@param val Barotrauma.Identifier
function CS.Barotrauma.Networking.WriteOnlyMessage.WriteIdentifier(val) end

---@param val System.Int32
---@param min System.Int32
---@param max System.Int32
function CS.Barotrauma.Networking.WriteOnlyMessage.WriteRangedInteger(val, min, max) end

---@param val System.Single
---@param min System.Single
---@param max System.Single
---@param bitCount System.Int32
function CS.Barotrauma.Networking.WriteOnlyMessage.WriteRangedSingle(val, min, max, bitCount) end

---@param val System.Byte[]
---@param startPos System.Int32
---@param length System.Int32
function CS.Barotrauma.Networking.WriteOnlyMessage.WriteBytes(val, startPos, length) end

---@param compressPastThreshold System.Boolean
---@param isCompressed System.Boolean
---@param length System.Int32
---@return System.Byte[]
function CS.Barotrauma.Networking.WriteOnlyMessage.PrepareForSending(compressPastThreshold, isCompressed, length) end

---@return Barotrauma.Networking.WriteOnlyMessage
function CS.Barotrauma.Networking.WriteOnlyMessage() end

---@class Barotrauma.Networking.ReadOnlyMessage: System.Object
---@field BitPosition System.Int32
---@field BytePosition System.Int32
---@field Buffer System.Byte[]
---@field LengthBits System.Int32
---@field LengthBytes System.Int32
---@field Sender Barotrauma.Networking.NetworkConnection
---@field private seekPos System.Int32
---@field private lengthBits System.Int32
CS.Barotrauma.Networking.ReadOnlyMessage = {}

---@return System.Int32
function CS.Barotrauma.Networking.ReadOnlyMessage.get_BitPosition() end

---@param value System.Int32
function CS.Barotrauma.Networking.ReadOnlyMessage.set_BitPosition(value) end

---@return System.Int32
function CS.Barotrauma.Networking.ReadOnlyMessage.get_BytePosition() end

---@return System.Int32
function CS.Barotrauma.Networking.ReadOnlyMessage.get_LengthBits() end

---@param value System.Int32
function CS.Barotrauma.Networking.ReadOnlyMessage.set_LengthBits(value) end

---@return System.Int32
function CS.Barotrauma.Networking.ReadOnlyMessage.get_LengthBytes() end

---@return System.Boolean
function CS.Barotrauma.Networking.ReadOnlyMessage.ReadBoolean() end

function CS.Barotrauma.Networking.ReadOnlyMessage.ReadPadBits() end

---@return System.Byte
function CS.Barotrauma.Networking.ReadOnlyMessage.ReadByte() end

---@return System.Byte
function CS.Barotrauma.Networking.ReadOnlyMessage.PeekByte() end

---@return System.UInt16
function CS.Barotrauma.Networking.ReadOnlyMessage.ReadUInt16() end

---@return System.Int16
function CS.Barotrauma.Networking.ReadOnlyMessage.ReadInt16() end

---@return System.UInt32
function CS.Barotrauma.Networking.ReadOnlyMessage.ReadUInt32() end

---@return System.Int32
function CS.Barotrauma.Networking.ReadOnlyMessage.ReadInt32() end

---@return System.UInt64
function CS.Barotrauma.Networking.ReadOnlyMessage.ReadUInt64() end

---@return System.Int64
function CS.Barotrauma.Networking.ReadOnlyMessage.ReadInt64() end

---@return System.Single
function CS.Barotrauma.Networking.ReadOnlyMessage.ReadSingle() end

---@return System.Double
function CS.Barotrauma.Networking.ReadOnlyMessage.ReadDouble() end

---@return System.UInt32
function CS.Barotrauma.Networking.ReadOnlyMessage.ReadVariableUInt32() end

---@return System.String
function CS.Barotrauma.Networking.ReadOnlyMessage.ReadString() end

---@return Barotrauma.Identifier
function CS.Barotrauma.Networking.ReadOnlyMessage.ReadIdentifier() end

---@return Microsoft.Xna.Framework.Color
function CS.Barotrauma.Networking.ReadOnlyMessage.ReadColorR8G8B8() end

---@return Microsoft.Xna.Framework.Color
function CS.Barotrauma.Networking.ReadOnlyMessage.ReadColorR8G8B8A8() end

---@param min System.Int32
---@param max System.Int32
---@return System.Int32
function CS.Barotrauma.Networking.ReadOnlyMessage.ReadRangedInteger(min, max) end

---@param min System.Single
---@param max System.Single
---@param bitCount System.Int32
---@return System.Single
function CS.Barotrauma.Networking.ReadOnlyMessage.ReadRangedSingle(min, max, bitCount) end

---@param numberOfBytes System.Int32
---@return System.Byte[]
function CS.Barotrauma.Networking.ReadOnlyMessage.ReadBytes(numberOfBytes) end

---@param inBuf System.Byte[]
---@param isCompressed System.Boolean
---@param startPos System.Int32
---@param byteLength System.Int32
---@param sender Barotrauma.Networking.NetworkConnection
---@return Barotrauma.Networking.ReadOnlyMessage
function CS.Barotrauma.Networking.ReadOnlyMessage(inBuf, isCompressed, startPos, byteLength, sender) end

---@class Barotrauma.Networking.ReadWriteMessage: System.Object
---@field BitPosition System.Int32
---@field BytePosition System.Int32
---@field Buffer System.Byte[]
---@field LengthBits System.Int32
---@field LengthBytes System.Int32
---@field Sender Barotrauma.Networking.NetworkConnection
---@field private buf System.Byte[]
---@field private seekPos System.Int32
---@field private lengthBits System.Int32
CS.Barotrauma.Networking.ReadWriteMessage = {}

---@return System.Int32
function CS.Barotrauma.Networking.ReadWriteMessage.get_BitPosition() end

---@param value System.Int32
function CS.Barotrauma.Networking.ReadWriteMessage.set_BitPosition(value) end

---@return System.Int32
function CS.Barotrauma.Networking.ReadWriteMessage.get_BytePosition() end

---@return System.Byte[]
function CS.Barotrauma.Networking.ReadWriteMessage.get_Buffer() end

---@return System.Int32
function CS.Barotrauma.Networking.ReadWriteMessage.get_LengthBits() end

---@param value System.Int32
function CS.Barotrauma.Networking.ReadWriteMessage.set_LengthBits(value) end

---@return System.Int32
function CS.Barotrauma.Networking.ReadWriteMessage.get_LengthBytes() end

---@return Barotrauma.Networking.NetworkConnection
function CS.Barotrauma.Networking.ReadWriteMessage.get_Sender() end

---@param val System.Boolean
function CS.Barotrauma.Networking.ReadWriteMessage.WriteBoolean(val) end

function CS.Barotrauma.Networking.ReadWriteMessage.WritePadBits() end

---@param val System.Byte
function CS.Barotrauma.Networking.ReadWriteMessage.WriteByte(val) end

---@param val System.UInt16
function CS.Barotrauma.Networking.ReadWriteMessage.WriteUInt16(val) end

---@param val System.Int16
function CS.Barotrauma.Networking.ReadWriteMessage.WriteInt16(val) end

---@param val System.UInt32
function CS.Barotrauma.Networking.ReadWriteMessage.WriteUInt32(val) end

---@param val System.Int32
function CS.Barotrauma.Networking.ReadWriteMessage.WriteInt32(val) end

---@param val System.UInt64
function CS.Barotrauma.Networking.ReadWriteMessage.WriteUInt64(val) end

---@param val System.Int64
function CS.Barotrauma.Networking.ReadWriteMessage.WriteInt64(val) end

---@param val System.Single
function CS.Barotrauma.Networking.ReadWriteMessage.WriteSingle(val) end

---@param val System.Double
function CS.Barotrauma.Networking.ReadWriteMessage.WriteDouble(val) end

---@param val Microsoft.Xna.Framework.Color
function CS.Barotrauma.Networking.ReadWriteMessage.WriteColorR8G8B8(val) end

---@param val Microsoft.Xna.Framework.Color
function CS.Barotrauma.Networking.ReadWriteMessage.WriteColorR8G8B8A8(val) end

---@param val System.UInt32
function CS.Barotrauma.Networking.ReadWriteMessage.WriteVariableUInt32(val) end

---@param val System.String
function CS.Barotrauma.Networking.ReadWriteMessage.WriteString(val) end

---@param val Barotrauma.Identifier
function CS.Barotrauma.Networking.ReadWriteMessage.WriteIdentifier(val) end

---@param val System.Int32
---@param min System.Int32
---@param max System.Int32
function CS.Barotrauma.Networking.ReadWriteMessage.WriteRangedInteger(val, min, max) end

---@param val System.Single
---@param min System.Single
---@param max System.Single
---@param bitCount System.Int32
function CS.Barotrauma.Networking.ReadWriteMessage.WriteRangedSingle(val, min, max, bitCount) end

---@param val System.Byte[]
---@param startPos System.Int32
---@param length System.Int32
function CS.Barotrauma.Networking.ReadWriteMessage.WriteBytes(val, startPos, length) end

---@return System.Boolean
function CS.Barotrauma.Networking.ReadWriteMessage.ReadBoolean() end

function CS.Barotrauma.Networking.ReadWriteMessage.ReadPadBits() end

---@return System.Byte
function CS.Barotrauma.Networking.ReadWriteMessage.ReadByte() end

---@return System.Byte
function CS.Barotrauma.Networking.ReadWriteMessage.PeekByte() end

---@return System.UInt16
function CS.Barotrauma.Networking.ReadWriteMessage.ReadUInt16() end

---@return System.Int16
function CS.Barotrauma.Networking.ReadWriteMessage.ReadInt16() end

---@return System.UInt32
function CS.Barotrauma.Networking.ReadWriteMessage.ReadUInt32() end

---@return System.Int32
function CS.Barotrauma.Networking.ReadWriteMessage.ReadInt32() end

---@return System.UInt64
function CS.Barotrauma.Networking.ReadWriteMessage.ReadUInt64() end

---@return System.Int64
function CS.Barotrauma.Networking.ReadWriteMessage.ReadInt64() end

---@return System.Single
function CS.Barotrauma.Networking.ReadWriteMessage.ReadSingle() end

---@return System.Double
function CS.Barotrauma.Networking.ReadWriteMessage.ReadDouble() end

---@return System.UInt32
function CS.Barotrauma.Networking.ReadWriteMessage.ReadVariableUInt32() end

---@return System.String
function CS.Barotrauma.Networking.ReadWriteMessage.ReadString() end

---@return Barotrauma.Identifier
function CS.Barotrauma.Networking.ReadWriteMessage.ReadIdentifier() end

---@return Microsoft.Xna.Framework.Color
function CS.Barotrauma.Networking.ReadWriteMessage.ReadColorR8G8B8() end

---@return Microsoft.Xna.Framework.Color
function CS.Barotrauma.Networking.ReadWriteMessage.ReadColorR8G8B8A8() end

---@param min System.Int32
---@param max System.Int32
---@return System.Int32
function CS.Barotrauma.Networking.ReadWriteMessage.ReadRangedInteger(min, max) end

---@param min System.Single
---@param max System.Single
---@param bitCount System.Int32
---@return System.Single
function CS.Barotrauma.Networking.ReadWriteMessage.ReadRangedSingle(min, max, bitCount) end

---@param numberOfBytes System.Int32
---@return System.Byte[]
function CS.Barotrauma.Networking.ReadWriteMessage.ReadBytes(numberOfBytes) end

---@param compressPastThreshold System.Boolean
---@param isCompressed System.Boolean
---@param outLength System.Int32
---@return System.Byte[]
function CS.Barotrauma.Networking.ReadWriteMessage.PrepareForSending(compressPastThreshold, isCompressed, outLength) end

---@overload fun(b: System.Byte[], bitPos: System.Int32, lBits: System.Int32, copyBuf: System.Boolean): Barotrauma.Networking.ReadWriteMessage
---@return Barotrauma.Networking.ReadWriteMessage
function CS.Barotrauma.Networking.ReadWriteMessage() end

---@class Barotrauma.Networking.EosP2PConnection: userdata
---@field Endpoint Barotrauma.Networking.EosP2PEndpoint
---@field TimeoutThresholdNotInGame System.Double
---@field TimeoutThresholdInGame System.Double
---@field AccountInfo Barotrauma.Networking.AccountInfo
---@field Language Barotrauma.LanguageIdentifier
---@field Timeout System.Double
---@field Status Barotrauma.Networking.NetworkConnectionStatus
CS.Barotrauma.Networking.EosP2PConnection = {}

---@overload fun(other: Barotrauma.Networking.NetworkConnection): System.Boolean
---@param other Barotrauma.Networking.NetworkConnection
---@return System.Boolean
function CS.Barotrauma.Networking.EosP2PConnection.AddressMatches(other) end

---@overload fun(): Barotrauma.Networking.P2PEndpoint
---@return Barotrauma.Networking.EosP2PEndpoint
function CS.Barotrauma.Networking.EosP2PConnection.get_Endpoint() end

---@param deltaTime System.Single
function CS.Barotrauma.Networking.EosP2PConnection.Decay(deltaTime) end

function CS.Barotrauma.Networking.EosP2PConnection.Heartbeat() end

---@return System.Double
function CS.Barotrauma.Networking.EosP2PConnection.get_TimeoutThresholdNotInGame() end

---@return System.Double
function CS.Barotrauma.Networking.EosP2PConnection.get_TimeoutThresholdInGame() end

---@param endPoint Barotrauma.Networking.Endpoint
---@return System.Boolean
function CS.Barotrauma.Networking.EosP2PConnection.EndpointMatches(endPoint) end

---@param newInfo Barotrauma.Networking.AccountInfo
function CS.Barotrauma.Networking.EosP2PConnection.SetAccountInfo(newInfo) end

---@overload fun(): System.String
---@return System.String
function CS.Barotrauma.Networking.EosP2PConnection.ToString() end

---@return System.Type
function CS.Barotrauma.Networking.EosP2PConnection.GetType() end

---@protected
---@return System.Object
function CS.Barotrauma.Networking.EosP2PConnection.MemberwiseClone() end

---@protected
function CS.Barotrauma.Networking.EosP2PConnection.Finalize() end

---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.EosP2PConnection.Equals(obj) end

---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.EosP2PConnection.Equals(objA, objB) end

---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.EosP2PConnection.ReferenceEquals(objA, objB) end

---@return System.Int32
function CS.Barotrauma.Networking.EosP2PConnection.GetHashCode() end

---@param endpoint Barotrauma.Networking.EosP2PEndpoint
---@return Barotrauma.Networking.EosP2PConnection
function CS.Barotrauma.Networking.EosP2PConnection(endpoint) end

---@class Barotrauma.Networking.LidgrenConnection: userdata
---@field Endpoint Barotrauma.Networking.LidgrenEndpoint
---@field TimeoutThresholdNotInGame System.Double
---@field TimeoutThresholdInGame System.Double
---@field AccountInfo Barotrauma.Networking.AccountInfo
---@field Language Barotrauma.LanguageIdentifier
---@field NetConnection Lidgren.Network.NetConnection
---@field Status Barotrauma.Networking.NetworkConnectionStatus
CS.Barotrauma.Networking.LidgrenConnection = {}

---@overload fun(other: Barotrauma.Networking.NetworkConnection): System.Boolean
---@param other Barotrauma.Networking.NetworkConnection
---@return System.Boolean
function CS.Barotrauma.Networking.LidgrenConnection.AddressMatches(other) end

---@return Barotrauma.Networking.LidgrenEndpoint
function CS.Barotrauma.Networking.LidgrenConnection.get_Endpoint() end

---@return System.Double
function CS.Barotrauma.Networking.LidgrenConnection.get_TimeoutThresholdNotInGame() end

---@return System.Double
function CS.Barotrauma.Networking.LidgrenConnection.get_TimeoutThresholdInGame() end

---@param endPoint Barotrauma.Networking.Endpoint
---@return System.Boolean
function CS.Barotrauma.Networking.LidgrenConnection.EndpointMatches(endPoint) end

---@param newInfo Barotrauma.Networking.AccountInfo
function CS.Barotrauma.Networking.LidgrenConnection.SetAccountInfo(newInfo) end

---@overload fun(): System.String
---@return System.String
function CS.Barotrauma.Networking.LidgrenConnection.ToString() end

---@return System.Type
function CS.Barotrauma.Networking.LidgrenConnection.GetType() end

---@protected
---@return System.Object
function CS.Barotrauma.Networking.LidgrenConnection.MemberwiseClone() end

---@protected
function CS.Barotrauma.Networking.LidgrenConnection.Finalize() end

---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.LidgrenConnection.Equals(obj) end

---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.LidgrenConnection.Equals(objA, objB) end

---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.LidgrenConnection.ReferenceEquals(objA, objB) end

---@return System.Int32
function CS.Barotrauma.Networking.LidgrenConnection.GetHashCode() end

---@param netConnection Lidgren.Network.NetConnection
---@return Barotrauma.Networking.LidgrenConnection
function CS.Barotrauma.Networking.LidgrenConnection(netConnection) end

---@enum Barotrauma.Networking.NetworkConnectionStatus
CS.Barotrauma.Networking.NetworkConnectionStatus = {
    Connected = 1,
    Disconnected = 2
}

---@class Barotrauma.Networking.NetworkConnection: System.Object
---@field TimeoutThresholdNotInGame System.Double
---@field TimeoutThresholdInGame System.Double
---@field AccountInfo Barotrauma.Networking.AccountInfo
---@field Language Barotrauma.LanguageIdentifier
---@field Endpoint Barotrauma.Networking.Endpoint
---@field Status Barotrauma.Networking.NetworkConnectionStatus
CS.Barotrauma.Networking.NetworkConnection = {}

---@return System.Double
function CS.Barotrauma.Networking.NetworkConnection.get_TimeoutThresholdNotInGame() end

---@return System.Double
function CS.Barotrauma.Networking.NetworkConnection.get_TimeoutThresholdInGame() end

---@param endPoint Barotrauma.Networking.Endpoint
---@return System.Boolean
function CS.Barotrauma.Networking.NetworkConnection.EndpointMatches(endPoint) end

---@param other Barotrauma.Networking.NetworkConnection
---@return System.Boolean
function CS.Barotrauma.Networking.NetworkConnection.AddressMatches(other) end

---@param newInfo Barotrauma.Networking.AccountInfo
function CS.Barotrauma.Networking.NetworkConnection.SetAccountInfo(newInfo) end

---@return System.String
function CS.Barotrauma.Networking.NetworkConnection.ToString() end

---@protected
---@param endpoint Barotrauma.Networking.Endpoint
---@return Barotrauma.Networking.NetworkConnection
function CS.Barotrauma.Networking.NetworkConnection(endpoint) end

---@class Barotrauma.Networking.P2PConnection: userdata
---@field Endpoint Barotrauma.Networking.P2PEndpoint
---@field TimeoutThresholdNotInGame System.Double
---@field TimeoutThresholdInGame System.Double
---@field AccountInfo Barotrauma.Networking.AccountInfo
---@field Language Barotrauma.LanguageIdentifier
---@field Timeout System.Double
---@field Status Barotrauma.Networking.NetworkConnectionStatus
CS.Barotrauma.Networking.P2PConnection = {}

---@param deltaTime System.Single
function CS.Barotrauma.Networking.P2PConnection.Decay(deltaTime) end

function CS.Barotrauma.Networking.P2PConnection.Heartbeat() end

---@return Barotrauma.Networking.P2PEndpoint
function CS.Barotrauma.Networking.P2PConnection.get_Endpoint() end

---@return System.Double
function CS.Barotrauma.Networking.P2PConnection.get_TimeoutThresholdNotInGame() end

---@return System.Double
function CS.Barotrauma.Networking.P2PConnection.get_TimeoutThresholdInGame() end

---@param endPoint Barotrauma.Networking.Endpoint
---@return System.Boolean
function CS.Barotrauma.Networking.P2PConnection.EndpointMatches(endPoint) end

---@param other Barotrauma.Networking.NetworkConnection
---@return System.Boolean
function CS.Barotrauma.Networking.P2PConnection.AddressMatches(other) end

---@param newInfo Barotrauma.Networking.AccountInfo
function CS.Barotrauma.Networking.P2PConnection.SetAccountInfo(newInfo) end

---@overload fun(): System.String
---@return System.String
function CS.Barotrauma.Networking.P2PConnection.ToString() end

---@return System.Type
function CS.Barotrauma.Networking.P2PConnection.GetType() end

---@protected
---@return System.Object
function CS.Barotrauma.Networking.P2PConnection.MemberwiseClone() end

---@protected
function CS.Barotrauma.Networking.P2PConnection.Finalize() end

---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.P2PConnection.Equals(obj) end

---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.P2PConnection.Equals(objA, objB) end

---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.P2PConnection.ReferenceEquals(objA, objB) end

---@return System.Int32
function CS.Barotrauma.Networking.P2PConnection.GetHashCode() end

---@protected
---@param endpoint Barotrauma.Networking.P2PEndpoint
---@return Barotrauma.Networking.P2PConnection
function CS.Barotrauma.Networking.P2PConnection(endpoint) end

---@class Barotrauma.Networking.PipeEndpoint: Barotrauma.Networking.Endpoint
---@field StringRepresentation System.String
---@field ServerTypeString Barotrauma.LocalizedString
CS.Barotrauma.Networking.PipeEndpoint = {}

---@return System.String
function CS.Barotrauma.Networking.PipeEndpoint.get_StringRepresentation() end

---@return Barotrauma.LocalizedString
function CS.Barotrauma.Networking.PipeEndpoint.get_ServerTypeString() end

---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.PipeEndpoint.Equals(obj) end

---@return System.Int32
function CS.Barotrauma.Networking.PipeEndpoint.GetHashCode() end

---@param a Barotrauma.Networking.PipeEndpoint
---@param b Barotrauma.Networking.PipeEndpoint
---@return System.Boolean
function CS.Barotrauma.Networking.PipeEndpoint.op_Equality(a, b) end

---@param a Barotrauma.Networking.PipeEndpoint
---@param b Barotrauma.Networking.PipeEndpoint
---@return System.Boolean
function CS.Barotrauma.Networking.PipeEndpoint.op_Inequality(a, b) end

---@return Barotrauma.Networking.PipeEndpoint
function CS.Barotrauma.Networking.PipeEndpoint() end

---@class Barotrauma.Networking.PipeConnection: userdata
---@field Endpoint Barotrauma.Networking.PipeEndpoint
---@field TimeoutThresholdNotInGame System.Double
---@field TimeoutThresholdInGame System.Double
---@field AccountInfo Barotrauma.Networking.AccountInfo
---@field Language Barotrauma.LanguageIdentifier
---@field Status Barotrauma.Networking.NetworkConnectionStatus
CS.Barotrauma.Networking.PipeConnection = {}

---@overload fun(other: Barotrauma.Networking.NetworkConnection): System.Boolean
---@param other Barotrauma.Networking.NetworkConnection
---@return System.Boolean
function CS.Barotrauma.Networking.PipeConnection.AddressMatches(other) end

---@return Barotrauma.Networking.PipeEndpoint
function CS.Barotrauma.Networking.PipeConnection.get_Endpoint() end

---@return System.Double
function CS.Barotrauma.Networking.PipeConnection.get_TimeoutThresholdNotInGame() end

---@return System.Double
function CS.Barotrauma.Networking.PipeConnection.get_TimeoutThresholdInGame() end

---@param endPoint Barotrauma.Networking.Endpoint
---@return System.Boolean
function CS.Barotrauma.Networking.PipeConnection.EndpointMatches(endPoint) end

---@param newInfo Barotrauma.Networking.AccountInfo
function CS.Barotrauma.Networking.PipeConnection.SetAccountInfo(newInfo) end

---@overload fun(): System.String
---@return System.String
function CS.Barotrauma.Networking.PipeConnection.ToString() end

---@return System.Type
function CS.Barotrauma.Networking.PipeConnection.GetType() end

---@protected
---@return System.Object
function CS.Barotrauma.Networking.PipeConnection.MemberwiseClone() end

---@protected
function CS.Barotrauma.Networking.PipeConnection.Finalize() end

---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.PipeConnection.Equals(obj) end

---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.PipeConnection.Equals(objA, objB) end

---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.PipeConnection.ReferenceEquals(objA, objB) end

---@return System.Int32
function CS.Barotrauma.Networking.PipeConnection.GetHashCode() end

---@param accountId userdata
---@return Barotrauma.Networking.PipeConnection
function CS.Barotrauma.Networking.PipeConnection(accountId) end

---@class Barotrauma.Networking.SteamP2PConnection: userdata
---@field Endpoint Barotrauma.Networking.SteamP2PEndpoint
---@field TimeoutThresholdNotInGame System.Double
---@field TimeoutThresholdInGame System.Double
---@field AccountInfo Barotrauma.Networking.AccountInfo
---@field Language Barotrauma.LanguageIdentifier
---@field Timeout System.Double
---@field Status Barotrauma.Networking.NetworkConnectionStatus
CS.Barotrauma.Networking.SteamP2PConnection = {}

---@overload fun(other: Barotrauma.Networking.NetworkConnection): System.Boolean
---@param other Barotrauma.Networking.NetworkConnection
---@return System.Boolean
function CS.Barotrauma.Networking.SteamP2PConnection.AddressMatches(other) end

---@overload fun(): Barotrauma.Networking.P2PEndpoint
---@return Barotrauma.Networking.SteamP2PEndpoint
function CS.Barotrauma.Networking.SteamP2PConnection.get_Endpoint() end

---@param deltaTime System.Single
function CS.Barotrauma.Networking.SteamP2PConnection.Decay(deltaTime) end

function CS.Barotrauma.Networking.SteamP2PConnection.Heartbeat() end

---@return System.Double
function CS.Barotrauma.Networking.SteamP2PConnection.get_TimeoutThresholdNotInGame() end

---@return System.Double
function CS.Barotrauma.Networking.SteamP2PConnection.get_TimeoutThresholdInGame() end

---@param endPoint Barotrauma.Networking.Endpoint
---@return System.Boolean
function CS.Barotrauma.Networking.SteamP2PConnection.EndpointMatches(endPoint) end

---@param newInfo Barotrauma.Networking.AccountInfo
function CS.Barotrauma.Networking.SteamP2PConnection.SetAccountInfo(newInfo) end

---@overload fun(): System.String
---@return System.String
function CS.Barotrauma.Networking.SteamP2PConnection.ToString() end

---@return System.Type
function CS.Barotrauma.Networking.SteamP2PConnection.GetType() end

---@protected
---@return System.Object
function CS.Barotrauma.Networking.SteamP2PConnection.MemberwiseClone() end

---@protected
function CS.Barotrauma.Networking.SteamP2PConnection.Finalize() end

---@param obj System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.SteamP2PConnection.Equals(obj) end

---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.SteamP2PConnection.Equals(objA, objB) end

---@param objA System.Object
---@param objB System.Object
---@return System.Boolean
function CS.Barotrauma.Networking.SteamP2PConnection.ReferenceEquals(objA, objB) end

---@return System.Int32
function CS.Barotrauma.Networking.SteamP2PConnection.GetHashCode() end

---@overload fun(endpoint: Barotrauma.Networking.SteamP2PEndpoint): Barotrauma.Networking.SteamP2PConnection
---@param steamId Barotrauma.Networking.SteamId
---@return Barotrauma.Networking.SteamP2PConnection
function CS.Barotrauma.Networking.SteamP2PConnection(steamId) end

---@class Barotrauma.Networking.ClientAuthTicketAndVersionPacket: System.ValueType
---@field Name System.String
---@field OwnerKey userdata
---@field AccountId userdata
---@field AuthTicket userdata
---@field GameVersion System.String
---@field Language Barotrauma.Identifier
CS.Barotrauma.Networking.ClientAuthTicketAndVersionPacket = {}


---@class Barotrauma.Networking.PeerPacketMessage: System.ValueType
---@field Length System.Int32
---@field Buffer System.Byte[]
CS.Barotrauma.Networking.PeerPacketMessage = {}

---@return System.Int32
function CS.Barotrauma.Networking.PeerPacketMessage.get_Length() end

---@return Barotrauma.Networking.IReadMessage
function CS.Barotrauma.Networking.PeerPacketMessage.GetReadMessageUncompressed() end

---@param isCompressed System.Boolean
---@param conn Barotrauma.Networking.NetworkConnection
---@return Barotrauma.Networking.IReadMessage
function CS.Barotrauma.Networking.PeerPacketMessage.GetReadMessage(isCompressed, conn) end


---@class Barotrauma.Networking.ClientPeerPasswordPacket: System.ValueType
---@field Password System.Byte[]
CS.Barotrauma.Networking.ClientPeerPasswordPacket = {}


---@class Barotrauma.Networking.ServerContentPackage: System.Object
---@field Hash Barotrauma.Md5Hash
---@field InstallTime System.DateTime
---@field RegularPackage Barotrauma.RegularPackage
---@field CorePackage Barotrauma.CorePackage
---@field ContentPackage Barotrauma.ContentPackage
---@field Name System.String
---@field HashBytes System.Byte[]
---@field UgcId System.String
---@field InstallTimeDiffInSeconds System.UInt32
---@field IsMandatory System.Boolean
---@field IsVanilla System.Boolean
---@field private cachedHash Barotrauma.Md5Hash
---@field private cachedDateTime System.DateTime|nil
CS.Barotrauma.Networking.ServerContentPackage = {}

---@return Barotrauma.Md5Hash
function CS.Barotrauma.Networking.ServerContentPackage.get_Hash() end

---@param value Barotrauma.Md5Hash
function CS.Barotrauma.Networking.ServerContentPackage.set_Hash(value) end

---@return System.DateTime
function CS.Barotrauma.Networking.ServerContentPackage.get_InstallTime() end

---@return Barotrauma.RegularPackage
function CS.Barotrauma.Networking.ServerContentPackage.get_RegularPackage() end

---@return Barotrauma.CorePackage
function CS.Barotrauma.Networking.ServerContentPackage.get_CorePackage() end

---@return Barotrauma.ContentPackage
function CS.Barotrauma.Networking.ServerContentPackage.get_ContentPackage() end

---@return System.String
function CS.Barotrauma.Networking.ServerContentPackage.GetPackageStr() end

---@overload fun(contentPackage: Barotrauma.ContentPackage, referenceTime: Barotrauma.SerializableDateTime): Barotrauma.Networking.ServerContentPackage
---@return Barotrauma.Networking.ServerContentPackage
function CS.Barotrauma.Networking.ServerContentPackage() end

---@class Barotrauma.Networking.ServerLog: System.Object
---@field LinesPerFile System.Int32
---@field private messageColor userdata | { [Barotrauma.Networking.ServerLog.MessageType]: Microsoft.Xna.Framework.Color } | (fun(): userdata)
---@field private messageTypeName userdata | { [Barotrauma.Networking.ServerLog.MessageType]: System.String } | (fun(): userdata)
---@field private linesPerFile System.Int32
---@field private lines userdata | (fun(): Barotrauma.Networking.ServerLog.LogMessage)
---@field private unsavedLines userdata | (fun(): Barotrauma.Networking.ServerLog.LogMessage)
---@field ServerName System.String
---@field SavePath System.String
CS.Barotrauma.Networking.ServerLog = {}

---@return System.Int32
function CS.Barotrauma.Networking.ServerLog.get_LinesPerFile() end

---@param value System.Int32
function CS.Barotrauma.Networking.ServerLog.set_LinesPerFile(value) end

---@param line System.String
---@param messageType Barotrauma.Networking.ServerLog.MessageType
---@param logToConsole? System.Boolean
function CS.Barotrauma.Networking.ServerLog.WriteLine(line, messageType, logToConsole) end

function CS.Barotrauma.Networking.ServerLog.Save() end

---@param serverName System.String
---@return Barotrauma.Networking.ServerLog
function CS.Barotrauma.Networking.ServerLog(serverName) end

---@class Barotrauma.Networking.VoipConfig: System.Object
---@field SEND_INTERVAL System.TimeSpan
---@field MAX_COMPRESSED_SIZE System.Int32
---@field FREQUENCY System.Int32
---@field BITRATE System.Int32
---@field BUFFER_SIZE System.Int32
CS.Barotrauma.Networking.VoipConfig = {}

---@return Concentus.Structs.OpusDecoder
function CS.Barotrauma.Networking.VoipConfig.CreateDecoder() end

---@private
---@return Barotrauma.Networking.VoipConfig
function CS.Barotrauma.Networking.VoipConfig() end

---@class Barotrauma.Networking.VoipQueue: System.Object
---@field EnqueuedTotalLength System.Int32
---@field BufferToQueue System.Byte[]
---@field QueueID System.Byte
---@field LatestBufferID System.UInt16
---@field CanSend System.Boolean
---@field CanReceive System.Boolean
---@field ForceLocal System.Boolean
---@field LastReadTime System.DateTime
---@field protected bufferLengths System.Int32[]
---@field protected buffers System.Byte[][]
---@field protected newestBufferInd System.Int32
---@field protected firstRead System.Boolean
---@field BUFFER_COUNT System.Int32
CS.Barotrauma.Networking.VoipQueue = {}

---@return System.Int32
function CS.Barotrauma.Networking.VoipQueue.get_EnqueuedTotalLength() end

---@param length System.Int32
function CS.Barotrauma.Networking.VoipQueue.EnqueueBuffer(length) end

---@param id System.Int32
---@param outSize System.Int32
---@param outBuf System.Byte[]
function CS.Barotrauma.Networking.VoipQueue.RetrieveBuffer(id, outSize, outBuf) end

---@param msg Barotrauma.Networking.IWriteMessage
function CS.Barotrauma.Networking.VoipQueue.Write(msg) end

---@param msg Barotrauma.Networking.IReadMessage
---@param discardData? System.Boolean
---@return System.Boolean
function CS.Barotrauma.Networking.VoipQueue.Read(msg, discardData) end

function CS.Barotrauma.Networking.VoipQueue.Dispose() end

---@param id System.Byte
---@param canSend System.Boolean
---@param canReceive System.Boolean
---@return Barotrauma.Networking.VoipQueue
function CS.Barotrauma.Networking.VoipQueue(id, canSend, canReceive) end

---@class Barotrauma.Networking.ServerEntityEventManager.BufferedEvent: System.Object
---@field Sender Barotrauma.Networking.Client
---@field CharacterStateID System.UInt16
---@field Data Barotrauma.Networking.ReadWriteMessage
---@field Character Barotrauma.Character
---@field TargetEntity Barotrauma.Networking.IClientSerializable
---@field IsProcessed System.Boolean
---@field RequireCharacter System.Boolean
CS.Barotrauma.Networking.ServerEntityEventManager.BufferedEvent = {}

---@param sender Barotrauma.Networking.Client
---@param senderCharacter Barotrauma.Character
---@param characterStateID System.UInt16
---@param targetEntity Barotrauma.Networking.IClientSerializable
---@param data Barotrauma.Networking.ReadWriteMessage
---@return Barotrauma.Networking.ServerEntityEventManager.BufferedEvent
function CS.Barotrauma.Networking.ServerEntityEventManager.BufferedEvent(sender, senderCharacter, characterStateID, targetEntity, data) end

---@enum Barotrauma.Networking.RespawnManager.State
CS.Barotrauma.Networking.RespawnManager.State = {
    Waiting = 0,
    Transporting = 1,
    Returning = 2
}

---@class Barotrauma.Networking.RespawnManager.TeamSpecificState: System.Object
---@field TeamID Barotrauma.CharacterTeamType
---@field State Barotrauma.Networking.RespawnManager.State
---@field RespawnedCharacters userdata | { [System.Int32]: Barotrauma.Character } | (fun(): Barotrauma.Character)
---@field RespawnTime System.DateTime
---@field ReturnTime System.DateTime
---@field DespawnTime System.DateTime
---@field RespawnCountdownStarted System.Boolean
---@field ReturnCountdownStarted System.Boolean
---@field PendingRespawnCount System.Int32
---@field RequiredRespawnCount System.Int32
---@field PrevPendingRespawnCount System.Int32
---@field PrevRequiredRespawnCount System.Int32
---@field CurrentState Barotrauma.Networking.RespawnManager.State
---@field RespawnItems userdata | { [System.Int32]: Barotrauma.Item } | (fun(): Barotrauma.Item)
CS.Barotrauma.Networking.RespawnManager.TeamSpecificState = {}

---@param teamID Barotrauma.CharacterTeamType
---@return Barotrauma.Networking.RespawnManager.TeamSpecificState
function CS.Barotrauma.Networking.RespawnManager.TeamSpecificState(teamID) end

---@class Barotrauma.Networking.ServerSettings.SavedClientPermission: System.Object
---@field AddressOrAccountId userdata
---@field Name System.String
---@field PermittedCommands userdata | (fun(): Barotrauma.DebugConsole.Command)
---@field Permissions Barotrauma.Networking.ClientPermissions
CS.Barotrauma.Networking.ServerSettings.SavedClientPermission = {}

---@param name System.String
---@param addressOrAccountId userdata
---@param permissions Barotrauma.Networking.ClientPermissions
---@param permittedCommands userdata | (fun(): Barotrauma.DebugConsole.Command)
---@return Barotrauma.Networking.ServerSettings.SavedClientPermission
function CS.Barotrauma.Networking.ServerSettings.SavedClientPermission(name, addressOrAccountId, permissions, permittedCommands) end

---@class Barotrauma.Networking.NetEntityEvent.IData
CS.Barotrauma.Networking.NetEntityEvent.IData = {}


---@class Barotrauma.Networking.MessageFragment.Id: System.ValueType
---@field FragmentIndex System.UInt16
---@field FragmentCount System.UInt16
---@field MessageId System.UInt16
CS.Barotrauma.Networking.MessageFragment.Id = {}

---@param FragmentIndex System.UInt16
---@param FragmentCount System.UInt16
---@param MessageId System.UInt16
---@return Barotrauma.Networking.MessageFragment.Id
function CS.Barotrauma.Networking.MessageFragment.Id(FragmentIndex, FragmentCount, MessageId) end

---@class Barotrauma.Networking.ServerLog.LogMessage: System.ValueType
---@field Text Barotrauma.RichString
---@field Type Barotrauma.Networking.ServerLog.MessageType
CS.Barotrauma.Networking.ServerLog.LogMessage = {}

---@param text System.String
---@param type Barotrauma.Networking.ServerLog.MessageType
---@return Barotrauma.Networking.ServerLog.LogMessage
function CS.Barotrauma.Networking.ServerLog.LogMessage(text, type) end

---@enum Barotrauma.Networking.ServerLog.MessageType
CS.Barotrauma.Networking.ServerLog.MessageType = {
    Chat = 0,
    ItemInteraction = 1,
    Inventory = 2,
    Attack = 3,
    Spawning = 4,
    Wiring = 5,
    ServerMessage = 6,
    ConsoleUsage = 7,
    Money = 8,
    DoSProtection = 9,
    Karma = 10,
    Talent = 11,
    Traitors = 12,
    Error = 13
}


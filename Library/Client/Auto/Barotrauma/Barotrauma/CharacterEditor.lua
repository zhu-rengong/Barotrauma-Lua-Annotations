---@meta
---Auto-generated from Barotrauma
---Namespace: Barotrauma.CharacterEditor

---@class Barotrauma.CharacterEditor.CharacterEditorScreen: Barotrauma.EditorScreen
---@field Instance Barotrauma.CharacterEditor.CharacterEditorScreen
---@field Cam Barotrauma.Camera
---@field private ShowExtraRagdollControls System.Boolean
---@field SpawnedCharacter Barotrauma.Character
---@field private MiddleWall Barotrauma.CharacterEditor.CharacterEditorScreen.WallGroup
---@field private AllStructures userdata | (fun(): Barotrauma.MapEntity)
---@field private VisibleSpecies userdata | { [System.Int32]: Barotrauma.Identifier } | (fun(): Barotrauma.Identifier)
---@field private VanillaCharacters userdata | (fun(): Barotrauma.CharacterFile)
---@field private CharacterParams Barotrauma.CharacterParams
---@field private AnimParams userdata | { [System.Int32]: Barotrauma.AnimationParams } | (fun(): Barotrauma.AnimationParams)
---@field private CurrentAnimation Barotrauma.AnimationParams
---@field private RagdollParams Barotrauma.RagdollParams
---@field private Textures userdata | { [System.Int32]: Microsoft.Xna.Framework.Graphics.Texture2D } | (fun(): Microsoft.Xna.Framework.Graphics.Texture2D)
---@field private cam Barotrauma.Camera
---@field private character Barotrauma.Character
---@field private spawnPosition Microsoft.Xna.Framework.Vector2
---@field private editCharacterInfo System.Boolean
---@field private editRagdoll System.Boolean
---@field private editAnimations System.Boolean
---@field private editLimbs System.Boolean
---@field private editJoints System.Boolean
---@field private editIK System.Boolean
---@field private drawSkeleton System.Boolean
---@field private drawDamageModifiers System.Boolean
---@field private showParamsEditor System.Boolean
---@field private showSpritesheet System.Boolean
---@field private isFrozen System.Boolean
---@field private autoFreeze System.Boolean
---@field private limbPairEditing System.Boolean
---@field private uniformScaling System.Boolean
---@field private lockSpriteOrigin System.Boolean
---@field private lockSpritePosition System.Boolean
---@field private lockSpriteSize System.Boolean
---@field private recalculateCollider System.Boolean
---@field private copyJointSettings System.Boolean
---@field private showColliders System.Boolean
---@field private displayWearables System.Boolean
---@field private displayBackgroundColor System.Boolean
---@field private onlyShowSourceRectForSelectedLimbs System.Boolean
---@field private unrestrictSpritesheet System.Boolean
---@field private jointCreationMode Barotrauma.CharacterEditor.CharacterEditorScreen.JointCreationMode
---@field private isDrawingLimb System.Boolean
---@field private newLimbRect Microsoft.Xna.Framework.Rectangle
---@field private jointStartLimb Barotrauma.Limb
---@field private jointEndLimb Barotrauma.Limb
---@field private anchor1Pos Microsoft.Xna.Framework.Vector2|nil
---@field private holdTimer System.Double
---@field private spriteSheetZoom System.Single
---@field private spriteSheetMinZoom System.Single
---@field private spriteSheetMaxZoom System.Single
---@field private hideBodySheet System.Boolean
---@field private backgroundColor Microsoft.Xna.Framework.Color
---@field private cameraOffset Microsoft.Xna.Framework.Vector2
---@field private selectedJoints userdata | { [System.Int32]: Barotrauma.LimbJoint } | (fun(): Barotrauma.LimbJoint)
---@field private selectedLimbs userdata | { [System.Int32]: Barotrauma.Limb } | (fun(): Barotrauma.Limb)
---@field private editedCharacters userdata | (fun(): Barotrauma.Character)
---@field private isEndlessRunner System.Boolean
---@field private spriteSheetRect Microsoft.Xna.Framework.Rectangle
---@field private scaledMouseSpeed Microsoft.Xna.Framework.Vector2
---@field private min System.Int32
---@field private max System.Int32
---@field private wallGroups Barotrauma.CharacterEditor.CharacterEditorScreen.WallGroup[]
---@field private wallCollisionsEnabled System.Boolean
---@field private characterIndex System.Int32
---@field private currentCharacterIdentifier Barotrauma.Identifier
---@field private selectedJob Barotrauma.Identifier
---@field private visibleSpecies userdata | { [System.Int32]: Barotrauma.Identifier } | (fun(): Barotrauma.Identifier)
---@field private vanillaCharacters userdata | (fun(): Barotrauma.CharacterFile)
---@field private rightArea Barotrauma.GUILayoutGroup
---@field private leftArea Barotrauma.GUILayoutGroup
---@field private centerArea Barotrauma.GUIFrame
---@field private totalMassText Barotrauma.GUITextBlock
---@field private characterSelectionPanel Barotrauma.GUIFrame
---@field private fileEditPanel Barotrauma.GUIFrame
---@field private modesPanel Barotrauma.GUIFrame
---@field private buttonsPanel Barotrauma.GUIFrame
---@field private optionsPanel Barotrauma.GUIFrame
---@field private minorModesPanel Barotrauma.GUIFrame
---@field private ragdollControls Barotrauma.GUIFrame
---@field private jointControls Barotrauma.GUIFrame
---@field private animationControls Barotrauma.GUIFrame
---@field private limbControls Barotrauma.GUIFrame
---@field private spriteSheetControls Barotrauma.GUIFrame
---@field private backgroundColorPanel Barotrauma.GUIFrame
---@field private animSelection Barotrauma.GUIDropDown
---@field private freezeToggle Barotrauma.GUITickBox
---@field private animTestPoseToggle Barotrauma.GUITickBox
---@field private showCollidersToggle Barotrauma.GUITickBox
---@field private jointScaleBar Barotrauma.GUIScrollBar
---@field private limbScaleBar Barotrauma.GUIScrollBar
---@field private spriteSheetZoomBar Barotrauma.GUIScrollBar
---@field private copyJointsToggle Barotrauma.GUITickBox
---@field private recalculateColliderToggle Barotrauma.GUITickBox
---@field private resetSpriteOrientationButtonParent Barotrauma.GUIFrame
---@field private characterInfoToggle Barotrauma.GUITickBox
---@field private ragdollToggle Barotrauma.GUITickBox
---@field private animsToggle Barotrauma.GUITickBox
---@field private limbsToggle Barotrauma.GUITickBox
---@field private paramsToggle Barotrauma.GUITickBox
---@field private jointsToggle Barotrauma.GUITickBox
---@field private spritesheetToggle Barotrauma.GUITickBox
---@field private skeletonToggle Barotrauma.GUITickBox
---@field private lightsToggle Barotrauma.GUITickBox
---@field private damageModifiersToggle Barotrauma.GUITickBox
---@field private ikToggle Barotrauma.GUITickBox
---@field private lockSpriteOriginToggle Barotrauma.GUITickBox
---@field private extraRagdollControls Barotrauma.GUIFrame
---@field private createJointButton Barotrauma.GUIButton
---@field private createLimbButton Barotrauma.GUIButton
---@field private deleteSelectedButton Barotrauma.GUIButton
---@field private duplicateLimbButton Barotrauma.GUIButton
---@field private modesToggle Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleButton
---@field private minorModesToggle Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleButton
---@field private buttonsPanelToggle Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleButton
---@field private optionsToggle Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleButton
---@field private characterPanelToggle Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleButton
---@field private fileEditToggle Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleButton
---@field private corners Microsoft.Xna.Framework.Vector2[]
---@field private textures userdata | { [System.Int32]: Microsoft.Xna.Framework.Graphics.Texture2D } | (fun(): Microsoft.Xna.Framework.Graphics.Texture2D)
---@field private texturePaths userdata | { [System.Int32]: System.String } | (fun(): System.String)
---@field private animationWidgets userdata | { [System.String]: Barotrauma.Widget } | (fun(): userdata)
---@field private jointSelectionWidgets userdata | { [System.String]: Barotrauma.Widget } | (fun(): userdata)
---@field private limbEditWidgets userdata | { [System.String]: Barotrauma.Widget } | (fun(): userdata)
---@field private innerScale Microsoft.Xna.Framework.Vector2
---@field private holdTime System.Single
---@field private spriteSheetOffsetY System.Int32
---@field private spriteSheetOffsetX System.Int32
---@field private screenTextTag System.String
CS.Barotrauma.CharacterEditor.CharacterEditorScreen = {}

---@return Barotrauma.Camera
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.get_Cam() end

---@private
---@return System.Boolean
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.get_ShowExtraRagdollControls() end

---@return Barotrauma.Character
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.get_SpawnedCharacter() end

---@private
---@return Microsoft.Xna.Framework.Rectangle
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.CalculateSpritesheetRectangle() end

function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.Select() end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.ResetVariables() end

---@private
---@param characters? userdata | (fun(): Barotrauma.Character)
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.Reset(characters) end

---@private
---@param character Barotrauma.Character
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.ResetParams(character) end

---@protected
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.DeselectEditorSpecific() end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.OnResolutionChanged() end

---@param tag System.String
---@return Barotrauma.LocalizedString
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.GetCharacterEditorTranslation(tag) end

function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.AddToGUIUpdateList() end

---@param deltaTime System.Double
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.Update(deltaTime) end

---@private
---@return Barotrauma.LocalizedString
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.GetTotalMassText() end

---@return Barotrauma.CursorState
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.GetMouseCursorState() end

---@param deltaTime System.Double
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.Draw(deltaTime, graphics, spriteBatch) end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.UpdateJointCreation() end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.UpdateLimbCreation() end

---@private
---@param limb Barotrauma.Limb
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.CopyLimb(limb) end

---@private
---@param sourceRect Microsoft.Xna.Framework.Rectangle
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.CreateNewLimb(sourceRect) end

---@private
---@param newElement Barotrauma.ContentXElement
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.CreateLimb(newElement) end

---@private
---@param fromLimb System.Int32
---@param toLimb System.Int32
---@param anchor1? Microsoft.Xna.Framework.Vector2|nil
---@param anchor2? Microsoft.Xna.Framework.Vector2|nil
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.CreateJoint(fromLimb, toLimb, anchor1, anchor2) end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.DeleteSelected() end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.CalculateMovementLimits() end

---@private
---@return Barotrauma.CharacterEditor.CharacterEditorScreen.WallGroup
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.get_MiddleWall() end

---@private
---@return userdata | (fun(): Barotrauma.MapEntity)
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.get_AllStructures() end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.CloneWalls() end

---@private
---@param right System.Boolean
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.UpdateWalls(right) end

---@private
---@param enabled System.Boolean
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.SetWallCollisions(enabled) end

---@private
---@return userdata | { [System.Int32]: Barotrauma.Identifier } | (fun(): Barotrauma.Identifier)
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.get_VisibleSpecies() end

---@private
---@param prefab Barotrauma.CharacterPrefab
---@return System.Boolean
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.ShowCreature(prefab) end

---@private
---@return userdata | (fun(): Barotrauma.CharacterFile)
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.get_VanillaCharacters() end

---@private
---@return Barotrauma.Identifier
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.GetNextCharacterIdentifier() end

---@private
---@return Barotrauma.Identifier
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.GetPreviousCharacterIdentifier() end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.GetCurrentCharacterIndex() end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.IncreaseIndex() end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.ReduceIndex() end

---@param speciesName Barotrauma.Identifier
---@param ragdoll? Barotrauma.RagdollParams
---@return Barotrauma.Character
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.SpawnCharacter(speciesName, ragdoll) end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.OnPreSpawn() end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.OnPostSpawn() end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.ClearWidgets() end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.ClearSelection() end

---@private
---@param ragdoll? Barotrauma.RagdollParams
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.RecreateRagdoll(ragdoll) end

---@private
---@param position Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.TeleportTo(position) end

---@param name Barotrauma.Identifier
---@param mainFolder System.String
---@param isHumanoid System.Boolean
---@param contentPackage Barotrauma.ContentPackage
---@param ragdoll System.Xml.Linq.XElement
---@param config? System.Xml.Linq.XElement
---@param animations? userdata | (fun(): Barotrauma.AnimationParams)
---@return System.Boolean
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.CreateCharacter(name, mainFolder, isHumanoid, contentPackage, ragdoll, config, animations) end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.ShowWearables() end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.HideWearables() end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.CreateGUI() end

---@private
---@param toggleSize Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.CreateMinorModesPanel(toggleSize) end

---@private
---@param toggleSize Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.CreateModesPanel(toggleSize) end

---@private
---@param toggle Barotrauma.GUITickBox
---@param value System.Boolean
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.SetToggle(toggle, value) end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.CreateButtonsPanel() end

---@private
---@param toggleSize Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.CreateOptionsPanel(toggleSize) end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.CreateContextualControls() end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.CreateCharacterSelectionPanel() end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.CreateFileEditPanel() end

function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.PrepareCharacterCopy() end

---@private
---@return Barotrauma.CharacterParams
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.get_CharacterParams() end

---@private
---@return userdata | { [System.Int32]: Barotrauma.AnimationParams } | (fun(): Barotrauma.AnimationParams)
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.get_AnimParams() end

---@private
---@return Barotrauma.AnimationParams
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.get_CurrentAnimation() end

---@private
---@return Barotrauma.RagdollParams
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.get_RagdollParams() end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.ResetParamsEditor() end

---@private
---@overload fun(name: Barotrauma.Identifier, value: System.Object)
---@param name System.String
---@param value System.Object
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.TryUpdateAnimParam(name, value) end

---@private
---@overload fun(name: Barotrauma.Identifier, value: System.Object)
---@param name System.String
---@param value System.Object
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.TryUpdateRagdollParam(name, value) end

---@private
---@param editableParams Barotrauma.EditableParams
---@param name Barotrauma.Identifier
---@param value System.Object
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.TryUpdateParam(editableParams, name, value) end

---@private
---@overload fun(joint: Barotrauma.LimbJoint, name: Barotrauma.Identifier, value: System.Object)
---@param joint Barotrauma.LimbJoint
---@param name System.String
---@param value System.Object
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.TryUpdateJointParam(joint, name, value) end

---@private
---@overload fun(limb: Barotrauma.Limb, name: Barotrauma.Identifier, value: System.Object)
---@param limb Barotrauma.Limb
---@param name System.String
---@param value System.Object
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.TryUpdateLimbParam(limb, name, value) end

---@private
---@param ragdollSubParams Barotrauma.RagdollParams.SubParam
---@param name Barotrauma.Identifier
---@param value System.Object
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.TryUpdateSubParam(ragdollSubParams, name, value) end

---@private
---@overload fun(p: Microsoft.Xna.Framework.Vector2): Microsoft.Xna.Framework.Vector2
---@param x System.Single
---@param y System.Single
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.ScreenToSim(x, y) end

---@private
---@overload fun(p: Microsoft.Xna.Framework.Vector2): Microsoft.Xna.Framework.Vector2
---@param x System.Single
---@param y System.Single
---@return Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.SimToScreen(x, y) end

---@private
---@param limb1 Barotrauma.Limb
---@param limb2 Barotrauma.Limb
---@param joint1 Barotrauma.LimbJoint
---@param joint2 Barotrauma.LimbJoint
---@return System.Boolean
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.IsMatchingLimb(limb1, limb2, joint1, joint2) end

---@private
---@param limbJoint Barotrauma.LimbJoint
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.ValidateJoint(limbJoint) end

---@private
---@param targetPos Microsoft.Xna.Framework.Vector2
---@param filter? fun(arg: Barotrauma.Limb): System.Boolean
---@return Barotrauma.Limb
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.GetClosestLimbOnRagdoll(targetPos, filter) end

---@private
---@param targetPos Microsoft.Xna.Framework.Vector2
---@param filter? fun(arg: Barotrauma.Limb): System.Boolean
---@return Barotrauma.Limb
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.GetClosestLimbOnSpritesheet(targetPos, filter) end

---@private
---@param limb Barotrauma.Limb
---@return Microsoft.Xna.Framework.Rectangle
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.GetLimbSpritesheetRect(limb) end

---@private
---@param limb Barotrauma.Limb
---@param newRect Microsoft.Xna.Framework.Rectangle
---@param resize System.Boolean
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.UpdateSourceRect(limb, newRect, resize) end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.CalculateSpritesheetZoom() end

---@private
---@param limb Barotrauma.Limb
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.HandleLimbSelection(limb) end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.OpenDoors() end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.SaveSnapshot() end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleJointCreationMode() end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleLimbCreationMode() end

---@private
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param deltaTime System.Single
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.DrawAnimationControls(spriteBatch, deltaTime) end

---@private
---@param limb Barotrauma.Limb
---@return Microsoft.Xna.Framework.Vector2[]
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.GetLimbPhysicRect(limb) end

---@private
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.DrawLimbEditor(spriteBatch) end

---@private
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param deltaTime System.Single
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.DrawRagdoll(spriteBatch, deltaTime) end

---@private
---@param limb Barotrauma.Limb
---@param updateAction fun(obj: Barotrauma.Limb)
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.UpdateOtherLimbs(limb, updateAction) end

---@private
---@param limb Barotrauma.Limb
---@param updateAction fun(arg1: Barotrauma.Limb, arg2: Barotrauma.LimbJoint)
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.UpdateOtherJoints(limb, updateAction) end

---@private
---@param limbType System.String
---@param isLeft System.Boolean
---@return Barotrauma.Limb
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.GetOtherLimb(limbType, isLeft) end

---@private
---@param limb Barotrauma.Limb
---@return userdata | (fun(): Barotrauma.Limb)
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.GetOtherLimbs(limb) end

---@private
---@return userdata | { [System.Int32]: Microsoft.Xna.Framework.Graphics.Texture2D } | (fun(): Microsoft.Xna.Framework.Graphics.Texture2D)
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.get_Textures() end

---@private
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.CreateTextures() end

---@private
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param deltaTime System.Single
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.DrawSpritesheetEditor(spriteBatch, deltaTime) end

---@private
---@param sprite Barotrauma.Sprite
---@return System.Int32
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.GetTextureHeight(sprite) end

---@private
---@param sprite Barotrauma.Sprite
---@return System.Int32
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.GetOffsetY(sprite) end

---@private
---@param l Barotrauma.Limb
---@param size Microsoft.Xna.Framework.Vector2
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.RecalculateCollider(l, size) end

---@private
---@param l Barotrauma.Limb
---@param newOrigin? Microsoft.Xna.Framework.Vector2|nil
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.RecalculateOrigin(l, newOrigin) end

---@private
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param deltaTime System.Single
---@param limb Barotrauma.Limb
---@param limbScreenPos Microsoft.Xna.Framework.Vector2
---@param spriteRotation? System.Single
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.DrawSpritesheetJointEditor(spriteBatch, deltaTime, limb, limbScreenPos, spriteRotation) end

---@private
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param limb Barotrauma.Limb
---@param joint Barotrauma.LimbJoint
---@param drawPos Microsoft.Xna.Framework.Vector2
---@param autoFreeze System.Boolean
---@param allowPairEditing System.Boolean
---@param holdPosition System.Boolean
---@param rotationOffset? System.Single
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.DrawJointLimitWidgets(spriteBatch, limb, joint, drawPos, autoFreeze, allowPairEditing, holdPosition, rotationOffset) end

---@private
---@param key Microsoft.Xna.Framework.Input.Keys
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.Nudge(key) end

---@private
---@param value System.Boolean
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.SetSpritesheetRestriction(value) end

---@private
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param drawPos Microsoft.Xna.Framework.Vector2
---@param value System.Single
---@param toolTip Barotrauma.LocalizedString
---@param color Microsoft.Xna.Framework.Color
---@param onClick fun(obj: System.Single)
---@param circleRadius? System.Single
---@param widgetSize? System.Int32
---@param rotationOffset? System.Single
---@param clockWise? System.Boolean
---@param displayAngle? System.Boolean
---@param autoFreeze? System.Boolean|nil
---@param wrapAnglePi? System.Boolean
---@param holdPosition? System.Boolean
---@param rounding? System.Int32
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.DrawRadialWidget(spriteBatch, drawPos, value, toolTip, color, onClick, circleRadius, widgetSize, rotationOffset, clockWise, displayAngle, autoFreeze, wrapAnglePi, holdPosition, rounding) end

---@private
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param drawPos Microsoft.Xna.Framework.Vector2
---@param widgetType Barotrauma.CharacterEditor.CharacterEditorScreen.WidgetType
---@param size System.Int32
---@param color Microsoft.Xna.Framework.Color
---@param toolTip Barotrauma.LocalizedString
---@param onPressed fun()
---@param autoFreeze? System.Boolean|nil
---@param holdPosition? System.Boolean
---@param onHovered? fun()
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.DrawWidget(spriteBatch, drawPos, widgetType, size, color, toolTip, onPressed, autoFreeze, holdPosition, onHovered) end

---@private
---@param name System.String
---@param innerColor Microsoft.Xna.Framework.Color
---@param outerColor? Microsoft.Xna.Framework.Color|nil
---@param size? System.Int32
---@param sizeMultiplier? System.Single
---@param shape? Barotrauma.WidgetShape
---@param initMethod? fun(obj: Barotrauma.Widget)
---@return Barotrauma.Widget
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.GetAnimationWidget(name, innerColor, outerColor, size, sizeMultiplier, shape, initMethod) end

---@private
---@param id System.String
---@param joint Barotrauma.LimbJoint
---@param linkedId? System.String
---@return Barotrauma.Widget
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.GetJointSelectionWidget(id, joint, linkedId) end

---@private
---@param ID System.String
---@param limb Barotrauma.Limb
---@param size? System.Int32
---@param shape? Barotrauma.WidgetShape
---@param initMethod? fun(obj: Barotrauma.Widget)
---@return Barotrauma.Widget
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.GetLimbEditWidget(ID, limb, size, shape, initMethod) end

---@overload fun(): Barotrauma.CharacterEditor.CharacterEditorScreen
---@return Barotrauma.CharacterEditor.CharacterEditorScreen
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen() end

---@class Barotrauma.CharacterEditor.Wizard: System.Object
---@field IsCopy System.Boolean
---@field SourceCharacter Barotrauma.CharacterParams
---@field SourceRagdoll Barotrauma.RagdollParams
---@field SourceAnimations userdata | (fun(): Barotrauma.AnimationParams)
---@field Instance Barotrauma.CharacterEditor.Wizard
---@field private name Barotrauma.Identifier
---@field private isHumanoid System.Boolean
---@field private canEnterSubmarine Barotrauma.CanEnterSubmarine
---@field private canWalk System.Boolean
---@field private texturePath System.String
---@field private xmlPath System.String
---@field private contentPackage Barotrauma.ContentPackage
---@field private limbXElements userdata | { [System.String]: System.Xml.Linq.XElement } | (fun(): userdata)
---@field private limbGUIElements userdata | { [System.Int32]: Barotrauma.GUIComponent } | (fun(): Barotrauma.GUIComponent)
---@field private jointXElements userdata | { [System.Int32]: System.Xml.Linq.XElement } | (fun(): System.Xml.Linq.XElement)
---@field private jointGUIElements userdata | { [System.Int32]: Barotrauma.GUIComponent } | (fun(): Barotrauma.GUIComponent)
---@field private activeView Barotrauma.CharacterEditor.Wizard.View
---@field private currentTab Barotrauma.CharacterEditor.Wizard.Tab
---@field instance Barotrauma.CharacterEditor.Wizard
CS.Barotrauma.CharacterEditor.Wizard = {}

---@param character Barotrauma.CharacterParams
---@param ragdoll Barotrauma.RagdollParams
---@param animations userdata | (fun(): Barotrauma.AnimationParams)
function CS.Barotrauma.CharacterEditor.Wizard.CopyExisting(character, ragdoll, animations) end

---@return Barotrauma.CharacterEditor.Wizard
function CS.Barotrauma.CharacterEditor.Wizard.get_Instance() end

---@param text System.String
---@return Barotrauma.LocalizedString
function CS.Barotrauma.CharacterEditor.Wizard.GetCharacterEditorTranslation(text) end

function CS.Barotrauma.CharacterEditor.Wizard.Reset() end

---@param tab Barotrauma.CharacterEditor.Wizard.Tab
function CS.Barotrauma.CharacterEditor.Wizard.SelectTab(tab) end

function CS.Barotrauma.CharacterEditor.Wizard.AddToGUIUpdateList() end

---@param ragdollElement System.Xml.Linq.XElement
---@param characterElement? System.Xml.Linq.XElement
---@param animations? userdata | (fun(): Barotrauma.AnimationParams)
function CS.Barotrauma.CharacterEditor.Wizard.CreateCharacter(ragdollElement, characterElement, animations) end

---@return Barotrauma.CharacterEditor.Wizard
function CS.Barotrauma.CharacterEditor.Wizard() end

---@enum Barotrauma.CharacterEditor.CharacterEditorScreen.JointCreationMode
CS.Barotrauma.CharacterEditor.CharacterEditorScreen.JointCreationMode = {
    None = 0,
    Select = 1,
    Create = 2
}

---@class Barotrauma.CharacterEditor.CharacterEditorScreen.WallGroup: System.Object
---@field Entities userdata | { [System.Int32]: Barotrauma.MapEntity } | (fun(): Barotrauma.MapEntity)
CS.Barotrauma.CharacterEditor.CharacterEditorScreen.WallGroup = {}

---@return Barotrauma.CharacterEditor.CharacterEditorScreen.WallGroup
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.WallGroup.Clone() end

---@param entities userdata | { [System.Int32]: Barotrauma.MapEntity } | (fun(): Barotrauma.MapEntity)
---@return Barotrauma.CharacterEditor.CharacterEditorScreen.WallGroup
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.WallGroup(entities) end

---@enum Barotrauma.CharacterEditor.CharacterEditorScreen.Direction
CS.Barotrauma.CharacterEditor.CharacterEditorScreen.Direction = {
    Left = 0,
    Right = 1
}

---@class Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleButton: System.Object
---@field OpenState System.Single
---@field IsHidden System.Boolean
---@field dir Barotrauma.CharacterEditor.CharacterEditorScreen.Direction
---@field toggleButton Barotrauma.GUIButton
---@field private isHidden System.Boolean
CS.Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleButton = {}

---@return System.Boolean
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleButton.get_IsHidden() end

---@param value System.Boolean
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleButton.set_IsHidden(value) end

function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleButton.RefreshToggleButtonState() end

---@param deltaTime System.Single
---@param hiddenPos Microsoft.Xna.Framework.Vector2
---@param panel Barotrauma.RectTransform
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleButton.UpdateOpenState(deltaTime, hiddenPos, panel) end

---@param rectT Barotrauma.RectTransform
---@param dir Barotrauma.CharacterEditor.CharacterEditorScreen.Direction
---@return Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleButton
function CS.Barotrauma.CharacterEditor.CharacterEditorScreen.ToggleButton(rectT, dir) end

---@enum Barotrauma.CharacterEditor.CharacterEditorScreen.WidgetType
CS.Barotrauma.CharacterEditor.CharacterEditorScreen.WidgetType = {
    Rectangle = 0,
    Circle = 1
}

---@enum Barotrauma.CharacterEditor.Wizard.Tab
CS.Barotrauma.CharacterEditor.Wizard.Tab = {
    None = 0,
    Character = 1,
    Ragdoll = 2
}

---@class Barotrauma.CharacterEditor.Wizard.CharacterView: Barotrauma.CharacterEditor.Wizard.View
---@field private instance Barotrauma.CharacterEditor.Wizard.CharacterView
CS.Barotrauma.CharacterEditor.Wizard.CharacterView = {}

---@return Barotrauma.CharacterEditor.Wizard.CharacterView
function CS.Barotrauma.CharacterEditor.Wizard.CharacterView.Get() end

function CS.Barotrauma.CharacterEditor.Wizard.CharacterView.Release() end

---@protected
---@return Barotrauma.GUIMessageBox
function CS.Barotrauma.CharacterEditor.Wizard.CharacterView.Create() end

---@return Barotrauma.CharacterEditor.Wizard.CharacterView
function CS.Barotrauma.CharacterEditor.Wizard.CharacterView() end

---@class Barotrauma.CharacterEditor.Wizard.RagdollView: Barotrauma.CharacterEditor.Wizard.View
---@field private instance Barotrauma.CharacterEditor.Wizard.RagdollView
CS.Barotrauma.CharacterEditor.Wizard.RagdollView = {}

---@return Barotrauma.CharacterEditor.Wizard.RagdollView
function CS.Barotrauma.CharacterEditor.Wizard.RagdollView.Get() end

function CS.Barotrauma.CharacterEditor.Wizard.RagdollView.Release() end

---@protected
---@return Barotrauma.GUIMessageBox
function CS.Barotrauma.CharacterEditor.Wizard.RagdollView.Create() end

---@private
---@param parent Barotrauma.RectTransform
---@param elementSize System.Int32
---@param id System.Int32
---@param name? System.String
---@param limbType? Barotrauma.LimbType
---@param sourceRect? Microsoft.Xna.Framework.Rectangle|nil
function CS.Barotrauma.CharacterEditor.Wizard.RagdollView.CreateLimbGUIElement(parent, elementSize, id, name, limbType, sourceRect) end

---@private
---@param parent Barotrauma.RectTransform
---@param elementSize System.Int32
---@param id1? System.Int32
---@param id2? System.Int32
---@param anchor1? Microsoft.Xna.Framework.Vector2|nil
---@param anchor2? Microsoft.Xna.Framework.Vector2|nil
---@param jointName? System.String
function CS.Barotrauma.CharacterEditor.Wizard.RagdollView.CreateJointGUIElement(parent, elementSize, id1, id2, anchor1, anchor2, jointName) end

---@return Barotrauma.CharacterEditor.Wizard.RagdollView
function CS.Barotrauma.CharacterEditor.Wizard.RagdollView() end

---@class Barotrauma.CharacterEditor.Wizard.View: System.Object
---@field IsCopy System.Boolean
---@field SourceAnimations userdata | (fun(): Barotrauma.AnimationParams)
---@field SourceCharacter Barotrauma.CharacterParams
---@field SourceRagdoll Barotrauma.RagdollParams
---@field Name Barotrauma.Identifier
---@field IsHumanoid System.Boolean
---@field CanEnterSubmarine Barotrauma.CanEnterSubmarine
---@field CanWalk System.Boolean
---@field ContentPackage Barotrauma.ContentPackage
---@field TexturePath System.String
---@field XMLPath System.String
---@field LimbXElements userdata | { [System.String]: System.Xml.Linq.XElement } | (fun(): userdata)
---@field LimbGUIElements userdata | { [System.Int32]: Barotrauma.GUIComponent } | (fun(): Barotrauma.GUIComponent)
---@field JointXElements userdata | { [System.Int32]: System.Xml.Linq.XElement } | (fun(): System.Xml.Linq.XElement)
---@field JointGUIElements userdata | { [System.Int32]: Barotrauma.GUIComponent } | (fun(): Barotrauma.GUIComponent)
---@field Box Barotrauma.GUIMessageBox
---@field private box Barotrauma.GUIMessageBox
CS.Barotrauma.CharacterEditor.Wizard.View = {}

---@return System.Boolean
function CS.Barotrauma.CharacterEditor.Wizard.View.get_IsCopy() end

---@return userdata | (fun(): Barotrauma.AnimationParams)
function CS.Barotrauma.CharacterEditor.Wizard.View.get_SourceAnimations() end

---@return Barotrauma.CharacterParams
function CS.Barotrauma.CharacterEditor.Wizard.View.get_SourceCharacter() end

---@return Barotrauma.RagdollParams
function CS.Barotrauma.CharacterEditor.Wizard.View.get_SourceRagdoll() end

---@return Barotrauma.Identifier
function CS.Barotrauma.CharacterEditor.Wizard.View.get_Name() end

---@param value Barotrauma.Identifier
function CS.Barotrauma.CharacterEditor.Wizard.View.set_Name(value) end

---@return System.Boolean
function CS.Barotrauma.CharacterEditor.Wizard.View.get_IsHumanoid() end

---@param value System.Boolean
function CS.Barotrauma.CharacterEditor.Wizard.View.set_IsHumanoid(value) end

---@return Barotrauma.CanEnterSubmarine
function CS.Barotrauma.CharacterEditor.Wizard.View.get_CanEnterSubmarine() end

---@param value Barotrauma.CanEnterSubmarine
function CS.Barotrauma.CharacterEditor.Wizard.View.set_CanEnterSubmarine(value) end

---@return System.Boolean
function CS.Barotrauma.CharacterEditor.Wizard.View.get_CanWalk() end

---@param value System.Boolean
function CS.Barotrauma.CharacterEditor.Wizard.View.set_CanWalk(value) end

---@return Barotrauma.ContentPackage
function CS.Barotrauma.CharacterEditor.Wizard.View.get_ContentPackage() end

---@param value Barotrauma.ContentPackage
function CS.Barotrauma.CharacterEditor.Wizard.View.set_ContentPackage(value) end

---@return System.String
function CS.Barotrauma.CharacterEditor.Wizard.View.get_TexturePath() end

---@param value System.String
function CS.Barotrauma.CharacterEditor.Wizard.View.set_TexturePath(value) end

---@return System.String
function CS.Barotrauma.CharacterEditor.Wizard.View.get_XMLPath() end

---@param value System.String
function CS.Barotrauma.CharacterEditor.Wizard.View.set_XMLPath(value) end

---@return userdata | { [System.String]: System.Xml.Linq.XElement } | (fun(): userdata)
function CS.Barotrauma.CharacterEditor.Wizard.View.get_LimbXElements() end

---@param value userdata | { [System.String]: System.Xml.Linq.XElement } | (fun(): userdata)
function CS.Barotrauma.CharacterEditor.Wizard.View.set_LimbXElements(value) end

---@return userdata | { [System.Int32]: Barotrauma.GUIComponent } | (fun(): Barotrauma.GUIComponent)
function CS.Barotrauma.CharacterEditor.Wizard.View.get_LimbGUIElements() end

---@param value userdata | { [System.Int32]: Barotrauma.GUIComponent } | (fun(): Barotrauma.GUIComponent)
function CS.Barotrauma.CharacterEditor.Wizard.View.set_LimbGUIElements(value) end

---@return userdata | { [System.Int32]: System.Xml.Linq.XElement } | (fun(): System.Xml.Linq.XElement)
function CS.Barotrauma.CharacterEditor.Wizard.View.get_JointXElements() end

---@param value userdata | { [System.Int32]: System.Xml.Linq.XElement } | (fun(): System.Xml.Linq.XElement)
function CS.Barotrauma.CharacterEditor.Wizard.View.set_JointXElements(value) end

---@return userdata | { [System.Int32]: Barotrauma.GUIComponent } | (fun(): Barotrauma.GUIComponent)
function CS.Barotrauma.CharacterEditor.Wizard.View.get_JointGUIElements() end

---@param value userdata | { [System.Int32]: Barotrauma.GUIComponent } | (fun(): Barotrauma.GUIComponent)
function CS.Barotrauma.CharacterEditor.Wizard.View.set_JointGUIElements(value) end

---@return Barotrauma.GUIMessageBox
function CS.Barotrauma.CharacterEditor.Wizard.View.get_Box() end

---@protected
---@return Barotrauma.GUIMessageBox
function CS.Barotrauma.CharacterEditor.Wizard.View.Create() end

function CS.Barotrauma.CharacterEditor.Wizard.View.Release() end

---@protected
function CS.Barotrauma.CharacterEditor.Wizard.View.ParseLimbsFromGUIElements() end

---@protected
function CS.Barotrauma.CharacterEditor.Wizard.View.ParseJointsFromGUIElements() end

---@protected
---@param limbName System.String
---@return Barotrauma.LimbType
function CS.Barotrauma.CharacterEditor.Wizard.View.ParseLimbType(limbName) end

---@param elements userdata | (fun(): System.Xml.Linq.XElement)
---@param isHumanoid System.Boolean
---@param missingType System.String
---@return System.Boolean
function CS.Barotrauma.CharacterEditor.Wizard.View.IsValid(elements, isHumanoid, missingType) end

---@param elements userdata | (fun(): System.Xml.Linq.XElement)
---@param type System.String
---@return System.Boolean
function CS.Barotrauma.CharacterEditor.Wizard.View.HasAtLeastOneLimbOfType(elements, type) end

---@param elements userdata | (fun(): System.Xml.Linq.XElement)
---@param type System.String
---@return System.Boolean
function CS.Barotrauma.CharacterEditor.Wizard.View.HasOnlyOneLimbOfType(elements, type) end

---@private
---@param element System.Xml.Linq.XElement
---@param type System.String
---@return System.Boolean
function CS.Barotrauma.CharacterEditor.Wizard.View.IsType(element, type) end

---@protected
---@return Barotrauma.CharacterEditor.Wizard.View
function CS.Barotrauma.CharacterEditor.Wizard.View() end


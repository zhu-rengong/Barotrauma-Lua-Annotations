---@meta
---Auto-generated from Barotrauma
---Namespace: EventInput

---@class EventInput.CharacterEventArgs: System.ValueType
---@field Character System.Char
---@field Param System.Int64
---@field RepeatCount System.Int64
---@field ExtendedKey System.Boolean
---@field AltPressed System.Boolean
---@field PreviousState System.Boolean
---@field TransitionState System.Boolean
CS.EventInput.CharacterEventArgs = {}

---@return System.Int64
function CS.EventInput.CharacterEventArgs.get_RepeatCount() end

---@return System.Boolean
function CS.EventInput.CharacterEventArgs.get_ExtendedKey() end

---@return System.Boolean
function CS.EventInput.CharacterEventArgs.get_AltPressed() end

---@return System.Boolean
function CS.EventInput.CharacterEventArgs.get_PreviousState() end

---@return System.Boolean
function CS.EventInput.CharacterEventArgs.get_TransitionState() end

do
---@param Character System.Char
---@param Param System.Int64
---@return EventInput.CharacterEventArgs
local __ctor = function(Character, Param) end
CS.EventInput.CharacterEventArgs = __ctor
CS.EventInput.CharacterEventArgs.__new = __ctor
end

---@class EventInput.KeyEventArgs: System.ValueType
---@field KeyCode Microsoft.Xna.Framework.Input.Keys
---@field Character System.Char
CS.EventInput.KeyEventArgs = {}

do
---@param KeyCode Microsoft.Xna.Framework.Input.Keys
---@param Character System.Char
---@return EventInput.KeyEventArgs
local __ctor = function(KeyCode, Character) end
CS.EventInput.KeyEventArgs = __ctor
CS.EventInput.KeyEventArgs.__new = __ctor
end

---@class EventInput.CharEnteredHandler: System.MulticastDelegate
CS.EventInput.CharEnteredHandler = {}

---@param sender System.Object
---@param e EventInput.CharacterEventArgs
function CS.EventInput.CharEnteredHandler.Invoke(sender, e) end

---@param sender System.Object
---@param e EventInput.CharacterEventArgs
---@param callback fun(ar: System.IAsyncResult)
---@param object System.Object
---@return System.IAsyncResult
function CS.EventInput.CharEnteredHandler.BeginInvoke(sender, e, callback, object) end

---@param result System.IAsyncResult
function CS.EventInput.CharEnteredHandler.EndInvoke(result) end

do
---@param object System.Object
---@param method System.IntPtr
---@return EventInput.CharEnteredHandler
local __ctor = function(object, method) end
CS.EventInput.CharEnteredHandler = __ctor
CS.EventInput.CharEnteredHandler.__new = __ctor
end

---@class EventInput.KeyEventHandler: System.MulticastDelegate
CS.EventInput.KeyEventHandler = {}

---@param sender System.Object
---@param e EventInput.KeyEventArgs
function CS.EventInput.KeyEventHandler.Invoke(sender, e) end

---@param sender System.Object
---@param e EventInput.KeyEventArgs
---@param callback fun(ar: System.IAsyncResult)
---@param object System.Object
---@return System.IAsyncResult
function CS.EventInput.KeyEventHandler.BeginInvoke(sender, e, callback, object) end

---@param result System.IAsyncResult
function CS.EventInput.KeyEventHandler.EndInvoke(result) end

do
---@param object System.Object
---@param method System.IntPtr
---@return EventInput.KeyEventHandler
local __ctor = function(object, method) end
CS.EventInput.KeyEventHandler = __ctor
CS.EventInput.KeyEventHandler.__new = __ctor
end

---@class EventInput.EditingTextHandler: System.MulticastDelegate
CS.EventInput.EditingTextHandler = {}

---@param sender System.Object
---@param e Microsoft.Xna.Framework.TextEditingEventArgs
function CS.EventInput.EditingTextHandler.Invoke(sender, e) end

---@param sender System.Object
---@param e Microsoft.Xna.Framework.TextEditingEventArgs
---@param callback fun(ar: System.IAsyncResult)
---@param object System.Object
---@return System.IAsyncResult
function CS.EventInput.EditingTextHandler.BeginInvoke(sender, e, callback, object) end

---@param result System.IAsyncResult
function CS.EventInput.EditingTextHandler.EndInvoke(result) end

do
---@param object System.Object
---@param method System.IntPtr
---@return EventInput.EditingTextHandler
local __ctor = function(object, method) end
CS.EventInput.EditingTextHandler = __ctor
CS.EventInput.EditingTextHandler.__new = __ctor
end

---@class EventInput.EventInput: System.Object
---@field private initialized System.Boolean
CS.EventInput.EventInput = {}

---@param window Microsoft.Xna.Framework.GameWindow
function CS.EventInput.EventInput.Initialize(window) end

---@private
---@param sender System.Object
---@param e Microsoft.Xna.Framework.TextInputEventArgs
function CS.EventInput.EventInput.ReceiveInput(sender, e) end

---@private
---@param sender System.Object
---@param e Microsoft.Xna.Framework.TextInputEventArgs
function CS.EventInput.EventInput.ReceiveKeyDown(sender, e) end

---@private
---@param sender System.Object
---@param e Microsoft.Xna.Framework.TextEditingEventArgs
function CS.EventInput.EventInput.ReceiveTextEditing(sender, e) end

---@param character System.Char
function CS.EventInput.EventInput.OnCharEntered(character) end


---@class EventInput.IKeyboardSubscriber
---@field Selected System.Boolean
CS.EventInput.IKeyboardSubscriber = {}

---@overload fun(text: System.String)
---@param inputChar System.Char
function CS.EventInput.IKeyboardSubscriber.ReceiveTextInput(inputChar) end

---@param command System.Char
function CS.EventInput.IKeyboardSubscriber.ReceiveCommandInput(command) end

---@param key Microsoft.Xna.Framework.Input.Keys
function CS.EventInput.IKeyboardSubscriber.ReceiveSpecialInput(key) end

---@param text System.String
---@param start System.Int32
---@param length System.Int32
function CS.EventInput.IKeyboardSubscriber.ReceiveEditingInput(text, start, length) end

---@return System.Boolean
function CS.EventInput.IKeyboardSubscriber.get_Selected() end

---@param value System.Boolean
function CS.EventInput.IKeyboardSubscriber.set_Selected(value) end


---@class EventInput.KeyboardDispatcher: System.Object
---@field Subscriber EventInput.IKeyboardSubscriber
---@field private _subscriber EventInput.IKeyboardSubscriber
CS.EventInput.KeyboardDispatcher = {}

---@param sender System.Object
---@param e Microsoft.Xna.Framework.TextEditingEventArgs
function CS.EventInput.KeyboardDispatcher.EventInput_TextEditing(sender, e) end

---@param sender System.Object
---@param e EventInput.KeyEventArgs
function CS.EventInput.KeyboardDispatcher.EventInput_KeyDown(sender, e) end

---@private
---@param sender System.Object
---@param e EventInput.CharacterEventArgs
function CS.EventInput.KeyboardDispatcher.EventInput_CharEntered(sender, e) end

---@return EventInput.IKeyboardSubscriber
function CS.EventInput.KeyboardDispatcher.get_Subscriber() end

---@param value EventInput.IKeyboardSubscriber
function CS.EventInput.KeyboardDispatcher.set_Subscriber(value) end

do
---@param window Microsoft.Xna.Framework.GameWindow
---@return EventInput.KeyboardDispatcher
local __ctor = function(window) end
CS.EventInput.KeyboardDispatcher = __ctor
CS.EventInput.KeyboardDispatcher.__new = __ctor
end


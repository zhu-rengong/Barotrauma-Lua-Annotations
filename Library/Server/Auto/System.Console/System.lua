---@meta
---Auto-generated from System.Console
---Namespace: System

---@class System.Console: System.Object
---@field In System.IO.TextReader
---@field InputEncoding System.Text.Encoding
---@field OutputEncoding System.Text.Encoding
---@field KeyAvailable System.Boolean
---@field Out System.IO.TextWriter
---@field Error System.IO.TextWriter
---@field IsInputRedirected System.Boolean
---@field IsOutputRedirected System.Boolean
---@field IsErrorRedirected System.Boolean
---@field CursorSize System.Int32
---@field NumberLock System.Boolean
---@field CapsLock System.Boolean
---@field BackgroundColor System.ConsoleColor
---@field ForegroundColor System.ConsoleColor
---@field BufferWidth System.Int32
---@field BufferHeight System.Int32
---@field WindowLeft System.Int32
---@field WindowTop System.Int32
---@field WindowWidth System.Int32
---@field WindowHeight System.Int32
---@field LargestWindowWidth System.Int32
---@field LargestWindowHeight System.Int32
---@field CursorVisible System.Boolean
---@field CursorLeft System.Int32
---@field CursorTop System.Int32
---@field Title System.String
---@field TreatControlCAsInput System.Boolean
---@field private s_syncObject System.Object
---@field private s_in System.IO.TextReader
---@field private s_out System.IO.TextWriter
---@field private s_error System.IO.TextWriter
---@field private s_inputEncoding System.Text.Encoding
---@field private s_outputEncoding System.Text.Encoding
---@field private s_isOutTextWriterRedirected System.Boolean
---@field private s_isErrorTextWriterRedirected System.Boolean
---@field private s_cancelCallbacks fun(sender: System.Object, e: System.ConsoleCancelEventArgs)
---@field private s_sigIntRegistration System.Runtime.InteropServices.PosixSignalRegistration
---@field private s_sigQuitRegistration System.Runtime.InteropServices.PosixSignalRegistration
---@field private _isStdInRedirected userdata
---@field private _isStdOutRedirected userdata
---@field private _isStdErrRedirected userdata
CS.System.Console = {}

---@return System.IO.TextReader
function CS.System.Console.get_In() end

---@return System.Text.Encoding
function CS.System.Console.get_InputEncoding() end

---@param value System.Text.Encoding
function CS.System.Console.set_InputEncoding(value) end

---@return System.Text.Encoding
function CS.System.Console.get_OutputEncoding() end

---@param value System.Text.Encoding
function CS.System.Console.set_OutputEncoding(value) end

---@return System.Boolean
function CS.System.Console.get_KeyAvailable() end

---@overload fun(intercept: System.Boolean): System.ConsoleKeyInfo
---@return System.ConsoleKeyInfo
function CS.System.Console.ReadKey() end

---@return System.IO.TextWriter
function CS.System.Console.get_Out() end

---@return System.IO.TextWriter
function CS.System.Console.get_Error() end

---@private
---@param outputStream System.IO.Stream
---@return System.IO.TextWriter
function CS.System.Console.CreateOutputWriter(outputStream) end

---@return System.Boolean
function CS.System.Console.get_IsInputRedirected() end

---@return System.Boolean
function CS.System.Console.get_IsOutputRedirected() end

---@return System.Boolean
function CS.System.Console.get_IsErrorRedirected() end

---@return System.Int32
function CS.System.Console.get_CursorSize() end

---@param value System.Int32
function CS.System.Console.set_CursorSize(value) end

---@return System.Boolean
function CS.System.Console.get_NumberLock() end

---@return System.Boolean
function CS.System.Console.get_CapsLock() end

---@return System.ConsoleColor
function CS.System.Console.get_BackgroundColor() end

---@param value System.ConsoleColor
function CS.System.Console.set_BackgroundColor(value) end

---@return System.ConsoleColor
function CS.System.Console.get_ForegroundColor() end

---@param value System.ConsoleColor
function CS.System.Console.set_ForegroundColor(value) end

function CS.System.Console.ResetColor() end

---@return System.Int32
function CS.System.Console.get_BufferWidth() end

---@param value System.Int32
function CS.System.Console.set_BufferWidth(value) end

---@return System.Int32
function CS.System.Console.get_BufferHeight() end

---@param value System.Int32
function CS.System.Console.set_BufferHeight(value) end

---@param width System.Int32
---@param height System.Int32
function CS.System.Console.SetBufferSize(width, height) end

---@return System.Int32
function CS.System.Console.get_WindowLeft() end

---@param value System.Int32
function CS.System.Console.set_WindowLeft(value) end

---@return System.Int32
function CS.System.Console.get_WindowTop() end

---@param value System.Int32
function CS.System.Console.set_WindowTop(value) end

---@return System.Int32
function CS.System.Console.get_WindowWidth() end

---@param value System.Int32
function CS.System.Console.set_WindowWidth(value) end

---@return System.Int32
function CS.System.Console.get_WindowHeight() end

---@param value System.Int32
function CS.System.Console.set_WindowHeight(value) end

---@param left System.Int32
---@param top System.Int32
function CS.System.Console.SetWindowPosition(left, top) end

---@param width System.Int32
---@param height System.Int32
function CS.System.Console.SetWindowSize(width, height) end

---@return System.Int32
function CS.System.Console.get_LargestWindowWidth() end

---@return System.Int32
function CS.System.Console.get_LargestWindowHeight() end

---@return System.Boolean
function CS.System.Console.get_CursorVisible() end

---@param value System.Boolean
function CS.System.Console.set_CursorVisible(value) end

---@return System.Int32
function CS.System.Console.get_CursorLeft() end

---@param value System.Int32
function CS.System.Console.set_CursorLeft(value) end

---@return System.Int32
function CS.System.Console.get_CursorTop() end

---@param value System.Int32
function CS.System.Console.set_CursorTop(value) end

---@return userdata
function CS.System.Console.GetCursorPosition() end

---@return System.String
function CS.System.Console.get_Title() end

---@param value System.String
function CS.System.Console.set_Title(value) end

---@overload fun(frequency: System.Int32, duration: System.Int32)
function CS.System.Console.Beep() end

---@overload fun(sourceLeft: System.Int32, sourceTop: System.Int32, sourceWidth: System.Int32, sourceHeight: System.Int32, targetLeft: System.Int32, targetTop: System.Int32, sourceChar: System.Char, sourceForeColor: System.ConsoleColor, sourceBackColor: System.ConsoleColor)
---@param sourceLeft System.Int32
---@param sourceTop System.Int32
---@param sourceWidth System.Int32
---@param sourceHeight System.Int32
---@param targetLeft System.Int32
---@param targetTop System.Int32
function CS.System.Console.MoveBufferArea(sourceLeft, sourceTop, sourceWidth, sourceHeight, targetLeft, targetTop) end

function CS.System.Console.Clear() end

---@param left System.Int32
---@param top System.Int32
function CS.System.Console.SetCursorPosition(left, top) end

---@param value fun(sender: System.Object, e: System.ConsoleCancelEventArgs)
function CS.System.Console.add_CancelKeyPress(value) end

---@param value fun(sender: System.Object, e: System.ConsoleCancelEventArgs)
function CS.System.Console.remove_CancelKeyPress(value) end

---@return System.Boolean
function CS.System.Console.get_TreatControlCAsInput() end

---@param value System.Boolean
function CS.System.Console.set_TreatControlCAsInput(value) end

---@overload fun(bufferSize: System.Int32): System.IO.Stream
---@return System.IO.Stream
function CS.System.Console.OpenStandardInput() end

---@overload fun(bufferSize: System.Int32): System.IO.Stream
---@return System.IO.Stream
function CS.System.Console.OpenStandardOutput() end

---@overload fun(bufferSize: System.Int32): System.IO.Stream
---@return System.IO.Stream
function CS.System.Console.OpenStandardError() end

---@param newIn System.IO.TextReader
function CS.System.Console.SetIn(newIn) end

---@param newOut System.IO.TextWriter
function CS.System.Console.SetOut(newOut) end

---@param newError System.IO.TextWriter
function CS.System.Console.SetError(newError) end

---@return System.Int32
function CS.System.Console.Read() end

---@return System.String
function CS.System.Console.ReadLine() end

---@overload fun(value: System.Boolean)
---@overload fun(value: System.Char)
---@overload fun(buffer: System.Char[])
---@overload fun(buffer: System.Char[], index: System.Int32, count: System.Int32)
---@overload fun(value: System.Decimal)
---@overload fun(value: System.Double)
---@overload fun(value: System.Single)
---@overload fun(value: System.Int32)
---@overload fun(value: System.UInt32)
---@overload fun(value: System.Int64)
---@overload fun(value: System.UInt64)
---@overload fun(value: System.Object)
---@overload fun(value: System.String)
---@overload fun(format: System.String, arg0: System.Object)
---@overload fun(format: System.String, arg0: System.Object, arg1: System.Object)
---@overload fun(format: System.String, arg0: System.Object, arg1: System.Object, arg2: System.Object)
---@overload fun(format: System.String, ...: System.Object)
function CS.System.Console.WriteLine() end

---@overload fun(format: System.String, arg0: System.Object, arg1: System.Object)
---@overload fun(format: System.String, arg0: System.Object, arg1: System.Object, arg2: System.Object)
---@overload fun(format: System.String, ...: System.Object)
---@overload fun(value: System.Boolean)
---@overload fun(value: System.Char)
---@overload fun(buffer: System.Char[])
---@overload fun(buffer: System.Char[], index: System.Int32, count: System.Int32)
---@overload fun(value: System.Double)
---@overload fun(value: System.Decimal)
---@overload fun(value: System.Single)
---@overload fun(value: System.Int32)
---@overload fun(value: System.UInt32)
---@overload fun(value: System.Int64)
---@overload fun(value: System.UInt64)
---@overload fun(value: System.Object)
---@overload fun(value: System.String)
---@param format System.String
---@param arg0 System.Object
function CS.System.Console.Write(format, arg0) end

---@private
---@param ctx System.Runtime.InteropServices.PosixSignalContext
function CS.System.Console.HandlePosixSignal(ctx) end

---@private
---@return System.Console
function CS.System.Console() end


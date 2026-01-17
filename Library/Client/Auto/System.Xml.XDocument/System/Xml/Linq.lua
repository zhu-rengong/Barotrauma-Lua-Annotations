---@meta
---Auto-generated from System.Xml.XDocument
---Namespace: System.Xml.Linq

---@class System.Xml.Linq.XAttribute: System.Xml.Linq.XObject
---@field EmptySequence userdata | (fun(): System.Xml.Linq.XAttribute)
---@field IsNamespaceDeclaration System.Boolean
---@field Name System.Xml.Linq.XName
---@field NextAttribute System.Xml.Linq.XAttribute
---@field NodeType System.Xml.XmlNodeType
---@field PreviousAttribute System.Xml.Linq.XAttribute
---@field Value System.String
---@field package next System.Xml.Linq.XAttribute
---@field package name System.Xml.Linq.XName
---@field package value System.String
CS.System.Xml.Linq.XAttribute = {}

---@return userdata | (fun(): System.Xml.Linq.XAttribute)
function CS.System.Xml.Linq.XAttribute.get_EmptySequence() end

---@return System.Boolean
function CS.System.Xml.Linq.XAttribute.get_IsNamespaceDeclaration() end

---@return System.Xml.Linq.XName
function CS.System.Xml.Linq.XAttribute.get_Name() end

---@return System.Xml.Linq.XAttribute
function CS.System.Xml.Linq.XAttribute.get_NextAttribute() end

---@return System.Xml.XmlNodeType
function CS.System.Xml.Linq.XAttribute.get_NodeType() end

---@return System.Xml.Linq.XAttribute
function CS.System.Xml.Linq.XAttribute.get_PreviousAttribute() end

---@return System.String
function CS.System.Xml.Linq.XAttribute.get_Value() end

---@param value System.String
function CS.System.Xml.Linq.XAttribute.set_Value(value) end

function CS.System.Xml.Linq.XAttribute.Remove() end

---@param value System.Object
function CS.System.Xml.Linq.XAttribute.SetValue(value) end

---@return System.String
function CS.System.Xml.Linq.XAttribute.ToString() end

---@overload fun(attribute: System.Xml.Linq.XAttribute): System.Boolean
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.Boolean|nil
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.Int32
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.Int32|nil
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.UInt32
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.UInt32|nil
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.Int64
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.Int64|nil
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.UInt64
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.UInt64|nil
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.Single
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.Single|nil
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.Double
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.Double|nil
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.Decimal
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.Decimal|nil
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.DateTime
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.DateTime|nil
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.DateTimeOffset
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.DateTimeOffset|nil
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.TimeSpan
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.TimeSpan|nil
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.Guid
---@overload fun(attribute: System.Xml.Linq.XAttribute): System.Guid|nil
---@param attribute System.Xml.Linq.XAttribute
---@return System.String
function CS.System.Xml.Linq.XAttribute.op_Explicit(attribute) end

---@package
---@return System.Int32
function CS.System.Xml.Linq.XAttribute.GetDeepHashCode() end

---@package
---@param ns System.Xml.Linq.XNamespace
---@return System.String
function CS.System.Xml.Linq.XAttribute.GetPrefixOfNamespace(ns) end

---@private
---@param name System.Xml.Linq.XName
---@param value System.String
function CS.System.Xml.Linq.XAttribute.ValidateAttribute(name, value) end

do
---@overload fun(other: System.Xml.Linq.XAttribute): System.Xml.Linq.XAttribute
---@param name System.Xml.Linq.XName
---@param value System.Object
---@return System.Xml.Linq.XAttribute
local __ctor = function(name, value) end
CS.System.Xml.Linq.XAttribute = __ctor
CS.System.Xml.Linq.XAttribute.__new = __ctor
end

---@class System.Xml.Linq.XContainer: System.Xml.Linq.XNode
---@field FirstNode System.Xml.Linq.XNode
---@field LastNode System.Xml.Linq.XNode
---@field package content System.Object
CS.System.Xml.Linq.XContainer = {}

---@return System.Xml.Linq.XNode
function CS.System.Xml.Linq.XContainer.get_FirstNode() end

---@return System.Xml.Linq.XNode
function CS.System.Xml.Linq.XContainer.get_LastNode() end

---@overload fun(...: System.Object)
---@param content System.Object
function CS.System.Xml.Linq.XContainer.Add(content) end

---@overload fun(...: System.Object)
---@param content System.Object
function CS.System.Xml.Linq.XContainer.AddFirst(content) end

---@return System.Xml.XmlWriter
function CS.System.Xml.Linq.XContainer.CreateWriter() end

---@return userdata | (fun(): System.Xml.Linq.XNode)
function CS.System.Xml.Linq.XContainer.DescendantNodes() end

---@overload fun(name: System.Xml.Linq.XName): userdata | (fun(): System.Xml.Linq.XElement)
---@return userdata | (fun(): System.Xml.Linq.XElement)
function CS.System.Xml.Linq.XContainer.Descendants() end

---@param name System.Xml.Linq.XName
---@return System.Xml.Linq.XElement
function CS.System.Xml.Linq.XContainer.Element(name) end

---@overload fun(name: System.Xml.Linq.XName): userdata | (fun(): System.Xml.Linq.XElement)
---@return userdata | (fun(): System.Xml.Linq.XElement)
function CS.System.Xml.Linq.XContainer.Elements() end

---@return userdata | (fun(): System.Xml.Linq.XNode)
function CS.System.Xml.Linq.XContainer.Nodes() end

function CS.System.Xml.Linq.XContainer.RemoveNodes() end

---@overload fun(...: System.Object)
---@param content System.Object
function CS.System.Xml.Linq.XContainer.ReplaceNodes(content) end

---@package
---@param a System.Xml.Linq.XAttribute
function CS.System.Xml.Linq.XContainer.AddAttribute(a) end

---@package
---@param a System.Xml.Linq.XAttribute
function CS.System.Xml.Linq.XContainer.AddAttributeSkipNotify(a) end

---@package
---@param content System.Object
function CS.System.Xml.Linq.XContainer.AddContentSkipNotify(content) end

---@package
---@param n System.Xml.Linq.XNode
function CS.System.Xml.Linq.XContainer.AddNode(n) end

---@package
---@param n System.Xml.Linq.XNode
function CS.System.Xml.Linq.XContainer.AddNodeSkipNotify(n) end

---@package
---@param s System.String
function CS.System.Xml.Linq.XContainer.AddString(s) end

---@package
---@param s System.String
function CS.System.Xml.Linq.XContainer.AddStringSkipNotify(s) end

---@package
---@param n System.Xml.Linq.XNode
function CS.System.Xml.Linq.XContainer.AppendNode(n) end

---@package
---@param n System.Xml.Linq.XNode
function CS.System.Xml.Linq.XContainer.AppendNodeSkipNotify(n) end

---@package
---@param sb System.Text.StringBuilder
function CS.System.Xml.Linq.XContainer.AppendText(sb) end

---@private
---@return System.String
function CS.System.Xml.Linq.XContainer.GetTextOnly() end

---@private
---@param n System.Xml.Linq.XNode
---@return System.String
function CS.System.Xml.Linq.XContainer.CollectText(n) end

---@package
---@param e System.Xml.Linq.XContainer
---@return System.Boolean
function CS.System.Xml.Linq.XContainer.ContentsEqual(e) end

---@package
---@return System.Int32
function CS.System.Xml.Linq.XContainer.ContentsHashCode() end

---@package
function CS.System.Xml.Linq.XContainer.ConvertTextToNode() end

---@package
---@param self System.Boolean
---@return userdata | (fun(): System.Xml.Linq.XNode)
function CS.System.Xml.Linq.XContainer.GetDescendantNodes(self) end

---@package
---@param name System.Xml.Linq.XName
---@param self System.Boolean
---@return userdata | (fun(): System.Xml.Linq.XElement)
function CS.System.Xml.Linq.XContainer.GetDescendants(name, self) end

---@private
---@param name System.Xml.Linq.XName
---@return userdata | (fun(): System.Xml.Linq.XElement)
function CS.System.Xml.Linq.XContainer.GetElements(name) end

---@package
---@param value System.Object
---@return System.String
function CS.System.Xml.Linq.XContainer.GetStringValue(value) end

---@package
---@overload fun(r: System.Xml.XmlReader, o: System.Xml.Linq.LoadOptions)
---@param r System.Xml.XmlReader
function CS.System.Xml.Linq.XContainer.ReadContentFrom(r) end

---@package
---@async
---@overload fun(r: System.Xml.XmlReader, o: System.Xml.Linq.LoadOptions, cancellationToken: System.Threading.CancellationToken): System.Threading.Tasks.Task
---@param r System.Xml.XmlReader
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function CS.System.Xml.Linq.XContainer.ReadContentFromAsync(r, cancellationToken) end

---@package
---@param n System.Xml.Linq.XNode
function CS.System.Xml.Linq.XContainer.RemoveNode(n) end

---@private
function CS.System.Xml.Linq.XContainer.RemoveNodesSkipNotify() end

---@package
---@param node System.Xml.Linq.XNode
---@param previous System.Xml.Linq.XNode
function CS.System.Xml.Linq.XContainer.ValidateNode(node, previous) end

---@package
---@param s System.String
function CS.System.Xml.Linq.XContainer.ValidateString(s) end

---@package
---@param writer System.Xml.XmlWriter
function CS.System.Xml.Linq.XContainer.WriteContentTo(writer) end

---@package
---@async
---@param writer System.Xml.XmlWriter
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function CS.System.Xml.Linq.XContainer.WriteContentToAsync(writer, cancellationToken) end

---@private
---@param list userdata | { [System.Int32]: System.Object } | (fun(): System.Object)
---@param content System.Object
function CS.System.Xml.Linq.XContainer.AddContentToList(list, content) end

---@package
---@param content System.Object
---@return System.Object
function CS.System.Xml.Linq.XContainer.GetContentSnapshot(content) end

do
---@package
---@overload fun(other: System.Xml.Linq.XContainer): System.Xml.Linq.XContainer
---@return System.Xml.Linq.XContainer
local __ctor = function() end
CS.System.Xml.Linq.XContainer = __ctor
CS.System.Xml.Linq.XContainer.__new = __ctor
end

---@class System.Xml.Linq.XDocument: System.Xml.Linq.XContainer
---@field Declaration System.Xml.Linq.XDeclaration
---@field DocumentType System.Xml.Linq.XDocumentType
---@field NodeType System.Xml.XmlNodeType
---@field Root System.Xml.Linq.XElement
---@field private _declaration System.Xml.Linq.XDeclaration
CS.System.Xml.Linq.XDocument = {}

---@return System.Xml.Linq.XDeclaration
function CS.System.Xml.Linq.XDocument.get_Declaration() end

---@param value System.Xml.Linq.XDeclaration
function CS.System.Xml.Linq.XDocument.set_Declaration(value) end

---@return System.Xml.Linq.XDocumentType
function CS.System.Xml.Linq.XDocument.get_DocumentType() end

---@return System.Xml.XmlNodeType
function CS.System.Xml.Linq.XDocument.get_NodeType() end

---@return System.Xml.Linq.XElement
function CS.System.Xml.Linq.XDocument.get_Root() end

---@overload fun(uri: System.String, options: System.Xml.Linq.LoadOptions): System.Xml.Linq.XDocument
---@overload fun(stream: System.IO.Stream): System.Xml.Linq.XDocument
---@overload fun(stream: System.IO.Stream, options: System.Xml.Linq.LoadOptions): System.Xml.Linq.XDocument
---@overload fun(textReader: System.IO.TextReader): System.Xml.Linq.XDocument
---@overload fun(textReader: System.IO.TextReader, options: System.Xml.Linq.LoadOptions): System.Xml.Linq.XDocument
---@overload fun(reader: System.Xml.XmlReader): System.Xml.Linq.XDocument
---@overload fun(reader: System.Xml.XmlReader, options: System.Xml.Linq.LoadOptions): System.Xml.Linq.XDocument
---@param uri System.String
---@return System.Xml.Linq.XDocument
function CS.System.Xml.Linq.XDocument.Load(uri) end

---@async
---@overload fun(textReader: System.IO.TextReader, options: System.Xml.Linq.LoadOptions, cancellationToken: System.Threading.CancellationToken): userdata
---@overload fun(reader: System.Xml.XmlReader, options: System.Xml.Linq.LoadOptions, cancellationToken: System.Threading.CancellationToken): userdata
---@param stream System.IO.Stream
---@param options System.Xml.Linq.LoadOptions
---@param cancellationToken System.Threading.CancellationToken
---@return userdata
function CS.System.Xml.Linq.XDocument.LoadAsync(stream, options, cancellationToken) end

---@private
---@async
---@param reader System.Xml.XmlReader
---@param options System.Xml.Linq.LoadOptions
---@param cancellationToken System.Threading.CancellationToken
---@return userdata
function CS.System.Xml.Linq.XDocument.LoadAsyncInternal(reader, options, cancellationToken) end

---@private
---@param reader System.Xml.XmlReader
---@param options System.Xml.Linq.LoadOptions
---@return System.Xml.Linq.XDocument
function CS.System.Xml.Linq.XDocument.InitLoad(reader, options) end

---@overload fun(text: System.String, options: System.Xml.Linq.LoadOptions): System.Xml.Linq.XDocument
---@param text System.String
---@return System.Xml.Linq.XDocument
function CS.System.Xml.Linq.XDocument.Parse(text) end

---@overload fun(stream: System.IO.Stream, options: System.Xml.Linq.SaveOptions)
---@overload fun(textWriter: System.IO.TextWriter)
---@overload fun(textWriter: System.IO.TextWriter, options: System.Xml.Linq.SaveOptions)
---@overload fun(writer: System.Xml.XmlWriter)
---@overload fun(fileName: System.String)
---@overload fun(fileName: System.String, options: System.Xml.Linq.SaveOptions)
---@param stream System.IO.Stream
function CS.System.Xml.Linq.XDocument.Save(stream) end

---@async
---@overload fun(textWriter: System.IO.TextWriter, options: System.Xml.Linq.SaveOptions, cancellationToken: System.Threading.CancellationToken): System.Threading.Tasks.Task
---@overload fun(writer: System.Xml.XmlWriter, cancellationToken: System.Threading.CancellationToken): System.Threading.Tasks.Task
---@param stream System.IO.Stream
---@param options System.Xml.Linq.SaveOptions
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function CS.System.Xml.Linq.XDocument.SaveAsync(stream, options, cancellationToken) end

---@param writer System.Xml.XmlWriter
function CS.System.Xml.Linq.XDocument.WriteTo(writer) end

---@async
---@param writer System.Xml.XmlWriter
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function CS.System.Xml.Linq.XDocument.WriteToAsync(writer, cancellationToken) end

---@private
---@async
---@param writer System.Xml.XmlWriter
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function CS.System.Xml.Linq.XDocument.WriteToAsyncInternal(writer, cancellationToken) end

---@package
---@param a System.Xml.Linq.XAttribute
function CS.System.Xml.Linq.XDocument.AddAttribute(a) end

---@package
---@param a System.Xml.Linq.XAttribute
function CS.System.Xml.Linq.XDocument.AddAttributeSkipNotify(a) end

---@package
---@return System.Xml.Linq.XNode
function CS.System.Xml.Linq.XDocument.CloneNode() end

---@package
---@param node System.Xml.Linq.XNode
---@return System.Boolean
function CS.System.Xml.Linq.XDocument.DeepEquals(node) end

---@package
---@return System.Int32
function CS.System.Xml.Linq.XDocument.GetDeepHashCode() end

---@package
---@param node System.Xml.Linq.XNode
---@param previous System.Xml.Linq.XNode
function CS.System.Xml.Linq.XDocument.ValidateNode(node, previous) end

---@private
---@param previous System.Xml.Linq.XNode
---@param allowBefore System.Xml.XmlNodeType
---@param allowAfter System.Xml.XmlNodeType
function CS.System.Xml.Linq.XDocument.ValidateDocument(previous, allowBefore, allowAfter) end

---@package
---@param s System.String
function CS.System.Xml.Linq.XDocument.ValidateString(s) end

do
---@overload fun(...: System.Object): System.Xml.Linq.XDocument
---@overload fun(declaration: System.Xml.Linq.XDeclaration, ...: System.Object): System.Xml.Linq.XDocument
---@overload fun(other: System.Xml.Linq.XDocument): System.Xml.Linq.XDocument
---@return System.Xml.Linq.XDocument
local __ctor = function() end
CS.System.Xml.Linq.XDocument = __ctor
CS.System.Xml.Linq.XDocument.__new = __ctor
end

---@class System.Xml.Linq.XElement: System.Xml.Linq.XContainer
---@field EmptySequence userdata | (fun(): System.Xml.Linq.XElement)
---@field FirstAttribute System.Xml.Linq.XAttribute
---@field HasAttributes System.Boolean
---@field HasElements System.Boolean
---@field IsEmpty System.Boolean
---@field LastAttribute System.Xml.Linq.XAttribute
---@field Name System.Xml.Linq.XName
---@field NodeType System.Xml.XmlNodeType
---@field Value System.String
---@field package name System.Xml.Linq.XName
---@field package lastAttr System.Xml.Linq.XAttribute
CS.System.Xml.Linq.XElement = {}

---@return userdata | (fun(): System.Xml.Linq.XElement)
function CS.System.Xml.Linq.XElement.get_EmptySequence() end

---@package
---@async
---@param r System.Xml.XmlReader
---@param cancellationToken System.Threading.CancellationToken
---@return userdata
function CS.System.Xml.Linq.XElement.CreateAsync(r, cancellationToken) end

---@overload fun(fileName: System.String, options: System.Xml.Linq.SaveOptions)
---@overload fun(stream: System.IO.Stream)
---@overload fun(stream: System.IO.Stream, options: System.Xml.Linq.SaveOptions)
---@overload fun(textWriter: System.IO.TextWriter)
---@overload fun(textWriter: System.IO.TextWriter, options: System.Xml.Linq.SaveOptions)
---@overload fun(writer: System.Xml.XmlWriter)
---@param fileName System.String
function CS.System.Xml.Linq.XElement.Save(fileName) end

---@return System.Xml.Linq.XAttribute
function CS.System.Xml.Linq.XElement.get_FirstAttribute() end

---@return System.Boolean
function CS.System.Xml.Linq.XElement.get_HasAttributes() end

---@return System.Boolean
function CS.System.Xml.Linq.XElement.get_HasElements() end

---@return System.Boolean
function CS.System.Xml.Linq.XElement.get_IsEmpty() end

---@return System.Xml.Linq.XAttribute
function CS.System.Xml.Linq.XElement.get_LastAttribute() end

---@return System.Xml.Linq.XName
function CS.System.Xml.Linq.XElement.get_Name() end

---@param value System.Xml.Linq.XName
function CS.System.Xml.Linq.XElement.set_Name(value) end

---@return System.Xml.XmlNodeType
function CS.System.Xml.Linq.XElement.get_NodeType() end

---@return System.String
function CS.System.Xml.Linq.XElement.get_Value() end

---@param value System.String
function CS.System.Xml.Linq.XElement.set_Value(value) end

---@overload fun(name: System.Xml.Linq.XName): userdata | (fun(): System.Xml.Linq.XElement)
---@return userdata | (fun(): System.Xml.Linq.XElement)
function CS.System.Xml.Linq.XElement.AncestorsAndSelf() end

---@param name System.Xml.Linq.XName
---@return System.Xml.Linq.XAttribute
function CS.System.Xml.Linq.XElement.Attribute(name) end

---@overload fun(name: System.Xml.Linq.XName): userdata | (fun(): System.Xml.Linq.XAttribute)
---@return userdata | (fun(): System.Xml.Linq.XAttribute)
function CS.System.Xml.Linq.XElement.Attributes() end

---@return userdata | (fun(): System.Xml.Linq.XNode)
function CS.System.Xml.Linq.XElement.DescendantNodesAndSelf() end

---@overload fun(name: System.Xml.Linq.XName): userdata | (fun(): System.Xml.Linq.XElement)
---@return userdata | (fun(): System.Xml.Linq.XElement)
function CS.System.Xml.Linq.XElement.DescendantsAndSelf() end

---@return System.Xml.Linq.XNamespace
function CS.System.Xml.Linq.XElement.GetDefaultNamespace() end

---@param prefix System.String
---@return System.Xml.Linq.XNamespace
function CS.System.Xml.Linq.XElement.GetNamespaceOfPrefix(prefix) end

---@param ns System.Xml.Linq.XNamespace
---@return System.String
function CS.System.Xml.Linq.XElement.GetPrefixOfNamespace(ns) end

---@overload fun(uri: System.String, options: System.Xml.Linq.LoadOptions): System.Xml.Linq.XElement
---@overload fun(stream: System.IO.Stream): System.Xml.Linq.XElement
---@overload fun(stream: System.IO.Stream, options: System.Xml.Linq.LoadOptions): System.Xml.Linq.XElement
---@overload fun(textReader: System.IO.TextReader): System.Xml.Linq.XElement
---@overload fun(textReader: System.IO.TextReader, options: System.Xml.Linq.LoadOptions): System.Xml.Linq.XElement
---@overload fun(reader: System.Xml.XmlReader): System.Xml.Linq.XElement
---@overload fun(reader: System.Xml.XmlReader, options: System.Xml.Linq.LoadOptions): System.Xml.Linq.XElement
---@param uri System.String
---@return System.Xml.Linq.XElement
function CS.System.Xml.Linq.XElement.Load(uri) end

---@async
---@overload fun(textReader: System.IO.TextReader, options: System.Xml.Linq.LoadOptions, cancellationToken: System.Threading.CancellationToken): userdata
---@overload fun(reader: System.Xml.XmlReader, options: System.Xml.Linq.LoadOptions, cancellationToken: System.Threading.CancellationToken): userdata
---@param stream System.IO.Stream
---@param options System.Xml.Linq.LoadOptions
---@param cancellationToken System.Threading.CancellationToken
---@return userdata
function CS.System.Xml.Linq.XElement.LoadAsync(stream, options, cancellationToken) end

---@private
---@async
---@param reader System.Xml.XmlReader
---@param options System.Xml.Linq.LoadOptions
---@param cancellationToken System.Threading.CancellationToken
---@return userdata
function CS.System.Xml.Linq.XElement.LoadAsyncInternal(reader, options, cancellationToken) end

---@overload fun(text: System.String, options: System.Xml.Linq.LoadOptions): System.Xml.Linq.XElement
---@param text System.String
---@return System.Xml.Linq.XElement
function CS.System.Xml.Linq.XElement.Parse(text) end

function CS.System.Xml.Linq.XElement.RemoveAll() end

function CS.System.Xml.Linq.XElement.RemoveAttributes() end

---@overload fun(...: System.Object)
---@param content System.Object
function CS.System.Xml.Linq.XElement.ReplaceAll(content) end

---@overload fun(...: System.Object)
---@param content System.Object
function CS.System.Xml.Linq.XElement.ReplaceAttributes(content) end

---@async
---@overload fun(textWriter: System.IO.TextWriter, options: System.Xml.Linq.SaveOptions, cancellationToken: System.Threading.CancellationToken): System.Threading.Tasks.Task
---@overload fun(writer: System.Xml.XmlWriter, cancellationToken: System.Threading.CancellationToken): System.Threading.Tasks.Task
---@param stream System.IO.Stream
---@param options System.Xml.Linq.SaveOptions
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function CS.System.Xml.Linq.XElement.SaveAsync(stream, options, cancellationToken) end

---@private
---@async
---@param writer System.Xml.XmlWriter
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function CS.System.Xml.Linq.XElement.SaveAsyncInternal(writer, cancellationToken) end

---@param name System.Xml.Linq.XName
---@param value System.Object
function CS.System.Xml.Linq.XElement.SetAttributeValue(name, value) end

---@param name System.Xml.Linq.XName
---@param value System.Object
function CS.System.Xml.Linq.XElement.SetElementValue(name, value) end

---@param value System.Object
function CS.System.Xml.Linq.XElement.SetValue(value) end

---@param writer System.Xml.XmlWriter
function CS.System.Xml.Linq.XElement.WriteTo(writer) end

---@async
---@param writer System.Xml.XmlWriter
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function CS.System.Xml.Linq.XElement.WriteToAsync(writer, cancellationToken) end

---@overload fun(element: System.Xml.Linq.XElement): System.Boolean
---@overload fun(element: System.Xml.Linq.XElement): System.Boolean|nil
---@overload fun(element: System.Xml.Linq.XElement): System.Int32
---@overload fun(element: System.Xml.Linq.XElement): System.Int32|nil
---@overload fun(element: System.Xml.Linq.XElement): System.UInt32
---@overload fun(element: System.Xml.Linq.XElement): System.UInt32|nil
---@overload fun(element: System.Xml.Linq.XElement): System.Int64
---@overload fun(element: System.Xml.Linq.XElement): System.Int64|nil
---@overload fun(element: System.Xml.Linq.XElement): System.UInt64
---@overload fun(element: System.Xml.Linq.XElement): System.UInt64|nil
---@overload fun(element: System.Xml.Linq.XElement): System.Single
---@overload fun(element: System.Xml.Linq.XElement): System.Single|nil
---@overload fun(element: System.Xml.Linq.XElement): System.Double
---@overload fun(element: System.Xml.Linq.XElement): System.Double|nil
---@overload fun(element: System.Xml.Linq.XElement): System.Decimal
---@overload fun(element: System.Xml.Linq.XElement): System.Decimal|nil
---@overload fun(element: System.Xml.Linq.XElement): System.DateTime
---@overload fun(element: System.Xml.Linq.XElement): System.DateTime|nil
---@overload fun(element: System.Xml.Linq.XElement): System.DateTimeOffset
---@overload fun(element: System.Xml.Linq.XElement): System.DateTimeOffset|nil
---@overload fun(element: System.Xml.Linq.XElement): System.TimeSpan
---@overload fun(element: System.Xml.Linq.XElement): System.TimeSpan|nil
---@overload fun(element: System.Xml.Linq.XElement): System.Guid
---@overload fun(element: System.Xml.Linq.XElement): System.Guid|nil
---@param element System.Xml.Linq.XElement
---@return System.String
function CS.System.Xml.Linq.XElement.op_Explicit(element) end

---@private
---@return System.Xml.Schema.XmlSchema
function CS.System.Xml.Linq.XElement.GetSchema() end

---@private
---@param reader System.Xml.XmlReader
function CS.System.Xml.Linq.XElement.ReadXml(reader) end

---@private
---@param writer System.Xml.XmlWriter
function CS.System.Xml.Linq.XElement.WriteXml(writer) end

---@package
---@param a System.Xml.Linq.XAttribute
function CS.System.Xml.Linq.XElement.AddAttribute(a) end

---@package
---@param a System.Xml.Linq.XAttribute
function CS.System.Xml.Linq.XElement.AddAttributeSkipNotify(a) end

---@package
---@param a System.Xml.Linq.XAttribute
function CS.System.Xml.Linq.XElement.AppendAttribute(a) end

---@package
---@param a System.Xml.Linq.XAttribute
function CS.System.Xml.Linq.XElement.AppendAttributeSkipNotify(a) end

---@private
---@param e System.Xml.Linq.XElement
---@return System.Boolean
function CS.System.Xml.Linq.XElement.AttributesEqual(e) end

---@package
---@return System.Xml.Linq.XNode
function CS.System.Xml.Linq.XElement.CloneNode() end

---@package
---@param node System.Xml.Linq.XNode
---@return System.Boolean
function CS.System.Xml.Linq.XElement.DeepEquals(node) end

---@private
---@param name System.Xml.Linq.XName
---@return userdata | (fun(): System.Xml.Linq.XAttribute)
function CS.System.Xml.Linq.XElement.GetAttributes(name) end

---@private
---@param prefix System.String
---@param outOfScope System.Xml.Linq.XElement
---@return System.String
function CS.System.Xml.Linq.XElement.GetNamespaceOfPrefixInScope(prefix, outOfScope) end

---@package
---@return System.Int32
function CS.System.Xml.Linq.XElement.GetDeepHashCode() end

---@private
---@param r System.Xml.XmlReader
---@param o System.Xml.Linq.LoadOptions
function CS.System.Xml.Linq.XElement.ReadElementFrom(r, o) end

---@private
---@async
---@param r System.Xml.XmlReader
---@param o System.Xml.Linq.LoadOptions
---@param cancellationTokentoken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function CS.System.Xml.Linq.XElement.ReadElementFromAsync(r, o, cancellationTokentoken) end

---@private
---@param r System.Xml.XmlReader
---@param o System.Xml.Linq.LoadOptions
function CS.System.Xml.Linq.XElement.ReadElementFromImpl(r, o) end

---@package
---@param a System.Xml.Linq.XAttribute
function CS.System.Xml.Linq.XElement.RemoveAttribute(a) end

---@private
function CS.System.Xml.Linq.XElement.RemoveAttributesSkipNotify() end

---@package
---@param lineNumber System.Int32
---@param linePosition System.Int32
function CS.System.Xml.Linq.XElement.SetEndElementLineInfo(lineNumber, linePosition) end

---@package
---@param node System.Xml.Linq.XNode
---@param previous System.Xml.Linq.XNode
function CS.System.Xml.Linq.XElement.ValidateNode(node, previous) end

do
---@overload fun(name: System.Xml.Linq.XName, content: System.Object): System.Xml.Linq.XElement
---@overload fun(name: System.Xml.Linq.XName, ...: System.Object): System.Xml.Linq.XElement
---@overload fun(other: System.Xml.Linq.XElement): System.Xml.Linq.XElement
---@overload fun(other: System.Xml.Linq.XStreamingElement): System.Xml.Linq.XElement
---@overload fun(): System.Xml.Linq.XElement
---@overload fun(r: System.Xml.XmlReader): System.Xml.Linq.XElement
---@overload fun(_: System.Xml.Linq.XElement.AsyncConstructionSentry): System.Xml.Linq.XElement
---@overload fun(r: System.Xml.XmlReader, o: System.Xml.Linq.LoadOptions): System.Xml.Linq.XElement
---@param name System.Xml.Linq.XName
---@return System.Xml.Linq.XElement
local __ctor = function(name) end
CS.System.Xml.Linq.XElement = __ctor
CS.System.Xml.Linq.XElement.__new = __ctor
end

---@class System.Xml.Linq.XName: System.Object
---@field LocalName System.String
---@field Namespace System.Xml.Linq.XNamespace
---@field NamespaceName System.String
---@field private _ns System.Xml.Linq.XNamespace
---@field private _localName System.String
---@field private _hashCode System.Int32
CS.System.Xml.Linq.XName = {}

---@return System.String
function CS.System.Xml.Linq.XName.get_LocalName() end

---@return System.Xml.Linq.XNamespace
function CS.System.Xml.Linq.XName.get_Namespace() end

---@return System.String
function CS.System.Xml.Linq.XName.get_NamespaceName() end

---@return System.String
function CS.System.Xml.Linq.XName.ToString() end

---@overload fun(localName: System.String, namespaceName: System.String): System.Xml.Linq.XName
---@param expandedName System.String
---@return System.Xml.Linq.XName
function CS.System.Xml.Linq.XName.Get(expandedName) end

---@param expandedName System.String
---@return System.Xml.Linq.XName
function CS.System.Xml.Linq.XName.op_Implicit(expandedName) end

---@param obj System.Object
---@return System.Boolean
function CS.System.Xml.Linq.XName.Equals(obj) end

---@return System.Int32
function CS.System.Xml.Linq.XName.GetHashCode() end

---@param left System.Xml.Linq.XName
---@param right System.Xml.Linq.XName
---@return System.Boolean
function CS.System.Xml.Linq.XName.op_Equality(left, right) end

---@param left System.Xml.Linq.XName
---@param right System.Xml.Linq.XName
---@return System.Boolean
function CS.System.Xml.Linq.XName.op_Inequality(left, right) end

---@private
---@param other System.Xml.Linq.XName
---@return System.Boolean
function CS.System.Xml.Linq.XName.Equals(other) end

---@private
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function CS.System.Xml.Linq.XName.GetObjectData(info, context) end

do
---@package
---@param ns System.Xml.Linq.XNamespace
---@param localName System.String
---@return System.Xml.Linq.XName
local __ctor = function(ns, localName) end
CS.System.Xml.Linq.XName = __ctor
CS.System.Xml.Linq.XName.__new = __ctor
end

---@class System.Xml.Linq.XNode: System.Xml.Linq.XObject
---@field NextNode System.Xml.Linq.XNode
---@field PreviousNode System.Xml.Linq.XNode
---@field DocumentOrderComparer System.Xml.Linq.XNodeDocumentOrderComparer
---@field EqualityComparer System.Xml.Linq.XNodeEqualityComparer
---@field package next System.Xml.Linq.XNode
---@field private s_documentOrderComparer System.Xml.Linq.XNodeDocumentOrderComparer
---@field private s_equalityComparer System.Xml.Linq.XNodeEqualityComparer
CS.System.Xml.Linq.XNode = {}

---@return System.Xml.Linq.XNode
function CS.System.Xml.Linq.XNode.get_NextNode() end

---@return System.Xml.Linq.XNode
function CS.System.Xml.Linq.XNode.get_PreviousNode() end

---@return System.Xml.Linq.XNodeDocumentOrderComparer
function CS.System.Xml.Linq.XNode.get_DocumentOrderComparer() end

---@return System.Xml.Linq.XNodeEqualityComparer
function CS.System.Xml.Linq.XNode.get_EqualityComparer() end

---@overload fun(...: System.Object)
---@param content System.Object
function CS.System.Xml.Linq.XNode.AddAfterSelf(content) end

---@overload fun(...: System.Object)
---@param content System.Object
function CS.System.Xml.Linq.XNode.AddBeforeSelf(content) end

---@overload fun(name: System.Xml.Linq.XName): userdata | (fun(): System.Xml.Linq.XElement)
---@return userdata | (fun(): System.Xml.Linq.XElement)
function CS.System.Xml.Linq.XNode.Ancestors() end

---@param n1 System.Xml.Linq.XNode
---@param n2 System.Xml.Linq.XNode
---@return System.Int32
function CS.System.Xml.Linq.XNode.CompareDocumentOrder(n1, n2) end

---@overload fun(readerOptions: System.Xml.Linq.ReaderOptions): System.Xml.XmlReader
---@return System.Xml.XmlReader
function CS.System.Xml.Linq.XNode.CreateReader() end

---@return userdata | (fun(): System.Xml.Linq.XNode)
function CS.System.Xml.Linq.XNode.NodesAfterSelf() end

---@return userdata | (fun(): System.Xml.Linq.XNode)
function CS.System.Xml.Linq.XNode.NodesBeforeSelf() end

---@overload fun(name: System.Xml.Linq.XName): userdata | (fun(): System.Xml.Linq.XElement)
---@return userdata | (fun(): System.Xml.Linq.XElement)
function CS.System.Xml.Linq.XNode.ElementsAfterSelf() end

---@overload fun(name: System.Xml.Linq.XName): userdata | (fun(): System.Xml.Linq.XElement)
---@return userdata | (fun(): System.Xml.Linq.XElement)
function CS.System.Xml.Linq.XNode.ElementsBeforeSelf() end

---@param node System.Xml.Linq.XNode
---@return System.Boolean
function CS.System.Xml.Linq.XNode.IsAfter(node) end

---@param node System.Xml.Linq.XNode
---@return System.Boolean
function CS.System.Xml.Linq.XNode.IsBefore(node) end

---@param reader System.Xml.XmlReader
---@return System.Xml.Linq.XNode
function CS.System.Xml.Linq.XNode.ReadFrom(reader) end

---@async
---@param reader System.Xml.XmlReader
---@param cancellationToken System.Threading.CancellationToken
---@return userdata
function CS.System.Xml.Linq.XNode.ReadFromAsync(reader, cancellationToken) end

---@private
---@async
---@param reader System.Xml.XmlReader
---@param cancellationToken System.Threading.CancellationToken
---@return userdata
function CS.System.Xml.Linq.XNode.ReadFromAsyncInternal(reader, cancellationToken) end

function CS.System.Xml.Linq.XNode.Remove() end

---@overload fun(...: System.Object)
---@param content System.Object
function CS.System.Xml.Linq.XNode.ReplaceWith(content) end

---@overload fun(options: System.Xml.Linq.SaveOptions): System.String
---@return System.String
function CS.System.Xml.Linq.XNode.ToString() end

---@param n1 System.Xml.Linq.XNode
---@param n2 System.Xml.Linq.XNode
---@return System.Boolean
function CS.System.Xml.Linq.XNode.DeepEquals(n1, n2) end

---@param writer System.Xml.XmlWriter
function CS.System.Xml.Linq.XNode.WriteTo(writer) end

---@async
---@param writer System.Xml.XmlWriter
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function CS.System.Xml.Linq.XNode.WriteToAsync(writer, cancellationToken) end

---@package
---@param sb System.Text.StringBuilder
function CS.System.Xml.Linq.XNode.AppendText(sb) end

---@package
---@return System.Xml.Linq.XNode
function CS.System.Xml.Linq.XNode.CloneNode() end

---@package
---@param node System.Xml.Linq.XNode
---@return System.Boolean
function CS.System.Xml.Linq.XNode.DeepEquals(node) end

---@package
---@param name System.Xml.Linq.XName
---@param self System.Boolean
---@return userdata | (fun(): System.Xml.Linq.XElement)
function CS.System.Xml.Linq.XNode.GetAncestors(name, self) end

---@private
---@param name System.Xml.Linq.XName
---@return userdata | (fun(): System.Xml.Linq.XElement)
function CS.System.Xml.Linq.XNode.GetElementsAfterSelf(name) end

---@private
---@param name System.Xml.Linq.XName
---@return userdata | (fun(): System.Xml.Linq.XElement)
function CS.System.Xml.Linq.XNode.GetElementsBeforeSelf(name) end

---@package
---@return System.Int32
function CS.System.Xml.Linq.XNode.GetDeepHashCode() end

---@package
---@param o System.Xml.Linq.LoadOptions
---@return System.Xml.XmlReaderSettings
function CS.System.Xml.Linq.XNode.GetXmlReaderSettings(o) end

---@package
---@param o System.Xml.Linq.SaveOptions
---@return System.Xml.XmlWriterSettings
function CS.System.Xml.Linq.XNode.GetXmlWriterSettings(o) end

---@private
---@param o System.Xml.Linq.SaveOptions
---@return System.String
function CS.System.Xml.Linq.XNode.GetXmlString(o) end

do
---@package
---@return System.Xml.Linq.XNode
local __ctor = function() end
CS.System.Xml.Linq.XNode = __ctor
CS.System.Xml.Linq.XNode.__new = __ctor
end

---@class System.Xml.Linq.XObject: System.Object
---@field BaseUri System.String
---@field Document System.Xml.Linq.XDocument
---@field NodeType System.Xml.XmlNodeType
---@field Parent System.Xml.Linq.XElement
---@field private ["System.Xml.IXmlLineInfo.LineNumber"] System.Int32
---@field private ["System.Xml.IXmlLineInfo.LinePosition"] System.Int32
---@field package HasBaseUri System.Boolean
---@field package parent System.Xml.Linq.XContainer
---@field package annotations System.Object
CS.System.Xml.Linq.XObject = {}

---@return System.String
function CS.System.Xml.Linq.XObject.get_BaseUri() end

---@return System.Xml.Linq.XDocument
function CS.System.Xml.Linq.XObject.get_Document() end

---@return System.Xml.XmlNodeType
function CS.System.Xml.Linq.XObject.get_NodeType() end

---@return System.Xml.Linq.XElement
function CS.System.Xml.Linq.XObject.get_Parent() end

---@param annotation System.Object
function CS.System.Xml.Linq.XObject.AddAnnotation(annotation) end

---@param type System.Type
---@return System.Object
function CS.System.Xml.Linq.XObject.Annotation(type) end

---@private
---@param type System.Type
---@return System.Object
function CS.System.Xml.Linq.XObject.AnnotationForSealedType(type) end

---@param type System.Type
---@return userdata | (fun(): System.Object)
function CS.System.Xml.Linq.XObject.Annotations(type) end

---@private
---@param type System.Type
---@return userdata | (fun(): System.Object)
function CS.System.Xml.Linq.XObject.AnnotationsIterator(type) end

---@param type System.Type
function CS.System.Xml.Linq.XObject.RemoveAnnotations(type) end

---@param value fun(sender: System.Object, e: System.Xml.Linq.XObjectChangeEventArgs)
function CS.System.Xml.Linq.XObject.add_Changed(value) end

---@param value fun(sender: System.Object, e: System.Xml.Linq.XObjectChangeEventArgs)
function CS.System.Xml.Linq.XObject.remove_Changed(value) end

---@param value fun(sender: System.Object, e: System.Xml.Linq.XObjectChangeEventArgs)
function CS.System.Xml.Linq.XObject.add_Changing(value) end

---@param value fun(sender: System.Object, e: System.Xml.Linq.XObjectChangeEventArgs)
function CS.System.Xml.Linq.XObject.remove_Changing(value) end

---@private
---@return System.Boolean
function CS.System.Xml.Linq.XObject.HasLineInfo() end

---@private
---@return System.Int32
function CS.System.Xml.Linq.XObject.get_LineNumber() end

---@private
---@return System.Int32
function CS.System.Xml.Linq.XObject.get_LinePosition() end

---@package
---@return System.Boolean
function CS.System.Xml.Linq.XObject.get_HasBaseUri() end

---@package
---@param sender System.Object
---@param e System.Xml.Linq.XObjectChangeEventArgs
---@return System.Boolean
function CS.System.Xml.Linq.XObject.NotifyChanged(sender, e) end

---@package
---@param sender System.Object
---@param e System.Xml.Linq.XObjectChangeEventArgs
---@return System.Boolean
function CS.System.Xml.Linq.XObject.NotifyChanging(sender, e) end

---@package
---@param baseUri System.String
function CS.System.Xml.Linq.XObject.SetBaseUri(baseUri) end

---@package
---@param lineNumber System.Int32
---@param linePosition System.Int32
function CS.System.Xml.Linq.XObject.SetLineInfo(lineNumber, linePosition) end

---@package
---@return System.Boolean
function CS.System.Xml.Linq.XObject.SkipNotify() end

---@package
---@return System.Xml.Linq.SaveOptions
function CS.System.Xml.Linq.XObject.GetSaveOptionsFromAnnotations() end

do
---@package
---@return System.Xml.Linq.XObject
local __ctor = function() end
CS.System.Xml.Linq.XObject = __ctor
CS.System.Xml.Linq.XObject.__new = __ctor
end


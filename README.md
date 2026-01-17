**English | [简体中文](./README.zh-CN.md)**

# Barotrauma Lua Annotations

Lua script annotations generated using the [EmmyLuaDocxgen](https://github.com/zhu-rengong/EmmyLuaDocxgen/tree/luacs_baro) tool for [LuaCsForBarotrauma](https://github.com/evilfactory/LuaCsForBarotrauma), providing powerful code hints and auto-completion features.

## Usage

**Using VS Code as an example:**
You need to install the [Lua Language Server](https://luals.github.io/) plugin, clone this repository, then add the following workspace configuration (recommended setup):

```json
{
	"folders": [
        {
            "path": "<Mod Path>",
        },
	],
	"settings": {
		"Lua.diagnostics.libraryFiles": "Enable",
		"Lua.workspace.library": [
			"<Repository Path>/Library/Client",
			// "<Repository Path>/Library/Server",
		],
		"Lua.diagnostics.disable": [
			"invisible",
			"undefined-doc-name",
			"undefined-global",
			"undefined-field",
			"need-check-nil",
			"param-type-mismatch",
			"return-type-mismatch",
			"assign-type-mismatch",
			"redundant-return-value",
			"missing-parameter",
			"missing-fields",
			"missing-return",
			"missing-return-value",
			"cast-local-type",
			"deprecated",
			"inject-field",
			"lowercase-global"
		],
		"Lua.diagnostics.workspaceDelay": 300000,
	}
}
```

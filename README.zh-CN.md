**[English](./README.md) | 简体中文**

# Barotrauma Lua Annotations

使用 [EmmyLuaDocxgen](https://github.com/zhu-rengong/EmmyLuaDocxgen/tree/luacs_baro) 工具为 [LuaCsForBarotrauma](https://github.com/evilfactory/LuaCsForBarotrauma) 生成的Lua脚本注解，提供了强大的代码提示、自动补全功能。

## 使用

**以 VSCode 为例:**
你需要安装 [Lua Language Server](https://luals.github.io/) 插件，然后添加如下的工作空间（只是推荐这么做）：

```json
{
	"folders": [
        {
            "path": "<Mod路径>",
        },
	],
	"settings": {
		"Lua.diagnostics.libraryFiles": "Enable",
		"Lua.workspace.library": [
			"<仓库路径>/Library/Client",
			// "<仓库路径>/Library/Server",
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

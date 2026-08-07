

**Inglés | [简体中文](./README.zh-CN.md)**

# Anotaciones de Lua para Barotrauma

Anotaciones para scripts de Lua generadas mediante la herramienta [EmmyLuaDocxgen](https://github.com/zhu-rengong/EmmyLuaDocxgen/tree/luacs_baro) para [LuaCsForBarotrauma](https://github.com/evilfactory/LuaCsForBarotrauma), que proporcionan potentes sugerencias de código y funciones de autocompletado.

## Uso

**Usando VS Code como ejemplo:**
Necesitas instalar el complemento [Lua Language Server](https://luals.github.io/), clonar este repositorio y luego agregar la siguiente configuración de espacio de trabajo (configuración recomendada):

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

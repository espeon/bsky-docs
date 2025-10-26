---
title: tools.ozone.setting.listOptions
description: Reference for the tools.ozone.setting.listOptions lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

List settings with optional filtering

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
| `scope` | `string` | ❌  |  | Known Values: `instance`, `personal`<br/>Default: `instance` |
| `prefix` | `string` | ❌  | Filter keys by prefix |  |
| `keys` | Array of `string` | ❌  | Filter for only the specified keys. Ignored if prefix is provided | Max Items: 100 |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `options` | Array of [`tools.ozone.setting.defs#option`](lexicons/tools/ozone/setting/defs#option) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.setting.listOptions",
  "defs": {
    "main": {
      "type": "query",
      "description": "List settings with optional filtering",
      "parameters": {
        "type": "params",
        "properties": {
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 100,
            "default": 50
          },
          "cursor": {
            "type": "string"
          },
          "scope": {
            "type": "string",
            "knownValues": [
              "instance",
              "personal"
            ],
            "default": "instance"
          },
          "prefix": {
            "type": "string",
            "description": "Filter keys by prefix"
          },
          "keys": {
            "type": "array",
            "maxLength": 100,
            "items": {
              "type": "string",
              "format": "nsid"
            },
            "description": "Filter for only the specified keys. Ignored if prefix is provided"
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "options"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "options": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "tools.ozone.setting.defs#option"
              }
            }
          }
        }
      }
    }
  }
}
```

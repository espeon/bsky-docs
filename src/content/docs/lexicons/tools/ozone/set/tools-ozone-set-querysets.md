---
title: tools.ozone.set.querySets
description: Reference for the tools.ozone.set.querySets lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Query available sets

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
| `namePrefix` | `string` | ❌  |  |  |
| `sortBy` | `string` | ❌  |  | Enum: `name`, `createdAt`, `updatedAt`<br/>Default: `name` |
| `sortDirection` | `string` | ❌  | Defaults to ascending order of name field. | Enum: `asc`, `desc`<br/>Default: `asc` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `sets` | Array of [`tools.ozone.set.defs#setView`](/lexicons/tools/ozone/set/tools-ozone-set-defs#setview) | ✅  |  |  |
| `cursor` | `string` | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.set.querySets",
  "defs": {
    "main": {
      "type": "query",
      "description": "Query available sets",
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
          "namePrefix": {
            "type": "string"
          },
          "sortBy": {
            "type": "string",
            "enum": [
              "name",
              "createdAt",
              "updatedAt"
            ],
            "default": "name"
          },
          "sortDirection": {
            "type": "string",
            "default": "asc",
            "enum": [
              "asc",
              "desc"
            ],
            "description": "Defaults to ascending order of name field."
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "sets"
          ],
          "properties": {
            "sets": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "tools.ozone.set.defs#setView"
              }
            },
            "cursor": {
              "type": "string"
            }
          }
        }
      }
    }
  }
}
```

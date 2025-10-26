---
title: tools.ozone.signature.searchAccounts
description: Reference for the tools.ozone.signature.searchAccounts lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Search for accounts that match one or more threat signature values.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `values` | Array of `string` | ✅  |  |  |
| `cursor` | `string` | ❌  |  |  |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `accounts` | Array of [`com.atproto.admin.defs#accountView`](/com/atproto/admin/defs#accountView) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.signature.searchAccounts",
  "defs": {
    "main": {
      "type": "query",
      "description": "Search for accounts that match one or more threat signature values.",
      "parameters": {
        "type": "params",
        "required": [
          "values"
        ],
        "properties": {
          "values": {
            "type": "array",
            "items": {
              "type": "string"
            }
          },
          "cursor": {
            "type": "string"
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 100,
            "default": 50
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "accounts"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "accounts": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "com.atproto.admin.defs#accountView"
              }
            }
          }
        }
      }
    }
  }
}
```

---
title: com.atproto.admin.searchAccounts
description: Reference for the com.atproto.admin.searchAccounts lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get list of accounts that matches your search query.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `email` | `string` | ❌  |  |  |
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
  "id": "com.atproto.admin.searchAccounts",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get list of accounts that matches your search query.",
      "parameters": {
        "type": "params",
        "properties": {
          "email": {
            "type": "string"
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

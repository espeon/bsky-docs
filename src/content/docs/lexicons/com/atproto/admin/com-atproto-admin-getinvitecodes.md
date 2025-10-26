---
title: com.atproto.admin.getInviteCodes
description: Reference for the com.atproto.admin.getInviteCodes lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get an admin view of invite codes.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `sort` | `string` | ❌  |  | Known Values: `recent`, `usage`<br/>Default: `recent` |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 500<br/>Default: `100` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `codes` | Array of [`com.atproto.server.defs#inviteCode`](/com/atproto/server/defs#inviteCode) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.admin.getInviteCodes",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get an admin view of invite codes.",
      "parameters": {
        "type": "params",
        "properties": {
          "sort": {
            "type": "string",
            "knownValues": [
              "recent",
              "usage"
            ],
            "default": "recent"
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 500,
            "default": 100
          },
          "cursor": {
            "type": "string"
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "codes"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "codes": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "com.atproto.server.defs#inviteCode"
              }
            }
          }
        }
      }
    }
  }
}
```
